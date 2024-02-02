//=====================================
//
// 
// Author:中村陸
//
//=====================================
#include "map.h"
#include "renderer.h"
#include "manager.h"

//マクロ定義---------------------------

//列挙型定義---------------------------

//クラス定義---------------------------

//構造体定義---------------------------

//プロトタイプ宣言---------------------

//静的メンバ変数宣言-------------------

//=====================================
// コンストラクタ・デストラクタ
//=====================================
CMap::CMap()
{
	for (int nCnt1 = 0; nCnt1 < NUM_AREA_X; nCnt1++)
	{
		for (int nCnt2 = 0; nCnt2 < NUM_AREA_Y; nCnt2++)
		{
			m_pArea[nCnt1][nCnt2] = nullptr;
			m_bRoad[nCnt1][nCnt2] = true;
		}
	}
}

CMap::~CMap()
{
}

//=====================================
// 生成処理
//=====================================
CMap *CMap::Create()
{
	CMap *pObjectBg;

	//2Dオブジェクトの生成
	pObjectBg = new CMap();

	if (pObjectBg != NULL)
	{
		//初期化
		if (FAILED(pObjectBg->Init()))
		{
			return nullptr;
		}
	}

	return pObjectBg;
}

//=====================================
// ポリゴンの初期化処理
//=====================================
HRESULT CMap::Init(void)
{
	int areaNum = 0;
	int setArea = 0;

	//敵の初期化処理
	srand((unsigned int)time(0));

	areaNum = NUM_BIGBUILDING;
	setArea = 0;

	while (setArea < areaNum)
	{
		int areaX = rand() % 10;
		int areaY = rand() % 10;

		if (m_pArea[areaX][areaY] == nullptr && areaX + areaY != 0)
		{
			m_pArea[areaX][areaY] = new CAreaBigBuilding;
			m_bRoad[areaX][areaY] = false;

			m_pArea[areaX][areaY]->GetBlock()->SetPos(D3DXVECTOR3(8000.0f * areaX, 0.0f, 8000.0f * areaY));
			m_pArea[areaX][areaY]->GetRand()->SetPos(D3DXVECTOR3(8000.0f * areaX, 0.0f, 8000.0f * areaY));

			setArea++;
		}
	}

	areaNum = (rand() % (MAX_SMALLBUILDING - MIN_SMALLBUILDING)) + MIN_SMALLBUILDING;
	setArea = 0;

	while (setArea < areaNum)
	{
		int areaX = rand() % 10;
		int areaY = rand() % 10;

		if (m_pArea[areaX][areaY] == nullptr && areaX + areaY != 0)
		{
			m_pArea[areaX][areaY] = new CAreaSmallBuilding;
			m_bRoad[areaX][areaY] = false;

			m_pArea[areaX][areaY]->GetBlock()->SetPos(D3DXVECTOR3(8000.0f * areaX, 0.0f, 8000.0f * areaY));
			m_pArea[areaX][areaY]->GetRand()->SetPos(D3DXVECTOR3(8000.0f * areaX, 0.0f, 8000.0f * areaY));

			setArea++;
		}
	}

	areaNum = (rand() % (MAX_SMALLAPART - MIN_SMALLAPART)) + MIN_SMALLAPART;
	setArea = 0;

	while (setArea < areaNum)
	{
		int areaX = rand() % 10;
		int areaY = rand() % 10;

		if (m_pArea[areaX][areaY] == nullptr && areaX + areaY != 0)
		{
			m_pArea[areaX][areaY] = new CAreaApart;
			m_bRoad[areaX][areaY] = false;

			m_pArea[areaX][areaY]->GetBlock()->SetPos(D3DXVECTOR3(8000.0f * areaX, 0.0f, 8000.0f * areaY));
			m_pArea[areaX][areaY]->GetRand()->SetPos(D3DXVECTOR3(8000.0f * areaX, 0.0f, 8000.0f * areaY));

			setArea++;
		}
	}

	for (int nCnt1 = 0; nCnt1 < NUM_AREA_X; nCnt1++)
	{
		for (int nCnt2 = 0; nCnt2 < NUM_AREA_Y; nCnt2++)
		{
			if (m_pArea[nCnt1][nCnt2] == nullptr)
			{
				bool bUP = false, bDown = false, bAreaL = false, bAreaR = false;
				int nCntNumRoad = 0;

				if (nCnt1 > 0)
				{
					bAreaL = m_bRoad[nCnt1 - 1][nCnt2];
					if (bAreaL)
					{
						nCntNumRoad++;
					}
				}

				if (nCnt2 > 0)
				{
					bUP = m_bRoad[nCnt1][nCnt2 - 1];
					if (bUP)
					{
						nCntNumRoad++;
					}
				}

				if (nCnt1 < 9)
				{
					bAreaR = m_bRoad[nCnt1 + 1][nCnt2];
					if (bAreaR)
					{
						nCntNumRoad++;
					}
				}

				if (nCnt2 < 9)
				{
					bDown = m_bRoad[nCnt1][nCnt2 + 1];
					if (bDown)
					{
						nCntNumRoad++;
					}
				}

				m_pArea[nCnt1][nCnt2] = CAreaRoad::Create(bUP, bDown, bAreaL, bAreaR, nCntNumRoad);

				//m_pArea[nCnt1][nCnt2]->GetBlock()->SetPos(D3DXVECTOR3(4000.0f * nCnt1, 4000.0f * nCnt2, 0.0f));
				m_pArea[nCnt1][nCnt2]->GetRand()->SetPos(D3DXVECTOR3(8000.0f * nCnt1, 0.0f, 8000.0f * nCnt2));
			}
		}
	}

	return S_OK;
}

