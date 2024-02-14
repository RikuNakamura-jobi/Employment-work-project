//=====================================
//
// 
// Author:中村陸
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
#include "deliveryarrow.h"
#include "scene.h"
#include "particle.h"
#include "chain.h"
#include "collision.h"
#include "debugproc.h"
#include "orbit.h"
#include "useful.h"

//マクロ定義---------------------------

//列挙型定義---------------------------

//クラス定義---------------------------

//構造体定義---------------------------

//プロトタイプ宣言---------------------

//静的メンバ変数宣言-------------------
int CPlayer::m_nNumModel = 0;
CModel *CPlayer::m_apModelOrigin[32] = {};
CMotion *CPlayer::m_pMotionOrigin = NULL;

using namespace PlayerSpeed;

//=====================================
// コンストラクタ・デストラクタ
//=====================================
CPlayer::CPlayer(int nPriority = 4) : CObject(nPriority)
{
	m_pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_posOld = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_move = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_rot = D3DXVECTOR3(0.0f, 0.785f, 0.0f);
	m_rotDest = D3DXVECTOR3(0.0f, 0.785f, 0.0f);
	m_rotMove = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_vecWall = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_bSave = false;
	m_nEasterTimer = 0;
	m_pMotion = nullptr;
	m_orbit[0] = nullptr;
	m_orbit[1] = nullptr;
	m_Arrow = nullptr;
	m_Hook = nullptr;
	m_bAir = true;
	m_bShot = false;
	m_bDash = false;
	m_bWall = false;
	m_bTurn = false;
	m_bBoost = false;
	m_bControl = false;
	m_nShotTimer = 0;
	m_state = STATE_NORMAL;
	m_nCombo = 0;
	m_nEnergy = 0;
	m_Speed = 0.0f;
	m_SpeedDest = 0.0f;
	m_fHue = 0.0f;

	for (int nCntModel = 0; nCntModel < 32; nCntModel++)
	{
		m_apModel[nCntModel] = nullptr;
	}
}

CPlayer::~CPlayer()
{
}

//=====================================
// 生成処理
//=====================================
CPlayer *CPlayer::Create(D3DXVECTOR3 pos, D3DXVECTOR3 rot)
{
	CPlayer *pObjectPlayer;

	//2Dオブジェクトの生成
	pObjectPlayer = new CPlayer();

	if (pObjectPlayer != nullptr)
	{
		//初期化
		if (FAILED(pObjectPlayer->Init()))
		{
			pObjectPlayer->Release();

			return nullptr;
		}

		pObjectPlayer->Set(pos, rot, 0.0f, 0.0f);
	}

	return pObjectPlayer;
}

//=====================================
// ポリゴンのテクスチャ処理
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
		//テクスチャの破棄
		if (m_apModelOrigin[nCnt] != nullptr)
		{
			m_apModelOrigin[nCnt]->Uninit();

			delete m_apModelOrigin[nCnt];
			m_apModelOrigin[nCnt] = nullptr;
		}
	}

	if (m_pMotionOrigin != nullptr)
	{
		delete m_pMotionOrigin;
		m_pMotionOrigin = nullptr;
	}
}

