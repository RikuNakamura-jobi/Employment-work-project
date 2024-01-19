//=====================================
//
// 
// Author:������
//
//=====================================
#include "player.h"
#include "renderer.h"
#include "input.h"
#include "manager.h"
#include "sound.h"
#include "score.h"
#include "effect.h"
#include "camera.h"
#include "model.h"
#include "motion.h"
#include "object3D.h"
#include "camera.h"
#include "field.h"
#include "scene.h"
#include "particle.h"
#include "collision.h"
#include "debugproc.h"

//�}�N����`---------------------------

//�񋓌^��`---------------------------

//�N���X��`---------------------------

//�\���̒�`---------------------------

//�v���g�^�C�v�錾---------------------

//�ÓI�����o�ϐ��錾-------------------
int CPlayer::m_nNumModel = 0;
CModel *CPlayer::m_apModelOrigin[32] = {};
CModel *CPlayer::m_apModelSave[32] = {};
CMotion *CPlayer::m_pMotionOrigin = NULL;
CMotion *CPlayer::m_pMotionSave = NULL;

//=====================================
// �R���X�g���N�^�E�f�X�g���N�^
//=====================================
CPlayer::CPlayer(int nPriority = 4) : CObject(nPriority)
{
	m_pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_posOld = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_move = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_rotDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_rotMove = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_bSave = false;
	m_nEasterTimer = 0;
	m_pMotion = NULL;
	m_Type = TYPE_NORMAL;
	m_bAir = true;
	m_bShot = false;
	m_bDash = false;
	m_nShotTimer = 0;
	m_state = STATE_NORMAL;
	m_nCombo = 0;
	m_nEnergy = 0;

	for (int nCntModel = 0; nCntModel < 32; nCntModel++)
	{
		m_apModel[nCntModel] = NULL;
	}
}

CPlayer::~CPlayer()
{
}

//=====================================
// ��������
//=====================================
CPlayer *CPlayer::Create(D3DXVECTOR3 pos, D3DXVECTOR3 rot, TYPE type)
{
	CPlayer *pObjectPlayer;

	//2D�I�u�W�F�N�g�̐���
	pObjectPlayer = new CPlayer();

	if (pObjectPlayer != NULL)
	{
		pObjectPlayer->m_Type = type;

		//������
		if (FAILED(pObjectPlayer->Init()))
		{
			pObjectPlayer->Release();

			return NULL;
		}

		pObjectPlayer->Set(pos, rot, 0.0f, 0.0f);
		pObjectPlayer->SetSave(false);
			
		if (pObjectPlayer->m_Type == TYPE_SAVEDATA)
		{
			pObjectPlayer->SetSave(CManager::Get()->Get()->Get()->GetScene()->GetPlayer());
			CManager::Get()->Get()->Get()->GetScene()->GetPlayer()->SetSave(pObjectPlayer);
		}
	}

	return pObjectPlayer;
}

//=====================================
// �|���S���̃e�N�X�`������
//=====================================
HRESULT CPlayer::Load(void)
{
	ReadFilePlayer();

	return S_OK;
}
void CPlayer::Unload(void)
{
	for (int nCnt = 0; nCnt < 32; nCnt++)
	{
		//�e�N�X�`���̔j��
		if (m_apModelOrigin[nCnt] != NULL)
		{
			m_apModelOrigin[nCnt]->Uninit();

			delete m_apModelOrigin[nCnt];
			m_apModelOrigin[nCnt] = NULL;
		}

		//�e�N�X�`���̔j��
		if (m_apModelSave[nCnt] != NULL)
		{
			m_apModelSave[nCnt]->Uninit();

			delete m_apModelSave[nCnt];
			m_apModelSave[nCnt] = NULL;
		}
	}

	if (m_pMotionOrigin != NULL)
	{
		delete m_pMotionOrigin;
		m_pMotionOrigin = NULL;
	}

	if (m_pMotionSave != NULL)
	{
		delete m_pMotionSave;
		m_pMotionSave = NULL;
	}
}

