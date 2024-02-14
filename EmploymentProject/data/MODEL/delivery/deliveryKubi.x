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
 79;
 -0.49014;-1.67344;0.86958;,
 0.00000;-1.67344;1.07260;,
 0.00000;-1.28080;1.66024;,
 -0.90566;-1.28080;1.28510;,
 0.49014;-1.67344;0.86958;,
 0.90566;-1.28080;1.28510;,
 0.69317;-1.67344;0.37943;,
 1.28080;-1.28080;0.37943;,
 0.49014;-1.67344;-0.11070;,
 0.90566;-1.28080;-0.52623;,
 0.00000;-1.67344;-0.31372;,
 0.00000;-1.28080;-0.90137;,
 -0.49014;-1.67344;-0.11070;,
 -0.90566;-1.28080;-0.52623;,
 -0.69317;-1.67344;0.37943;,
 -1.28080;-1.28080;0.37943;,
 -0.49014;-1.67344;0.86958;,
 -0.90566;-1.28080;1.28510;,
 0.00000;-0.69317;2.05289;,
 -1.18330;-0.69317;1.56274;,
 1.18330;-0.69317;1.56274;,
 1.67344;-0.69317;0.37943;,
 1.18330;-0.69317;-0.80387;,
 0.00000;-0.69317;-1.29401;,
 -1.18330;-0.69317;-0.80387;,
 -1.67344;-0.69317;0.37943;,
 -1.18330;-0.69317;1.56274;,
 0.00000;-0.00000;2.19076;,
 -1.28080;0.00000;1.66024;,
 1.28080;-0.00000;1.66024;,
 1.81133;-0.00000;0.37943;,
 1.28080;0.00000;-0.90137;,
 0.00000;0.00000;-1.43189;,
 -1.28080;0.00000;-0.90137;,
 -1.81133;0.00000;0.37943;,
 -1.28080;0.00000;1.66024;,
 0.00000;0.69317;2.05289;,
 -1.18330;0.69317;1.56274;,
 1.18330;0.69317;1.56274;,
 1.67344;0.69317;0.37943;,
 1.18330;0.69317;-0.80387;,
 0.00000;0.69317;-1.29401;,
 -1.18330;0.69317;-0.80387;,
 -1.67344;0.69317;0.37943;,
 -1.18330;0.69317;1.56274;,
 0.00000;1.28080;1.66024;,
 -0.90566;1.28080;1.28510;,
 0.90566;1.28080;1.28510;,
 1.28080;1.28080;0.37943;,
 0.90566;1.28080;-0.52623;,
 0.00000;1.28080;-0.90137;,
 -0.90566;1.28080;-0.52623;,
 -1.28080;1.28080;0.37943;,
 -0.90566;1.28080;1.28510;,
 0.00000;1.67344;1.07260;,
 -0.49014;1.67344;0.86958;,
 0.49014;1.67344;0.86958;,
 0.69317;1.67344;0.37943;,
 0.49014;1.67344;-0.11070;,
 0.00000;1.67344;-0.31372;,
 -0.49014;1.67344;-0.11070;,
 -0.69317;1.67344;0.37943;,
 -0.49014;1.67344;0.86958;,
 0.00000;-1.81133;0.37943;,
 0.00000;-1.81133;0.37943;,
 0.00000;-1.81133;0.37943;,
 0.00000;-1.81133;0.37943;,
 0.00000;-1.81133;0.37943;,
 0.00000;-1.81133;0.37943;,
 0.00000;-1.81133;0.37943;,
 0.00000;-1.81133;0.37943;,
 0.00000;1.81133;0.37943;,
 0.00000;1.81133;0.37943;,
 0.00000;1.81133;0.37943;,
 0.00000;1.81133;0.37943;,
 0.00000;1.81133;0.37943;,
 0.00000;1.81133;0.37943;,
 0.00000;1.81133;0.37943;,
 0.00000;1.81133;0.37943;;
 
 64;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;3,2,18,19;,
 4;2,5,20,18;,
 4;5,7,21,20;,
 4;7,9,22,21;,
 4;9,11,23,22;,
 4;11,13,24,23;,
 4;13,15,25,24;,
 4;15,17,26,25;,
 4;19,18,27,28;,
 4;18,20,29,27;,
 4;20,21,30,29;,
 4;21,22,31,30;,
 4;22,23,32,31;,
 4;23,24,33,32;,
 4;24,25,34,33;,
 4;25,26,35,34;,
 4;28,27,36,37;,
 4;27,29,38,36;,
 4;29,30,39,38;,
 4;30,31,40,39;,
 4;31,32,41,40;,
 4;32,33,42,41;,
 4;33,34,43,42;,
 4;34,35,44,43;,
 4;37,36,45,46;,
 4;36,38,47,45;,
 4;38,39,48,47;,
 4;39,40,49,48;,
 4;40,41,50,49;,
 4;41,42,51,50;,
 4;42,43,52,51;,
 4;43,44,53,52;,
 4;46,45,54,55;,
 4;45,47,56,54;,
 4;47,48,57,56;,
 4;48,49,58,57;,
 4;49,50,59,58;,
 4;50,51,60,59;,
 4;51,52,61,60;,
 4;52,53,62,61;,
 3;1,0,63;,
 3;4,1,64;,
 3;6,4,65;,
 3;8,6,66;,
 3;10,8,67;,
 3;12,10,68;,
 3;14,12,69;,
 3;16,14,70;,
 3;55,54,71;,
 3;54,56,72;,
 3;56,57,73;,
 3;57,58,74;,
 3;58,59,75;,
 3;59,60,76;,
 3;60,61,77;,
 3;61,62,78;;
 
 MeshMaterialList {
  1;
  64;
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
    "data\\TEXTURE\\wood000.png";
   }
  }
 }
 MeshNormals {
  58;
  -0.269132;-0.924735;0.269133;,
  0.000000;-0.924735;0.380611;,
  0.269132;-0.924735;0.269133;,
  0.380611;-0.924735;-0.000001;,
  0.269132;-0.924735;-0.269134;,
  0.000000;-0.924735;-0.380612;,
  -0.269132;-0.924735;-0.269134;,
  -0.380611;-0.924735;-0.000001;,
  -0.498494;-0.709231;0.498493;,
  0.000000;-0.709231;0.704976;,
  0.498494;-0.709231;0.498493;,
  0.704976;-0.709231;-0.000001;,
  0.498493;-0.709231;-0.498494;,
  0.000000;-0.709231;-0.704976;,
  -0.498493;-0.709231;-0.498494;,
  -0.704976;-0.709231;-0.000001;,
  -0.652733;-0.384551;0.652732;,
  0.000000;-0.384551;0.923104;,
  0.652733;-0.384551;0.652732;,
  0.923103;-0.384552;-0.000000;,
  0.652733;-0.384552;-0.652733;,
  0.000000;-0.384552;-0.923103;,
  -0.652733;-0.384552;-0.652733;,
  -0.923103;-0.384552;-0.000000;,
  -0.707107;0.000000;0.707106;,
  0.000000;0.000000;1.000000;,
  0.707107;0.000000;0.707106;,
  1.000000;0.000000;-0.000000;,
  0.707107;-0.000000;-0.707107;,
  0.000000;0.000000;-1.000000;,
  -0.707107;-0.000000;-0.707107;,
  -1.000000;0.000000;-0.000000;,
  -0.652733;0.384552;0.652732;,
  0.000000;0.384551;0.923104;,
  0.652733;0.384552;0.652732;,
  0.923103;0.384552;-0.000000;,
  0.652733;0.384552;-0.652733;,
  0.000000;0.384552;-0.923103;,
  -0.652733;0.384552;-0.652733;,
  -0.923103;0.384552;-0.000000;,
  -0.498494;0.709231;0.498494;,
  0.000000;0.709231;0.704976;,
  0.498494;0.709231;0.498494;,
  0.704976;0.709231;-0.000001;,
  0.498493;0.709231;-0.498494;,
  0.000000;0.709231;-0.704976;,
  -0.498493;0.709231;-0.498494;,
  -0.704976;0.709231;-0.000001;,
  -0.269132;0.924735;0.269133;,
  0.000000;0.924735;0.380611;,
  0.269132;0.924735;0.269133;,
  0.380611;0.924735;-0.000001;,
  0.269132;0.924735;-0.269134;,
  0.000000;0.924735;-0.380612;,
  -0.269132;0.924735;-0.269134;,
  -0.380611;0.924735;-0.000001;,
  0.000000;-1.000000;-0.000001;,
  0.000000;1.000000;-0.000001;;
  64;
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
  4;24,25,33,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,24,32,39;,
  4;32,33,41,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,32,40,47;,
  4;40,41,49,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,40,48,55;,
  3;1,0,56;,
  3;2,1,56;,
  3;3,2,56;,
  3;4,3,56;,
  3;5,4,56;,
  3;6,5,56;,
  3;7,6,56;,
  3;0,7,56;,
  3;48,49,57;,
  3;49,50,57;,
  3;50,51,57;,
  3;51,52,57;,
  3;52,53,57;,
  3;53,54,57;,
  3;54,55,57;,
  3;55,48,57;;
 }
 MeshTextureCoords {
  79;
  0.748860;0.370800;,
  0.755940;0.367320;,
  0.750550;0.358340;,
  0.739130;0.363080;,
  0.765450;0.366610;,
  0.762760;0.357530;,
  0.775990;0.367170;,
  0.774930;0.358180;,
  0.787060;0.368160;,
  0.787100;0.359270;,
  0.798300;0.369260;,
  0.799440;0.360380;,
  0.809320;0.370480;,
  0.812080;0.361450;,
  0.819380;0.372270;,
  0.825070;0.362980;,
  0.827030;0.375890;,
  0.837990;0.367250;,
  0.747170;0.348700;,
  0.731990;0.352420;,
  0.761300;0.348280;,
  0.774580;0.349070;,
  0.787480;0.350240;,
  0.800490;0.351410;,
  0.814040;0.352420;,
  0.828680;0.353390;,
  0.845020;0.355440;,
  0.746150;0.338640;,
  0.729080;0.339710;,
  0.761130;0.338910;,
  0.774880;0.339840;,
  0.788060;0.341050;,
  0.801250;0.342250;,
  0.815010;0.343150;,
  0.829990;0.343380;,
  0.847060;0.342250;,
  0.747490;0.328630;,
  0.731160;0.326520;,
  0.762110;0.329640;,
  0.775660;0.330670;,
  0.788650;0.331850;,
  0.801550;0.333020;,
  0.814820;0.333790;,
  0.828950;0.333330;,
  0.844120;0.329550;,
  0.751110;0.319040;,
  0.738220;0.314720;,
  0.764090;0.320610;,
  0.776710;0.321700;,
  0.789040;0.322830;,
  0.801200;0.323910;,
  0.813360;0.324540;,
  0.825570;0.323700;,
  0.836960;0.318930;,
  0.756830;0.309760;,
  0.749200;0.306120;,
  0.766880;0.311580;,
  0.777880;0.312820;,
  0.789100;0.313930;,
  0.800140;0.314920;,
  0.810670;0.315470;,
  0.820160;0.314740;,
  0.827210;0.311240;,
  0.757370;0.376880;,
  0.762360;0.376080;,
  0.770620;0.376150;,
  0.780510;0.376870;,
  0.791070;0.377830;,
  0.801610;0.378870;,
  0.811170;0.380080;,
  0.818080;0.381790;,
  0.758180;0.300250;,
  0.765070;0.301980;,
  0.774610;0.303210;,
  0.785120;0.304250;,
  0.795660;0.305220;,
  0.805520;0.305930;,
  0.813740;0.305990;,
  0.818690;0.305190;;
 }
}