//=====================================
// プレイヤーの初期化処理
//=====================================
HRESULT CPlayer::Init(void)
{
	for (int nCnt = 0; nCnt < 32; nCnt++)
	{
		m_apModel[nCnt] = m_apModelOrigin[nCnt];
	}

	if (m_pMotionOrigin != nullptr)
	{
		m_pMotion = m_pMotionOrigin;
		m_pMotion->Set(MOTION_NORMAL);
	}

	SetType(TYPE_PLAYER);
	SetCollider(CCollider::Create(&m_pos, &m_rot, D3DXVECTOR3(100.0f, 100.0f, 100.0f), D3DXVECTOR3(-100.0f, -5.0f, -100.0f), CCollider::TAG_PLAYER));
	m_nEnergy = 10;
	m_rotDest.z = -2.335f;

	D3DXMATRIX mtxTemp = GetModel(16)->GetMtxWorld();
	mtxTemp._41 = 0.0f;
	mtxTemp._42 = 0.0f;
	mtxTemp._43 = 0.0f;
	m_orbit[0] = COrbit::Create(mtxTemp, D3DXVECTOR3(2.0f, 0.0f, 0.0f), D3DXVECTOR3(-2.0f, -0.0f, -0.0f), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f), 100);

	mtxTemp = GetModel(17)->GetMtxWorld();
	mtxTemp._41 = 0.0f;
	mtxTemp._42 = 0.0f;
	mtxTemp._43 = 0.0f;
	m_orbit[1] = COrbit::Create(mtxTemp, D3DXVECTOR3(2.0f, 0.0f, 0.0f), D3DXVECTOR3(-2.0f, -0.0f, -0.0f), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f), 100);

	/*mtxTemp = GetModel(16)->GetMtxWorld();
	m_orbit[2] = COrbit::Create(mtxTemp, D3DXVECTOR3(3.0f, 0.0f, 0.0f), D3DXVECTOR3(-3.0f, -0.0f, -0.0f), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f), 100);

	mtxTemp = GetModel(17)->GetMtxWorld();
	m_orbit[3] = COrbit::Create(mtxTemp, D3DXVECTOR3(3.0f, 0.0f, 0.0f), D3DXVECTOR3(-3.0f, -0.0f, -0.0f), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f), 100);*/

	m_Arrow = CDeliveryarrow::Create(GetPos(), GetRot(), 0.0f, 0.0f);

	m_Hook = CHook::Create(GetPos(), GetRot());

	return S_OK;
}

//=====================================
// プレイヤーの終了処理
//=====================================
void CPlayer::Uninit(void)
{
	if (m_pMotion != nullptr)
	{
		m_pMotion = nullptr;
	}

	for (int nCntModel = 0; nCntModel < m_nNumModel; nCntModel++)
	{
		m_apModel[nCntModel] = nullptr;
	}

	Release();
}

//=====================================
// プレイヤーの更新処理
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

	if (m_bControl)
	{
		Control(&pos, &posOld, &rot, &move, &fHeight, &fWidth);

		if (inputPad != nullptr)
		{
			ControlPad(&pos, &posOld, &rot, &move, &fHeight, &fWidth);
		}
	}

	if (m_bAir && !m_bWall)
	{
		move.y -= 0.65f;
	}

	ControlMove(&pos, &posOld, &rot, &move, &fHeight, &fWidth);

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
		pos.y = 0.0f;
		move.y = 0.0f;
		m_bAir = false;
		m_bWall = false;
	}
	else
	{
		if (!m_bWall)
		{
			m_bAir = true;
		}

		if (pos.y <= -300.0f)
		{
			pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		}
	}

	if (m_state != STATE_HIT)
	{
		Collision(&pos, &posOld, &move);
	}

	if (pos.x < -4000.0f)
	{
		pos.x = -4000.0f;
	}
	if (pos.z < -4000.0f)
	{
		pos.z = -4000.0f;
	}

	if (pos.x > 76000.0f)
	{
		pos.x = 76000.0f;
	}
	if (pos.z > 76000.0f)
	{
		pos.z = 76000.0f;
	}

	if (CManager::Get()->Get()->GetScene()->GetField() != nullptr)
	{
		pos.y = CManager::Get()->Get()->GetScene()->GetField()->GetColHeight(pos, posOld, &move);
	}

	CManager::Get()->Get()->GetDebugProc()->Print("プレイヤーのpos: %f, %f, %f\n", pos.x, pos.y, pos.z);
	CManager::Get()->Get()->GetDebugProc()->Print("プレイヤーのmove: %f, %f, %f\n", move.x, move.y, move.z);

	if (!m_bWall)
	{
		SetRot(&rot);
	}

	SetPos(pos);
	SetRot(rot);
	SetMove(move);
	SetHeight(fHeight);
	SetWidth(fWidth);

	D3DXVECTOR3 posEffect;

	/*posEffect.x = GetModel(16)->GetMtxWorld()._41;
	posEffect.y = GetModel(16)->GetMtxWorld()._42;
	posEffect.z = GetModel(16)->GetMtxWorld()._43;
	CEffect::Create(posEffect, D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), useful::HSLtoRGB(m_fHue), 100, 5.0f, 5.0f);

	posEffect.x = GetModel(17)->GetMtxWorld()._41;
	posEffect.y = GetModel(17)->GetMtxWorld()._42;
	posEffect.z = GetModel(17)->GetMtxWorld()._43;
	CEffect::Create(posEffect, D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), useful::HSLtoRGB(m_fHue), 100, 5.0f, 5.0f);

	m_fHue += 0.7f;*/

	CManager::Get()->Get()->GetScene()->GetCamera()->SetPos(pos);

	ControlMotion(move);

	for (int nCntModel = 0; nCntModel < m_nNumModel; nCntModel++)
	{
		m_apModel[nCntModel]->Update();
	}

	m_pMotion->Update();
}