//=====================================
// �v���C���[�̏���������
//=====================================
HRESULT CPlayer::Init(void)
{
	for (int nCnt = 0; nCnt < 32; nCnt++)
	{
		if (m_Type == TYPE_SAVEDATA)
		{
			m_apModel[nCnt] = m_apModelSave[nCnt];
		}
		else
		{
			m_apModel[nCnt] = m_apModelOrigin[nCnt];
		}
	}

	if (m_Type == TYPE_SAVEDATA)
	{
		if (m_pMotionSave != NULL)
		{
			m_pMotion = m_pMotionSave;
			m_pMotion->Set(MOTION_NORMAL);
		}
	}
	else
	{
		if (m_pMotionOrigin != NULL)
		{
			m_pMotion = m_pMotionOrigin;
			m_pMotion->Set(MOTION_NORMAL);
		}
	}

	SetType(TYPE_PLAYER);
	SetCollider(CCollider::Create(&m_pos, &m_rot, D3DXVECTOR3(100.0f, 100.0f, 100.0f), D3DXVECTOR3(-100.0f, -5.0f, -100.0f)));
	m_nEnergy = 10;
	m_rotDest.z = 1.57f;

	return S_OK;
}

//=====================================
// �v���C���[�̏I������
//=====================================
void CPlayer::Uninit(void)
{
	if (m_pMotion != NULL)
	{
		m_pMotion = NULL;
	}

	for (int nCntModel = 0; nCntModel < m_nNumModel; nCntModel++)
	{
		m_apModel[nCntModel] = NULL;
	}

	Release();
}

//=====================================
// �v���C���[�̍X�V����
//=====================================
void CPlayer::Update(void)
{
	CInput *input = CManager::Get()->Get()->GetInputKeyboard();
	CInput *inputPad = CManager::Get()->Get()->GetInputPad();
	D3DXVECTOR3 pos = GetPos();
	D3DXVECTOR3 posOld = pos;
	D3DXVECTOR3 rot = GetRot();
	D3DXVECTOR3 move = GetMove();
	float fHeight = GetHeight();
	float fWidth = GetWidth();
	m_bShot = false;

	if (m_state != STATE_KICK && m_state != STATE_HIT)
	{
		Control(&pos, &posOld, &rot, &move, &fHeight, &fWidth);

		if (inputPad != NULL)
		{
			ControlPad(&pos, &posOld, &rot, &move, &fHeight, &fWidth);
		}

		if (m_bAir)
		{
			move.y -= 1.0f;
		}
	}

	if (m_state == STATE_KICK)
	{
		rot.x -= 2.0f;

		if (m_pMotion->IsFinish())
		{
			move *= 0.0f;
		}
	}

	pos += move;

	if (m_state != STATE_KICK)
	{
		move.x += (0 - move.x) * 0.15f;
		move.z += (0 - move.z) * 0.15f;

		rot.x = 0.0f;
	}

	if (m_state == STATE_DAMAGE)
	{
		m_nEasterTimer++;

		if (m_nEasterTimer > 180)
		{
			m_state = STATE_NORMAL;
			m_nEasterTimer = 0;
		}
	}

	if (m_state == STATE_HIT)
	{
		m_nEasterTimer++;

		if (m_nEasterTimer > 10)
		{
			m_state = STATE_NORMAL;
			m_nEasterTimer = 0;
		}

		move.y -= 1.0f;
	}

	if (pos.y <= 0.0f)
	{
		m_bAir = false;
	}
	else
	{
		m_bAir = true;
	}

	if (m_state != STATE_HIT)
	{
		Collision(&pos, &posOld, &move);
	}

	if (CManager::Get()->Get()->GetScene()->GetField() != NULL)
	{
		pos.y = CManager::Get()->Get()->GetScene()->GetField()->GetColHeight(pos, posOld, &move);
	}

	CManager::Get()->Get()->GetDebugProc()->Print("�v���C���[��pos: %f, %f, %f\n", pos.x, pos.y, pos.z);
	CManager::Get()->Get()->GetDebugProc()->Print("�v���C���[��move: %f, %f, %f\n", move.x, move.y, move.z);

	SetRot(&rot);
	SetPos(pos);
	SetRot(rot);
	SetMove(move);
	SetHeight(fHeight);
	SetWidth(fWidth);

	CManager::Get()->Get()->GetScene()->GetCamera()->SetPos(pos);

	ControlMotion(move);

	for (int nCntModel = 0; nCntModel < m_nNumModel; nCntModel++)
	{
		m_apModel[nCntModel]->Update();
	}

	m_pMotion->Update();
}

