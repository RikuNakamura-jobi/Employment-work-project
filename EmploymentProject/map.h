//=====================================
//
// map�w�b�_�[
// Author:�����@��
//
//=====================================
#ifndef _MAP_H_
#define _MAP_H_

#include "main.h"
#include "block.h"
#include "field.h"

//�}�N����`---------------------------

//�񋓌^��`---------------------------

//���O��Ԑ錾---------------------
namespace
{
	const int NUM_AREA_X = 10;			//X�����̃G���A��
	const int NUM_AREA_Y = 10;			//Y�����̃G���A��

	const int NUM_BIGBUILDING = 1;		//�傫���r���̌�

	const int MAX_SMALLBUILDING = 35;	//�������r���̍ő��
	const int MIN_SMALLBUILDING = 20;	//�������r���̍ŏ���

	const int MAX_SMALLAPART = 30;		//�A�p�[�g�̍ő��
	const int MIN_SMALLAPART = 15;		//�A�p�[�g�̍ŏ���

	const D3DXVECTOR3 DEF_VECTOR = D3DXVECTOR3(0.0f, 0.0f, 0.0f);		//vec�֘A�̏����l
	const D3DXVECTOR3 SIZ_FIELD = D3DXVECTOR3(2000.0f, 0.0f, 2000.0f);		//vec�֘A�̏����l
}

//�N���X��`---------------------------
class CMapArea;
class CBlock;
class CField;
class CMap
{
public:				//�O������A�N�Z�X�\

	//�R���X�g���N�^�E�f�X�g���N�^
	CMap();				//�f�t�H���g
	~CMap();

	//�����o�֐�
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);

	//�ÓI�����o�֐�
	static CMap *Create(void);

protected:			//�q�Ȃ�A�N�Z�X�\(�g��Ȃ�)

private:			//�O������A�N�Z�X�s�\

	//�����o�֐�

	//�����o�ϐ�
	CMapArea *m_pArea[NUM_AREA_X][NUM_AREA_Y];
	bool m_bRoad[NUM_AREA_X][NUM_AREA_Y];

	//�ÓI�����o�ϐ�

};

//�}�b�v�G���A�N���X�Q
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

//�\���̒�`---------------------------

//�v���g�^�C�v�錾---------------------

#endif // !_MAP_H_