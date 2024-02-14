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
 -0.42665;-1.57925;0.46255;,
 -0.00000;-1.57925;0.65415;,
 -0.00000;-1.20871;1.20871;,
 -0.78835;-1.20871;0.85469;,
 0.42665;-1.57925;0.46255;,
 0.78835;-1.20871;0.85469;,
 0.60338;-1.57925;-0.00000;,
 1.11489;-1.20871;-0.00000;,
 0.42665;-1.57925;-0.46255;,
 0.78835;-1.20871;-0.85469;,
 0.00000;-1.57925;-0.65415;,
 0.00000;-1.20871;-1.20871;,
 -0.42665;-1.57925;-0.46255;,
 -0.78835;-1.20871;-0.85469;,
 -0.60338;-1.57925;0.00000;,
 -1.11489;-1.20871;0.00000;,
 -0.42665;-1.57925;0.46255;,
 -0.78835;-1.20871;0.85469;,
 -0.00000;-0.65415;1.57925;,
 -1.03003;-0.65415;1.11670;,
 1.03003;-0.65415;1.11670;,
 1.45668;-0.65415;-0.00000;,
 1.03003;-0.65415;-1.11670;,
 0.00000;-0.65415;-1.57925;,
 -1.03003;-0.65415;-1.11670;,
 -1.45668;-0.65415;0.00000;,
 -1.03003;-0.65415;1.11670;,
 0.00000;0.00000;1.70937;,
 -1.11489;0.00000;1.20871;,
 1.11489;0.00000;1.20871;,
 1.57670;0.00000;0.00000;,
 1.11489;0.00000;-1.20871;,
 0.00000;0.00000;-1.70937;,
 -1.11489;0.00000;-1.20871;,
 -1.57670;0.00000;0.00000;,
 -1.11489;0.00000;1.20871;,
 0.00000;0.65415;1.57925;,
 -1.03003;0.65415;1.11670;,
 1.03003;0.65415;1.11670;,
 1.45668;0.65415;0.00000;,
 1.03003;0.65415;-1.11670;,
 0.00000;0.65415;-1.57925;,
 -1.03003;0.65415;-1.11670;,
 -1.45668;0.65415;0.00000;,
 -1.03003;0.65415;1.11670;,
 0.00000;1.20871;1.20871;,
 -0.78835;1.20871;0.85469;,
 0.78835;1.20871;0.85469;,
 1.11489;1.20871;0.00000;,
 0.78835;1.20871;-0.85469;,
 0.00000;1.20871;-1.20871;,
 -0.78835;1.20871;-0.85469;,
 -1.11489;1.20871;0.00000;,
 -0.78835;1.20871;0.85469;,
 0.00000;1.57925;0.65415;,
 -0.42665;1.57925;0.46255;,
 0.42665;1.57925;0.46255;,
 0.60338;1.57925;0.00000;,
 0.42665;1.57925;-0.46255;,
 0.00000;1.57925;-0.65415;,
 -0.42665;1.57925;-0.46255;,
 -0.60338;1.57925;0.00000;,
 -0.42665;1.57925;0.46255;,
 0.00000;-1.70937;-0.00000;,
 0.00000;-1.70937;-0.00000;,
 0.00000;-1.70937;-0.00000;,
 0.00000;-1.70937;-0.00000;,
 0.00000;-1.70937;-0.00000;,
 0.00000;-1.70937;-0.00000;,
 0.00000;-1.70937;-0.00000;,
 0.00000;-1.70937;-0.00000;,
 0.00000;1.70937;0.00000;,
 0.00000;1.70937;0.00000;,
 0.00000;1.70937;0.00000;,
 0.00000;1.70937;0.00000;,
 0.00000;1.70937;0.00000;,
 0.00000;1.70937;0.00000;,
 0.00000;1.70937;0.00000;,
 0.00000;1.70937;0.00000;,
 0.85129;1.06910;1.11718;,
 0.85129;-0.04809;1.57992;,
 9.02847;-0.04809;1.35741;,
 9.02847;0.91174;0.95983;,
 0.85129;-1.16526;1.11718;,
 9.02847;-1.00792;0.95983;,
 0.85129;-1.62801;-0.00000;,
 9.02847;-1.40548;-0.00000;,
 0.85129;-1.16526;-1.11718;,
 9.02847;-1.00792;-0.95983;,
 0.85129;-0.04809;-1.57992;,
 9.02847;-0.04809;-1.35741;,
 0.85129;1.06910;-1.11718;,
 9.02847;0.91174;-0.95983;,
 0.85129;1.53185;0.00000;,
 9.02847;1.30932;0.00000;,
 0.85129;1.06910;1.11718;,
 9.02847;0.91174;0.95983;,
 0.85129;-0.04809;1.57992;,
 0.85129;1.06910;1.11718;,
 0.85129;-0.04809;-0.00000;,
 0.85129;-1.16526;1.11718;,
 0.85129;-1.62801;-0.00000;,
 0.85129;-1.16526;-1.11718;,
 0.85129;-0.04809;-1.57992;,
 0.85129;1.06910;-1.11718;,
 0.85129;1.53185;0.00000;,
 9.02847;0.91174;0.95983;,
 9.02847;-0.04809;1.35741;,
 9.02847;-0.04809;-0.00000;,
 9.02847;-1.00792;0.95983;,
 9.02847;-1.40548;-0.00000;,
 9.02847;-1.00792;-0.95983;,
 9.02847;-0.04809;-1.35741;,
 9.02847;0.91174;-0.95983;,
 9.02847;1.30932;0.00000;;
 
 88;
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
 3;97,98,99;,
 3;100,97,99;,
 3;101,100,99;,
 3;102,101,99;,
 3;103,102,99;,
 3;104,103,99;,
 3;105,104,99;,
 3;98,105,99;,
 3;106,107,108;,
 3;107,109,108;,
 3;109,110,108;,
 3;110,111,108;,
 3;111,112,108;,
 3;112,113,108;,
 3;113,114,108;,
 3;114,106,108;;
 
 MeshMaterialList {
  1;
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
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
  66;
  -0.288122;-0.919468;0.267515;,
  0.000000;-0.924879;0.380260;,
  0.288122;-0.919468;0.267515;,
  0.405404;-0.914138;-0.000000;,
  0.288122;-0.919468;-0.267515;,
  0.000000;-0.924879;-0.380260;,
  -0.288122;-0.919468;-0.267515;,
  -0.405404;-0.914138;0.000000;,
  -0.524745;-0.695560;0.490753;,
  0.000000;-0.709570;0.704635;,
  0.524745;-0.695560;0.490753;,
  0.731237;-0.682124;-0.000000;,
  0.524745;-0.695560;-0.490753;,
  0.000000;-0.709570;-0.704635;,
  -0.524745;-0.695560;-0.490753;,
  -0.731237;-0.682124;0.000000;,
  -0.675857;-0.372037;0.636244;,
  0.000000;-0.384833;0.922986;,
  0.675857;-0.372037;0.636244;,
  0.932914;-0.360100;-0.000000;,
  0.675857;-0.372037;-0.636244;,
  0.000000;-0.384833;-0.922986;,
  -0.675857;-0.372037;-0.636244;,
  -0.932914;-0.360100;0.000000;,
  -0.727257;0.000000;0.686365;,
  0.000000;0.000000;1.000000;,
  0.727257;0.000000;0.686365;,
  1.000000;0.000000;0.000000;,
  0.727257;0.000000;-0.686365;,
  0.000000;0.000000;-1.000000;,
  -0.727257;0.000000;-0.686365;,
  -1.000000;0.000000;0.000000;,
  -0.675857;0.372037;0.636244;,
  0.000000;0.384833;0.922986;,
  0.675857;0.372037;0.636244;,
  0.932914;0.360100;0.000000;,
  0.675857;0.372037;-0.636244;,
  0.000000;0.384833;-0.922986;,
  -0.675857;0.372037;-0.636244;,
  -0.932914;0.360100;0.000000;,
  -0.524745;0.695560;0.490753;,
  0.000000;0.709570;0.704635;,
  0.524745;0.695560;0.490753;,
  0.731237;0.682124;0.000000;,
  0.524745;0.695560;-0.490753;,
  0.000000;0.709570;-0.704635;,
  -0.524745;0.695560;-0.490753;,
  -0.731237;0.682124;0.000000;,
  -0.288122;0.919468;0.267515;,
  0.000000;0.924879;0.380260;,
  0.288122;0.919468;0.267515;,
  0.405404;0.914138;0.000000;,
  0.288122;0.919468;-0.267515;,
  0.000000;0.924879;-0.380260;,
  -0.288122;0.919468;-0.267515;,
  -0.405404;0.914138;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;1.000000;0.000000;,
  0.027203;0.706845;0.706845;,
  0.027202;-0.000000;0.999630;,
  0.027202;-0.706845;0.706845;,
  0.027203;-0.999630;-0.000000;,
  0.027202;-0.706845;-0.706845;,
  0.027202;-0.000001;-0.999630;,
  0.027203;0.706844;-0.706846;,
  0.027203;0.999630;0.000000;;
  88;
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
  3;55,48,57;,
  4;58,59,59,58;,
  4;59,60,60,59;,
  4;60,61,61,60;,
  4;61,62,62,61;,
  4;62,63,63,62;,
  4;63,64,64,63;,
  4;64,65,65,64;,
  4;65,58,58,65;,
  3;31,31,31;,
  3;31,31,31;,
  3;31,31,31;,
  3;31,31,31;,
  3;31,31,31;,
  3;31,31,31;,
  3;31,31,31;,
  3;31,31,31;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;;
 }
 MeshTextureCoords {
  115;
  0.892320;0.192250;,
  0.898900;0.189020;,
  0.893890;0.180690;,
  0.883290;0.185080;,
  0.907710;0.188370;,
  0.905220;0.179940;,
  0.917500;0.188880;,
  0.916510;0.180540;,
  0.927770;0.189800;,
  0.927810;0.181550;,
  0.938200;0.190820;,
  0.939260;0.182580;,
  0.948430;0.191950;,
  0.950990;0.183570;,
  0.957770;0.193620;,
  0.963050;0.184990;,
  0.964870;0.196970;,
  0.975040;0.188960;,
  0.890750;0.171740;,
  0.876670;0.175200;,
  0.903870;0.171350;,
  0.916190;0.172080;,
  0.928160;0.173170;,
  0.940230;0.174260;,
  0.952810;0.175190;,
  0.966390;0.176090;,
  0.981560;0.178000;,
  0.889810;0.162410;,
  0.873970;0.163390;,
  0.903710;0.162660;,
  0.916470;0.163520;,
  0.928700;0.164640;,
  0.940940;0.165750;,
  0.953710;0.166590;,
  0.967610;0.166800;,
  0.983460;0.165760;,
  0.891050;0.153120;,
  0.875900;0.151160;,
  0.904620;0.154050;,
  0.917190;0.155010;,
  0.929250;0.156110;,
  0.941220;0.157190;,
  0.953540;0.157900;,
  0.966650;0.157480;,
  0.980720;0.153970;,
  0.894410;0.144220;,
  0.882450;0.140210;,
  0.906450;0.145670;,
  0.918170;0.146690;,
  0.929610;0.147730;,
  0.940900;0.148740;,
  0.952180;0.149320;,
  0.963510;0.148540;,
  0.974080;0.144110;,
  0.899720;0.135600;,
  0.892640;0.132220;,
  0.909040;0.137290;,
  0.919250;0.138440;,
  0.929670;0.139470;,
  0.939920;0.140400;,
  0.949680;0.140900;,
  0.958490;0.140230;,
  0.965040;0.136980;,
  0.900220;0.197890;,
  0.904850;0.197150;,
  0.912520;0.197220;,
  0.921690;0.197880;,
  0.931500;0.198780;,
  0.941270;0.199740;,
  0.950150;0.200860;,
  0.956560;0.202450;,
  0.900970;0.126780;,
  0.907360;0.128380;,
  0.916220;0.129520;,
  0.925980;0.130500;,
  0.935760;0.131390;,
  0.944900;0.132050;,
  0.952530;0.132110;,
  0.957130;0.131360;,
  0.456300;0.912270;,
  0.466110;0.913180;,
  0.472120;0.841230;,
  0.463700;0.840440;,
  0.475930;0.913910;,
  0.480560;0.841850;,
  0.485760;0.914450;,
  0.489000;0.842310;,
  0.495600;0.914790;,
  0.497460;0.842610;,
  0.505440;0.914950;,
  0.505920;0.842750;,
  0.515290;0.914920;,
  0.514370;0.842720;,
  0.525130;0.914700;,
  0.522830;0.842540;,
  0.534970;0.914300;,
  0.531280;0.842190;,
  0.601990;0.186380;,
  0.624890;0.176890;,
  0.601990;0.155290;,
  0.579090;0.176890;,
  0.569610;0.153990;,
  0.579090;0.131090;,
  0.601990;0.121610;,
  0.624890;0.131090;,
  0.634380;0.153990;,
  0.629390;0.844540;,
  0.603720;0.833910;,
  0.603720;0.871660;,
  0.578060;0.844540;,
  0.567420;0.870210;,
  0.578060;0.895870;,
  0.603720;0.906510;,
  0.629390;0.895870;,
  0.640020;0.870210;;
 }
}