//=====================================
// �v���C���[�̕`�揈��
//=====================================
void CPlayer::Draw(void)
{
	if (m_Type != TYPE_SAVEDATA || m_bSave == true)
	{
		LPDIRECT3DDEVICE9 pDevice = CManager::Get()->Get()->GetRenderer()->GetDevice();
		D3DXMATRIX mtxRot, mtxTrans;		//�v�Z�p�}�g���b�N�X

		//���[���h�}�g���b�N�X�̏�����
		D3DXMatrixIdentity(&m_mtxWorld);

		//�����𔽉f
		D3DXMatrixRotationYawPitchRoll(&mtxRot,
			m_rot.y, m_rot.x, m_rot.z);
		D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);

		//�ʒu�𔽉f
		D3DXMatrixTranslation(&mtxTrans,
			m_pos.x, m_pos.y, m_pos.z);
		D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);

		//���[���h�}�g���b�N�X�̐ݒ�
		pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);

		if ((m_nEasterTimer / 10) % 2 == 0 || m_state != STATE_DAMAGE)
		{
			for (int nCntModel = 0; nCntModel < m_nNumModel; nCntModel++)
			{
				m_apModel[nCntModel]->Draw();
			}
		}
	}
}

//=====================================
// �v���C���[�̑��쏈��
//=====================================
void CPlayer::Control(D3DXVECTOR3 *pos, D3DXVECTOR3 *posOld, D3DXVECTOR3 *rot, D3DXVECTOR3 *move, float *fHeight, float *fWidth)
{
	CInput *input = CManager::Get()->Get()->GetInputKeyboard();
	CInput *inputMouse = CManager::Get()->Get()->GetInputMouse();

	D3DXVECTOR3 rotCamera = CManager::Get()->Get()->GetScene()->GetCamera()->GetRot();
	D3DXVECTOR3 rotCameraDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	rotCameraDest.z = atan2f(CManager::Get()->Get()->GetScene()->GetCamera()->GetPosV().z - CManager::Get()->Get()->GetScene()->GetCamera()->GetPosR().z, CManager::Get()->Get()->GetScene()->GetCamera()->GetPosV().x - CManager::Get()->Get()->GetScene()->GetCamera()->GetPosR().x);

	float RotKey = 0.0f;
	int NumInputKey = 0;

	//�ړ�����
	if (input->GetPress(DIK_S) == true)
	{//D�L�[�������ꂽ��

		RotKey -= D3DX_PI * 0.5f;
		NumInputKey++;

	}
	if (input->GetPress(DIK_A) == true)
	{//A�L�[�������ꂽ��

		if (NumInputKey > 0)
		{
			RotKey -= D3DX_PI * 1.0f;
		}
		else
		{
			RotKey += D3DX_PI * 1.0f;
		}

		NumInputKey++;

	}
	if (input->GetPress(DIK_D) == true)
	{//D�L�[�������ꂽ��

		RotKey += D3DX_PI * 0.0f;
		NumInputKey++;

	}
	if (input->GetPress(DIK_W) == true)
	{//D�L�[�������ꂽ��

		RotKey += D3DX_PI * 0.5f;
		NumInputKey++;

	}

	if (NumInputKey > 0)
	{//A�L�[�������ꂽ��

		if (NumInputKey > 1)
		{
			RotKey *= 0.5f;
		}

		move->x += sinf(rotCamera.y - RotKey - (D3DX_PI * 0.5f)) * -2.5f;
		move->z += cosf(rotCamera.y - RotKey - (D3DX_PI * 0.5f)) * -2.5f;

		m_rotDest.z = rotCamera.y - RotKey - (D3DX_PI * 0.5f);

	}

	if (input->GetTrigger(DIK_SPACE) == true && m_bAir == false)
	{
		move->y = 18.0f;
		m_pMotion->Set(MOTION_JUMP);
	}
}

//=====================================
// �v���C���[�̃p�b�h���쏈��
//=====================================
void CPlayer::ControlPad(D3DXVECTOR3 *pos, D3DXVECTOR3 *posOld, D3DXVECTOR3 *rot, D3DXVECTOR3 *move, float *fHeight, float *fWidth)
{
	CInput *input = CManager::Get()->Get()->GetInputPad();

	D3DXVECTOR3 rotCamera = CManager::Get()->Get()->GetScene()->GetCamera()->GetRot();
	D3DXVECTOR3 rotCameraDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

	float RotStick = atan2f((float)input->GetLStickLRPress(), (float)input->GetLStickUDPress());
	float lengthStick = hypotf((float)input->GetLStickLRPress(), (float)input->GetLStickUDPress());

	if (lengthStick > 1000.0f)
	{
		lengthStick = 1000.0f;
	}

	CManager::Get()->Get()->GetDebugProc()->Print("L�X�e�B�b�N�̋���: %f\n", lengthStick);

	if (lengthStick > 10.0f)
	{
		move->x += sinf(GetRot().y) * -2.5f;
		move->z += cosf(GetRot().y) * -2.5f;
		
		m_rotDest.z = rotCamera.y - RotStick;

		m_bDash = true;
	}
	else
	{
		m_bDash = false;
	}

	if (input->GetButtonTrigger(5) == true && m_bAir == false)
	{
		
	}

	if (input->GetButtonPress(5) == true && m_bAir == false)
	{
		move->x *= 0.6f;
		move->z *= 0.6f;

		m_bDash = false;
	}

	if (input->GetButtonRelease(5) == true && m_bAir == false)
	{
		move->x *= 2.5f;
		move->z *= 2.5f;
	}

	if (input->GetButtonTrigger(2) == true && m_bAir == false)
	{
		move->y = 18.0f;
		m_pMotion->Set(MOTION_JUMP);
	}
}

