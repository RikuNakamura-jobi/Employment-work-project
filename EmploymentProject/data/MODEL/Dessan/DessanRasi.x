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
 158;
 -0.43766;-1.88335;0.22013;,
 0.00379;-1.88335;0.80871;,
 0.00379;-1.88032;1.42484;,
 -0.81191;-1.88032;1.42475;,
 0.44524;-1.88335;0.22013;,
 0.81949;-1.88032;1.42475;,
 0.62810;-1.88335;-1.20083;,
 1.15737;-1.88032;-1.20083;,
 0.44524;-1.88335;-2.62179;,
 0.81949;-1.88032;-3.82641;,
 0.00379;-1.88335;-3.21036;,
 0.00379;-1.88032;-4.91396;,
 -0.43766;-1.88335;-2.62179;,
 -0.81191;-1.88032;-3.82641;,
 -0.62052;-1.88335;-1.20083;,
 -1.14978;-1.88032;-1.20083;,
 -0.43766;-1.88335;0.22013;,
 -0.81191;-1.88032;1.42475;,
 0.00379;-1.86795;1.43863;,
 -1.06197;-1.86795;1.41901;,
 1.06956;-1.86795;1.41901;,
 1.51101;-1.86795;-1.20083;,
 1.06956;-1.86795;-4.63131;,
 0.00379;-1.86795;-5.70222;,
 -1.06197;-1.86795;-4.63131;,
 -1.50342;-1.86795;-1.20083;,
 -1.06197;-1.86795;1.41901;,
 0.00379;-1.85539;1.44480;,
 -1.14978;-1.85539;1.42484;,
 1.15737;-1.85539;1.42484;,
 1.63519;-1.85539;-1.20083;,
 1.15737;-1.85539;-4.91396;,
 0.01351;-1.85539;-5.91399;,
 -1.14978;-1.85539;-4.91396;,
 -1.62761;-1.85539;-1.20083;,
 -1.14978;-1.85539;1.42484;,
 0.00379;-1.40475;1.43863;,
 -1.06197;-1.40475;1.41901;,
 1.06956;-1.40475;1.41901;,
 1.51101;-1.40475;-1.20083;,
 1.06956;-1.40475;-4.63131;,
 0.00379;-1.40475;-5.70222;,
 -1.06197;-1.40475;-4.63131;,
 -1.50342;-1.40475;-1.20083;,
 -1.06197;-1.40475;1.41901;,
 0.00379;-0.93820;1.42484;,
 -0.81191;-1.02273;1.42475;,
 0.81949;-1.02273;1.42475;,
 1.15737;-1.02273;-1.20083;,
 0.81949;-1.02273;-3.82641;,
 0.00379;-1.02273;-4.91396;,
 -0.81191;-1.02273;-3.82641;,
 -1.14978;-1.02273;-1.20083;,
 -0.81191;-1.02273;1.42475;,
 0.00379;-0.76746;0.80871;,
 -0.43766;-0.76746;0.22013;,
 0.44524;-0.76746;0.22013;,
 0.62810;-0.76746;-1.20083;,
 0.44524;-0.76746;-2.62179;,
 0.00379;-0.76746;-3.21036;,
 -0.43766;-0.76746;-2.62179;,
 -0.62052;-0.76746;-1.20083;,
 -0.43766;-0.76746;0.22013;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-1.88128;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 0.00379;-0.67782;-1.20083;,
 -0.31865;-1.08793;0.31865;,
 -0.00000;-1.08793;0.45064;,
 -0.00000;-0.83266;0.83266;,
 -0.58878;-0.83266;0.58878;,
 0.31865;-1.08793;0.31865;,
 0.58878;-0.83266;0.58878;,
 0.45064;-1.08793;-0.00000;,
 0.83266;-0.83266;-0.00000;,
 0.31865;-1.08793;-0.31865;,
 0.58878;-0.83266;-0.58878;,
 0.00000;-1.08793;-0.45064;,
 0.00000;-0.83266;-0.83266;,
 -0.31865;-1.08793;-0.31865;,
 -0.58878;-0.83266;-0.58878;,
 -0.45064;-1.08793;0.00000;,
 -0.83266;-0.83266;0.00000;,
 -0.31865;-1.08793;0.31865;,
 -0.58878;-0.83266;0.58878;,
 -0.00000;-0.45064;1.08793;,
 -0.76928;-0.45064;0.76928;,
 0.76928;-0.45064;0.76928;,
 1.08793;-0.45064;-0.00000;,
 0.76928;-0.45064;-0.76928;,
 0.00000;-0.45064;-1.08793;,
 -0.76928;-0.45064;-0.76928;,
 -1.08793;-0.45064;0.00000;,
 -0.76928;-0.45064;0.76928;,
 0.00000;0.00000;1.17757;,
 -0.83266;0.00000;0.83266;,
 0.83266;0.00000;0.83266;,
 1.17757;0.00000;0.00000;,
 0.83266;0.00000;-0.83266;,
 0.00000;0.00000;-1.17757;,
 -0.83266;0.00000;-0.83266;,
 -1.17757;0.00000;0.00000;,
 -0.83266;0.00000;0.83266;,
 0.00000;0.45064;1.08793;,
 -0.76928;0.45064;0.76928;,
 0.76928;0.45064;0.76928;,
 1.08793;0.45064;0.00000;,
 0.76928;0.45064;-0.76928;,
 0.00000;0.45064;-1.08793;,
 -0.76928;0.45064;-0.76928;,
 -1.08793;0.45064;0.00000;,
 -0.76928;0.45064;0.76928;,
 0.00000;0.83266;0.83266;,
 -0.58878;0.83266;0.58878;,
 0.58878;0.83266;0.58878;,
 0.83266;0.83266;0.00000;,
 0.58878;0.83266;-0.58878;,
 0.00000;0.83266;-0.83266;,
 -0.58878;0.83266;-0.58878;,
 -0.83266;0.83266;0.00000;,
 -0.58878;0.83266;0.58878;,
 0.00000;1.08793;0.45064;,
 -0.31865;1.08793;0.31865;,
 0.31865;1.08793;0.31865;,
 0.45064;1.08793;0.00000;,
 0.31865;1.08793;-0.31865;,
 0.00000;1.08793;-0.45064;,
 -0.31865;1.08793;-0.31865;,
 -0.45064;1.08793;0.00000;,
 -0.31865;1.08793;0.31865;,
 0.00000;-1.17757;-0.00000;,
 0.00000;-1.17757;-0.00000;,
 0.00000;-1.17757;-0.00000;,
 0.00000;-1.17757;-0.00000;,
 0.00000;-1.17757;-0.00000;,
 0.00000;-1.17757;-0.00000;,
 0.00000;-1.17757;-0.00000;,
 0.00000;-1.17757;-0.00000;,
 0.00000;1.17757;0.00000;,
 0.00000;1.17757;0.00000;,
 0.00000;1.17757;0.00000;,
 0.00000;1.17757;0.00000;,
 0.00000;1.17757;0.00000;,
 0.00000;1.17757;0.00000;,
 0.00000;1.17757;0.00000;,
 0.00000;1.17757;0.00000;;
 
 128;
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
 3;61,62,78;,
 4;79,80,81,82;,
 4;80,83,84,81;,
 4;83,85,86,84;,
 4;85,87,88,86;,
 4;87,89,90,88;,
 4;89,91,92,90;,
 4;91,93,94,92;,
 4;93,95,96,94;,
 4;82,81,97,98;,
 4;81,84,99,97;,
 4;84,86,100,99;,
 4;86,88,101,100;,
 4;88,90,102,101;,
 4;90,92,103,102;,
 4;92,94,104,103;,
 4;94,96,105,104;,
 4;98,97,106,107;,
 4;97,99,108,106;,
 4;99,100,109,108;,
 4;100,101,110,109;,
 4;101,102,111,110;,
 4;102,103,112,111;,
 4;103,104,113,112;,
 4;104,105,114,113;,
 4;107,106,115,116;,
 4;106,108,117,115;,
 4;108,109,118,117;,
 4;109,110,119,118;,
 4;110,111,120,119;,
 4;111,112,121,120;,
 4;112,113,122,121;,
 4;113,114,123,122;,
 4;116,115,124,125;,
 4;115,117,126,124;,
 4;117,118,127,126;,
 4;118,119,128,127;,
 4;119,120,129,128;,
 4;120,121,130,129;,
 4;121,122,131,130;,
 4;122,123,132,131;,
 4;125,124,133,134;,
 4;124,126,135,133;,
 4;126,127,136,135;,
 4;127,128,137,136;,
 4;128,129,138,137;,
 4;129,130,139,138;,
 4;130,131,140,139;,
 4;131,132,141,140;,
 3;80,79,142;,
 3;83,80,143;,
 3;85,83,144;,
 3;87,85,145;,
 3;89,87,146;,
 3;91,89,147;,
 3;93,91,148;,
 3;95,93,149;,
 3;134,133,150;,
 3;133,135,151;,
 3;135,136,152;,
 3;136,137,153;,
 3;137,138,154;,
 3;138,139,155;,
 3;139,140,156;,
 3;140,141,157;;
 
 MeshMaterialList {
  2;
  128;
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
  136;
  -0.000553;-1.000000;0.000656;,
  0.000000;-0.999999;0.001158;,
  0.000553;-1.000000;0.000656;,
  0.001201;-0.999999;-0.000000;,
  0.000849;-1.000000;-0.000264;,
  -0.000000;-1.000000;-0.000373;,
  -0.000849;-1.000000;-0.000264;,
  -0.001201;-0.999999;-0.000000;,
  -0.016403;-0.999860;0.003408;,
  -0.000000;-0.999994;0.003348;,
  0.016403;-0.999860;0.003408;,
  0.022184;-0.999754;0.000409;,
  0.014556;-0.999881;-0.005077;,
  -0.000000;-0.999972;-0.007534;,
  -0.014556;-0.999881;-0.005077;,
  -0.022184;-0.999754;0.000409;,
  -0.013038;-0.420029;0.907417;,
  -0.000000;-0.420064;0.907494;,
  0.013038;-0.420028;0.907417;,
  0.074594;-0.997211;0.002412;,
  0.048165;-0.998658;-0.019027;,
  -0.000400;-0.999552;-0.029913;,
  -0.048566;-0.998627;-0.019614;,
  -0.074593;-0.997211;0.002412;,
  -0.017351;-0.236659;0.971438;,
  -0.000000;-0.236695;0.971584;,
  0.017351;-0.236659;0.971438;,
  0.110459;-0.993873;0.004003;,
  0.071249;-0.997032;-0.029152;,
  -0.000800;-0.998916;-0.046543;,
  -0.072049;-0.996940;-0.030325;,
  -0.110459;-0.993873;0.004003;,
  -0.014319;0.014142;0.999797;,
  -0.000000;0.014143;0.999900;,
  0.014319;0.014142;0.999797;,
  0.887756;0.459994;0.017155;,
  0.729740;0.598345;-0.330852;,
  0.238130;0.819023;-0.522011;,
  -0.730576;0.596187;-0.332895;,
  -0.887756;0.459994;0.017155;,
  -0.010786;0.013298;0.999853;,
  -0.000000;0.013298;0.999912;,
  0.010786;0.013298;0.999853;,
  0.610917;0.791676;0.005471;,
  0.452743;0.876122;-0.165635;,
  -0.000001;0.965334;-0.261018;,
  -0.452744;0.876121;-0.165635;,
  -0.610917;0.791676;0.005471;,
  -0.198240;0.976692;0.082306;,
  -0.000000;0.991960;0.126552;,
  0.198240;0.976692;0.082306;,
  0.291588;0.956544;-0.000000;,
  0.209686;0.975487;-0.066768;,
  -0.000001;0.995376;-0.096052;,
  -0.209687;0.975486;-0.066768;,
  -0.291589;0.956544;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -0.000000;1.000000;-0.000000;,
  -0.269131;-0.924736;0.269131;,
  0.000000;-0.924735;0.380611;,
  0.269131;-0.924736;0.269131;,
  0.380611;-0.924735;-0.000000;,
  0.269131;-0.924736;-0.269131;,
  0.000000;-0.924735;-0.380611;,
  -0.269131;-0.924736;-0.269131;,
  -0.380611;-0.924735;0.000000;,
  -0.498494;-0.709231;0.498494;,
  0.000000;-0.709229;0.704978;,
  0.498494;-0.709231;0.498494;,
  0.704978;-0.709229;-0.000000;,
  0.498494;-0.709231;-0.498494;,
  0.000000;-0.709229;-0.704978;,
  -0.498494;-0.709231;-0.498494;,
  -0.704978;-0.709229;0.000000;,
  -0.652733;-0.384549;0.652733;,
  0.000000;-0.384549;0.923105;,
  0.652733;-0.384549;0.652733;,
  0.923105;-0.384549;-0.000000;,
  0.652733;-0.384549;-0.652733;,
  0.000000;-0.384549;-0.923105;,
  -0.652733;-0.384549;-0.652733;,
  -0.923105;-0.384549;0.000000;,
  -0.707107;0.000000;0.707107;,
  0.000000;0.000000;1.000000;,
  0.707107;0.000000;0.707107;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;-0.707107;,
  0.000000;0.000000;-1.000000;,
  -0.707107;0.000000;-0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.652733;0.384549;0.652733;,
  0.000000;0.384549;0.923105;,
  0.652733;0.384549;0.652733;,
  0.923105;0.384549;0.000000;,
  0.652733;0.384549;-0.652733;,
  0.000000;0.384549;-0.923105;,
  -0.652733;0.384549;-0.652733;,
  -0.923105;0.384549;0.000000;,
  -0.498494;0.709231;0.498494;,
  0.000000;0.709229;0.704978;,
  0.498494;0.709231;0.498494;,
  0.704978;0.709229;0.000000;,
  0.498494;0.709231;-0.498494;,
  0.000000;0.709229;-0.704978;,
  -0.498494;0.709231;-0.498494;,
  -0.704978;0.709229;0.000000;,
  -0.269131;0.924736;0.269131;,
  0.000000;0.924735;0.380611;,
  0.269131;0.924736;0.269131;,
  0.380611;0.924735;0.000000;,
  0.269131;0.924736;-0.269131;,
  0.000000;0.924735;-0.380611;,
  -0.269131;0.924736;-0.269131;,
  -0.380611;0.924735;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;1.000000;0.000000;,
  -0.010292;-0.365446;0.930776;,
  -0.000000;-0.365465;0.930825;,
  0.010292;-0.365445;0.930776;,
  0.081356;-0.996593;0.013554;,
  -0.081356;-0.996593;0.013554;,
  0.120294;-0.992517;0.020948;,
  -0.120294;-0.992517;0.020948;,
  0.959435;0.226353;0.168072;,
  0.968575;0.247682;0.022724;,
  0.891825;0.428499;0.145040;,
  0.833463;0.364765;-0.415073;,
  0.617967;0.425520;-0.661097;,
  -0.618232;0.415219;-0.667370;,
  -0.833998;0.359483;-0.418591;,
  -0.968575;0.247682;0.022724;,
  -0.959435;0.226353;0.168073;,
  -0.891825;0.428499;0.145040;,
  0.478032;0.868331;0.132237;,
  -0.478033;0.868330;0.132237;,
  -0.000001;0.978038;0.208429;;
  128;
  4;0,1,9,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,0,8,15;,
  4;116,117,17,16;,
  4;117,118,18,17;,
  4;10,11,19,119;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,8,120,23;,
  4;16,17,25,24;,
  4;17,18,26,25;,
  4;119,19,27,121;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,120,122,31;,
  4;24,25,33,32;,
  4;25,26,34,33;,
  4;123,124,35,125;,
  4;124,126,36,35;,
  4;126,127,37,36;,
  4;128,129,38,128;,
  4;129,130,39,38;,
  4;130,131,132,39;,
  4;32,33,41,40;,
  4;33,34,42,41;,
  4;125,35,43,133;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,132,134,47;,
  4;134,135,49,48;,
  4;135,133,50,49;,
  4;133,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,134,48,55;,
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
  3;55,48,57;,
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
  4;74,75,83,82;,
  4;75,76,84,83;,
  4;76,77,85,84;,
  4;77,78,86,85;,
  4;78,79,87,86;,
  4;79,80,88,87;,
  4;80,81,89,88;,
  4;81,74,82,89;,
  4;82,83,91,90;,
  4;83,84,92,91;,
  4;84,85,93,92;,
  4;85,86,94,93;,
  4;86,87,95,94;,
  4;87,88,96,95;,
  4;88,89,97,96;,
  4;89,82,90,97;,
  4;90,91,99,98;,
  4;91,92,100,99;,
  4;92,93,101,100;,
  4;93,94,102,101;,
  4;94,95,103,102;,
  4;95,96,104,103;,
  4;96,97,105,104;,
  4;97,90,98,105;,
  4;98,99,107,106;,
  4;99,100,108,107;,
  4;100,101,109,108;,
  4;101,102,110,109;,
  4;102,103,111,110;,
  4;103,104,112,111;,
  4;104,105,113,112;,
  4;105,98,106,113;,
  3;59,58,114;,
  3;60,59,114;,
  3;61,60,114;,
  3;62,61,114;,
  3;63,62,114;,
  3;64,63,114;,
  3;65,64,114;,
  3;58,65,114;,
  3;106,107,115;,
  3;107,108,115;,
  3;108,109,115;,
  3;109,110,115;,
  3;110,111,115;,
  3;111,112,115;,
  3;112,113,115;,
  3;113,106,115;;
 }
 MeshTextureCoords {
  158;
  0.683892;0.565424;,
  0.685492;0.553896;,
  0.677853;0.545873;,
  0.667182;0.549684;,
  0.698143;0.550258;,
  0.684694;0.540889;,
  0.720200;0.550632;,
  0.720234;0.542552;,
  0.741105;0.549551;,
  0.747805;0.539216;,
  0.757056;0.552307;,
  0.757796;0.539763;,
  0.773095;0.551216;,
  0.767845;0.540321;,
  0.793917;0.554583;,
  0.795342;0.546536;,
  0.816239;0.558985;,
  0.835764;0.553901;,
  0.677677;0.545612;,
  0.663764;0.550685;,
  0.686823;0.538991;,
  0.719829;0.536622;,
  0.750593;0.532945;,
  0.758316;0.533023;,
  0.765756;0.533831;,
  0.796660;0.540899;,
  0.836012;0.549853;,
  0.677563;0.545383;,
  0.662495;0.550858;,
  0.687425;0.538164;,
  0.719660;0.534456;,
  0.751653;0.530940;,
  0.758379;0.530981;,
  0.764877;0.531713;,
  0.797133;0.538840;,
  0.836220;0.548404;,
  0.674964;0.537681;,
  0.660535;0.542386;,
  0.685260;0.532711;,
  0.719221;0.526222;,
  0.750798;0.524092;,
  0.758717;0.524865;,
  0.766538;0.525001;,
  0.798533;0.530956;,
  0.838122;0.541096;,
  0.674406;0.529403;,
  0.662672;0.533498;,
  0.681924;0.528009;,
  0.718579;0.517543;,
  0.749242;0.516204;,
  0.759149;0.516547;,
  0.769161;0.517397;,
  0.799626;0.522498;,
  0.840483;0.534146;,
  0.677629;0.517850;,
  0.669152;0.509877;,
  0.692188;0.515202;,
  0.717181;0.508882;,
  0.742191;0.506694;,
  0.759969;0.504132;,
  0.777285;0.508849;,
  0.801431;0.513700;,
  0.824797;0.519900;,
  0.700921;0.581467;,
  0.719834;0.564632;,
  0.718856;0.560405;,
  0.722108;0.560338;,
  0.717656;0.566212;,
  0.793961;0.568906;,
  0.790641;0.563959;,
  0.792896;0.564358;,
  0.672193;0.486483;,
  0.707396;0.493047;,
  0.713525;0.499599;,
  0.718132;0.498873;,
  0.717066;0.491039;,
  0.804187;0.496408;,
  0.801726;0.503670;,
  0.805242;0.504472;,
  0.756941;0.177950;,
  0.762987;0.174979;,
  0.758376;0.167315;,
  0.748633;0.171356;,
  0.771101;0.174378;,
  0.768807;0.166623;,
  0.780104;0.174849;,
  0.779196;0.167175;,
  0.789552;0.175699;,
  0.789590;0.168103;,
  0.799155;0.176639;,
  0.800128;0.169054;,
  0.808561;0.177678;,
  0.810921;0.169968;,
  0.817154;0.179211;,
  0.822016;0.171276;,
  0.823686;0.182297;,
  0.833043;0.174923;,
  0.755497;0.159082;,
  0.742536;0.162262;,
  0.767561;0.158723;,
  0.778896;0.159395;,
  0.789916;0.160395;,
  0.801019;0.161399;,
  0.812596;0.162256;,
  0.825091;0.163084;,
  0.839044;0.164838;,
  0.754627;0.150495;,
  0.740049;0.151402;,
  0.767416;0.150723;,
  0.779156;0.151515;,
  0.790413;0.152547;,
  0.801673;0.153572;,
  0.813418;0.154344;,
  0.826214;0.154537;,
  0.840792;0.153576;,
  0.755767;0.141945;,
  0.741826;0.140141;,
  0.768251;0.142808;,
  0.779818;0.143686;,
  0.790914;0.144697;,
  0.801930;0.145694;,
  0.813264;0.146349;,
  0.825328;0.145957;,
  0.838277;0.142728;,
  0.758862;0.133756;,
  0.747854;0.130069;,
  0.769942;0.135094;,
  0.780721;0.136028;,
  0.791246;0.136988;,
  0.801630;0.137915;,
  0.812011;0.138455;,
  0.822435;0.137737;,
  0.832161;0.133658;,
  0.763745;0.125829;,
  0.757229;0.122721;,
  0.772324;0.127384;,
  0.781713;0.128440;,
  0.791299;0.129390;,
  0.800729;0.130240;,
  0.809717;0.130704;,
  0.817816;0.130087;,
  0.823843;0.127094;,
  0.764205;0.183141;,
  0.768468;0.182459;,
  0.775521;0.182523;,
  0.783960;0.183136;,
  0.792984;0.183959;,
  0.801979;0.184841;,
  0.810145;0.185874;,
  0.816039;0.187339;,
  0.764896;0.117708;,
  0.770778;0.119188;,
  0.778928;0.120237;,
  0.787902;0.121130;,
  0.796902;0.121956;,
  0.805315;0.122564;,
  0.812336;0.122617;,
  0.816565;0.121929;;
 }
}
