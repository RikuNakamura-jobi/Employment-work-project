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
 72;
 -0.00001;0.25270;3.95206;,
 -2.79454;0.25270;2.79453;,
 -0.00001;0.25270;0.00000;,
 2.79453;0.25270;2.79453;,
 3.95206;0.25270;0.00000;,
 2.79453;0.25270;-2.79454;,
 -0.00001;0.25270;-3.95207;,
 -2.79454;0.25270;-2.79454;,
 -3.95207;0.25270;0.00000;,
 -3.42199;10.25570;3.42198;,
 -1.82581;12.27285;1.82580;,
 -2.58208;12.27285;0.00000;,
 -4.83942;10.25570;0.00000;,
 -1.82581;12.27285;1.82580;,
 -3.42199;10.25570;3.42198;,
 -0.00001;10.25570;4.83942;,
 -0.00001;12.27285;2.58206;,
 -0.00001;12.27285;2.58206;,
 3.42198;10.25570;3.42198;,
 1.82579;12.27285;1.82580;,
 1.82579;12.27285;1.82580;,
 4.83941;10.25570;0.00000;,
 2.58206;12.27285;0.00000;,
 2.58206;12.27285;0.00000;,
 3.42198;10.25570;-3.42199;,
 1.82579;12.27285;-1.82580;,
 1.82579;12.27285;-1.82580;,
 -0.00001;10.25570;-4.83943;,
 -0.00001;12.27285;-2.58207;,
 -0.00001;12.27285;-2.58207;,
 -3.42199;10.25570;-3.42199;,
 -1.82581;12.27285;-1.82580;,
 -1.82581;12.27285;-1.82580;,
 -2.58208;12.27285;0.00000;,
 -2.79454;0.25270;2.79453;,
 -0.00001;0.25270;3.95206;,
 2.79453;0.25270;2.79453;,
 3.95206;0.25270;0.00000;,
 2.79453;0.25270;-2.79454;,
 -0.00001;0.25270;-3.95207;,
 -2.79454;0.25270;-2.79454;,
 -3.95207;0.25270;0.00000;,
 -2.79454;0.25270;2.79453;,
 -1.82581;12.27285;1.82580;,
 -0.00001;12.27285;2.58206;,
 -0.00001;12.85668;0.00000;,
 1.82579;12.27285;1.82580;,
 2.58206;12.27285;0.00000;,
 1.82579;12.27285;-1.82580;,
 -0.00001;12.27285;-2.58207;,
 -1.82581;12.27285;-1.82580;,
 -2.58208;12.27285;0.00000;,
 -2.68732;7.40177;-4.23375;,
 2.68732;7.40177;-4.23375;,
 2.68732;5.62560;-4.23375;,
 -2.68732;5.62560;-4.23375;,
 2.68732;7.40177;-4.23375;,
 2.68732;7.40177;-0.22754;,
 2.68732;5.62560;-0.22754;,
 2.68732;5.62560;-4.23375;,
 2.68732;7.40177;-0.22754;,
 -2.68732;7.40177;-0.22754;,
 -2.68732;5.62560;-0.22754;,
 2.68732;5.62560;-0.22754;,
 -2.68732;7.40177;-0.22754;,
 -2.68732;7.40177;-4.23375;,
 -2.68732;5.62560;-4.23375;,
 -2.68732;5.62560;-0.22754;,
 2.68732;7.40177;-4.23375;,
 -2.68732;7.40177;-4.23375;,
 -2.68732;5.62560;-4.23375;,
 2.68732;5.62560;-4.23375;;
 
 38;
 3;0,1,2;,
 3;3,0,2;,
 3;4,3,2;,
 3;5,4,2;,
 3;6,5,2;,
 3;7,6,2;,
 3;8,7,2;,
 3;1,8,2;,
 4;9,10,11,12;,
 4;13,14,15,16;,
 4;17,15,18,19;,
 4;20,18,21,22;,
 4;23,21,24,25;,
 4;26,24,27,28;,
 4;29,27,30,31;,
 4;32,30,12,33;,
 4;34,35,15,14;,
 4;35,36,18,15;,
 4;36,37,21,18;,
 4;37,38,24,21;,
 4;38,39,27,24;,
 4;39,40,30,27;,
 4;40,41,12,30;,
 4;41,42,9,12;,
 3;43,44,45;,
 3;44,46,45;,
 3;46,47,45;,
 3;47,48,45;,
 3;48,49,45;,
 3;49,50,45;,
 3;50,51,45;,
 3;51,43,45;,
 4;52,53,54,55;,
 4;56,57,58,59;,
 4;60,61,62,63;,
 4;64,65,66,67;,
 4;64,57,68,69;,
 4;70,71,58,67;;
 
 MeshMaterialList {
  3;
  38;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.094118;0.185098;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\blue.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\Melamine-wood-001.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\other_ca_024.png";
   }
  }
 }
 MeshNormals {
  32;
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.654804;0.377444;0.654803;,
  -0.321248;0.890842;0.321249;,
  -0.000000;0.377445;0.926032;,
  -0.000000;0.890842;0.454314;,
  0.654803;0.377445;0.654804;,
  0.321248;0.890842;0.321248;,
  0.926032;0.377445;0.000000;,
  0.454314;0.890842;0.000000;,
  0.654804;0.377445;-0.654803;,
  0.321248;0.890842;-0.321248;,
  -0.000001;0.377445;-0.926032;,
  -0.000000;0.890842;-0.454313;,
  -0.654805;0.377444;-0.654803;,
  -0.321249;0.890842;-0.321248;,
  -0.926033;0.377444;0.000000;,
  -0.454315;0.890841;0.000000;,
  -0.704341;-0.088362;0.704340;,
  -0.000001;-0.088362;0.996088;,
  0.704341;-0.088362;0.704341;,
  0.996089;-0.088361;0.000001;,
  0.704341;-0.088362;-0.704340;,
  -0.000001;-0.088362;-0.996088;,
  -0.704342;-0.088362;-0.704340;,
  -0.996089;-0.088361;0.000001;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;;
  38;
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;2,3,17,16;,
  4;3,2,4,5;,
  4;5,4,6,7;,
  4;7,6,8,9;,
  4;9,8,10,11;,
  4;11,10,12,13;,
  4;13,12,14,15;,
  4;15,14,16,17;,
  4;18,19,4,2;,
  4;19,20,6,4;,
  4;20,21,8,6;,
  4;21,22,10,8;,
  4;22,23,12,10;,
  4;23,24,14,12;,
  4;24,25,16,14;,
  4;25,18,2,16;,
  3;3,5,1;,
  3;5,7,1;,
  3;7,9,1;,
  3;9,11,1;,
  3;11,13,1;,
  3;13,15,1;,
  3;15,17,1;,
  3;17,3,1;,
  4;26,26,26,26;,
  4;27,27,27,27;,
  4;28,28,28,28;,
  4;29,29,29,29;,
  4;30,30,30,30;,
  4;31,31,31,31;;
 }
 MeshTextureCoords {
  72;
  0.600790;0.347650;,
  0.624120;0.337990;,
  0.600790;0.315980;,
  0.577460;0.337990;,
  0.567800;0.314660;,
  0.577460;0.291330;,
  0.600790;0.281670;,
  0.624120;0.291330;,
  0.633780;0.314660;,
  0.358680;0.694800;,
  0.341350;0.696830;,
  0.339360;0.708130;,
  0.354940;0.715970;,
  0.352420;0.864570;,
  0.369860;0.864310;,
  0.363370;0.843810;,
  0.348960;0.853630;,
  0.345950;0.842870;,
  0.358300;0.822910;,
  0.343250;0.831720;,
  0.340990;0.820780;,
  0.354690;0.801720;,
  0.339060;0.809470;,
  0.337560;0.798400;,
  0.352530;0.780330;,
  0.336410;0.786990;,
  0.335680;0.775840;,
  0.351860;0.758840;,
  0.335320;0.764380;,
  0.335350;0.753200;,
  0.352660;0.737350;,
  0.335780;0.741740;,
  0.336580;0.730600;,
  0.337790;0.719190;,
  0.423880;0.845140;,
  0.418580;0.828400;,
  0.414440;0.811330;,
  0.411490;0.794030;,
  0.409730;0.776560;,
  0.409180;0.759010;,
  0.409840;0.741460;,
  0.411700;0.724000;,
  0.414750;0.706710;,
  0.621130;0.208960;,
  0.600940;0.200600;,
  0.600940;0.230290;,
  0.580760;0.208960;,
  0.572400;0.229140;,
  0.580760;0.249330;,
  0.600940;0.257690;,
  0.621130;0.249330;,
  0.629490;0.229140;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;;
 }
}