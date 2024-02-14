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
 62;
 -0.00000;0.00000;3.68101;,
 1.45696;1.05854;3.68101;,
 0.55651;1.71276;3.68101;,
 1.80091;0.00000;3.68101;,
 1.45696;-1.05854;3.68101;,
 0.55651;-1.71276;3.68101;,
 -0.55651;-1.71276;3.68101;,
 -1.45696;-1.05854;3.68101;,
 -1.80091;0.00000;3.68101;,
 -1.45696;1.05854;3.68101;,
 -0.55651;1.71276;3.68101;,
 1.71452;1.24567;3.25844;,
 0.65489;2.01554;3.25844;,
 2.11927;0.00000;3.25844;,
 1.71452;-1.24567;3.25844;,
 0.65489;-2.01554;3.25844;,
 -0.65489;-2.01554;3.25844;,
 -1.71452;-1.24567;3.25844;,
 -2.11926;0.00000;3.25844;,
 -1.71452;1.24567;3.25844;,
 -0.65489;2.01554;3.25844;,
 1.82121;1.32318;2.76220;,
 0.69564;2.14096;2.76220;,
 2.25114;0.00000;2.76220;,
 1.82121;-1.32318;2.76220;,
 0.69564;-2.14096;2.76220;,
 -0.69564;-2.14096;2.76220;,
 -1.82120;-1.32318;2.76220;,
 -2.25113;0.00000;2.76220;,
 -1.82120;1.32318;2.76220;,
 -0.69564;2.14096;2.76220;,
 1.82121;1.32318;-2.85216;,
 0.69564;2.14096;-2.85216;,
 2.25114;0.00000;-2.85216;,
 1.82121;-1.32318;-2.85216;,
 0.69564;-2.14096;-2.85216;,
 -0.69564;-2.14096;-2.85216;,
 -1.82120;-1.32318;-2.85216;,
 -2.25113;0.00000;-2.85216;,
 -1.82120;1.32318;-2.85216;,
 -0.69564;2.14096;-2.85216;,
 1.54403;1.12181;-3.34841;,
 0.58976;1.81512;-3.34841;,
 1.90853;0.00000;-3.34841;,
 1.54403;-1.12181;-3.34841;,
 0.58976;-1.81512;-3.34841;,
 -0.58977;-1.81512;-3.34841;,
 -1.54403;-1.12181;-3.34841;,
 -1.90852;0.00000;-3.34841;,
 -1.54403;1.12181;-3.34841;,
 -0.58977;1.81512;-3.34841;,
 1.23586;0.89791;-2.39542;,
 0.47205;1.45284;-2.39542;,
 1.52761;0.00000;-2.39542;,
 1.23586;-0.89791;-2.39542;,
 0.47205;-1.45283;-2.39542;,
 -0.47206;-1.45283;-2.39542;,
 -1.23586;-0.89791;-2.39542;,
 -1.52760;0.00000;-2.39542;,
 -1.23586;0.89791;-2.39542;,
 -0.47206;1.45284;-2.39542;,
 -0.00000;0.00000;-2.39542;;
 
 70;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,9,8;,
 3;0,10,9;,
 3;0,2,10;,
 4;2,1,11,12;,
 4;1,3,13,11;,
 4;3,4,14,13;,
 4;4,5,15,14;,
 4;5,6,16,15;,
 4;6,7,17,16;,
 4;7,8,18,17;,
 4;8,9,19,18;,
 4;9,10,20,19;,
 4;10,2,12,20;,
 4;12,11,21,22;,
 4;11,13,23,21;,
 4;13,14,24,23;,
 4;14,15,25,24;,
 4;15,16,26,25;,
 4;16,17,27,26;,
 4;17,18,28,27;,
 4;18,19,29,28;,
 4;19,20,30,29;,
 4;20,12,22,30;,
 4;22,21,31,32;,
 4;21,23,33,31;,
 4;23,24,34,33;,
 4;24,25,35,34;,
 4;25,26,36,35;,
 4;26,27,37,36;,
 4;27,28,38,37;,
 4;28,29,39,38;,
 4;29,30,40,39;,
 4;30,22,32,40;,
 4;32,31,41,42;,
 4;31,33,43,41;,
 4;33,34,44,43;,
 4;34,35,45,44;,
 4;35,36,46,45;,
 4;36,37,47,46;,
 4;37,38,48,47;,
 4;38,39,49,48;,
 4;39,40,50,49;,
 4;40,32,42,50;,
 4;42,41,51,52;,
 4;41,43,53,51;,
 4;43,44,54,53;,
 4;44,45,55,54;,
 4;45,46,56,55;,
 4;46,47,57,56;,
 4;47,48,58,57;,
 4;48,49,59,58;,
 4;49,50,60,59;,
 4;50,42,52,60;,
 3;52,51,61;,
 3;51,53,61;,
 3;53,54,61;,
 3;54,55,61;,
 3;55,56,61;,
 3;56,57,61;,
 3;57,58,61;,
 3;58,59,61;,
 3;59,60,61;,
 3;60,52,61;;
 
 MeshMaterialList {
  2;
  70;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
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
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.350000;0.350000;0.350000;;
  }
  Material {
   0.255780;0.255780;0.255780;1.000000;;
   5.000000;
   0.090000;0.090000;0.090000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  62;
  0.000000;0.000000;1.000000;,
  0.135646;0.417475;0.898507;,
  0.355125;0.258014;0.898507;,
  0.438959;0.000000;0.898507;,
  0.355125;-0.258013;0.898507;,
  0.135645;-0.417472;0.898508;,
  -0.135645;-0.417473;0.898508;,
  -0.355126;-0.258014;0.898507;,
  -0.438961;0.000000;0.898506;,
  -0.355126;0.258014;0.898507;,
  -0.135645;0.417474;0.898507;,
  0.277700;0.854667;0.438665;,
  0.727023;0.528215;0.438665;,
  0.898651;0.000000;0.438665;,
  0.727024;-0.528214;0.438665;,
  0.277699;-0.854667;0.438664;,
  -0.277699;-0.854669;0.438663;,
  -0.727026;-0.528214;0.438661;,
  -0.898654;0.000000;0.438659;,
  -0.727026;0.528214;0.438661;,
  -0.277698;0.854669;0.438663;,
  0.306407;0.943022;0.129707;,
  0.802182;0.582820;0.129708;,
  0.991552;0.000000;0.129707;,
  0.802183;-0.582820;0.129706;,
  0.306407;-0.943022;0.129704;,
  -0.306407;-0.943023;0.129703;,
  -0.802183;-0.582820;0.129703;,
  -0.991553;0.000000;0.129704;,
  -0.802183;0.582820;0.129703;,
  -0.306406;0.943023;0.129705;,
  0.294795;0.907287;-0.299878;,
  0.771784;0.560734;-0.299878;,
  0.953978;0.000000;-0.299878;,
  0.771784;-0.560734;-0.299878;,
  0.294795;-0.907287;-0.299878;,
  -0.294796;-0.907287;-0.299877;,
  -0.771784;-0.560734;-0.299877;,
  -0.953978;0.000000;-0.299878;,
  -0.771784;0.560734;-0.299877;,
  -0.294796;0.907287;-0.299877;,
  0.254298;0.782652;-0.568145;,
  0.665762;0.483705;-0.568146;,
  0.822928;0.000000;-0.568145;,
  0.665762;-0.483705;-0.568146;,
  0.254298;-0.782652;-0.568145;,
  -0.254299;-0.782652;-0.568144;,
  -0.665763;-0.483706;-0.568144;,
  -0.822928;0.000000;-0.568145;,
  -0.665763;0.483706;-0.568144;,
  -0.254299;0.782652;-0.568144;,
  -0.286943;-0.883122;-0.371159;,
  -0.751227;-0.545800;-0.371160;,
  -0.928568;0.000000;-0.371161;,
  -0.751226;0.545801;-0.371161;,
  -0.286942;0.883121;-0.371162;,
  0.286943;0.883121;-0.371162;,
  0.751228;0.545800;-0.371159;,
  0.928570;0.000000;-0.371158;,
  0.751229;-0.545799;-0.371158;,
  0.286944;-0.883122;-0.371158;,
  0.000000;0.000000;-1.000000;;
  70;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,9,8;,
  3;0,10,9;,
  3;0,1,10;,
  4;1,2,12,11;,
  4;2,3,13,12;,
  4;3,4,14,13;,
  4;4,5,15,14;,
  4;5,6,16,15;,
  4;6,7,17,16;,
  4;7,8,18,17;,
  4;8,9,19,18;,
  4;9,10,20,19;,
  4;10,1,11,20;,
  4;11,12,22,21;,
  4;12,13,23,22;,
  4;13,14,24,23;,
  4;14,15,25,24;,
  4;15,16,26,25;,
  4;16,17,27,26;,
  4;17,18,28,27;,
  4;18,19,29,28;,
  4;19,20,30,29;,
  4;20,11,21,30;,
  4;21,22,32,31;,
  4;22,23,33,32;,
  4;23,24,34,33;,
  4;24,25,35,34;,
  4;25,26,36,35;,
  4;26,27,37,36;,
  4;27,28,38,37;,
  4;28,29,39,38;,
  4;29,30,40,39;,
  4;30,21,31,40;,
  4;31,32,42,41;,
  4;32,33,43,42;,
  4;33,34,44,43;,
  4;34,35,45,44;,
  4;35,36,46,45;,
  4;36,37,47,46;,
  4;37,38,48,47;,
  4;38,39,49,48;,
  4;39,40,50,49;,
  4;40,31,41,50;,
  4;51,52,52,51;,
  4;52,53,53,52;,
  4;53,54,54,53;,
  4;54,55,55,54;,
  4;55,56,56,55;,
  4;56,57,57,56;,
  4;57,58,58,57;,
  4;58,59,59,58;,
  4;59,60,60,59;,
  4;60,51,51,60;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;;
 }
 MeshTextureCoords {
  62;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}