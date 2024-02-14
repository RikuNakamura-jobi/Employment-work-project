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
 0.00379;-1.86794;1.43863;,
 -1.06197;-1.86794;1.41902;,
 1.06956;-1.86794;1.41902;,
 1.51101;-1.86794;-1.20083;,
 1.06956;-1.86794;-4.63131;,
 0.00379;-1.86794;-5.70222;,
 -1.06197;-1.86794;-4.63131;,
 -1.50343;-1.86794;-1.20083;,
 -1.06197;-1.86794;1.41902;,
 0.00379;-1.85539;1.44480;,
 -1.14978;-1.85539;1.42484;,
 1.15737;-1.85539;1.42484;,
 1.63519;-1.85539;-1.20083;,
 1.15737;-1.85539;-4.91396;,
 0.01351;-1.85539;-5.91399;,
 -1.14978;-1.85539;-4.91396;,
 -1.62761;-1.85539;-1.20083;,
 -1.14978;-1.85539;1.42484;,
 0.00379;-1.40476;1.43863;,
 -1.06197;-1.40476;1.41902;,
 1.06956;-1.40476;1.41902;,
 1.51101;-1.40476;-1.20083;,
 1.06956;-1.40476;-4.63131;,
 0.00379;-1.40476;-5.70222;,
 -1.06197;-1.40476;-4.63131;,
 -1.50343;-1.40476;-1.20083;,
 -1.06197;-1.40476;1.41902;,
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
 0.00379;-0.67783;-1.20083;,
 0.00379;-0.67783;-1.20083;,
 0.00379;-0.67783;-1.20083;,
 0.00379;-0.67783;-1.20083;,
 0.00379;-0.67783;-1.20083;,
 0.00379;-0.67783;-1.20083;,
 0.00379;-0.67783;-1.20083;,
 0.00379;-0.67783;-1.20083;,
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
 -0.76929;-0.45064;0.76929;,
 0.76929;-0.45064;0.76929;,
 1.08793;-0.45064;-0.00000;,
 0.76929;-0.45064;-0.76929;,
 0.00000;-0.45064;-1.08793;,
 -0.76929;-0.45064;-0.76929;,
 -1.08793;-0.45064;0.00000;,
 -0.76929;-0.45064;0.76929;,
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
 -0.76929;0.45064;0.76929;,
 0.76929;0.45064;0.76929;,
 1.08793;0.45064;0.00000;,
 0.76929;0.45064;-0.76929;,
 0.00000;0.45064;-1.08793;,
 -0.76929;0.45064;-0.76929;,
 -1.08793;0.45064;0.00000;,
 -0.76929;0.45064;0.76929;,
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
  1;
  128;
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
    "data\\TEXTURE\\blackmaid000.jpg";
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
  -0.001201;-0.999999;0.000000;,
  -0.016403;-0.999860;0.003408;,
  -0.000000;-0.999994;0.003348;,
  0.016403;-0.999860;0.003408;,
  0.022184;-0.999754;0.000409;,
  0.014556;-0.999881;-0.005077;,
  -0.000000;-0.999972;-0.007534;,
  -0.014556;-0.999881;-0.005077;,
  -0.022184;-0.999754;0.000409;,
  -0.013038;-0.420024;0.907419;,
  -0.000000;-0.420060;0.907496;,
  0.013038;-0.420024;0.907419;,
  0.074594;-0.997211;0.002412;,
  0.048165;-0.998658;-0.019027;,
  -0.000400;-0.999552;-0.029914;,
  -0.048566;-0.998627;-0.019614;,
  -0.074594;-0.997211;0.002412;,
  -0.017351;-0.236658;0.971438;,
  -0.000000;-0.236693;0.971584;,
  0.017351;-0.236658;0.971438;,
  0.110459;-0.993873;0.004003;,
  0.071249;-0.997032;-0.029152;,
  -0.000800;-0.998916;-0.046543;,
  -0.072049;-0.996940;-0.030325;,
  -0.110459;-0.993873;0.004003;,
  -0.014319;0.014142;0.999797;,
  -0.000000;0.014143;0.999900;,
  0.014318;0.014142;0.999798;,
  0.887756;0.459994;0.017155;,
  0.729740;0.598345;-0.330852;,
  0.238130;0.819023;-0.522011;,
  -0.730576;0.596187;-0.332895;,
  -0.887756;0.459994;0.017155;,
  -0.010786;0.013298;0.999853;,
  -0.000000;0.013298;0.999912;,
  0.010786;0.013297;0.999853;,
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
  0.000000;0.384548;0.923105;,
  0.652733;0.384549;0.652733;,
  0.923105;0.384548;0.000000;,
  0.652733;0.384549;-0.652733;,
  0.000000;0.384548;-0.923105;,
  -0.652733;0.384549;-0.652733;,
  -0.923105;0.384548;0.000000;,
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
  -0.010292;-0.365440;0.930778;,
  -0.000000;-0.365459;0.930828;,
  0.010292;-0.365439;0.930778;,
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
  -0.833999;0.359483;-0.418591;,
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
  0.683890;0.565420;,
  0.685490;0.553900;,
  0.677850;0.545870;,
  0.667180;0.549680;,
  0.698140;0.550260;,
  0.684690;0.540890;,
  0.720200;0.550630;,
  0.720230;0.542550;,
  0.741110;0.549550;,
  0.747800;0.539220;,
  0.757060;0.552310;,
  0.757800;0.539760;,
  0.773100;0.551220;,
  0.767840;0.540320;,
  0.793920;0.554580;,
  0.795340;0.546540;,
  0.816240;0.558980;,
  0.835760;0.553900;,
  0.677680;0.545610;,
  0.663760;0.550680;,
  0.686820;0.538990;,
  0.719830;0.536620;,
  0.750590;0.532950;,
  0.758320;0.533020;,
  0.765760;0.533830;,
  0.796660;0.540900;,
  0.836010;0.549850;,
  0.677560;0.545380;,
  0.662500;0.550860;,
  0.687430;0.538160;,
  0.719660;0.534460;,
  0.751650;0.530940;,
  0.758380;0.530980;,
  0.764880;0.531710;,
  0.797130;0.538840;,
  0.836220;0.548400;,
  0.674960;0.537680;,
  0.660530;0.542390;,
  0.685260;0.532710;,
  0.719220;0.526220;,
  0.750800;0.524090;,
  0.758720;0.524870;,
  0.766540;0.525000;,
  0.798530;0.530960;,
  0.838120;0.541100;,
  0.674410;0.529400;,
  0.662670;0.533500;,
  0.681920;0.528010;,
  0.718580;0.517540;,
  0.749240;0.516200;,
  0.759150;0.516550;,
  0.769160;0.517400;,
  0.799630;0.522500;,
  0.840480;0.534150;,
  0.677630;0.517850;,
  0.669150;0.509880;,
  0.692190;0.515200;,
  0.717180;0.508880;,
  0.742190;0.506690;,
  0.759970;0.504130;,
  0.777280;0.508850;,
  0.801430;0.513700;,
  0.824800;0.519900;,
  0.700920;0.581470;,
  0.719830;0.564630;,
  0.718860;0.560410;,
  0.722110;0.560340;,
  0.717660;0.566210;,
  0.793960;0.568910;,
  0.790640;0.563960;,
  0.792900;0.564360;,
  0.672190;0.486480;,
  0.707400;0.493050;,
  0.713520;0.499600;,
  0.718130;0.498870;,
  0.717070;0.491040;,
  0.804190;0.496410;,
  0.801730;0.503670;,
  0.805240;0.504470;,
  0.756940;0.177950;,
  0.762990;0.174980;,
  0.758380;0.167320;,
  0.748630;0.171360;,
  0.771100;0.174380;,
  0.768810;0.166620;,
  0.780100;0.174850;,
  0.779200;0.167170;,
  0.789550;0.175700;,
  0.789590;0.168100;,
  0.799150;0.176640;,
  0.800130;0.169050;,
  0.808560;0.177680;,
  0.810920;0.169970;,
  0.817150;0.179210;,
  0.822020;0.171280;,
  0.823690;0.182300;,
  0.833040;0.174920;,
  0.755500;0.159080;,
  0.742540;0.162260;,
  0.767560;0.158720;,
  0.778900;0.159390;,
  0.789920;0.160400;,
  0.801020;0.161400;,
  0.812600;0.162260;,
  0.825090;0.163080;,
  0.839040;0.164840;,
  0.754630;0.150490;,
  0.740050;0.151400;,
  0.767420;0.150720;,
  0.779160;0.151520;,
  0.790410;0.152550;,
  0.801670;0.153570;,
  0.813420;0.154340;,
  0.826210;0.154540;,
  0.840790;0.153580;,
  0.755770;0.141950;,
  0.741830;0.140140;,
  0.768250;0.142810;,
  0.779820;0.143690;,
  0.790910;0.144700;,
  0.801930;0.145690;,
  0.813260;0.146350;,
  0.825330;0.145960;,
  0.838280;0.142730;,
  0.758860;0.133760;,
  0.747850;0.130070;,
  0.769940;0.135090;,
  0.780720;0.136030;,
  0.791250;0.136990;,
  0.801630;0.137920;,
  0.812010;0.138450;,
  0.822440;0.137740;,
  0.832160;0.133660;,
  0.763750;0.125830;,
  0.757230;0.122720;,
  0.772320;0.127380;,
  0.781710;0.128440;,
  0.791300;0.129390;,
  0.800730;0.130240;,
  0.809720;0.130700;,
  0.817820;0.130090;,
  0.823840;0.127090;,
  0.764200;0.183140;,
  0.768470;0.182460;,
  0.775520;0.182520;,
  0.783960;0.183140;,
  0.792980;0.183960;,
  0.801980;0.184840;,
  0.810150;0.185870;,
  0.816040;0.187340;,
  0.764900;0.117710;,
  0.770780;0.119190;,
  0.778930;0.120240;,
  0.787900;0.121130;,
  0.796900;0.121960;,
  0.805320;0.122560;,
  0.812340;0.122620;,
  0.816560;0.121930;;
 }
}
