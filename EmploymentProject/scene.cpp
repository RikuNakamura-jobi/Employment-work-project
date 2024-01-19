//=====================================
//
// 
// Author:������
//
//=====================================
#include "scene.h"
#include "object.h"
#include "object3D.h"
#include "bg.h"
#include "bgmulti.h"
#include "score.h"
#include "camera.h"
#include "input.h"
#include "manager.h"
#include "fade.h"
#include "time.h"
#include "field.h"
#include "sky.h"
#include "block.h"
#include "sound.h"

//�}�N����`---------------------------
#define TIME_FADE (3600)

//�񋓌^��`---------------------------

//�N���X��`---------------------------

//�\���̒�`---------------------------

//�v���g�^�C�v�錾---------------------

//�ÓI�����o�ϐ��錾-------------------

//=====================================
// �R���X�g���N�^�E�f�X�g���N�^
//=====================================
CScene::CScene()
{
	m_nCntFade = 0;
}

CScene::~CScene()
{
}

//=====================================
// ����
//=====================================
CScene *CScene::Create(MODE mode)
{
	CScene *pScene = NULL;

	switch (mode)
	{
	case MODE_TITLE:

		pScene = new CTitle;

		break;

	case MODE_TUTORIAL:

		pScene = new CTutorial;

		break;

	case MODE_GAME:

		pScene = new CGame;

		break;

	case MODE_RESULT:

		pScene = new CResult;

		break;

	default:
		break;
	}

	return pScene;
}

//=====================================
// �^�C�g�����
//=====================================
// �R���X�g���N�^�E�f�X�g���N�^
//=====================================
CTitle::CTitle()
{
	m_pBgMulti = NULL;
}

CTitle::~CTitle()
{
}

//=====================================
// �|���S���̏���������
//=====================================
HRESULT CTitle::Init(void)
{
	m_pBgMulti = CBgMulti::Create();

	CSound::PlaySound(CSound::SOUND_LABEL_BGM001);

	return S_OK;
}

//=====================================
// �|���S���̏I������
//=====================================
void CTitle::Uninit(void)
{
	CSound::StopSound();

	CObject::ReleaseTYPEN(CObject::TYPE_FADE);
}

//=====================================
// �|���S���̍X�V����
//=====================================
void CTitle::Update(void)
{
	CInput *input = CManager::Get()->GetInputKeyboard();
	CInput *inputPad = CManager::Get()->GetInputPad();

	if (input->GetTrigger(DIK_RETURN) == true && CFade::GetState() == 0)
	{
		CFade::Create(CFade::TYPE_OUT, MODE_RESULT);
		CSound::PlaySound(CSound::SOUND_LABEL_SE_YES);
	}

	if (inputPad != NULL)
	{
		if (inputPad->GetButtonTrigger(11) == true && CFade::GetState() == 0)
		{
			CFade::Create(CFade::TYPE_OUT, MODE_RESULT);
			CSound::PlaySound(CSound::SOUND_LABEL_SE_YES);
		}
	}

	if (GetbFade() == true)
	{
		CManager::Get()->SetMode(CScene::MODE_GAME);
		SetbFade(false);
	}

	addCntFade();
}

//=====================================
// �|���S���̕`�揈��
//=====================================
void CTitle::Draw(void)
{

}
// �^�C�g�����
//=====================================

//=====================================
// �`���[�g���A�����
//=====================================
// �R���X�g���N�^�E�f�X�g���N�^
//=====================================
CTutorial::CTutorial()
{
	m_pBg = NULL;
	m_bFinish = NULL;
}

CTutorial::~CTutorial()
{
}

//=====================================
// �|���S���̏���������
//=====================================
HRESULT CTutorial::Init(void)
{
	m_pBg = CBg::Create(CBg::TEXTURE_TUTORIAL_KEY_MOVE);

	CSound::PlaySound(CSound::SOUND_LABEL_BGM002);

	return S_OK;
}

//=====================================
// �|���S���̏I������
//=====================================
void CTutorial::Uninit(void)
{
	CSound::StopSound();
	
	CObject::ReleaseTYPEN(CObject::TYPE_FADE);

	if (m_pCamera != NULL)
	{
		//�I������
		m_pCamera->Uninit();

		delete m_pCamera;
		m_pCamera = NULL;
	}
}

//=====================================
// �|���S���̍X�V����
//=====================================
void CTutorial::Update(void)
{
	CInput *input = CManager::Get()->GetInputKeyboard();
	CInput *inputMouse = CManager::Get()->GetInputMouse();
	CInput *inputPad = CManager::Get()->GetInputPad();
	CBg::TEXTURE textureType = m_pBg->GetTextureType();

	if (m_bFinish == true)
	{
		if (GetCntFade() == 0 && CFade::GetState() == 0)
		{
			CFade::Create(CFade::TYPE_OUT, MODE_RESULT);
		}
	}
	else
	{
		if (input->GetTrigger(DIK_RETURN) == true && CFade::GetState() == 0)
		{
				m_bFinish = true;
		}

		if (inputPad != NULL)
		{
			if (inputPad->GetButtonTrigger(11) == true && CFade::GetState() == 0)
			{
					m_bFinish = true;
			}
		}
	}

	if (GetbFade() == true)
	{
		CManager::Get()->SetMode(CScene::MODE_GAME);
		SetbFade(false);
	}
}

