//=====================================
//
// mapヘッダー
// Author:中村　陸
//
//=====================================
#ifndef _MAP_H_
#define _MAP_H_

#include "main.h"
#include "block.h"
#include "field.h"

//マクロ定義---------------------------

//列挙型定義---------------------------

//名前空間宣言---------------------
namespace
{
	const int NUM_AREA_X = 10;			//X方向のエリア数
	const int NUM_AREA_Y = 10;			//Y方向のエリア数

	const int NUM_BIGBUILDING = 1;		//大きいビルの個数

	const int MAX_SMALLBUILDING = 35;	//小さいビルの最大個数
	const int MIN_SMALLBUILDING = 20;	//小さいビルの最小個数

	const int MAX_SMALLAPART = 30;		//アパートの最大個数
	const int MIN_SMALLAPART = 15;		//アパートの最小個数

	const D3DXVECTOR3 DEF_VECTOR = D3DXVECTOR3(0.0f, 0.0f, 0.0f);		//vec関連の初期値
	const D3DXVECTOR3 SIZ_FIELD = D3DXVECTOR3(2000.0f, 0.0f, 2000.0f);		//vec関連の初期値
}

//クラス定義---------------------------
class CMapArea;
class CBlock;
class CField;
class CMap
{
public:				//外部からアクセス可能

	//コンストラクタ・デストラクタ
	CMap();				//デフォルト
	~CMap();

	//メンバ関数
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);

	//静的メンバ関数
	static CMap *Create(void);

protected:			//子ならアクセス可能(使わない)

private:			//外部からアクセス不可能

	//メンバ関数

	//メンバ変数
	CMapArea *m_pArea[NUM_AREA_X][NUM_AREA_Y];
	bool m_bRoad[NUM_AREA_X][NUM_AREA_Y];

	//静的メンバ変数

};

//マップエリアクラス群
class  CMapArea
{
public:
	CMapArea() {}
	~CMapArea() {}

	CBlock *GetBlock() { return m_pBlock; }
	CField *GetRand() { return m_pRand; }

protected:
	CBlock *m_pBlock;
	CField *m_pRand;

	D3DXVECTOR3 m_pos;
	D3DXVECTOR3 m_rot;

private:

};

class  CAreaBigBuilding : public CMapArea
{
public:
	CAreaBigBuilding()
	{ 
		m_pBlock = CBlock::Create(DEF_VECTOR, DEF_VECTOR, 1500.0f, 1500.0f, CBlock::TYPE_BIGBUILDING);
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_RAND);
	}
	~CAreaBigBuilding() {}

private:

};

class  CAreaSmallBuilding : public CMapArea
{
public:
	CAreaSmallBuilding() 
	{ 
		m_pBlock = CBlock::Create(DEF_VECTOR, DEF_VECTOR, 1500.0f, 1500.0f, CBlock::TYPE_SMALLBUILDING);
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_RAND);
	}
	~CAreaSmallBuilding() {}

private:

};

class  CAreaApart : public CMapArea
{
public:
	CAreaApart() 
	{ 
		m_pBlock = CBlock::Create(DEF_VECTOR, DEF_VECTOR, 1500.0f, 1500.0f, CBlock::TYPE_APART);
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_RAND);
	}
	~CAreaApart() {}

private:

};

class  CAreaRoad : public CMapArea
{
public:
	CAreaRoad() {}
	~CAreaRoad() {}

	static CAreaRoad *Create(bool bRoadUP, bool bRoadDown, bool bRoadL, bool bRoadR, int nNumRoad);

private:

};

class  CAreaRoadCross : public CAreaRoad
{
public:
	CAreaRoadCross()
	{ 
		m_pBlock = nullptr;
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_ROADCROSS);
	}
	~CAreaRoadCross() {}

private:

};

class  CAreaRoadT : public CAreaRoad
{
public:
	CAreaRoadT()
	{ 
		m_pBlock = nullptr;
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_ROADT);
	}
	~CAreaRoadT() {}

private:

};

class  CAreaRoadL : public CAreaRoad
{
public:
	CAreaRoadL()
	{ 
		m_pBlock = nullptr;
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_ROADL);
	}
	~CAreaRoadL() {}

private:

};

class  CAreaRoadU : public CAreaRoad
{
public:
	CAreaRoadU()
	{
		m_pBlock = nullptr;
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_ROADU);
	}
	~CAreaRoadU() {}

private:

};

class  CAreaRoadO : public CAreaRoad
{
public:
	CAreaRoadO()
	{
		m_pBlock = nullptr;
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_ROADO);
	}
	~CAreaRoadO() {}

private:

};

class  CAreaRoadS : public CAreaRoad
{
public:
	CAreaRoadS() 
	{ 
		m_pBlock = nullptr; 
		m_pRand = CField::Create(DEF_VECTOR, SIZ_FIELD, CField::TYPE_ROADS);
	}
	~CAreaRoadS() {}

private:

};

//構造体定義---------------------------

//プロトタイプ宣言---------------------

#endif // !_MAP_H_