//=====================================
// プレイヤーの描画処理
//=====================================
void CPlayer::Draw(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::Get()->Get()->GetRenderer()->GetDevice();
	D3DXMATRIX mtxRot, mtxTrans;		//計算用マトリックス

	//ワールドマトリックスの初期化
	D3DXMatrixIdentity(&m_mtxWorld);

	//向きを反映
	D3DXMatrixRotationYawPitchRoll(&mtxRot,
		m_rot.y, m_rot.x, m_rot.z);
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);

	//位置を反映
	D3DXMatrixTranslation(&mtxTrans,
		m_pos.x, m_pos.y, m_pos.z);
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);

	//ワールドマトリックスの設定
	pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);

	if ((m_nEasterTimer / 10) % 2 == 0 || m_state != STATE_DAMAGE)
	{
		for (int nCntModel = 0; nCntModel < m_nNumModel; nCntModel++)
		{
			if (nCntModel == 16 || nCntModel == 17)
			{
				D3DXMATERIAL *pMat;
				//マテリアルのデータのポイントを取得
				pMat = (D3DXMATERIAL*)m_apModel[nCntModel]->GetBuffMat()->GetBufferPointer();

				pMat[0].MatD3D.Diffuse = useful::HSLtoRGB(m_fHue);
				pMat[0].MatD3D.Emissive = useful::HSLtoRGB(m_fHue);
			}

			m_apModel[nCntModel]->Draw();
		}
	}

	m_Hook->Draw();

	if (m_orbit[0] != nullptr)
	{
		D3DXMATRIX mtxTemp = GetModel(16)->GetMtxWorld();
		m_orbit[0]->SetPositionOffset(mtxTemp, useful::HSLtoRGB(m_fHue));
	}
	
	if (m_orbit[1] != nullptr)
	{
		D3DXMATRIX mtxTemp = GetModel(17)->GetMtxWorld();
		m_orbit[1]->SetPositionOffset(mtxTemp, useful::HSLtoRGB(m_fHue));
	}

	/*if (m_orbit[2] != nullptr)
	{
		D3DXMATRIX mtxTemp = GetModel(16)->GetMtxWorld();
		m_orbit[2]->SetPositionOffset(mtxTemp, useful::HSLtoRGB(m_fHue));
	}

	if (m_orbit[3] != nullptr)
	{
		D3DXMATRIX mtxTemp = GetModel(17)->GetMtxWorld();
		m_orbit[3]->SetPositionOffset(mtxTemp, useful::HSLtoRGB(m_fHue));
	}*/

	m_fHue += 4.0f;
}

