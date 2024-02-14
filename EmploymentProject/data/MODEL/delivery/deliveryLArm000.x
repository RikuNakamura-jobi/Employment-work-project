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
 115;
 -0.79044;0.80738;-0.85437;,
 -0.79044;-0.04699;-1.20827;,
 -9.20283;-0.04699;-1.05566;,
 -9.20283;0.69948;-0.74647;,
 -0.79044;-0.90136;-0.85437;,
 -9.20283;-0.79345;-0.74647;,
 -0.79044;-1.25525;0.00000;,
 -9.20283;-1.10265;0.00000;,
 -0.79044;-0.90136;0.85437;,
 -9.20283;-0.79345;0.74647;,
 -0.79044;-0.04699;1.20827;,
 -9.20283;-0.04699;1.05566;,
 -0.79044;0.80738;0.85437;,
 -9.20283;0.69948;0.74647;,
 -0.79044;1.16128;0.00000;,
 -9.20283;1.00868;0.00000;,
 -0.79044;0.80738;-0.85437;,
 -9.20283;0.69948;-0.74647;,
 -0.79044;-0.04699;-1.20827;,
 -0.79044;0.80738;-0.85437;,
 -0.79044;-0.04699;0.00000;,
 -0.79044;-0.90136;-0.85437;,
 -0.79044;-1.25525;0.00000;,
 -0.79044;-0.90136;0.85437;,
 -0.79044;-0.04699;1.20827;,
 -0.79044;0.80738;0.85437;,
 -0.79044;1.16128;0.00000;,
 -9.20283;0.69948;-0.74647;,
 -9.20283;-0.04699;-1.05566;,
 -9.20283;-0.04699;0.00000;,
 -9.20283;-0.79345;-0.74647;,
 -9.20283;-1.10265;0.00000;,
 -9.20283;-0.79345;0.74647;,
 -9.20283;-0.04699;1.05566;,
 -9.20283;0.69948;0.74647;,
 -9.20283;1.00868;0.00000;,
 0.35029;-1.19598;-0.34403;,
 0.00000;-1.19598;-0.48653;,
 0.00000;-0.91536;-0.89900;,
 0.64726;-0.91536;-0.63569;,
 -0.35029;-1.19598;-0.34403;,
 -0.64726;-0.91536;-0.63569;,
 -0.49539;-1.19598;0.00000;,
 -0.91536;-0.91536;0.00000;,
 -0.35029;-1.19598;0.34403;,
 -0.64726;-0.91536;0.63569;,
 -0.00000;-1.19598;0.48653;,
 -0.00000;-0.91536;0.89900;,
 0.35029;-1.19598;0.34403;,
 0.64726;-0.91536;0.63569;,
 0.49539;-1.19598;-0.00000;,
 0.91536;-0.91536;-0.00000;,
 0.35029;-1.19598;-0.34403;,
 0.64726;-0.91536;-0.63569;,
 0.00000;-0.49538;-1.17460;,
 0.84568;-0.49538;-0.83056;,
 -0.84568;-0.49538;-0.83056;,
 -1.19598;-0.49538;0.00000;,
 -0.84568;-0.49538;0.83056;,
 -0.00000;-0.49538;1.17460;,
 0.84568;-0.49538;0.83056;,
 1.19598;-0.49538;-0.00000;,
 0.84568;-0.49538;-0.83056;,
 0.00000;0.00000;-1.27138;,
 0.91536;0.00000;-0.89900;,
 -0.91536;0.00000;-0.89900;,
 -1.29452;0.00000;0.00000;,
 -0.91536;0.00000;0.89900;,
 0.00000;0.00000;1.27138;,
 0.91536;0.00000;0.89900;,
 1.29452;0.00000;0.00000;,
 0.91536;0.00000;-0.89900;,
 0.00000;0.49538;-1.17460;,
 0.84568;0.49538;-0.83056;,
 -0.84568;0.49538;-0.83056;,
 -1.19598;0.49538;0.00000;,
 -0.84568;0.49538;0.83056;,
 0.00000;0.49538;1.17460;,
 0.84568;0.49538;0.83056;,
 1.19598;0.49538;0.00000;,
 0.84568;0.49538;-0.83056;,
 0.00000;0.91536;-0.89900;,
 0.64726;0.91536;-0.63569;,
 -0.64726;0.91536;-0.63569;,
 -0.91536;0.91536;0.00000;,
 -0.64726;0.91536;0.63569;,
 0.00000;0.91536;0.89900;,
 0.64726;0.91536;0.63569;,
 0.91536;0.91536;0.00000;,
 0.64726;0.91536;-0.63569;,
 0.00000;1.19598;-0.48653;,
 0.35029;1.19598;-0.34403;,
 -0.35029;1.19598;-0.34403;,
 -0.49539;1.19598;0.00000;,
 -0.35029;1.19598;0.34403;,
 0.00000;1.19598;0.48653;,
 0.35029;1.19598;0.34403;,
 0.49539;1.19598;0.00000;,
 0.35029;1.19598;-0.34403;,
 0.00000;-1.29452;-0.00000;,
 0.00000;-1.29452;-0.00000;,
 0.00000;-1.29452;-0.00000;,
 0.00000;-1.29452;-0.00000;,
 0.00000;-1.29452;-0.00000;,
 0.00000;-1.29452;-0.00000;,
 0.00000;-1.29452;-0.00000;,
 0.00000;-1.29452;-0.00000;,
 0.00000;1.29452;0.00000;,
 0.00000;1.29452;0.00000;,
 0.00000;1.29452;0.00000;,
 0.00000;1.29452;0.00000;,
 0.00000;1.29452;0.00000;,
 0.00000;1.29452;0.00000;,
 0.00000;1.29452;0.00000;,
 0.00000;1.29452;0.00000;;
 
 88;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 3;18,19,20;,
 3;21,18,20;,
 3;22,21,20;,
 3;23,22,20;,
 3;24,23,20;,
 3;25,24,20;,
 3;26,25,20;,
 3;19,26,20;,
 3;27,28,29;,
 3;28,30,29;,
 3;30,31,29;,
 3;31,32,29;,
 3;32,33,29;,
 3;33,34,29;,
 3;34,35,29;,
 3;35,27,29;,
 4;36,37,38,39;,
 4;37,40,41,38;,
 4;40,42,43,41;,
 4;42,44,45,43;,
 4;44,46,47,45;,
 4;46,48,49,47;,
 4;48,50,51,49;,
 4;50,52,53,51;,
 4;39,38,54,55;,
 4;38,41,56,54;,
 4;41,43,57,56;,
 4;43,45,58,57;,
 4;45,47,59,58;,
 4;47,49,60,59;,
 4;49,51,61,60;,
 4;51,53,62,61;,
 4;55,54,63,64;,
 4;54,56,65,63;,
 4;56,57,66,65;,
 4;57,58,67,66;,
 4;58,59,68,67;,
 4;59,60,69,68;,
 4;60,61,70,69;,
 4;61,62,71,70;,
 4;64,63,72,73;,
 4;63,65,74,72;,
 4;65,66,75,74;,
 4;66,67,76,75;,
 4;67,68,77,76;,
 4;68,69,78,77;,
 4;69,70,79,78;,
 4;70,71,80,79;,
 4;73,72,81,82;,
 4;72,74,83,81;,
 4;74,75,84,83;,
 4;75,76,85,84;,
 4;76,77,86,85;,
 4;77,78,87,86;,
 4;78,79,88,87;,
 4;79,80,89,88;,
 4;82,81,90,91;,
 4;81,83,92,90;,
 4;83,84,93,92;,
 4;84,85,94,93;,
 4;85,86,95,94;,
 4;86,87,96,95;,
 4;87,88,97,96;,
 4;88,89,98,97;,
 3;37,36,99;,
 3;40,37,100;,
 3;42,40,101;,
 3;44,42,102;,
 3;46,44,103;,
 3;48,46,104;,
 3;50,48,105;,
 3;52,50,106;,
 3;91,90,107;,
 3;90,92,108;,
 3;92,93,109;,
 3;93,94,110;,
 3;94,95,111;,
 3;95,96,112;,
 3;96,97,113;,
 3;97,98,114;;
 
 MeshMaterialList {
  2;
  88;
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
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
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
    "data\\TEXTURE\\blackmaid000.jpg";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  66;
  -0.018137;0.706990;-0.706991;,
  -0.018137;-0.000001;-0.999835;,
  -0.018137;-0.706991;-0.706990;,
  -0.018137;-0.999835;0.000000;,
  -0.018137;-0.706991;0.706990;,
  -0.018137;-0.000001;0.999835;,
  -0.018137;0.706990;0.706991;,
  -0.018137;0.999835;0.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.268789;-0.923614;-0.273295;,
  0.000000;-0.922467;-0.386077;,
  -0.268789;-0.923614;-0.273295;,
  -0.380537;-0.924766;0.000000;,
  -0.268789;-0.923614;0.273295;,
  0.000000;-0.922467;0.386077;,
  0.268789;-0.923614;0.273295;,
  0.380537;-0.924766;-0.000000;,
  0.496823;-0.706265;-0.504338;,
  0.000000;-0.703258;-0.710934;,
  -0.496823;-0.706265;-0.504338;,
  -0.704906;-0.709301;0.000000;,
  -0.496823;-0.706265;0.504338;,
  0.000000;-0.703258;0.710934;,
  0.496823;-0.706265;0.504338;,
  0.704906;-0.709301;-0.000000;,
  0.649113;-0.381787;-0.657944;,
  0.000000;-0.379006;-0.925394;,
  -0.649113;-0.381787;-0.657944;,
  -0.923079;-0.384611;0.000000;,
  -0.649113;-0.381787;0.657944;,
  0.000000;-0.379006;0.925394;,
  0.649113;-0.381787;0.657944;,
  0.923079;-0.384611;-0.000000;,
  0.702523;0.000000;-0.711661;,
  0.000000;0.000000;-1.000000;,
  -0.702523;0.000000;-0.711661;,
  -0.702523;0.000000;0.711661;,
  0.000000;0.000000;1.000000;,
  0.702523;0.000000;0.711661;,
  0.649113;0.381786;-0.657944;,
  0.000000;0.379006;-0.925394;,
  -0.649113;0.381786;-0.657944;,
  -0.923079;0.384611;0.000000;,
  -0.649113;0.381787;0.657944;,
  0.000000;0.379006;0.925394;,
  0.649113;0.381786;0.657944;,
  0.923079;0.384611;0.000000;,
  0.496823;0.706265;-0.504338;,
  0.000000;0.703258;-0.710934;,
  -0.496823;0.706265;-0.504338;,
  -0.704906;0.709301;0.000000;,
  -0.496823;0.706265;0.504338;,
  0.000000;0.703258;0.710934;,
  0.496823;0.706265;0.504338;,
  0.704906;0.709301;0.000000;,
  0.268789;0.923614;-0.273295;,
  0.000000;0.922467;-0.386077;,
  -0.268789;0.923614;-0.273295;,
  -0.380537;0.924766;0.000000;,
  -0.268789;0.923614;0.273295;,
  0.000000;0.922467;0.386077;,
  0.268789;0.923614;0.273295;,
  0.380537;0.924766;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;1.000000;0.000000;;
  88;
  4;0,1,1,0;,
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;4,5,5,4;,
  4;5,6,6,5;,
  4;6,7,7,6;,
  4;7,0,0,7;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,17,25,24;,
  4;17,10,18,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,24,32,31;,
  4;24,25,33,32;,
  4;25,18,26,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,9,36;,
  4;29,30,37,9;,
  4;30,31,38,37;,
  4;31,32,39,38;,
  4;32,33,8,39;,
  4;33,26,34,8;,
  4;34,35,41,40;,
  4;35,36,42,41;,
  4;36,9,43,42;,
  4;9,37,44,43;,
  4;37,38,45,44;,
  4;38,39,46,45;,
  4;39,8,47,46;,
  4;8,34,40,47;,
  4;40,41,49,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,40,48,55;,
  4;48,49,57,56;,
  4;49,50,58,57;,
  4;50,51,59,58;,
  4;51,52,60,59;,
  4;52,53,61,60;,
  4;53,54,62,61;,
  4;54,55,63,62;,
  4;55,48,56,63;,
  3;11,10,64;,
  3;12,11,64;,
  3;13,12,64;,
  3;14,13,64;,
  3;15,14,64;,
  3;16,15,64;,
  3;17,16,64;,
  3;10,17,64;,
  3;56,57,65;,
  3;57,58,65;,
  3;58,59,65;,
  3;59,60,65;,
  3;60,61,65;,
  3;61,62,65;,
  3;62,63,65;,
  3;63,56,65;;
 }
 MeshTextureCoords {
  115;
  0.476180;0.201830;,
  0.485440;0.202400;,
  0.490050;0.118050;,
  0.481950;0.117550;,
  0.494720;0.202840;,
  0.498150;0.118440;,
  0.504000;0.203160;,
  0.506260;0.118710;,
  0.513280;0.203340;,
  0.514370;0.118870;,
  0.522570;0.203400;,
  0.522480;0.118920;,
  0.531850;0.203320;,
  0.530590;0.118850;,
  0.541130;0.203120;,
  0.538700;0.118680;,
  0.550410;0.202790;,
  0.546810;0.118390;,
  0.591620;0.585840;,
  0.613390;0.576830;,
  0.591620;0.556290;,
  0.569850;0.576830;,
  0.560830;0.555060;,
  0.569850;0.533290;,
  0.591620;0.524270;,
  0.613390;0.533290;,
  0.622410;0.555060;,
  0.619720;0.366650;,
  0.596620;0.357240;,
  0.596810;0.389830;,
  0.573630;0.366910;,
  0.564220;0.390010;,
  0.573890;0.413000;,
  0.596990;0.422420;,
  0.619980;0.412740;,
  0.629400;0.389640;,
  0.897130;0.099990;,
  0.904090;0.096320;,
  0.899270;0.087980;,
  0.887260;0.092370;,
  0.913560;0.095950;,
  0.911240;0.087300;,
  0.923940;0.096660;,
  0.922850;0.087480;,
  0.934540;0.095500;,
  0.934370;0.087060;,
  0.945150;0.094450;,
  0.946090;0.086640;,
  0.955250;0.095700;,
  0.957990;0.087150;,
  0.964330;0.097590;,
  0.969920;0.088630;,
  0.971380;0.100560;,
  0.980960;0.092700;,
  0.895990;0.079080;,
  0.880800;0.081690;,
  0.909730;0.078510;,
  0.922230;0.078480;,
  0.934320;0.078420;,
  0.946780;0.078350;,
  0.959710;0.078490;,
  0.973210;0.079220;,
  0.987950;0.082100;,
  0.894590;0.069540;,
  0.878930;0.069530;,
  0.909310;0.069560;,
  0.922100;0.069570;,
  0.934260;0.069580;,
  0.947090;0.069590;,
  0.960360;0.069610;,
  0.973970;0.069620;,
  0.990880;0.069630;,
  0.896000;0.060010;,
  0.880830;0.057370;,
  0.909750;0.060610;,
  0.922250;0.060660;,
  0.934330;0.060750;,
  0.946800;0.060840;,
  0.959720;0.060720;,
  0.973230;0.060020;,
  0.987970;0.057170;,
  0.899310;0.051110;,
  0.887300;0.046700;,
  0.911280;0.051820;,
  0.922880;0.051660;,
  0.934400;0.052110;,
  0.946120;0.052550;,
  0.958020;0.052060;,
  0.969960;0.050600;,
  0.981000;0.046550;,
  0.904150;0.042780;,
  0.897190;0.039100;,
  0.913620;0.043180;,
  0.923990;0.042490;,
  0.934590;0.043660;,
  0.945190;0.044740;,
  0.955300;0.043510;,
  0.964380;0.041630;,
  0.971440;0.038670;,
  0.905690;0.105260;,
  0.909730;0.104790;,
  0.918110;0.105100;,
  0.931160;0.104710;,
  0.941220;0.103590;,
  0.947820;0.103480;,
  0.956360;0.104800;,
  0.963560;0.106760;,
  0.905760;0.033850;,
  0.909800;0.034330;,
  0.918180;0.034030;,
  0.931230;0.034450;,
  0.941280;0.035590;,
  0.947880;0.035710;,
  0.956430;0.034410;,
  0.963630;0.032450;;
 }
}
