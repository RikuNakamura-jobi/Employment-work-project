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
 -0.67162;0.81537;0.85437;,
 -0.67162;-0.03900;1.20827;,
 -7.58718;-0.03900;1.05566;,
 -7.58718;0.70746;0.74647;,
 -0.67162;-0.89338;0.85437;,
 -7.58718;-0.78547;0.74647;,
 -0.67162;-1.24726;0.00000;,
 -7.58718;-1.09466;0.00000;,
 -0.67162;-0.89338;-0.85437;,
 -7.58718;-0.78547;-0.74647;,
 -0.67162;-0.03900;-1.20827;,
 -7.58718;-0.03900;-1.05566;,
 -0.67162;0.81537;-0.85437;,
 -7.58718;0.70746;-0.74647;,
 -0.67162;1.16926;0.00000;,
 -7.58718;1.01666;0.00000;,
 -0.67162;0.81537;0.85437;,
 -7.58718;0.70746;0.74647;,
 -0.67162;-0.03900;1.20827;,
 -0.67162;0.81537;0.85437;,
 -0.67162;-0.03900;0.00000;,
 -0.67162;-0.89338;0.85437;,
 -0.67162;-1.24726;0.00000;,
 -0.67162;-0.89338;-0.85437;,
 -0.67162;-0.03900;-1.20827;,
 -0.67162;0.81537;-0.85437;,
 -0.67162;1.16926;0.00000;,
 -7.58718;0.70746;0.74647;,
 -7.58718;-0.03900;1.05566;,
 -7.58718;-0.03900;0.00000;,
 -7.58718;-0.78547;0.74647;,
 -7.58718;-1.09466;0.00000;,
 -7.58718;-0.78547;-0.74647;,
 -7.58718;-0.03900;-1.05566;,
 -7.58718;0.70746;-0.74647;,
 -7.58718;1.01666;0.00000;,
 0.28796;-1.19598;0.34403;,
 0.00000;-1.19598;0.48653;,
 0.00000;-0.91536;0.89900;,
 0.53209;-0.91536;0.63569;,
 -0.28796;-1.19598;0.34403;,
 -0.53209;-0.91536;0.63569;,
 -0.40725;-1.19598;0.00000;,
 -0.75249;-0.91536;0.00000;,
 -0.28796;-1.19598;-0.34403;,
 -0.53209;-0.91536;-0.63569;,
 0.00000;-1.19598;-0.48653;,
 0.00000;-0.91536;-0.89900;,
 0.28796;-1.19598;-0.34403;,
 0.53209;-0.91536;-0.63569;,
 0.40725;-1.19598;-0.00000;,
 0.75249;-0.91536;-0.00000;,
 0.28796;-1.19598;0.34403;,
 0.53209;-0.91536;0.63569;,
 0.00000;-0.49539;1.17460;,
 0.69521;-0.49539;0.83056;,
 -0.69521;-0.49539;0.83056;,
 -0.98317;-0.49539;0.00000;,
 -0.69521;-0.49539;-0.83056;,
 0.00000;-0.49539;-1.17460;,
 0.69521;-0.49539;-0.83056;,
 0.98317;-0.49539;-0.00000;,
 0.69521;-0.49539;0.83056;,
 0.00000;0.00000;1.27138;,
 0.75249;0.00000;0.89900;,
 -0.75249;0.00000;0.89900;,
 -1.06418;0.00000;0.00000;,
 -0.75249;0.00000;-0.89900;,
 0.00000;0.00000;-1.27138;,
 0.75249;0.00000;-0.89900;,
 1.06418;0.00000;0.00000;,
 0.75249;0.00000;0.89900;,
 0.00000;0.49539;1.17460;,
 0.69521;0.49539;0.83056;,
 -0.69521;0.49539;0.83056;,
 -0.98317;0.49539;0.00000;,
 -0.69521;0.49539;-0.83056;,
 0.00000;0.49539;-1.17460;,
 0.69521;0.49539;-0.83056;,
 0.98317;0.49539;0.00000;,
 0.69521;0.49539;0.83056;,
 0.00000;0.91536;0.89900;,
 0.53209;0.91536;0.63569;,
 -0.53209;0.91536;0.63569;,
 -0.75249;0.91536;0.00000;,
 -0.53209;0.91536;-0.63569;,
 0.00000;0.91536;-0.89900;,
 0.53209;0.91536;-0.63569;,
 0.75249;0.91536;0.00000;,
 0.53209;0.91536;0.63569;,
 0.00000;1.19598;0.48653;,
 0.28796;1.19598;0.34403;,
 -0.28796;1.19598;0.34403;,
 -0.40725;1.19598;0.00000;,
 -0.28796;1.19598;-0.34403;,
 0.00000;1.19598;-0.48653;,
 0.28796;1.19598;-0.34403;,
 0.40725;1.19598;0.00000;,
 0.28796;1.19598;0.34403;,
 0.00000;-1.29451;0.00000;,
 0.00000;-1.29451;0.00000;,
 0.00000;-1.29451;0.00000;,
 0.00000;-1.29451;0.00000;,
 0.00000;-1.29451;0.00000;,
 0.00000;-1.29451;0.00000;,
 0.00000;-1.29451;0.00000;,
 0.00000;-1.29451;0.00000;,
 0.00000;1.29451;0.00000;,
 0.00000;1.29451;0.00000;,
 0.00000;1.29451;0.00000;,
 0.00000;1.29451;0.00000;,
 0.00000;1.29451;0.00000;,
 0.00000;1.29451;0.00000;,
 0.00000;1.29451;0.00000;,
 0.00000;1.29451;0.00000;;
 
 88;
 4;3,2,1,0;,
 4;2,5,4,1;,
 4;5,7,6,4;,
 4;7,9,8,6;,
 4;9,11,10,8;,
 4;11,13,12,10;,
 4;13,15,14,12;,
 4;15,17,16,14;,
 3;20,19,18;,
 3;20,18,21;,
 3;20,21,22;,
 3;20,22,23;,
 3;20,23,24;,
 3;20,24,25;,
 3;20,25,26;,
 3;20,26,19;,
 3;29,28,27;,
 3;29,30,28;,
 3;29,31,30;,
 3;29,32,31;,
 3;29,33,32;,
 3;29,34,33;,
 3;29,35,34;,
 3;29,27,35;,
 4;39,38,37,36;,
 4;38,41,40,37;,
 4;41,43,42,40;,
 4;43,45,44,42;,
 4;45,47,46,44;,
 4;47,49,48,46;,
 4;49,51,50,48;,
 4;51,53,52,50;,
 4;55,54,38,39;,
 4;54,56,41,38;,
 4;56,57,43,41;,
 4;57,58,45,43;,
 4;58,59,47,45;,
 4;59,60,49,47;,
 4;60,61,51,49;,
 4;61,62,53,51;,
 4;64,63,54,55;,
 4;63,65,56,54;,
 4;65,66,57,56;,
 4;66,67,58,57;,
 4;67,68,59,58;,
 4;68,69,60,59;,
 4;69,70,61,60;,
 4;70,71,62,61;,
 4;73,72,63,64;,
 4;72,74,65,63;,
 4;74,75,66,65;,
 4;75,76,67,66;,
 4;76,77,68,67;,
 4;77,78,69,68;,
 4;78,79,70,69;,
 4;79,80,71,70;,
 4;82,81,72,73;,
 4;81,83,74,72;,
 4;83,84,75,74;,
 4;84,85,76,75;,
 4;85,86,77,76;,
 4;86,87,78,77;,
 4;87,88,79,78;,
 4;88,89,80,79;,
 4;91,90,81,82;,
 4;90,92,83,81;,
 4;92,93,84,83;,
 4;93,94,85,84;,
 4;94,95,86,85;,
 4;95,96,87,86;,
 4;96,97,88,87;,
 4;97,98,89,88;,
 3;99,36,37;,
 3;100,37,40;,
 3;101,40,42;,
 3;102,42,44;,
 3;103,44,46;,
 3;104,46,48;,
 3;105,48,50;,
 3;106,50,52;,
 3;107,90,91;,
 3;108,92,90;,
 3;109,93,92;,
 3;110,94,93;,
 3;111,95,94;,
 3;112,96,95;,
 3;113,97,96;,
 3;114,98,97;;
 
 MeshMaterialList {
  2;
  88;
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
  68;
  -0.022061;0.706936;0.706934;,
  -0.022061;0.000001;0.999757;,
  -0.022061;-0.706935;0.706934;,
  -0.022062;-0.999757;0.000000;,
  -0.022061;-0.706935;-0.706934;,
  -0.022061;0.000001;-0.999757;,
  -0.022061;0.706936;-0.706934;,
  -0.022061;0.999757;0.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.316312;-0.909733;0.268949;,
  -0.000000;-0.922865;0.385125;,
  -0.316312;-0.909733;0.268949;,
  -0.441871;-0.897078;0.000000;,
  -0.316312;-0.909733;-0.268949;,
  0.000000;-0.922865;-0.385125;,
  0.316312;-0.909733;-0.268949;,
  0.441871;-0.897078;-0.000000;,
  0.560621;-0.671651;0.484345;,
  -0.000000;-0.704140;0.710061;,
  -0.560621;-0.671651;0.484345;,
  -0.766561;-0.642171;0.000000;,
  -0.560621;-0.671651;-0.484345;,
  0.000000;-0.704140;-0.710061;,
  0.560621;-0.671651;-0.484345;,
  0.766561;-0.642171;-0.000000;,
  0.704297;-0.351328;0.616875;,
  -0.000000;-0.379701;0.925109;,
  -0.704297;-0.351328;0.616875;,
  -0.945017;-0.327022;0.000000;,
  -0.704297;-0.351328;-0.616875;,
  0.000000;-0.379701;-0.925109;,
  0.704297;-0.351328;-0.616875;,
  0.945017;-0.327022;-0.000000;,
  0.750600;0.000000;0.660757;,
  0.000000;0.000000;1.000000;,
  -0.750600;0.000000;0.660757;,
  -1.000000;0.000000;0.000000;,
  -0.750600;0.000000;-0.660757;,
  0.000000;0.000000;-1.000000;,
  0.750600;0.000000;-0.660757;,
  1.000000;0.000000;0.000000;,
  0.704297;0.351328;0.616875;,
  0.000000;0.379701;0.925109;,
  -0.704297;0.351328;0.616875;,
  -0.945017;0.327022;0.000000;,
  -0.704297;0.351328;-0.616875;,
  0.000000;0.379701;-0.925109;,
  0.704297;0.351328;-0.616875;,
  0.945017;0.327022;0.000000;,
  0.560621;0.671651;0.484345;,
  0.000000;0.704140;0.710061;,
  -0.560621;0.671651;0.484345;,
  -0.766561;0.642171;0.000000;,
  -0.560621;0.671651;-0.484345;,
  0.000000;0.704140;-0.710061;,
  0.560621;0.671651;-0.484345;,
  0.766561;0.642171;0.000000;,
  0.316312;0.909733;0.268949;,
  0.000000;0.922865;0.385125;,
  -0.316312;0.909733;0.268949;,
  -0.441871;0.897078;0.000000;,
  -0.316312;0.909733;-0.268949;,
  0.000000;0.922865;-0.385125;,
  0.316312;0.909733;-0.268949;,
  0.441871;0.897078;0.000000;,
  0.000000;-1.000000;0.000000;,
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
  4;18,19,11,10;,
  4;19,20,12,11;,
  4;20,21,13,12;,
  4;21,22,14,13;,
  4;22,23,15,14;,
  4;23,24,16,15;,
  4;24,25,17,16;,
  4;25,18,10,17;,
  4;26,27,19,18;,
  4;27,28,20,19;,
  4;28,29,21,20;,
  4;29,30,22,21;,
  4;30,31,23,22;,
  4;31,32,24,23;,
  4;32,33,25,24;,
  4;33,26,18,25;,
  4;34,35,27,26;,
  4;35,36,28,27;,
  4;36,37,29,28;,
  4;37,38,30,29;,
  4;38,39,31,30;,
  4;39,40,32,31;,
  4;40,41,33,32;,
  4;41,34,26,33;,
  4;42,43,35,34;,
  4;43,44,36,35;,
  4;44,45,37,36;,
  4;45,46,38,37;,
  4;46,47,39,38;,
  4;47,48,40,39;,
  4;48,49,41,40;,
  4;49,42,34,41;,
  4;50,51,43,42;,
  4;51,52,44,43;,
  4;52,53,45,44;,
  4;53,54,46,45;,
  4;54,55,47,46;,
  4;55,56,48,47;,
  4;56,57,49,48;,
  4;57,50,42,49;,
  4;58,59,51,50;,
  4;59,60,52,51;,
  4;60,61,53,52;,
  4;61,62,54,53;,
  4;62,63,55,54;,
  4;63,64,56,55;,
  4;64,65,57,56;,
  4;65,58,50,57;,
  3;66,10,11;,
  3;66,11,12;,
  3;66,12,13;,
  3;66,13,14;,
  3;66,14,15;,
  3;66,15,16;,
  3;66,16,17;,
  3;66,17,10;,
  3;67,59,58;,
  3;67,60,59;,
  3;67,61,60;,
  3;67,62,61;,
  3;67,63,62;,
  3;67,64,63;,
  3;67,65,64;,
  3;67,58,65;;
 }
 MeshTextureCoords {
  115;
  0.452830;0.822301;,
  0.464014;0.822989;,
  0.469570;0.721193;,
  0.459798;0.720591;,
  0.475207;0.823522;,
  0.479349;0.721658;,
  0.486406;0.823900;,
  0.489133;0.721988;,
  0.497609;0.824122;,
  0.498921;0.722182;,
  0.508814;0.824188;,
  0.508711;0.722240;,
  0.520019;0.824099;,
  0.518501;0.722162;,
  0.531221;0.823855;,
  0.528288;0.721949;,
  0.542419;0.823455;,
  0.538072;0.721599;,
  0.672871;0.980626;,
  0.692647;0.972435;,
  0.672871;0.953777;,
  0.653095;0.972435;,
  0.644904;0.952659;,
  0.653095;0.932883;,
  0.672871;0.924692;,
  0.692647;0.932883;,
  0.700838;0.952659;,
  0.793636;0.922314;,
  0.766221;0.910958;,
  0.766221;0.951279;,
  0.738807;0.922314;,
  0.727452;0.949728;,
  0.738807;0.977142;,
  0.766221;0.988498;,
  0.793636;0.977142;,
  0.804991;0.949728;,
  0.861947;0.987575;,
  0.866711;0.985066;,
  0.863410;0.979358;,
  0.855190;0.982358;,
  0.873193;0.984810;,
  0.871603;0.978891;,
  0.880293;0.985296;,
  0.879546;0.979016;,
  0.887547;0.984504;,
  0.887428;0.978726;,
  0.894806;0.983781;,
  0.895452;0.978440;,
  0.901719;0.984637;,
  0.903592;0.978788;,
  0.907930;0.985931;,
  0.911761;0.979798;,
  0.912759;0.987964;,
  0.919311;0.982584;,
  0.861163;0.973263;,
  0.850775;0.975049;,
  0.870573;0.972877;,
  0.879125;0.972857;,
  0.887394;0.972811;,
  0.895927;0.972764;,
  0.904769;0.972860;,
  0.914011;0.973362;,
  0.924094;0.975329;,
  0.860211;0.966740;,
  0.849494;0.966728;,
  0.870284;0.966750;,
  0.879036;0.966759;,
  0.887354;0.966766;,
  0.896136;0.966774;,
  0.905219;0.966782;,
  0.914528;0.966791;,
  0.926099;0.966802;,
  0.861177;0.960218;,
  0.850792;0.958409;,
  0.870585;0.960624;,
  0.879137;0.960661;,
  0.887405;0.960721;,
  0.895938;0.960784;,
  0.904781;0.960704;,
  0.914023;0.960219;,
  0.924109;0.958270;,
  0.863436;0.954128;,
  0.855223;0.951109;,
  0.871628;0.954612;,
  0.879570;0.954502;,
  0.887451;0.954807;,
  0.895474;0.955107;,
  0.903614;0.954774;,
  0.911785;0.953779;,
  0.919340;0.951007;,
  0.866748;0.948427;,
  0.861991;0.945907;,
  0.873229;0.948696;,
  0.880329;0.948224;,
  0.887581;0.949029;,
  0.894837;0.949765;,
  0.901752;0.948922;,
  0.907965;0.947639;,
  0.912798;0.945615;,
  0.867803;0.991179;,
  0.870571;0.990860;,
  0.876305;0.991072;,
  0.885237;0.990802;,
  0.892117;0.990036;,
  0.896635;0.989961;,
  0.902479;0.990864;,
  0.907409;0.992210;,
  0.867855;0.942316;,
  0.870620;0.942640;,
  0.876353;0.942440;,
  0.885282;0.942727;,
  0.892159;0.943505;,
  0.896678;0.943589;,
  0.902523;0.942696;,
  0.907456;0.941359;;
 }
}
