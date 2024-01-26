//=====================================
//
// 
// Author:������
//
//=====================================
#include "useful.h"
#include "manager.h"
#include "debugproc.h"

//�}�N����`---------------------------

//�񋓌^��`---------------------------

//�N���X��`---------------------------

//�\���̒�`---------------------------

//�v���g�^�C�v�錾---------------------

//�ÓI�����o�ϐ��錾-------------------

D3DXCOLOR useful::HSLtoRGB(float Hue)
{
	D3DXCOLOR colRGB = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	float max = 255.0f;
	float min = 0.0f;

	while (1)
	{
		if (Hue >= 360.0f)
		{
			Hue -= 360.0f;
		}
		else if (Hue < 0.0f)
		{
			Hue += 360.0f;
		}
		else
		{
			break;
		}
	}

	if (Hue >= 300.0f)
	{
		colRGB.r = max;
		colRGB.g = min;
		colRGB.b = max * ((360.0f - Hue) / 60.0f);
	}
	else if (Hue >= 240.0f)
	{
		colRGB.r = max * ((Hue - 240.0f) / 60.0f);
		colRGB.g = min;
		colRGB.b = max;
	}
	else if (Hue >= 180.0f)
	{
		colRGB.r = min;
		colRGB.g = max * ((240.0f - Hue) / 60.0f);
		colRGB.b = max;
	}
	else if (Hue >= 120.0f)
	{
		colRGB.r = min;
		colRGB.g = max;
		colRGB.b = max * ((Hue - 120.0f) / 60.0f);
	}
	else if (Hue >= 60.0f)
	{
		colRGB.r = max * ((120.0f - Hue) / 60.0f);
		colRGB.g = max;
		colRGB.b = min;
	}
	else if (Hue >= 0.0f)
	{
		colRGB.r = max;
		colRGB.g = max * (Hue / 60.0f);
		colRGB.b = min;
	}

	colRGB.r /= max;
	colRGB.g /= max;
	colRGB.b /= max;
	
	return colRGB;
}