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
 133;
 -0.90871;-9.38396;0.90871;,
 -0.00000;-9.38396;1.28512;,
 -0.00000;-1.51435;1.65168;,
 -1.16791;-1.51435;1.16791;,
 0.90871;-9.38396;0.90871;,
 1.16791;-1.51435;1.16791;,
 1.28512;-9.38396;-0.00000;,
 1.65168;-1.51435;-0.00000;,
 0.90871;-9.38396;-0.90871;,
 1.16791;-1.51435;-1.16791;,
 0.00000;-9.38396;-1.28512;,
 0.00000;-1.51435;-1.65168;,
 -0.90871;-9.38396;-0.90871;,
 -1.16791;-1.51435;-1.16791;,
 -1.28512;-9.38396;0.00000;,
 -1.65168;-1.51435;0.00000;,
 -0.90871;-9.38396;0.90871;,
 -1.16791;-1.51435;1.16791;,
 -0.00000;-9.66099;0.99937;,
 -0.70667;-9.66099;0.70667;,
 0.00000;-9.66099;-0.00000;,
 0.70667;-9.66099;0.70667;,
 0.99937;-9.66099;-0.00000;,
 0.70667;-9.66099;-0.70667;,
 0.00000;-9.66099;-0.99937;,
 -0.70667;-9.66099;-0.70667;,
 -0.99937;-9.66099;0.00000;,
 -1.01429;-0.69948;1.01429;,
 -0.00000;-0.69948;1.43442;,
 0.00000;-0.69948;-0.00000;,
 1.01429;-0.69948;1.01429;,
 1.43442;-0.69948;-0.00000;,
 1.01429;-0.69948;-1.01429;,
 0.00000;-0.69948;-1.43442;,
 -1.01429;-0.69948;-1.01429;,
 -1.43442;-0.69948;0.00000;,
 -0.70667;-9.66099;0.70667;,
 -0.00000;-9.66099;0.99937;,
 0.70667;-9.66099;0.70667;,
 0.99937;-9.66099;-0.00000;,
 0.70667;-9.66099;-0.70667;,
 0.00000;-9.66099;-0.99937;,
 -0.70667;-9.66099;-0.70667;,
 -0.99937;-9.66099;0.00000;,
 -0.70667;-9.66099;0.70667;,
 -1.01429;-0.69948;1.01429;,
 -1.43442;-0.69948;0.00000;,
 -1.01429;-0.69948;-1.01429;,
 0.00000;-0.69948;-1.43442;,
 1.01429;-0.69948;-1.01429;,
 1.43442;-0.69948;-0.00000;,
 1.01429;-0.69948;1.01429;,
 -0.00000;-0.69948;1.43442;,
 -1.01429;-0.69948;1.01429;,
 -0.42050;-1.43565;0.42050;,
 -0.00000;-1.43565;0.59467;,
 -0.00000;-1.09880;1.09880;,
 -0.77697;-1.09880;0.77697;,
 0.42050;-1.43565;0.42050;,
 0.77697;-1.09880;0.77697;,
 0.59467;-1.43565;-0.00000;,
 1.09880;-1.09880;-0.00000;,
 0.42050;-1.43565;-0.42050;,
 0.77697;-1.09880;-0.77697;,
 0.00000;-1.43565;-0.59467;,
 0.00000;-1.09880;-1.09880;,
 -0.42050;-1.43565;-0.42050;,
 -0.77697;-1.09880;-0.77697;,
 -0.59467;-1.43565;0.00000;,
 -1.09880;-1.09880;0.00000;,
 -0.42050;-1.43565;0.42050;,
 -0.77697;-1.09880;0.77697;,
 -0.00000;-0.59467;1.43566;,
 -1.01516;-0.59467;1.01516;,
 1.01516;-0.59467;1.01516;,
 1.43565;-0.59467;-0.00000;,
 1.01516;-0.59467;-1.01516;,
 0.00000;-0.59467;-1.43566;,
 -1.01516;-0.59467;-1.01516;,
 -1.43565;-0.59467;0.00000;,
 -1.01516;-0.59467;1.01516;,
 0.00000;0.00000;1.55394;,
 -1.09880;0.00000;1.09880;,
 1.09880;0.00000;1.09880;,
 1.55394;0.00000;0.00000;,
 1.09880;0.00000;-1.09880;,
 0.00000;0.00000;-1.55394;,
 -1.09880;0.00000;-1.09880;,
 -1.55394;0.00000;0.00000;,
 -1.09880;0.00000;1.09880;,
 0.00000;0.59467;1.43566;,
 -1.01516;0.59467;1.01516;,
 1.01516;0.59467;1.01516;,
 1.43565;0.59467;0.00000;,
 1.01516;0.59467;-1.01516;,
 0.00000;0.59467;-1.43566;,
 -1.01516;0.59467;-1.01516;,
 -1.43565;0.59467;0.00000;,
 -1.01516;0.59467;1.01516;,
 0.00000;1.09880;1.09880;,
 -0.77697;1.09880;0.77697;,
 0.77697;1.09880;0.77697;,
 1.09880;1.09880;0.00000;,
 0.77697;1.09880;-0.77697;,
 0.00000;1.09880;-1.09880;,
 -0.77697;1.09880;-0.77697;,
 -1.09880;1.09880;0.00000;,
 -0.77697;1.09880;0.77697;,
 0.00000;1.43565;0.59467;,
 -0.42050;1.43565;0.42050;,
 0.42050;1.43565;0.42050;,
 0.59467;1.43565;0.00000;,
 0.42050;1.43565;-0.42050;,
 0.00000;1.43565;-0.59467;,
 -0.42050;1.43565;-0.42050;,
 -0.59467;1.43565;0.00000;,
 -0.42050;1.43565;0.42050;,
 0.00000;-1.55394;-0.00000;,
 0.00000;-1.55394;-0.00000;,
 0.00000;-1.55394;-0.00000;,
 0.00000;-1.55394;-0.00000;,
 0.00000;-1.55394;-0.00000;,
 0.00000;-1.55394;-0.00000;,
 0.00000;-1.55394;-0.00000;,
 0.00000;-1.55394;-0.00000;,
 0.00000;1.55394;0.00000;,
 0.00000;1.55394;0.00000;,
 0.00000;1.55394;0.00000;,
 0.00000;1.55394;0.00000;,
 0.00000;1.55394;0.00000;,
 0.00000;1.55394;0.00000;,
 0.00000;1.55394;0.00000;,
 0.00000;1.55394;0.00000;;
 
 104;
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
 4;36,37,1,0;,
 4;37,38,4,1;,
 4;38,39,6,4;,
 4;39,40,8,6;,
 4;40,41,10,8;,
 4;41,42,12,10;,
 4;42,43,14,12;,
 4;43,44,16,14;,
 4;15,17,45,46;,
 4;13,15,46,47;,
 4;11,13,47,48;,
 4;9,11,48,49;,
 4;7,9,49,50;,
 4;5,7,50,51;,
 4;2,5,51,52;,
 4;3,2,52,53;,
 4;54,55,56,57;,
 4;55,58,59,56;,
 4;58,60,61,59;,
 4;60,62,63,61;,
 4;62,64,65,63;,
 4;64,66,67,65;,
 4;66,68,69,67;,
 4;68,70,71,69;,
 4;57,56,72,73;,
 4;56,59,74,72;,
 4;59,61,75,74;,
 4;61,63,76,75;,
 4;63,65,77,76;,
 4;65,67,78,77;,
 4;67,69,79,78;,
 4;69,71,80,79;,
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
 4;91,90,99,100;,
 4;90,92,101,99;,
 4;92,93,102,101;,
 4;93,94,103,102;,
 4;94,95,104,103;,
 4;95,96,105,104;,
 4;96,97,106,105;,
 4;97,98,107,106;,
 4;100,99,108,109;,
 4;99,101,110,108;,
 4;101,102,111,110;,
 4;102,103,112,111;,
 4;103,104,113,112;,
 4;104,105,114,113;,
 4;105,106,115,114;,
 4;106,107,116,115;,
 3;55,54,117;,
 3;58,55,118;,
 3;60,58,119;,
 3;62,60,120;,
 3;64,62,121;,
 3;66,64,122;,
 3;68,66,123;,
 3;70,68,124;,
 3;109,108,125;,
 3;108,110,126;,
 3;110,111,127;,
 3;111,112,128;,
 3;112,113,129;,
 3;113,114,130;,
 3;114,115,131;,
 3;115,116,132;;
 
 MeshMaterialList {
  2;
  104;
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
  1,
  1,
  1,
  1;;
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
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
  90;
  -0.260224;-0.929821;0.260224;,
  0.000000;-0.929821;0.368013;,
  0.260224;-0.929821;0.260224;,
  0.368013;-0.929821;-0.000000;,
  0.260224;-0.929821;-0.260224;,
  0.000000;-0.929821;-0.368013;,
  -0.260224;-0.929821;-0.260224;,
  -0.368013;-0.929821;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -0.642307;-0.418191;0.642307;,
  0.000000;-0.418191;0.908359;,
  0.642307;-0.418191;0.642307;,
  0.908359;-0.418191;-0.000000;,
  0.642307;-0.418191;-0.642307;,
  0.000000;-0.418191;-0.908359;,
  -0.642307;-0.418191;-0.642307;,
  -0.908359;-0.418191;0.000000;,
  -0.703035;0.107160;0.703035;,
  -0.994242;0.107160;0.000000;,
  -0.703035;0.107160;-0.703035;,
  0.000000;0.107160;-0.994242;,
  0.703035;0.107160;-0.703035;,
  0.994242;0.107160;0.000000;,
  0.703035;0.107160;0.703035;,
  0.000000;0.107160;0.994242;,
  -0.269133;-0.924735;0.269133;,
  0.000000;-0.924734;0.380614;,
  0.269133;-0.924735;0.269133;,
  0.380614;-0.924734;-0.000000;,
  0.269133;-0.924735;-0.269133;,
  0.000000;-0.924734;-0.380614;,
  -0.269133;-0.924735;-0.269133;,
  -0.380614;-0.924734;0.000000;,
  -0.498494;-0.709231;0.498493;,
  0.000000;-0.709231;0.704976;,
  0.498494;-0.709231;0.498493;,
  0.704978;-0.709229;-0.000000;,
  0.498494;-0.709231;-0.498493;,
  0.000000;-0.709231;-0.704976;,
  -0.498494;-0.709231;-0.498493;,
  -0.704978;-0.709229;0.000000;,
  -0.652734;-0.384551;0.652732;,
  0.000000;-0.384551;0.923104;,
  0.652734;-0.384551;0.652732;,
  0.923104;-0.384550;-0.000000;,
  0.652734;-0.384551;-0.652732;,
  0.000000;-0.384551;-0.923104;,
  -0.652734;-0.384551;-0.652732;,
  -0.923104;-0.384550;0.000000;,
  -0.707107;-0.000000;0.707106;,
  0.000000;0.000000;1.000000;,
  0.707107;-0.000000;0.707106;,
  1.000000;0.000000;0.000000;,
  0.707107;-0.000000;-0.707106;,
  0.000000;0.000000;-1.000000;,
  -0.707107;-0.000000;-0.707106;,
  -1.000000;0.000000;0.000000;,
  -0.652734;0.384551;0.652732;,
  0.000000;0.384551;0.923104;,
  0.652734;0.384551;0.652732;,
  0.923104;0.384551;0.000000;,
  0.652734;0.384551;-0.652732;,
  0.000000;0.384551;-0.923104;,
  -0.652734;0.384551;-0.652732;,
  -0.923104;0.384551;0.000000;,
  -0.498494;0.709231;0.498493;,
  0.000000;0.709231;0.704976;,
  0.498494;0.709231;0.498493;,
  0.704978;0.709229;0.000000;,
  0.498494;0.709231;-0.498493;,
  0.000000;0.709231;-0.704976;,
  -0.498494;0.709231;-0.498493;,
  -0.704978;0.709229;0.000000;,
  -0.269133;0.924735;0.269133;,
  0.000000;0.924734;0.380614;,
  0.269133;0.924735;0.269133;,
  0.380614;0.924734;0.000000;,
  0.269133;0.924735;-0.269133;,
  0.000000;0.924734;-0.380614;,
  -0.269133;0.924735;-0.269133;,
  -0.380614;0.924734;0.000000;,
  -0.683242;0.257608;0.683242;,
  -0.966249;0.257608;0.000000;,
  -0.683242;0.257608;-0.683242;,
  0.000000;0.257608;-0.966249;,
  0.683242;0.257608;-0.683242;,
  0.966249;0.257608;0.000000;,
  0.683242;0.257608;0.683242;,
  0.000000;0.257608;0.966249;;
  104;
  4;10,11,25,18;,
  4;11,12,24,25;,
  4;12,13,23,24;,
  4;13,14,22,23;,
  4;14,15,21,22;,
  4;15,16,20,21;,
  4;16,17,19,20;,
  4;17,10,18,19;,
  3;1,0,9;,
  3;2,1,9;,
  3;3,2,9;,
  3;4,3,9;,
  3;5,4,9;,
  3;6,5,9;,
  3;7,6,9;,
  3;0,7,9;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  4;0,1,11,10;,
  4;1,2,12,11;,
  4;2,3,13,12;,
  4;3,4,14,13;,
  4;4,5,15,14;,
  4;5,6,16,15;,
  4;6,7,17,16;,
  4;7,0,10,17;,
  4;19,18,82,83;,
  4;20,19,83,84;,
  4;21,20,84,85;,
  4;22,21,85,86;,
  4;23,22,86,87;,
  4;24,23,87,88;,
  4;25,24,88,89;,
  4;18,25,89,82;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,32,40,39;,
  4;32,33,41,40;,
  4;33,26,34,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,40,48,47;,
  4;40,41,49,48;,
  4;41,34,42,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,48,56,55;,
  4;48,49,57,56;,
  4;49,42,50,57;,
  4;50,51,59,58;,
  4;51,52,60,59;,
  4;52,53,61,60;,
  4;53,54,62,61;,
  4;54,55,63,62;,
  4;55,56,64,63;,
  4;56,57,65,64;,
  4;57,50,58,65;,
  4;58,59,67,66;,
  4;59,60,68,67;,
  4;60,61,69,68;,
  4;61,62,70,69;,
  4;62,63,71,70;,
  4;63,64,72,71;,
  4;64,65,73,72;,
  4;65,58,66,73;,
  4;66,67,75,74;,
  4;67,68,76,75;,
  4;68,69,77,76;,
  4;69,70,78,77;,
  4;70,71,79,78;,
  4;71,72,80,79;,
  4;72,73,81,80;,
  4;73,66,74,81;,
  3;27,26,9;,
  3;28,27,9;,
  3;29,28,9;,
  3;30,29,9;,
  3;31,30,9;,
  3;32,31,9;,
  3;33,32,9;,
  3;26,33,9;,
  3;74,75,8;,
  3;75,76,8;,
  3;76,77,8;,
  3;77,78,8;,
  3;78,79,8;,
  3;79,80,8;,
  3;80,81,8;,
  3;81,74,8;;
 }
 MeshTextureCoords {
  133;
  0.361901;0.961568;,
  0.369301;0.959261;,
  0.361314;0.895952;,
  0.351057;0.896885;,
  0.376913;0.957986;,
  0.371510;0.895060;,
  0.384592;0.957316;,
  0.381695;0.894445;,
  0.392298;0.957074;,
  0.391879;0.894206;,
  0.400020;0.957209;,
  0.402051;0.894361;,
  0.407754;0.957752;,
  0.412200;0.894863;,
  0.415495;0.958856;,
  0.422320;0.895566;,
  0.423184;0.960992;,
  0.432398;0.896172;,
  0.691887;0.671178;,
  0.720213;0.659445;,
  0.691887;0.632721;,
  0.663561;0.659445;,
  0.651828;0.631119;,
  0.663561;0.602793;,
  0.691887;0.591060;,
  0.720213;0.602793;,
  0.731946;0.631119;,
  0.627509;0.049486;,
  0.603723;0.039634;,
  0.603723;0.074617;,
  0.579937;0.049486;,
  0.570084;0.073272;,
  0.579937;0.097058;,
  0.603723;0.106910;,
  0.627509;0.097058;,
  0.637361;0.073272;,
  0.364191;0.964191;,
  0.370366;0.962110;,
  0.377488;0.960993;,
  0.384899;0.960379;,
  0.392411;0.960154;,
  0.399933;0.960289;,
  0.407380;0.960808;,
  0.414571;0.961826;,
  0.420941;0.963789;,
  0.431444;0.889163;,
  0.422239;0.888886;,
  0.412349;0.888171;,
  0.402142;0.887642;,
  0.391801;0.887476;,
  0.381449;0.887719;,
  0.371202;0.888335;,
  0.361228;0.889166;,
  0.351818;0.889662;,
  0.746987;0.085561;,
  0.754512;0.081863;,
  0.748774;0.072325;,
  0.736648;0.077355;,
  0.764610;0.081116;,
  0.761756;0.071464;,
  0.775815;0.081702;,
  0.774684;0.072151;,
  0.787572;0.082759;,
  0.787620;0.073306;,
  0.799524;0.083929;,
  0.800735;0.074489;,
  0.811230;0.085222;,
  0.814167;0.075627;,
  0.821924;0.087130;,
  0.827975;0.077255;,
  0.830054;0.090970;,
  0.841699;0.081794;,
  0.745190;0.062079;,
  0.729061;0.066037;,
  0.760205;0.061632;,
  0.774311;0.062468;,
  0.788025;0.063713;,
  0.801844;0.064962;,
  0.816252;0.066030;,
  0.831802;0.067060;,
  0.849167;0.069242;,
  0.744108;0.051392;,
  0.725965;0.052520;,
  0.760025;0.051676;,
  0.774635;0.052662;,
  0.788645;0.053945;,
  0.802658;0.055221;,
  0.817275;0.056182;,
  0.833200;0.056423;,
  0.851342;0.055227;,
  0.745527;0.040752;,
  0.728177;0.038506;,
  0.761064;0.041825;,
  0.775459;0.042918;,
  0.789267;0.044177;,
  0.802977;0.045418;,
  0.817083;0.046233;,
  0.832097;0.045745;,
  0.848212;0.041726;,
  0.749379;0.030560;,
  0.735679;0.025972;,
  0.763168;0.032225;,
  0.776582;0.033387;,
  0.789681;0.034583;,
  0.802604;0.035736;,
  0.815524;0.036408;,
  0.828497;0.035514;,
  0.840600;0.030438;,
  0.755456;0.020695;,
  0.747346;0.016827;,
  0.766132;0.022630;,
  0.777818;0.023945;,
  0.789747;0.025126;,
  0.801483;0.026185;,
  0.812669;0.026762;,
  0.822748;0.025994;,
  0.830249;0.022269;,
  0.756028;0.092021;,
  0.761334;0.091172;,
  0.770111;0.091251;,
  0.780614;0.092014;,
  0.791844;0.093038;,
  0.803038;0.094137;,
  0.813201;0.095422;,
  0.820536;0.097245;,
  0.756887;0.010589;,
  0.764208;0.012430;,
  0.774351;0.013735;,
  0.785520;0.014847;,
  0.796720;0.015875;,
  0.807191;0.016631;,
  0.815929;0.016697;,
  0.821191;0.015842;;
 }
}