//=====================================
// �|���S���̕`�揈��
//=====================================
void CTutorial::Draw(void)
{
	if (m_pCamera != NULL)
	{
		m_pCamera->Set();
	}
}

void CTutorial::SetPlayer(CPlayer *player)
{
	m_pPlayer->SetMove(player->GetMove());
	m_pPlayer->SetPos(player->GetPos());
	m_pPlayer->SetPosOld(player->GetPosOld());
	m_pPlayer->SetRot(player->GetRot());
	m_pPlayer->SetType(player->GetType());
}
// �`���[�g���A�����
//=====================================

//=====================================
// �Q�[�����
//=====================================
// �R���X�g���N�^�E�f�X�g���N�^
//=====================================
CGame::CGame()
{
	m_pScore = NULL;
	m_pField = NULL;
	m_pPlayer = NULL;
	m_pPlayerSave = NULL;
	m_pCamera = NULL;
	m_pTime = NULL;
	m_bFinish = false;
}

CGame::~CGame()
{
}

//=====================================
// �|���S���̏���������
//=====================================
HRESULT CGame::Init(void)
{
	m_pScore = CScore::Create(D3DXVECTOR3(1200.0f, 100.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 26.0f, 64.0f);
	//m_pTime = CTime::Create(D3DXVECTOR3(600.0f, 100.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 26.0f, 64.0f);
	m_pField = CField::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(20000.0f, 0.0f, 20000.0f));
	m_pSky = CSky::Create();
	m_pPlayer = CPlayer::Create(D3DXVECTOR3(10600.0f, 0.1f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), CPlayer::TYPE_NORMAL);

	for (int nCnt = 0; nCnt < 10; nCnt++)
	{
		CBlock::Create(D3DXVECTOR3(11000.0f, 190.0f * nCnt + 90.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 100.0f, 100.0f);
	}

	for (int nCnt = 0; nCnt < 3; nCnt++)
	{
		CBlock::Create(D3DXVECTOR3(190.0f * nCnt + 9000.0f, -10.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 100.0f, 100.0f);
	}

	CBlock::Create(D3DXVECTOR3(8500.0f, -30.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.785f), 100.0f, 100.0f);

	for (int nCnt = 0; nCnt < 2; nCnt++)
	{
		CBlock::Create(D3DXVECTOR3(7500.0f, 190.0f * nCnt + 90.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 100.0f, 100.0f);
	}

	for (int nCnt = 0; nCnt < 5; nCnt++)
	{
		CBlock::Create(D3DXVECTOR3(190.0f * nCnt + 1100.0f, -10.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 100.0f, 100.0f);
	}
	for (int nCnt = 0; nCnt < 5; nCnt++)
	{
		CBlock::Create(D3DXVECTOR3(190.0f * nCnt + 1100.0f, 90.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 100.0f, 100.0f);
	}

	CBg::Create(CBg::TEXTURE_TUTORIAL_GAME);

	//�J�����̐���
	if (m_pCamera != NULL)
	{
		//�I������
		m_pCamera->Uninit();

		delete m_pCamera;
		m_pCamera = NULL;

		m_pCamera = new CCamera;
	}
	else
	{
		m_pCamera = new CCamera;
	}

	//����������
	if (m_pCamera != NULL)
	{
		if (FAILED(m_pCamera->Init()))
		{//���������������s�����ꍇ
			return E_FAIL;
		}
	}
	else
	{
		return E_FAIL;
	}

	CSound::PlaySound(CSound::SOUND_LABEL_BGM003);
	
	return S_OK;
}

//=====================================
// �|���S���̏I������
//=====================================
void CGame::Uninit(void)
{
	CSound::StopSound();
	
	CObject::ReleaseTYPEN(CObject::TYPE_FADE);

	if (m_pCamera != NULL)
	{
		//�I������
		m_pCamera->Uninit();

		delete m_pCamera;
		m_pCamera = NULL;
	}
}

//=====================================
// �|���S���̍X�V����
//=====================================
void CGame::Update(void)
{
	if (m_pCamera != NULL)
	{
		m_pCamera->Update();
	}

	CInput *input = CManager::Get()->GetInputKeyboard();

	if (m_bFinish == true)
	{
		addCntFade();
	}
	else
	{
		//if (m_pTime->GetTime() == 0)
		//{
		//	CBg::Create(CBg::TEXTURE_SUCCESS);
		//	CScore::SetScoreResult(m_pScore->GetScore());
		//	m_bFinish = true;
		//	CObject::ReleaseTYPE(CObject::TYPE_ENEMY);

		//	if (m_pEnemyManager != NULL)
		//	{
		//		//�I������
		//		m_pEnemyManager->Uninit();

		//		delete m_pEnemyManager;
		//		m_pEnemyManager = NULL;

		//	}
		//}
	}

	if (GetCntFade() == 300 && CFade::GetState() == 0)
	{
		m_pScore->SetScoreResult(m_pScore->GetScore());
		CFade::Create(CFade::TYPE_OUT, MODE_RESULT);
	}

	if (GetbFade() == true)
	{
		CManager::Get()->SetMode(CScene::MODE_RESULT);
		SetbFade(false);
	}
}

//=====================================
// �|���S���̕`�揈��
//=====================================
void CGame::Draw(void)
{
	if (m_pCamera != NULL)
	{
		m_pCamera->Set();
	}
}

void CGame::SetPlayer(CPlayer *player)
{
	m_pPlayer->SetMove(player->GetMove());
	m_pPlayer->SetPos(player->GetPos());
	m_pPlayer->SetPosOld(player->GetPosOld());
	m_pPlayer->SetRot(player->GetRot());
	m_pPlayer->SetType(player->GetType());
}
// �Q�[�����
//=====================================

//=====================================
// ���U���g���
//=====================================
// �R���X�g���N�^�E�f�X�g���N�^
//=====================================
CResult::CResult()
{
	m_pBg = NULL;
}

CResult::~CResult()
{
}

//=====================================
// �|���S���̏���������
//=====================================
HRESULT CResult::Init(void)
{
	m_pBg = CBg::Create(CBg::TEXTURE_RESULT);

	FILE *pFile;

	//�t�@�C���������ǂݍ���
	pFile = fopen("data\\RANKING\\ranking.bin", "rb");

	int nScore[6] = {};

	if (pFile != NULL)
	{//�J�����ꍇ
		fread(&nScore[0], sizeof(int), 6, pFile);
		fclose(pFile);
	}
	else
	{//�J���Ȃ������ꍇ

	 //�����L���O������
		for (int nCnt = 0; nCnt < 6; nCnt++)
		{
			nScore[nCnt] = 0;
		}
	}

	nScore[5] = CScore::GetScoreResult();

	int nMaxNumber, nTemp;
	//�~���}���\�[�g
	for (int nCnt1 = 1; nCnt1 < 6; nCnt1++)
	{
		nMaxNumber = nCnt1;

		while (nMaxNumber > 0 && nScore[nMaxNumber - 1] < nScore[nMaxNumber])
		{
			nTemp = nScore[nMaxNumber - 1];
			nScore[nMaxNumber - 1] = nScore[nMaxNumber];
			nScore[nMaxNumber] = nTemp;

			nMaxNumber--;
		}
	}

	//�t�@�C���������ǂݍ���
	pFile = fopen("data\\RANKING\\ranking.bin", "wb");

	if (pFile != NULL)
	{//�J�����ꍇ

		fwrite(&nScore[0], sizeof(int), 6, pFile);
		fclose(pFile);
	}
	else
	{//�J���Ȃ������ꍇ

	}

	for (int nCnt = 0; nCnt < 5; nCnt++)
	{
		m_pScore[nCnt] = CScore::Create(D3DXVECTOR3(717.0f, 101.0f * nCnt + 235.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 26.0f, 64.0f);
		m_pScore[nCnt]->AddScore(nScore[nCnt]);
	}

	m_pScore[5] = CScore::Create(D3DXVECTOR3(717.0f, 70.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 26.0f, 64.0f);
	m_pScore[5]->AddScore(CScore::GetScoreResult());

	CSound::PlaySound(CSound::SOUND_LABEL_BGM005);

	return S_OK;
}

//=====================================
// �|���S���̏I������
//=====================================
void CResult::Uninit(void)
{
	CSound::StopSound();

	CObject::ReleaseTYPEN(CObject::TYPE_FADE);
}

//=====================================
// �|���S���̍X�V����
//=====================================
void CResult::Update(void)
{
	CInput *input = CManager::Get()->GetInputKeyboard();
	CInput *inputPad = CManager::Get()->GetInputPad();

	if ((input->GetTrigger(DIK_RETURN) == true || GetCntFade() == TIME_FADE) && CFade::GetState() == 0)
	{
		CSound::PlaySound(CSound::SOUND_LABEL_SE_YES);
		CFade::Create(CFade::TYPE_OUT, MODE_TITLE);
	}

	if (inputPad != NULL)
	{
		if ((inputPad->GetButtonTrigger(11) == true || GetCntFade() == TIME_FADE) && CFade::GetState() == 0)
		{
			CSound::PlaySound(CSound::SOUND_LABEL_SE_YES);
			CFade::Create(CFade::TYPE_OUT, MODE_TITLE);
		}
	}

	if (GetbFade() == true)
	{
		CManager::Get()->SetMode(CScene::MODE_TITLE);
		SetbFade(false);
	}

	addCntFade();
}

//=====================================
// �|���S���̕`�揈��
//=====================================
void CResult::Draw(void)
{
	
}
// ���U���g���
//=====================================