//=====================================
// ポリゴンの終了処理
//=====================================
void CMap::Uninit(void)
{
	for (int nCnt1 = 0; nCnt1 < NUM_AREA_X; nCnt1++)
	{
		for (int nCnt2 = 0; nCnt2 < NUM_AREA_Y; nCnt2++)
		{
			if (m_pArea[nCnt1][nCnt2] != nullptr)
			{
				delete m_pArea[nCnt1][nCnt2];
				m_pArea[nCnt1][nCnt2] = nullptr;
			}
		}
	}
}

//=====================================
// ポリゴンの更新処理
//=====================================
void CMap::Update(void)
{
	for (int nCnt1 = 0; nCnt1 < NUM_AREA_X; nCnt1++)
	{
		for (int nCnt2 = 0; nCnt2 < NUM_AREA_Y; nCnt2++)
		{
			if (m_pArea[nCnt1][nCnt2] != nullptr)
			{
				m_pArea[nCnt1][nCnt2]->GetRand()->Update();
			}
		}
	}
}

//=====================================
// ポリゴンの描画処理
//=====================================
void CMap::Draw(void)
{
	for (int nCnt1 = 0; nCnt1 < NUM_AREA_X; nCnt1++)
	{
		for (int nCnt2 = 0; nCnt2 < NUM_AREA_Y; nCnt2++)
		{
			if (m_pArea[nCnt1][nCnt2] != nullptr)
			{
				m_pArea[nCnt1][nCnt2]->GetRand()->Draw();
			}
		}
	}
}

//=====================================
// 道路の生成処理
//=====================================
CAreaRoad *CAreaRoad::Create(bool bRoadUP, bool bRoadDown, bool bRoadL, bool bRoadR, int nNumRoad)
{
	CAreaRoad *pAreaRoad = nullptr;

	switch (nNumRoad)
	{
	case 0:

		pAreaRoad = new CAreaRoadO;
		pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));

		break;
	case 1:

		pAreaRoad = new CAreaRoadU;

		if (bRoadUP)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));
		}
		else if (bRoadDown)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 3.14f, 0.0f));
		}
		else if (bRoadL)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 1.57f, 0.0f));
		}
		else if (bRoadR)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, -1.57f, 0.0f));
		}
		else
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));
		}

		break;
	case 2:

		if (bRoadUP && bRoadDown)
		{
			pAreaRoad = new CAreaRoadS;

			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));
		}
		else if (bRoadL && bRoadR)
		{
			pAreaRoad = new CAreaRoadS;

			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 1.57f, 0.0f));
		}
		else
		{
			pAreaRoad = new CAreaRoadL;

			if (bRoadUP)
			{
				if (bRoadL)
				{
					pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, -1.57f, 0.0f));
				}

				if (bRoadR)
				{
					pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 3.14f, 0.0f));
				}
			}

			if (bRoadDown)
			{
				if (bRoadL)
				{
					pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));
				}

				if (bRoadR)
				{
					pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 1.57f, 0.0f));
				}
			}
		}

		break;
	case 3:

		pAreaRoad = new CAreaRoadT;

		if (!bRoadUP)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));
		}
		else if (!bRoadDown)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 3.14f, 0.0f));
		}
		else if (!bRoadL)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 1.57f, 0.0f));
		}
		else if (!bRoadR)
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, -1.57f, 0.0f));
		}
		else
		{
			pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));
		}

		break;
	case 4:

		pAreaRoad = new CAreaRoadCross;
		pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));

		break;
	default:

		pAreaRoad = new CAreaRoadO;
		pAreaRoad->m_pRand->SetRot(D3DXVECTOR3(0.0f, 0.0f, 0.0f));

		break;
	}

	return pAreaRoad;
}