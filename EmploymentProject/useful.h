//=====================================
//
// bg�w�b�_�[
// Author:�����@��
//
//=====================================
#ifndef _BG_H_
#define _BG_H_

#include "main.h"
#include "object2D.h"

//�}�N����`---------------------------

//�񋓌^��`---------------------------

//�N���X��`---------------------------

//�\���̒�`---------------------------

//�v���g�^�C�v�錾---------------------

//���O��Ԑ錾---------------------
namespace useful
{
	D3DXCOLOR HSLtoRGB(float Hue);

	D3DXVECTOR3 PosRelativeMtx(D3DXVECTOR3 posO, D3DXVECTOR3 rot, D3DXVECTOR3 offset);
}

#endif // !_BG_H_