//=====================================
// �v���C���[�̃��[�V������������
//=====================================
void CPlayer::ControlMotion(D3DXVECTOR3 move)
{
	if (m_state == STATE_KICK)
	{
		m_pMotion->Set(MOTION_KICK);

		if (m_pMotion->IsFinish())
		{
			m_state = STATE_NORMAL;
		}
	}
	else if (m_bShot == true)
	{
		if (fabsf(move.x) > 1.0f || fabsf(move.z) > 1.0f)
		{
			m_pMotion->Set(MOTION_MOVE_SHOT);
		}
		else
		{
			m_pMotion->Set(MOTION_SHOT);
		}

		if (m_bAir == true)
		{
			m_pMotion->Set(MOTION_JUMP_SHOT);
		}
	}
	else
	{
		if (fabsf(move.x) > 1.0f || fabsf(move.z) > 1.0f)
		{
			m_pMotion->Set(MOTION_MOVE);
		}
		else
		{
			m_pMotion->Set(MOTION_NORMAL);
		}

		if (m_bAir == true)
		{
			m_pMotion->Set(MOTION_JUMP);
		}
	}
}

//=====================================
// �v���C���[�̊p�x��������
//=====================================
void CPlayer::SetRot(D3DXVECTOR3 *rot)
{
	float fRotMove, fRotDest, fRotDiff;

	//���݂̊p�x�ƖړI�̊p�x�̍������v�Z
	fRotMove = rot->y;
	fRotDest = m_rotDest.z;
	fRotDiff = fRotDest - fRotMove;

	if (fRotDiff > 3.14f)
	{
		fRotDiff -= 6.28f;
	}
	else if (fRotDiff <= -3.14f)
	{
		fRotDiff += 6.28f;
	}

	//���X�ɑ����Ă�
	if (m_bDash)
	{
		fRotMove += fRotDiff * 0.02f;
	}
	else
	{
		fRotMove += fRotDiff * 0.1f;
	}

	if (fRotMove > 3.14f)
	{
		fRotMove -= 6.28f;
	}
	else if (fRotMove <= -3.14f)
	{
		fRotMove += 6.28f;
	}

	rot->y = fRotMove;
}

//=====================================
// �v���C���[�̓����蔻�菈��
//=====================================
bool CPlayer::Collision(D3DXVECTOR3 *pos,D3DXVECTOR3 *posOld, D3DXVECTOR3 *move)
{
	for (int nCntPri = 0; nCntPri < ALL_PRIORITY; nCntPri++)
	{
		if (nCntPri != 4)
		{
			CObject *pObj;

			pObj = GetObjectTop(nCntPri);

			while (pObj != NULL)
			{
				CObject *pObjNext = pObj->GetObjectNext();

				CObject::TYPE type;

				//��ގ擾
				type = pObj->GetType();

				if (D3DXVec3Length(&(*pos - pObj->GetPos())) < 200.0f)
				{
					if (type == TYPE_BLOCK)
					{
						if (pObj->GetCollider() != NULL)
						{
							if (pObj->GetCollider()->CollisionSquare(pos, *posOld, move) == true)
							{
								m_bAir = false;
								move->x = 0.0f;
								move->y = 0.0f;
								move->z = 0.0f;
							}
						}
					}
				}

				pObj = pObjNext;
			}
		}
	}

	return false;
}