//=====================================
// プレイヤーの操作処理
//=====================================
void CPlayer::Control(D3DXVECTOR3 *pos, D3DXVECTOR3 *posOld, D3DXVECTOR3 *rot, D3DXVECTOR3 *move, float *fHeight, float *fWidth)
{
	CInput *input = CManager::Get()->Get()->GetInputKeyboard();
	CInput *inputMouse = CManager::Get()->Get()->GetInputMouse();
	CInput *inputPad = CManager::Get()->Get()->GetInputPad();

	D3DXVECTOR3 rotCamera = CManager::Get()->Get()->GetScene()->GetCamera()->GetRot();
	D3DXVECTOR3 rotCameraDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	rotCameraDest.z = atan2f(CManager::Get()->Get()->GetScene()->GetCamera()->GetPosV().z - CManager::Get()->Get()->GetScene()->GetCamera()->GetPosR().z, CManager::Get()->Get()->GetScene()->GetCamera()->GetPosV().x - CManager::Get()->Get()->GetScene()->GetCamera()->GetPosR().x);

	float RotKey = 0.0f;
	int NumInputKey = 0;

	if (inputPad != nullptr)
	{
		if (inputPad->GetAll())
		{
			return;
		}
	}

	if (!m_Hook->GetBoolCollision())
	{
		//移動処理
		if (input->GetPress(DIK_A) == true)
		{//Dキーが押された時

			RotKey -= D3DX_PI * 0.5f;
			NumInputKey++;

		}
		if (input->GetPress(DIK_W) == true)
		{//Aキーが押された時

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
		if (input->GetPress(DIK_S) == true)
		{//Dキーが押された時

			RotKey += D3DX_PI * 0.0f;
			NumInputKey++;

		}
		if (input->GetPress(DIK_D) == true)
		{//Dキーが押された時

			RotKey += D3DX_PI * 0.5f;
			NumInputKey++;

		}

		if (NumInputKey > 0)
		{//Aキーが押された時

			if (NumInputKey > 1)
			{
				RotKey *= 0.5f;
			}

			if (input->GetPress(DIK_LSHIFT))
			{
				if (m_SpeedDest < SPEED_DASH)
				{
					m_SpeedDest += SPEED_DECELERATION;
				}
				else
				{
					m_SpeedDest = SPEED_DASH;
				}

				m_rotDest.z = rotCamera.y - RotKey;

				m_bDash = true;
			}
			else
			{
				if (m_SpeedDest < SPEED_WALK)
				{
					m_SpeedDest += SPEED_DECELERATION;
				}
				else
				{
					m_SpeedDest = SPEED_WALK;
				}

				m_rotDest.z = rotCamera.y - RotKey;

				m_bDash = false;
				m_bTurn = false;
			}
		}
		else
		{
			m_SpeedDest = 0.0f;
			//m_bWall = false;
			m_bDash = false;
			m_bTurn = false;
		}

		if (inputMouse->GetTrigger(1) == true && m_bAir == false && m_Speed >= SPEED_EFFECT_BOOST)
		{
			m_bTurn = true;
		}

		if (inputMouse->GetPress(1) == true && m_bAir == false && m_bTurn)
		{
			if (m_bDash)
			{
				m_SpeedDest = SPEED_TURN;

				m_bDash = false;
			}
		}
		else
		{
			if (m_bDash && m_bAir == false && m_bTurn)
			{
				m_SpeedDest = SPEED_TURN;

				m_bDash = false;

				if (m_Speed >= SPEED_BOOSTON)
				{
					m_SpeedDest = SPEED_BOOST;
					m_bTurn = false;
					m_bBoost = true;
				}
			}
			else
			{
				m_rotMove = *rot;
			}
		}

		if (input->GetTrigger(DIK_SPACE) == true && m_bAir == false)
		{
			if (m_bAir && !m_Hook->GetBoolShot())
			{
				//m_Hook->ShotHook(D3DXVECTOR3(rot->x, m_rotDest.z, rot->z), 700.0f);
			}
			else
			{
				move->y = SPEED_JUMP;
				m_bTurn = false;

				if (m_bWall)
				{
					if (m_SpeedDest <= SPEED_DASH)
					{
						move->y = 50.0f;
					}
					else if (m_SpeedDest <= SPEED_WALK)
					{
						move->y = 15.0f;
					}
					else
					{
						move->y = 5.0f;
					}

					m_SpeedDest = -10.0f;
					rot->y = atan2f(m_vecWall.x, m_vecWall.z);
					m_rotDest.z = atan2f(m_vecWall.x, m_vecWall.z);
					m_rotMove.y = atan2f(m_vecWall.x, m_vecWall.z);

					move->x += sinf(m_rotMove.y) * m_SpeedDest;
					move->z += cosf(m_rotMove.y) * m_SpeedDest;

					D3DXVECTOR3 posDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
					posDest.x = sinf(rot->y) * m_SpeedDest;
					posDest.z = cosf(rot->y) * m_SpeedDest;

					*pos += posDest;

					m_bWall = false;
				}

				if (m_SpeedDest <= SPEED_MAX && m_bBoost)
				{
					m_SpeedDest += SPEED_DASH;
					m_bBoost = false;
				}
			}
		}

		if (inputMouse->GetTrigger(0) == true && !m_Hook->GetBoolShot() && !m_bWall)
		{
			m_Hook->ShotHook(D3DXVECTOR3(rot->x, m_rotDest.z, rot->z), 700.0f);
		}
	}
	else
	{
		D3DXVECTOR3 vecMove = *pos - m_Hook->GetPos();
		D3DXVec3Normalize(&vecMove, &vecMove);
		m_rotDest.z = atan2f(vecMove.x, vecMove.z);
		rot->y = m_rotDest.z;
		m_SpeedDest = -30.0f;
		*move = vecMove * m_Speed * 10.0f;

		if (input->GetTrigger(DIK_SPACE) == true)
		{
			m_SpeedDest = 0.0f;
			m_Hook->SetBoolCollision(false);
			m_Hook->SetBoolShot(false);
			move->y = 50.0f;
		}
	}
}

//=====================================
// プレイヤーのパッド操作処理
//=====================================
void CPlayer::ControlPad(D3DXVECTOR3 *pos, D3DXVECTOR3 *posOld, D3DXVECTOR3 *rot, D3DXVECTOR3 *move, float *fHeight, float *fWidth)
{
	CInput *input = CManager::Get()->Get()->GetInputPad();
	CInput *inputKeyboard = CManager::Get()->Get()->GetInputKeyboard();
	CInput *inputMouse = CManager::Get()->Get()->GetInputMouse();

	D3DXVECTOR3 rotCamera = CManager::Get()->Get()->GetScene()->GetCamera()->GetRot();
	D3DXVECTOR3 rotCameraDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

	float RotStick = atan2f((float)input->GetLStickLRPress(), (float)input->GetLStickUDPress());
	float lengthStick = hypotf((float)input->GetLStickLRPress(), (float)input->GetLStickUDPress());

	if (lengthStick > 1000.0f)
	{
		lengthStick = 1000.0f;
	}

	CManager::Get()->Get()->GetDebugProc()->Print("Lスティックの距離: %f\n", lengthStick);

	if (inputKeyboard->GetAll() || inputMouse->GetAll())
	{
		return;
	}

	if (!m_Hook->GetBoolCollision())
	{
		if (lengthStick > 10.0f)
		{
			if (input->GetButtonPress(4) == true)
			{
				if (m_SpeedDest < SPEED_DASH)
				{
					m_SpeedDest += SPEED_DECELERATION;
				}
				else
				{
					m_SpeedDest = SPEED_DASH;
				}

				m_rotDest.z = rotCamera.y - RotStick;

				m_bDash = true;
			}
			else
			{
				if (m_SpeedDest < SPEED_DASH)
				{
					m_SpeedDest += SPEED_DECELERATION * 5.0f;
				}
				else
				{
					m_SpeedDest = SPEED_WALK;
				}

				m_rotDest.z = rotCamera.y - RotStick;

				m_bDash = false;
				m_bTurn = false;
			}
		}
		else
		{
			m_SpeedDest = 0.0f;

			//m_bWall = false;
			m_bDash = false;
			m_bTurn = false;
		}

		if (input->GetButtonTrigger(5) == true && m_bAir == false && m_Speed >= SPEED_EFFECT_BOOST)
		{
			m_bTurn = true;
		}

		if (input->GetButtonPress(5) == true && m_bAir == false && m_bTurn)
		{
			if (m_bDash)
			{
				m_SpeedDest = SPEED_TURN;

				m_bDash = false;
			}
		}
		else
		{
			if (m_bDash && m_bAir == false && m_bTurn)
			{
				m_SpeedDest = SPEED_TURN;

				m_bDash = false;

				if (m_Speed >= SPEED_BOOSTON)
				{
					m_SpeedDest = SPEED_BOOST;
					m_bTurn = false;
					m_bBoost = true;
				}
			}
			else
			{
				m_rotMove = *rot;
			}
		}

		if (input->GetButtonTrigger(2) == true)
		{
			if (m_bAir && !m_Hook->GetBoolShot())
			{
				//m_Hook->ShotHook(D3DXVECTOR3(rot->x, m_rotDest.z, rot->z), 700.0f);
			}
			else
			{
				move->y = SPEED_JUMP;
				m_bTurn = false;

				if (m_bWall)
				{
					if (m_SpeedDest <= SPEED_DASH)
					{
						move->y = 50.0f;
					}
					else if (m_SpeedDest <= SPEED_WALK)
					{
						move->y = 15.0f;
					}
					else
					{
						move->y = 5.0f;
					}

					m_SpeedDest = -10.0f;
					rot->y = atan2f(m_vecWall.x, m_vecWall.z);
					m_rotDest.z = atan2f(m_vecWall.x, m_vecWall.z);
					m_rotMove.y = atan2f(m_vecWall.x, m_vecWall.z);

					move->x += sinf(m_rotMove.y) * m_SpeedDest;
					move->z += cosf(m_rotMove.y) * m_SpeedDest;

					D3DXVECTOR3 posDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
					posDest.x = sinf(rot->y) * m_SpeedDest;
					posDest.z = cosf(rot->y) * m_SpeedDest;

					*pos += posDest;

					m_bWall = false;
				}

				if (m_SpeedDest <= SPEED_MAX && m_bBoost)
				{
					m_SpeedDest += SPEED_DASH;
					m_bBoost = false;
				}
			}
		}

		if (input->GetButtonTrigger(7) == true && !m_Hook->GetBoolShot() && !m_bWall)
		{
			m_Hook->ShotHook(D3DXVECTOR3(rot->x, m_rotDest.z, rot->z), 700.0f);
		}
	}
	else
	{
		D3DXVECTOR3 vecMove = *pos - m_Hook->GetPos();
		D3DXVec3Normalize(&vecMove, &vecMove);
		m_rotDest.z = atan2f(vecMove.x, vecMove.z);
		rot->y = m_rotDest.z;
		m_SpeedDest = -30.0f;
		*move = vecMove * m_Speed * 10.0f;

		if (input->GetButtonTrigger(2) == true)
		{
			m_SpeedDest = 0.0f;
			m_Hook->SetBoolCollision(false);
			m_Hook->SetBoolShot(false);
			move->y = 50.0f;
		}
	}
}

//=====================================
// プレイヤーの移動調整処理
//=====================================
void CPlayer::ControlMove(D3DXVECTOR3 *pos, D3DXVECTOR3 *posOld, D3DXVECTOR3 *rot, D3DXVECTOR3 *move, float *fHeight, float *fWidth)
{
	float speed;

	if (m_bTurn)
	{
		m_Speed += (m_SpeedDest - m_Speed) * 0.05f;
	}
	else
	{
		if (m_bDash)
		{
			m_Speed += (m_SpeedDest - m_Speed) * 0.1f;
		}
		else
		{
			m_Speed += (m_SpeedDest - m_Speed) * 0.05f;
		}
	}

	if (m_Speed < SPEED_MAX)
	{
		speed = SPEED_MAX;
	}
	else
	{
		speed = m_Speed;
	}

	if (m_bWall)
	{
		speed = 0.0f;
	}

	CManager::Get()->Get()->GetDebugProc()->Print("目標速度: %f\n", m_SpeedDest);
	CManager::Get()->Get()->GetDebugProc()->Print("現在速度: %f\n", m_Speed);
	CManager::Get()->Get()->GetDebugProc()->Print("実質速度: %f\n", speed);

	move->x += sinf(m_rotMove.y) * speed;
	move->z += cosf(m_rotMove.y) * speed;

	if (speed <= SPEED_EFFECT || m_Hook->GetBoolCollision())
	{
		D3DXVECTOR3 posEffectOffset = D3DXVECTOR3(640.0f, 360.0f, 0.0f);
		//posEffectOffset = useful::PosRelativeMtx(posEffectOffset, D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f));

		for (int nCntEff = 0; nCntEff < 5; nCntEff++)
		{
			float randRot = (float)(rand() % 629 - 314) * 0.01f;
			D3DXVECTOR3 posEffect = useful::PosRelativeMtx(posEffectOffset, D3DXVECTOR3(0.0f, D3DX_PI, randRot + (D3DX_PI * -0.0f)), D3DXVECTOR3(((float)(rand() % 300) + 210.0f + (speed * -3.0f)), 0.0f, 0.0f));

			if (speed >= SPEED_EFFECT_BOOST)
			{
				CEffect2D::Create(posEffect, D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, randRot), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f), 20, 300.0f + (speed * -3.0f), 15.0f);
				break;
			}
			else
			{
				CEffect2D::Create(posEffect, D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, randRot), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f), 20, 300.0f + (speed * -3.0f), 15.0f);
				//CEffect2D::Create(posEffect, D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, randRot), useful::HSLtoRGB((float)(rand() % 360)), 20, 100.0f, 5.0f);
			}
		}
	}
}

