xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 227;
 3.05353;-1.40024;-3.19344;,
 0.74354;-1.40024;-4.39904;,
 0.74354;0.08673;-4.08571;,
 2.87769;0.08673;-2.97189;,
 -1.56645;-1.40024;-3.19344;,
 -1.39061;0.08673;-2.97189;,
 -1.56645;-1.40024;-3.19344;,
 -2.52328;-1.40024;-0.28287;,
 -2.27461;0.08673;-0.28287;,
 -1.39061;0.08673;-2.97189;,
 -1.56645;-1.40024;2.62770;,
 -1.39061;0.08673;2.40614;,
 -1.56645;-1.40024;2.62770;,
 0.74354;-1.40024;3.83329;,
 0.74354;0.08673;3.51997;,
 -1.39061;0.08673;2.40614;,
 3.05353;-1.40024;2.62770;,
 2.87769;0.08673;2.40614;,
 3.05353;-1.40024;2.62770;,
 4.01036;-1.40024;-0.28287;,
 3.76169;0.08673;-0.28287;,
 2.87769;0.08673;2.40614;,
 3.05353;-1.40024;-3.19344;,
 2.87769;0.08673;-2.97189;,
 2.87769;0.08673;-2.97189;,
 0.74354;0.08673;-4.08571;,
 0.74354;1.34731;-3.19344;,
 2.37695;1.34731;-2.34095;,
 -1.39061;0.08673;-2.97189;,
 -0.88987;1.34731;-2.34095;,
 -1.56645;1.34731;-0.28287;,
 -0.88987;1.34731;-2.34095;,
 -0.88987;1.34731;1.77521;,
 -1.39061;0.08673;2.40614;,
 0.74354;0.08673;3.51997;,
 0.74354;1.34731;2.62770;,
 -0.88987;1.34731;1.77521;,
 2.87769;0.08673;2.40614;,
 2.37695;1.34731;1.77521;,
 3.05353;1.34731;-0.28287;,
 2.37695;1.34731;1.77521;,
 2.37695;1.34731;-2.34095;,
 0.74354;2.18961;-1.85806;,
 1.62753;2.18961;-1.39670;,
 -0.14046;2.18961;-1.39670;,
 -0.50662;2.18961;-0.28287;,
 -0.14046;2.18961;-1.39670;,
 -0.14046;2.18961;0.83095;,
 0.74354;2.18961;1.29232;,
 -0.14046;2.18961;0.83095;,
 1.62753;2.18961;0.83095;,
 1.99369;2.18961;-0.28287;,
 1.62753;2.18961;0.83095;,
 1.62753;2.18961;-1.39670;,
 0.74354;2.48539;-0.28287;,
 -0.50662;2.18961;-0.28287;,
 1.99369;2.18961;-0.28287;,
 0.22068;-0.29352;4.14191;,
 1.08513;-8.56643;5.40062;,
 2.98843;-8.50622;4.52523;,
 2.56239;0.96210;3.74855;,
 3.07173;-0.91772;-1.90182;,
 0.60409;-0.98272;-1.93046;,
 0.56044;-0.99701;1.86351;,
 3.02807;-0.93201;1.89214;,
 1.20415;-8.52206;-5.34766;,
 0.50701;-0.98633;-5.40062;,
 2.76717;0.60490;-4.69752;,
 2.99563;-8.47110;-4.92025;,
 3.26415;-8.48724;1.86641;,
 0.75978;-8.55321;1.83735;,
 0.80343;-8.53892;-1.95662;,
 3.30780;-8.47295;-1.92756;,
 4.53827;1.02652;0.19941;,
 5.05909;-8.42935;0.28980;,
 4.96181;-8.42634;-1.42219;,
 4.44545;1.02904;-1.23518;,
 -2.99449;-1.57141;-1.36533;,
 -2.65266;-8.65474;-1.52281;,
 -2.78450;-8.66462;0.18615;,
 -3.12131;-1.54526;0.12672;,
 -2.65266;-8.65474;-1.52281;,
 -1.70094;-8.60489;-1.98568;,
 -1.74459;-8.61918;1.80828;,
 -2.78450;-8.66462;0.18615;,
 -2.61337;-1.42043;-2.96601;,
 -1.04125;-1.35720;-4.74873;,
 -0.60350;-8.57906;-4.96781;,
 -2.25186;-8.63594;-3.47507;,
 -3.12131;-1.54526;0.12672;,
 -1.90720;-1.06201;1.83487;,
 -1.86355;-1.04772;-1.95909;,
 -2.99449;-1.57141;-1.36533;,
 -2.33186;-8.65775;2.12939;,
 -0.79997;-8.61986;4.47517;,
 -1.29643;-0.95282;4.21364;,
 -2.61636;-1.24628;2.63913;,
 2.56239;0.96210;3.74855;,
 2.98843;-8.50622;4.52523;,
 4.28810;-8.45533;2.67290;,
 3.80257;1.00475;2.19636;,
 4.44545;1.02904;-1.23518;,
 3.07173;-0.91772;-1.90182;,
 3.02807;-0.93201;1.89214;,
 4.53827;1.02652;0.19941;,
 2.99563;-8.47110;-4.92025;,
 2.76717;0.60490;-4.69752;,
 4.10072;1.02564;-2.87955;,
 4.60056;-8.43040;-3.38452;,
 5.05909;-8.42935;0.28980;,
 4.96181;-8.42634;-1.42219;,
 -1.29643;-0.95282;4.21364;,
 -0.79997;-8.61986;4.47517;,
 -0.60350;-8.57906;-4.96781;,
 -1.04125;-1.35720;-4.74873;,
 -2.61636;-1.24628;2.63913;,
 -1.29643;-0.95282;4.21364;,
 0.22068;-0.29352;4.14191;,
 2.56239;0.96210;3.74855;,
 2.56239;0.96210;3.74855;,
 3.80257;1.00475;2.19636;,
 2.98843;-8.50622;4.52523;,
 4.28810;-8.45533;2.67290;,
 1.08513;-8.56643;5.40062;,
 -0.79997;-8.61986;4.47517;,
 -2.33186;-8.65775;2.12939;,
 -2.25186;-8.63594;-3.47507;,
 -0.60350;-8.57906;-4.96781;,
 1.20415;-8.52206;-5.34766;,
 2.99563;-8.47110;-4.92025;,
 4.60056;-8.43040;-3.38452;,
 2.76717;0.60490;-4.69752;,
 4.10072;1.02564;-2.87955;,
 0.50701;-0.98633;-5.40062;,
 2.76717;0.60490;-4.69752;,
 -1.04125;-1.35720;-4.74873;,
 -2.61337;-1.42043;-2.96601;,
 1.71316;-10.58919;-0.83983;,
 1.49719;-10.58919;-1.46383;,
 1.49719;-0.53185;-1.46383;,
 1.71316;-0.53185;-0.83983;,
 1.16081;-10.58919;-1.89360;,
 1.16081;-0.53185;-1.89360;,
 1.16081;-10.58919;-1.89360;,
 0.73695;-10.58919;-2.09850;,
 0.73695;-0.53185;-2.09850;,
 1.16081;-0.53185;-1.89360;,
 0.26709;-10.58919;-2.14244;,
 0.26709;-0.53185;-2.14244;,
 -0.20276;-10.58919;-2.09850;,
 -0.20276;-0.53185;-2.09850;,
 -0.62663;-10.58919;-1.89360;,
 -0.62663;-0.53185;-1.89360;,
 -0.62663;-10.58919;-1.89360;,
 -0.96301;-10.58919;-1.46383;,
 -0.96301;-0.53185;-1.46383;,
 -0.62663;-0.53185;-1.89360;,
 -1.17898;-10.58919;-0.83983;,
 -1.17898;-0.53185;-0.83983;,
 -1.25339;-10.58919;-0.14813;,
 -1.25339;-0.53185;-0.14813;,
 -1.17898;-10.58919;0.54358;,
 -1.17898;-0.53185;0.54358;,
 -0.96301;-10.58919;1.16758;,
 -0.96301;-0.53185;1.16758;,
 -0.62663;-10.58919;1.59735;,
 -0.62663;-0.53185;1.59735;,
 -0.62663;-10.58919;1.59735;,
 -0.20276;-10.58919;1.80225;,
 -0.20276;-0.53185;1.80225;,
 -0.62663;-0.53185;1.59735;,
 0.26709;-10.58919;1.84619;,
 0.26709;-0.53185;1.84619;,
 0.73695;-10.58919;1.80225;,
 0.73695;-0.53185;1.80225;,
 1.16081;-10.58919;1.59735;,
 1.16081;-0.53185;1.59735;,
 1.16081;-10.58919;1.59735;,
 1.49719;-10.58919;1.16758;,
 1.49719;-0.53185;1.16758;,
 1.16081;-0.53185;1.59735;,
 1.71316;-10.58919;0.54358;,
 1.71316;-0.53185;0.54358;,
 1.78758;-10.58919;-0.14813;,
 1.78758;-0.53185;-0.14813;,
 1.49719;-10.58919;-1.46383;,
 1.71316;-10.58919;-0.83983;,
 0.26709;-10.58919;-0.14813;,
 1.16081;-10.58919;-1.89360;,
 0.73695;-10.58919;-2.09850;,
 0.26709;-10.58919;-2.14244;,
 -0.20276;-10.58919;-2.09850;,
 -0.62663;-10.58919;-1.89360;,
 -0.96301;-10.58919;-1.46383;,
 -1.17898;-10.58919;-0.83983;,
 -1.25339;-10.58919;-0.14813;,
 -1.17898;-10.58919;0.54358;,
 -0.96301;-10.58919;1.16758;,
 -0.62663;-10.58919;1.59735;,
 -0.20276;-10.58919;1.80225;,
 0.26709;-10.58919;1.84619;,
 0.73695;-10.58919;1.80225;,
 1.16081;-10.58919;1.59735;,
 1.49719;-10.58919;1.16758;,
 1.71316;-10.58919;0.54358;,
 1.78758;-10.58919;-0.14813;,
 1.71316;-0.53185;-0.83983;,
 1.49719;-0.53185;-1.46383;,
 0.26709;-0.53185;-0.14813;,
 1.16081;-0.53185;-1.89360;,
 0.73695;-0.53185;-2.09850;,
 0.26709;-0.53185;-2.14244;,
 -0.20276;-0.53185;-2.09850;,
 -0.62663;-0.53185;-1.89360;,
 -0.96301;-0.53185;-1.46383;,
 -1.17898;-0.53185;-0.83983;,
 -1.25339;-0.53185;-0.14813;,
 -1.17898;-0.53185;0.54358;,
 -0.96301;-0.53185;1.16758;,
 -0.62663;-0.53185;1.59735;,
 -0.20276;-0.53185;1.80225;,
 0.26709;-0.53185;1.84619;,
 0.73695;-0.53185;1.80225;,
 1.16081;-0.53185;1.59735;,
 1.49719;-0.53185;1.16758;,
 1.71316;-0.53185;0.54358;,
 1.78758;-0.53185;-0.14813;;
 
 130;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;6,7,8,9;,
 4;7,10,11,8;,
 4;12,13,14,15;,
 4;13,16,17,14;,
 4;18,19,20,21;,
 4;19,22,23,20;,
 4;24,25,26,27;,
 4;25,28,29,26;,
 4;9,8,30,31;,
 4;8,11,32,30;,
 4;33,34,35,36;,
 4;34,37,38,35;,
 4;21,20,39,40;,
 4;20,23,41,39;,
 4;27,26,42,43;,
 4;26,29,44,42;,
 4;31,30,45,46;,
 4;30,32,47,45;,
 4;36,35,48,49;,
 4;35,38,50,48;,
 4;40,39,51,52;,
 4;39,41,53,51;,
 3;43,42,54;,
 3;42,44,54;,
 3;44,55,54;,
 3;55,49,54;,
 3;49,48,54;,
 3;48,50,54;,
 3;50,56,54;,
 3;56,43,54;,
 4;57,58,59,60;,
 4;61,62,63,64;,
 4;65,66,67,68;,
 4;69,70,71,72;,
 4;73,74,75,76;,
 4;77,78,79,80;,
 4;81,82,83,84;,
 4;85,86,87,88;,
 4;89,90,91,92;,
 4;93,94,95,96;,
 4;97,98,99,100;,
 4;101,102,103,104;,
 4;105,106,107,108;,
 4;109,69,72,110;,
 4;111,112,58,57;,
 4;62,91,90,63;,
 4;113,114,66,65;,
 4;70,83,82,71;,
 4;115,116,90,89;,
 4;63,90,116,117;,
 4;64,63,117,118;,
 4;104,103,119,120;,
 4;99,74,73,100;,
 4;121,69,109,122;,
 4;123,70,69,121;,
 4;124,83,70,123;,
 4;84,83,124,125;,
 4;80,79,93,96;,
 4;126,127,82,81;,
 4;71,82,127,128;,
 4;72,71,128,129;,
 4;110,72,129,130;,
 4;76,75,108,107;,
 4;131,102,101,132;,
 4;133,62,61,134;,
 4;135,91,62,133;,
 4;92,91,135,136;,
 4;88,78,77,85;,
 4;137,138,139,140;,
 4;138,141,142,139;,
 4;143,144,145,146;,
 4;144,147,148,145;,
 4;147,149,150,148;,
 4;149,151,152,150;,
 4;153,154,155,156;,
 4;154,157,158,155;,
 4;157,159,160,158;,
 4;159,161,162,160;,
 4;161,163,164,162;,
 4;163,165,166,164;,
 4;167,168,169,170;,
 4;168,171,172,169;,
 4;171,173,174,172;,
 4;173,175,176,174;,
 4;177,178,179,180;,
 4;178,181,182,179;,
 4;181,183,184,182;,
 4;183,137,140,184;,
 3;185,186,187;,
 3;188,185,187;,
 3;189,188,187;,
 3;190,189,187;,
 3;191,190,187;,
 3;192,191,187;,
 3;193,192,187;,
 3;194,193,187;,
 3;195,194,187;,
 3;196,195,187;,
 3;197,196,187;,
 3;198,197,187;,
 3;199,198,187;,
 3;200,199,187;,
 3;201,200,187;,
 3;202,201,187;,
 3;203,202,187;,
 3;204,203,187;,
 3;205,204,187;,
 3;186,205,187;,
 3;206,207,208;,
 3;207,209,208;,
 3;209,210,208;,
 3;210,211,208;,
 3;211,212,208;,
 3;212,213,208;,
 3;213,214,208;,
 3;214,215,208;,
 3;215,216,208;,
 3;216,217,208;,
 3;217,218,208;,
 3;218,219,208;,
 3;219,220,208;,
 3;220,221,208;,
 3;221,222,208;,
 3;222,223,208;,
 3;223,224,208;,
 3;224,225,208;,
 3;225,226,208;,
 3;226,206,208;;
 
 MeshMaterialList {
  1;
  130;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\treasurehunter.png";
   }
  }
 }
 MeshNormals {
  109;
  0.750133;0.183371;-0.635355;,
  0.000000;0.206186;-0.978513;,
  -0.750133;0.183371;-0.635355;,
  -0.986303;0.164944;0.000000;,
  -0.750133;0.183372;0.635355;,
  0.000000;0.206187;0.978513;,
  0.750133;0.183372;0.635355;,
  0.986303;0.164944;0.000000;,
  0.712543;0.364789;-0.599343;,
  -0.000000;0.403356;-0.915043;,
  -0.712543;0.364789;-0.599343;,
  -0.942859;0.333192;0.000000;,
  -0.712543;0.364788;0.599343;,
  -0.000000;0.403355;0.915043;,
  0.712543;0.364788;0.599343;,
  0.942859;0.333192;0.000000;,
  0.560322;0.686948;-0.462754;,
  0.000000;0.728812;-0.684714;,
  -0.560323;0.686947;-0.462755;,
  -0.760046;0.649869;0.000000;,
  -0.560323;0.686947;0.462755;,
  0.000000;0.728812;0.684714;,
  0.560323;0.686948;0.462754;,
  0.760045;0.649871;0.000000;,
  0.312142;0.915855;-0.252543;,
  0.000000;0.931947;-0.362594;,
  -0.312142;0.915854;-0.252543;,
  -0.434928;0.900465;0.000000;,
  -0.312143;0.915854;0.252543;,
  0.000000;0.931948;0.362593;,
  0.312143;0.915854;0.252542;,
  0.434927;0.900466;0.000000;,
  0.000001;1.000000;0.000000;,
  -0.908430;-0.049318;0.415117;,
  0.880657;0.069419;0.468640;,
  -0.877530;-0.022268;-0.479004;,
  0.894024;0.059237;-0.444085;,
  0.015982;0.109404;0.993869;,
  -0.020543;0.005368;-0.999775;,
  0.561251;0.111863;0.820051;,
  0.522403;0.040425;-0.851740;,
  -0.551855;0.015309;0.833800;,
  -0.518552;-0.008669;-0.855002;,
  -0.996538;-0.047967;0.067902;,
  -0.232284;0.970920;-0.057961;,
  -0.137261;0.972440;-0.188468;,
  -0.544069;0.792225;-0.276347;,
  0.989015;0.058370;0.135803;,
  0.028991;-0.999573;-0.003595;,
  0.027324;-0.999614;-0.005099;,
  0.040691;-0.999145;-0.007279;,
  -0.987805;-0.042761;-0.149710;,
  0.037910;-0.999281;-0.000611;,
  0.027280;-0.999625;-0.002379;,
  0.028045;-0.999602;-0.003204;,
  0.990249;0.057326;-0.126969;,
  -0.530626;0.832768;0.157900;,
  -0.128885;0.990134;0.054992;,
  -0.227152;0.972825;-0.044863;,
  0.975856;0.000000;-0.218415;,
  0.878228;0.000000;-0.478242;,
  0.627621;0.000000;-0.778519;,
  0.268436;0.000000;-0.963298;,
  -0.000001;0.000000;-1.000000;,
  -0.268432;0.000000;-0.963299;,
  -0.627617;0.000000;-0.778522;,
  -0.878228;0.000000;-0.478242;,
  -0.975858;0.000000;-0.218408;,
  -1.000000;0.000000;-0.000001;,
  -0.975858;0.000000;0.218407;,
  -0.878228;0.000000;0.478242;,
  -0.627617;0.000000;0.778522;,
  -0.268432;0.000000;0.963299;,
  -0.000001;0.000000;1.000000;,
  0.268436;0.000000;0.963298;,
  0.627621;0.000000;0.778519;,
  0.878228;0.000000;0.478242;,
  0.975856;0.000000;0.218414;,
  1.000000;0.000000;-0.000001;,
  0.000000;-1.000000;-0.000000;,
  0.000000;1.000000;0.000000;,
  0.048236;-0.998836;0.000572;,
  0.053687;-0.998519;-0.008773;,
  -0.339260;0.940421;-0.022606;,
  -0.371276;0.926440;-0.062154;,
  -0.802388;0.576122;0.155747;,
  -0.834714;0.505313;-0.218884;,
  0.031022;-0.999515;-0.002777;,
  0.029108;-0.999570;-0.003443;,
  -0.270566;0.962532;-0.018040;,
  -0.243348;0.964448;-0.103061;,
  -0.243357;0.894669;-0.374627;,
  -0.567485;0.631169;-0.528760;,
  -0.804115;0.391791;-0.447100;,
  0.030186;-0.999537;-0.003748;,
  0.032825;-0.999459;-0.002131;,
  0.028275;-0.999578;-0.006735;,
  0.043175;-0.999001;-0.011575;,
  0.057336;-0.998242;-0.015042;,
  0.046436;-0.998915;0.003648;,
  0.037612;-0.999291;0.001762;,
  0.028187;-0.999602;-0.001296;,
  0.028293;-0.999595;-0.002965;,
  0.028997;-0.999573;-0.003463;,
  -0.577401;0.764140;0.287572;,
  -0.780375;0.556588;0.284999;,
  -0.231611;0.966932;0.106764;,
  -0.233439;0.969301;-0.077207;,
  -0.335398;0.937060;-0.097091;;
  130;
  4;0,1,9,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,0,8,15;,
  4;8,9,17,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,8,16,23;,
  4;16,17,25,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,16,24,31;,
  3;24,25,32;,
  3;25,26,32;,
  3;26,27,32;,
  3;27,28,32;,
  3;28,29,32;,
  3;29,30,32;,
  3;30,31,32;,
  3;31,24,32;,
  4;37,37,39,39;,
  4;56,57,45,46;,
  4;38,38,40,40;,
  4;48,49,53,54;,
  4;47,47,55,55;,
  4;51,51,43,43;,
  4;81,52,50,82;,
  4;35,42,42,35;,
  4;83,44,58,84;,
  4;33,41,41,33;,
  4;39,39,34,34;,
  4;85,56,46,86;,
  4;40,40,36,36;,
  4;87,48,54,88;,
  4;41,41,37,37;,
  4;57,58,44,45;,
  4;42,42,38,38;,
  4;49,50,52,53;,
  4;89,90,44,83;,
  4;45,44,90,91;,
  4;46,45,91,92;,
  4;86,46,92,93;,
  4;34,47,47,34;,
  4;94,48,87,95;,
  4;96,49,48,94;,
  4;97,50,49,96;,
  4;82,50,97,98;,
  4;43,43,33,33;,
  4;99,100,52,81;,
  4;53,52,100,101;,
  4;54,53,101,102;,
  4;88,54,102,103;,
  4;55,55,36,36;,
  4;104,56,85,105;,
  4;106,57,56,104;,
  4;107,58,57,106;,
  4;84,58,107,108;,
  4;35,51,51,35;,
  4;59,60,60,59;,
  4;60,61,61,60;,
  4;61,62,62,61;,
  4;62,63,63,62;,
  4;63,64,64,63;,
  4;64,65,65,64;,
  4;65,66,66,65;,
  4;66,67,67,66;,
  4;67,68,68,67;,
  4;68,69,69,68;,
  4;69,70,70,69;,
  4;70,71,71,70;,
  4;71,72,72,71;,
  4;72,73,73,72;,
  4;73,74,74,73;,
  4;74,75,75,74;,
  4;75,76,76,75;,
  4;76,77,77,76;,
  4;77,78,78,77;,
  4;78,59,59,78;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;79,79,79;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;,
  3;80,80,80;;
 }
 MeshTextureCoords {
  227;
  0.952660;0.894780;,
  0.952660;0.868350;,
  0.935650;0.868350;,
  0.935650;0.892760;,
  0.952660;0.841920;,
  0.935650;0.843930;,
  0.938840;0.842220;,
  0.938840;0.867880;,
  0.951960;0.867880;,
  0.951960;0.844170;,
  0.938840;0.893540;,
  0.951960;0.891590;,
  0.955110;0.841920;,
  0.955110;0.868350;,
  0.972120;0.868350;,
  0.972120;0.843930;,
  0.955110;0.894780;,
  0.972120;0.892760;,
  0.937990;0.847180;,
  0.937990;0.871240;,
  0.950280;0.871240;,
  0.950280;0.849010;,
  0.937990;0.895290;,
  0.950280;0.893460;,
  0.962900;0.855580;,
  0.950560;0.849140;,
  0.950560;0.854300;,
  0.960010;0.859230;,
  0.938230;0.855580;,
  0.941120;0.859230;,
  0.963070;0.867880;,
  0.963070;0.849730;,
  0.963070;0.886030;,
  0.938230;0.886670;,
  0.950560;0.893110;,
  0.950560;0.887950;,
  0.941120;0.883020;,
  0.962900;0.886670;,
  0.960010;0.883020;,
  0.960700;0.871240;,
  0.960700;0.854220;,
  0.960700;0.888250;,
  0.950560;0.862020;,
  0.955670;0.864680;,
  0.945450;0.864680;,
  0.970500;0.867880;,
  0.970500;0.858060;,
  0.970500;0.877700;,
  0.950560;0.880230;,
  0.945450;0.877560;,
  0.955670;0.877560;,
  0.967660;0.871240;,
  0.967660;0.862030;,
  0.967660;0.880440;,
  0.950560;0.871120;,
  0.943340;0.871120;,
  0.957790;0.871120;,
  0.439980;0.789670;,
  0.446740;0.914640;,
  0.475390;0.915170;,
  0.476110;0.772570;,
  0.971130;0.863850;,
  0.956040;0.863680;,
  0.955780;0.886880;,
  0.970870;0.887050;,
  0.251980;0.907870;,
  0.260930;0.798930;,
  0.228050;0.776280;,
  0.226100;0.907400;,
  0.952610;0.864290;,
  0.943670;0.864400;,
  0.943820;0.877950;,
  0.952770;0.877840;,
  0.530680;0.767240;,
  0.540240;0.909140;,
  0.565900;0.907120;,
  0.552190;0.765550;,
  0.332730;0.807070;,
  0.329510;0.911400;,
  0.354680;0.911760;,
  0.354710;0.806870;,
  0.931480;0.876400;,
  0.934880;0.878050;,
  0.934720;0.864500;,
  0.931010;0.870290;,
  0.309170;0.804650;,
  0.282910;0.803490;,
  0.278770;0.909850;,
  0.300750;0.910870;,
  0.933270;0.876260;,
  0.940690;0.886700;,
  0.940960;0.863500;,
  0.934040;0.867130;,
  0.383310;0.911900;,
  0.417870;0.911640;,
  0.414990;0.798670;,
  0.391760;0.802790;,
  0.477530;0.772310;,
  0.476820;0.915180;,
  0.504530;0.912280;,
  0.500760;0.769870;,
  0.962330;0.864010;,
  0.946510;0.858600;,
  0.946390;0.889430;,
  0.962310;0.875670;,
  0.618410;0.903750;,
  0.604590;0.767910;,
  0.576850;0.763700;,
  0.595330;0.904910;,
  0.959020;0.869920;,
  0.958670;0.876040;,
  0.416680;0.798440;,
  0.418370;0.914020;,
  0.278100;0.908430;,
  0.283350;0.804060;,
  0.936350;0.891620;,
  0.944420;0.901240;,
  0.953700;0.900800;,
  0.968020;0.898400;,
  0.961790;0.904520;,
  0.962130;0.891900;,
  0.951620;0.854800;,
  0.956270;0.861410;,
  0.944830;0.851670;,
  0.938090;0.854970;,
  0.932620;0.863350;,
  0.932910;0.883370;,
  0.938800;0.888700;,
  0.945250;0.890060;,
  0.951650;0.888530;,
  0.957380;0.883050;,
  0.958880;0.835880;,
  0.962300;0.850650;,
  0.955450;0.842460;,
  0.969270;0.846760;,
  0.945990;0.846450;,
  0.936370;0.857350;,
  0.943510;0.983300;,
  0.947040;0.983300;,
  0.947040;0.926450;,
  0.943510;0.926450;,
  0.949470;0.983300;,
  0.949470;0.926450;,
  0.960670;0.926450;,
  0.958280;0.926450;,
  0.958280;0.983300;,
  0.960670;0.983300;,
  0.955620;0.926450;,
  0.955620;0.983300;,
  0.952970;0.926450;,
  0.952970;0.983300;,
  0.950570;0.926450;,
  0.950570;0.983300;,
  0.961790;0.983300;,
  0.964220;0.983300;,
  0.964220;0.926450;,
  0.961790;0.926450;,
  0.967740;0.983300;,
  0.967740;0.926450;,
  0.971650;0.983300;,
  0.971650;0.926450;,
  0.975560;0.983300;,
  0.975560;0.926450;,
  0.979090;0.983300;,
  0.979090;0.926450;,
  0.981520;0.983300;,
  0.981520;0.926450;,
  0.982620;0.983300;,
  0.985020;0.983300;,
  0.985020;0.926450;,
  0.982620;0.926450;,
  0.987670;0.983300;,
  0.987670;0.926450;,
  0.990330;0.983300;,
  0.990330;0.926450;,
  0.992730;0.983300;,
  0.992730;0.926450;,
  0.929730;0.983300;,
  0.932160;0.983300;,
  0.932160;0.926450;,
  0.929730;0.926450;,
  0.935690;0.983300;,
  0.935690;0.926450;,
  0.939600;0.983300;,
  0.939600;0.926450;,
  0.979670;0.975090;,
  0.982790;0.966080;,
  0.961910;0.956090;,
  0.974820;0.981290;,
  0.968700;0.984250;,
  0.961910;0.984880;,
  0.955130;0.984250;,
  0.949010;0.981290;,
  0.944150;0.975090;,
  0.941030;0.966080;,
  0.939960;0.956090;,
  0.941030;0.946100;,
  0.944150;0.937090;,
  0.949010;0.930890;,
  0.955130;0.927930;,
  0.961910;0.927290;,
  0.968700;0.927930;,
  0.974820;0.930890;,
  0.979670;0.937090;,
  0.982790;0.946100;,
  0.983870;0.956090;,
  0.974670;0.859050;,
  0.971490;0.849840;,
  0.953340;0.869250;,
  0.966520;0.843500;,
  0.960270;0.840480;,
  0.953340;0.839830;,
  0.946410;0.840480;,
  0.940150;0.843500;,
  0.935190;0.849840;,
  0.932000;0.859050;,
  0.930910;0.869250;,
  0.932000;0.879460;,
  0.935190;0.888660;,
  0.940150;0.895000;,
  0.946410;0.898030;,
  0.953340;0.898670;,
  0.960270;0.898030;,
  0.966520;0.895000;,
  0.971490;0.888660;,
  0.974670;0.879460;,
  0.975770;0.869250;;
 }
}