//===========================
//�v���C���[�̃��[�V�����t�@�C���ǂݍ��ݏ���
//===========================
void CPlayer::ReadFilePlayer(void)
{
	char aText[128];
	//int nTrash;
	float fTrash;
	int nParent;
	D3DXVECTOR3 pos, rot;
	CMotion::Info info;
	m_pMotionOrigin = new CMotion;
	m_pMotionSave = new CMotion;

	if (m_pMotionOrigin != NULL)
	{
		m_pMotionOrigin->Init();
	}

	if (m_pMotionSave != NULL)
	{
		m_pMotionSave->Init();
	}

	memset(&info, 0, sizeof(info));
	
	FILE *pFile = fopen("data\\MOTION\\motion_dessan_maid.txt", "r");

	//�t�@�C���ǂݍ���
	if (pFile == NULL)
	{
		return;
	}
	
	while (1)
	{
		fscanf(pFile, "%s", &aText[0]);

		if (strcmp(aText, "NUM_MODEL") == 0)
		{//�t�@�C�����ǂݍ���
		 //"="�ǂݍ���
			fscanf(pFile, "%s", &aText[0]);

			//�t�@�C�����擾
			fscanf(pFile, "%d", &m_nNumModel);

			break;
		}
	}

	for (int nCntFile = 0, nTemp = 0; nCntFile < m_nNumModel; nTemp++)
	{//�t�@�C�����ǂݍ���
	 //�����ǂݍ���
		fscanf(pFile, "%s", &aText[0]);
		
		if (strcmp(aText, "MODEL_FILENAME") == 0)
		{//�t�@�C�����ǂݍ���
		 //"="�ǂݍ���
			fscanf(pFile, "%s", &aText[0]);

			//�t�@�C�����擾
			fscanf(pFile, "%s", &aText[0]);

			m_apModelOrigin[nCntFile] = CModel::Create(&aText[0]);
			m_apModelSave[nCntFile] = CModel::Create(&aText[0]);

			//�ǂݍ��񂾃��f�����J�E���^���Z
			nCntFile++;
		}
	}

	do
	{
		fgets(&aText[0], 128, pFile);
	} while (strcmp(aText, "CHARACTERSET\n") != 0);

	fscanf(pFile, "%s = %f	%s %s", &aText[0], &fTrash, &aText[0], &aText[0]);
	fscanf(pFile, "%s = %f	%s %s", &aText[0], &fTrash, &aText[0], &aText[0]);
	fscanf(pFile, "%s = %s	%s %s", &aText[0], &aText[0], &aText[0], &aText[0]);
	fscanf(pFile, "%s = %s	%s %s", &aText[0], &aText[0], &aText[0], &aText[0]);
	fscanf(pFile, "%s = %d	%s %s\n", &aText[0], &m_nNumModel, &aText[0], &aText[0]);

	for (int nCntModel = 0; nCntModel < m_nNumModel; nCntModel++)
	{
		fgets(&aText[0], 128, pFile);
		fscanf(pFile, "%s = %d", &aText[0], &nParent);
		fscanf(pFile, "%s = %d	%s %s", &aText[0], &nParent, &aText[0], &aText[0]);
		fscanf(pFile, "%s = %f %f %f", &aText[0], &pos.x, &pos.y, &pos.z);
		fscanf(pFile, "%s = %f %f %f\n", &aText[0], &rot.x, &rot.y, &rot.z);
		fgets(&aText[0], 128, pFile);
		fgets(&aText[0], 128, pFile);

		m_apModelOrigin[nCntModel]->SetPosDef(pos);
		m_apModelOrigin[nCntModel]->SetRotDef(rot);

		m_apModelSave[nCntModel]->SetPosDef(pos);
		m_apModelSave[nCntModel]->SetRotDef(rot);

		if (nParent == -1)
		{
			m_apModelOrigin[nCntModel]->SetParent(NULL);
			m_apModelSave[nCntModel]->SetParent(NULL);
		}
		else
		{
			m_apModelOrigin[nCntModel]->SetParent(m_apModelOrigin[nParent]);
			m_apModelSave[nCntModel]->SetParent(m_apModelSave[nParent]);
		}
	}

	for (int nCnt = 0; nCnt < 7; nCnt++)
	{
		fgets(&aText[0], 128, pFile);
	}
	
	if (m_pMotionOrigin != NULL)
	{
		m_pMotionOrigin->SetModel(&m_apModelOrigin[0], m_nNumModel);
	}

	if (m_pMotionSave != NULL)
	{
		m_pMotionSave->SetModel(&m_apModelSave[0], m_nNumModel);
	}

	for (int nCntMotion = 0, nTemp = 0; nCntMotion < MOTION_MAX; nTemp++)
	{
		fscanf(pFile, "%s", &aText[0]);

		if (strcmp(aText, "MOTIONSET") == 0)
		{
			int nCntKey = 0;
			do
			{
				fscanf(pFile, "%s", &aText[0]);

				if (strcmp(aText, "LOOP") == 0)
				{
					fscanf(pFile, "	=	%d", &info.nLoop);
				}

				if (strcmp(aText, "NUM_KEY") == 0)
				{
					fscanf(pFile, "	=	%d", &info.nNumKey);
				}

				if (strcmp(aText, "KEYSET") == 0)
				{
					fgets(&aText[0], 128, pFile);

					do
					{
						fscanf(pFile, "%s", &aText[0]);

						if (strcmp(aText, "KEYSET") == 0)
						{

						}

						if (strcmp(aText, "FRAME") == 0)
						{
							fscanf(pFile, "	=	%d", &info.aKeyInfo[nCntKey].nFrame);
						}

						if (strcmp(aText, "KEY") == 0)
						{
							for (int nCntModel = 0, nTemp = 0; nCntModel < m_nNumModel; nTemp++)
							{
								do
								{
									fscanf(pFile, "%s", &aText[0]);

									if (strcmp(aText, "POS") == 0)
									{
										fscanf(pFile, "	=	%f	%f	%f", &info.aKeyInfo[nCntKey].aKey[nCntModel].pos.x, &info.aKeyInfo[nCntKey].aKey[nCntModel].pos.y, &info.aKeyInfo[nCntKey].aKey[nCntModel].pos.z);
									}

									if (strcmp(aText, "ROT") == 0)
									{
										fscanf(pFile, "	=	%f	%f	%f", &info.aKeyInfo[nCntKey].aKey[nCntModel].rot.x, &info.aKeyInfo[nCntKey].aKey[nCntModel].rot.y, &info.aKeyInfo[nCntKey].aKey[nCntModel].rot.z);
									}
								} while (strcmp(aText, "END_KEY") != 0);

								nCntModel++;
							}
						}
					} while (strcmp(aText, "END_KEYSET") != 0);

					nCntKey++;
				}
			} while (strcmp(aText, "END_MOTIONSET") != 0);
			
			if (m_pMotionOrigin != NULL)
			{
				m_pMotionOrigin->SetInfo(info);
			}

			if (m_pMotionSave != NULL)
			{
				m_pMotionSave->SetInfo(info);
			}

			nCntMotion++;
		}
	}

	fclose(pFile);
}