//=====================================
// プレイヤーのモーション調整処理
//=====================================
void CPlayer::ControlMotion(D3DXVECTOR3 move)
{
	if (m_bAir)
	{
		if (m_Hook->GetBoolCollision())
		{
			m_pMotion->Set(MOTION_HOOK);
		}
		else
		{
			m_pMotion->Set(MOTION_AIR);
		}
	}
	else
	{
		if (m_bTurn)
		{
			m_pMotion->Set(MOTION_TURN);
		}
		else
		{
			if (m_Speed < SPEED_EFFECT)
			{
				m_pMotion->Set(MOTION_DASH);
			}
			else if (m_Speed < SPEED_TURN)
			{
				m_pMotion->Set(MOTION_MOVE);
			}
			else
			{
				m_pMotion->Set(MOTION_NORMAL);
			}
		}
	}

	if (m_bWall)
	{
		m_pMotion->Set(MOTION_WALL);
	}
}

//=====================================
// プレイヤーの角度調整処理
//=====================================
void CPlayer::SetRot(D3DXVECTOR3 *rot)
{
	float fRotMove, fRotDest, fRotDiff;

	//現在の角度と目的の角度の差分を計算
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

	//徐々に足してく
	if (m_bDash)
	{
		if (m_Speed > SPEED_EFFECT_BOOST)
		{
			fRotMove += fRotDiff * 0.02f;
		}
		else
		{
			fRotMove += fRotDiff * 0.008f;
		}
	}
	else
	{
		if (m_Speed > SPEED_WALK * 2.0f)
		{
			fRotMove += fRotDiff * 0.1f;
		}
		else if (m_Speed > SPEED_EFFECT_BOOST)
		{
			fRotMove += fRotDiff * 0.02f;
		}
		else
		{
			fRotMove += fRotDiff * 0.008f;
		}
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
// プレイヤーの当たり判定処理
//=====================================
bool CPlayer::Collision(D3DXVECTOR3 *pos,D3DXVECTOR3 *posOld, D3DXVECTOR3 *move)
{
	for (int nCntPri = 0; nCntPri < ALL_PRIORITY; nCntPri++)
	{
		if (nCntPri != 4)
		{
			CObject *pObj;

			pObj = GetObjectTop(nCntPri);

			while (pObj != nullptr)
			{
				CObject *pObjNext = pObj->GetObjectNext();

				CObject::TYPE type;

				//種類取得
				type = pObj->GetType();

				if (type == TYPE_BLOCK)
				{
					if (pObj->GetCollider() != nullptr)
					{
						bool bColAir = false;
						if (m_bAir && m_Hook->GetBoolCollision())
						{
							bColAir = true;
						}

						if (pObj->GetCollider()->CollisionSquare(pos, *posOld, move, bColAir, &m_vecWall) == true)
						{
							move->y = -1.0f;
							if (m_vecWall.y > -0.8f && m_bAir)
							{
								m_bWall = true;
								move->y = 0.0f;
								m_Hook->SetBoolCollision(false);
								m_Hook->SetBoolShot(false);
							}
							m_bAir = false;
							m_Hook->SetBoolGet(true);
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
//プレイヤーのモーションファイル読み込み処理
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

	if (m_pMotionOrigin != nullptr)
	{
		m_pMotionOrigin->Init();
	}

	memset(&info, 0, sizeof(info));
	
	FILE *pFile = fopen("data\\MOTION\\motion_dessan_delivery.txt", "r");

	//ファイル読み込み
	if (pFile == nullptr)
	{
		return;
	}
	
	while (1)
	{
		fscanf(pFile, "%s", &aText[0]);

		if (strcmp(aText, "NUM_MODEL") == 0)
		{//ファイル名読み込み
		 //"="読み込み
			fscanf(pFile, "%s", &aText[0]);

			//ファイル名取得
			fscanf(pFile, "%d", &m_nNumModel);

			break;
		}
	}

	for (int nCntFile = 0, nTemp = 0; nCntFile < m_nNumModel; nTemp++)
	{//ファイル名読み込み
	 //文字読み込み
		fscanf(pFile, "%s", &aText[0]);
		
		if (strcmp(aText, "MODEL_FILENAME") == 0)
		{//ファイル名読み込み
		 //"="読み込み
			fscanf(pFile, "%s", &aText[0]);

			//ファイル名取得
			fscanf(pFile, "%s", &aText[0]);

			m_apModelOrigin[nCntFile] = CModel::Create(&aText[0]);

			//読み込んだモデル数カウンタ加算
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

		if (nParent == -1)
		{
			m_apModelOrigin[nCntModel]->SetParent(nullptr);
		}
		else
		{
			m_apModelOrigin[nCntModel]->SetParent(m_apModelOrigin[nParent]);
		}
	}

	for (int nCnt = 0; nCnt < 7; nCnt++)
	{
		fgets(&aText[0], 128, pFile);
	}
	
	if (m_pMotionOrigin != nullptr)
	{
		m_pMotionOrigin->SetModel(&m_apModelOrigin[0], m_nNumModel);
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
			
			if (m_pMotionOrigin != nullptr)
			{
				m_pMotionOrigin->SetInfo(info);
			}

			nCntMotion++;
		}
	}

	fclose(pFile);
}

//=====================================
// ポリゴンの設定処理
//=====================================
void  CPlayer::Set(D3DXVECTOR3 pos, D3DXVECTOR3 rot, float fWidth, float fHeight)
{
	m_pos = pos;
	m_rot = rot;
}