//=====================================
// �|���S���̐ݒ菈��
//=====================================
void  CPlayer::Set(D3DXVECTOR3 pos, D3DXVECTOR3 rot, float fWidth, float fHeight)
{
	m_pos = pos;
	m_rot = rot;
}

void  CPlayer::Easter(void)
{
	
}

void CPlayer::SetSave(CPlayer *pPlayerSave)
{
	if (pPlayerSave != NULL)
	{
		m_pos = pPlayerSave->m_pos;
		m_posOld = pPlayerSave->m_posOld;
		m_move = pPlayerSave->m_move;
		m_rot = pPlayerSave->m_rot;
		m_rotDest = pPlayerSave->m_rotDest;
		m_mtxWorld = pPlayerSave->m_mtxWorld;

		for (int nCnt = 0; nCnt < 32; nCnt++)
		{
			if (m_apModel[nCnt] != NULL && pPlayerSave->GetModel(nCnt) != NULL)
			{
				pPlayerSave->GetModel(nCnt)->SetPos(m_apModel[nCnt]->GetPos());
				pPlayerSave->GetModel(nCnt)->SetPosDef(m_apModel[nCnt]->GetPosDef());
				pPlayerSave->GetModel(nCnt)->SetRot(m_apModel[nCnt]->GetRot());
				pPlayerSave->GetModel(nCnt)->SetRotDef(m_apModel[nCnt]->GetRotDef());

				pPlayerSave->GetModel(nCnt)->Update();
			}
			
		}
	}
}

void CPlayer::GetSave(CPlayer *pPlayerSave)
{
	if (pPlayerSave != NULL)
	{
		m_pos = pPlayerSave->m_pos;
		m_posOld = pPlayerSave->m_posOld;
		m_move = pPlayerSave->m_move;
		m_rot = pPlayerSave->m_rot;
		m_rotDest = pPlayerSave->m_rotDest;
		m_mtxWorld = pPlayerSave->m_mtxWorld;
	}
}