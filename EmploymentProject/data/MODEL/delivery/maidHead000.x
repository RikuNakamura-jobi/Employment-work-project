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
 90;
 -0.00000;0.12635;1.97603;,
 -1.39727;0.12635;1.39726;,
 -0.00000;0.12635;0.00000;,
 1.39726;0.12635;1.39726;,
 1.97603;0.12635;0.00000;,
 1.39726;0.12635;-1.39727;,
 -0.00000;0.12635;-1.97603;,
 -1.39727;0.12635;-1.39727;,
 -1.97603;0.12635;0.00000;,
 -1.71099;5.12785;1.71099;,
 -0.91291;6.13643;0.91290;,
 -1.29104;6.13643;0.00000;,
 -2.41971;5.12785;0.00000;,
 -0.91291;6.13643;0.91290;,
 -1.71099;5.12785;1.71099;,
 -0.00000;5.12785;2.41971;,
 -0.00000;6.13643;1.29103;,
 -0.00000;6.13643;1.29103;,
 1.71099;5.12785;1.71099;,
 0.91290;6.13643;0.91290;,
 0.91290;6.13643;0.91290;,
 2.41971;5.12785;0.00000;,
 1.29103;6.13643;0.00000;,
 1.29103;6.13643;0.00000;,
 1.71099;5.12785;-1.71099;,
 0.91290;6.13643;-0.91290;,
 0.91290;6.13643;-0.91290;,
 -0.00000;5.12785;-2.41971;,
 -0.00000;6.13643;-1.29104;,
 -0.00000;6.13643;-1.29104;,
 -1.71099;5.12785;-1.71099;,
 -0.91291;6.13643;-0.91290;,
 -0.91291;6.13643;-0.91290;,
 -1.29104;6.13643;0.00000;,
 -1.39727;0.12635;1.39726;,
 -0.00000;0.12635;1.97603;,
 1.39726;0.12635;1.39726;,
 1.97603;0.12635;0.00000;,
 1.39726;0.12635;-1.39727;,
 -0.00000;0.12635;-1.97603;,
 -1.39727;0.12635;-1.39727;,
 -1.97603;0.12635;0.00000;,
 -1.39727;0.12635;1.39726;,
 -0.91291;6.13643;0.91290;,
 -0.00000;6.13643;1.29103;,
 -0.00000;6.42834;0.00000;,
 0.91290;6.13643;0.91290;,
 1.29103;6.13643;0.00000;,
 0.91290;6.13643;-0.91290;,
 -0.00000;6.13643;-1.29104;,
 -0.91291;6.13643;-0.91290;,
 -1.29104;6.13643;0.00000;,
 -2.43839;5.12104;-0.04054;,
 -2.43470;5.11981;-0.43615;,
 -2.37012;4.36808;-0.01435;,
 2.37999;4.23926;-0.00390;,
 2.46350;5.13172;-0.35633;,
 2.45867;5.13326;-0.06198;,
 -2.44205;5.12228;0.35357;,
 -1.36295;6.14632;0.35789;,
 -1.35029;6.13436;-0.05397;,
 -1.33920;6.12389;-0.41453;,
 -0.00004;6.43597;-0.06245;,
 0.00149;6.43429;-0.39932;,
 -0.00198;6.43808;0.36119;,
 1.33050;6.14709;-0.37923;,
 1.32648;6.14896;-0.06577;,
 1.32100;6.15152;0.36179;,
 2.45151;5.13555;0.37383;,
 0.00149;6.43429;-0.39932;,
 -0.00004;6.43597;-0.06245;,
 -0.00198;6.43808;0.36119;,
 -2.37012;4.36808;-0.01435;,
 -2.43839;5.12104;-0.04054;,
 -2.56568;5.13837;0.14285;,
 -2.49368;5.68555;-0.26167;,
 -2.03072;6.23275;0.15935;,
 -1.35029;6.13436;-0.05397;,
 -1.41404;6.56691;-0.27489;,
 -0.76719;6.79759;0.16794;,
 -0.00004;6.43597;-0.06245;,
 -0.00028;6.97599;-0.12979;,
 0.72277;6.85118;0.27376;,
 1.32648;6.14896;-0.06577;,
 1.42005;6.63173;-0.27899;,
 2.00462;6.27196;0.19230;,
 2.45867;5.13326;-0.06198;,
 2.45634;5.77005;-0.19802;,
 2.61313;5.15325;0.11733;,
 2.37999;4.23926;-0.00390;;
 
 76;
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
 3;52,53,54;,
 3;55,56,57;,
 4;52,58,59,60;,
 4;52,60,61,53;,
 4;62,63,61,60;,
 4;62,60,59,64;,
 4;57,56,65,66;,
 4;57,66,67,68;,
 4;66,65,69,70;,
 4;66,70,71,67;,
 3;54,58,52;,
 3;55,57,68;,
 3;72,73,74;,
 3;74,73,72;,
 3;74,73,75;,
 3;75,73,74;,
 3;75,73,76;,
 3;76,73,75;,
 3;76,73,77;,
 3;77,73,76;,
 3;76,77,78;,
 3;78,77,76;,
 3;78,77,79;,
 3;79,77,78;,
 3;79,77,80;,
 3;80,77,79;,
 3;80,79,81;,
 3;81,79,80;,
 3;80,81,82;,
 3;82,81,80;,
 3;82,80,83;,
 3;83,80,82;,
 3;82,83,84;,
 3;84,83,82;,
 3;84,83,85;,
 3;85,83,84;,
 3;85,83,86;,
 3;86,83,85;,
 3;85,86,87;,
 3;87,86,85;,
 3;87,86,88;,
 3;88,86,87;,
 3;88,89,86;,
 3;86,89,88;;
 
 MeshMaterialList {
  4;
  76;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.401600;0.401600;0.401600;1.000000;;
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
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\whitemaid000.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\whitemaid000.jpg";
   }
  }
 }
 MeshNormals {
  83;
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
  -0.974965;-0.095383;-0.200861;,
  -0.934803;0.354652;-0.019138;,
  -0.933176;0.358907;-0.019171;,
  0.929836;0.367762;0.012519;,
  0.929968;0.367427;0.012517;,
  0.971585;-0.099462;-0.214777;,
  -0.466132;0.884397;-0.023730;,
  -0.465757;0.884594;-0.023733;,
  -0.005345;0.999910;-0.012284;,
  -0.001110;0.999925;-0.012205;,
  0.454614;0.890688;0.001065;,
  0.455027;0.890477;0.001064;,
  -0.978919;0.182583;-0.091545;,
  -0.539376;0.829467;0.145116;,
  0.021031;0.979451;-0.200585;,
  0.454821;0.890582;0.001064;,
  0.972135;0.212211;-0.099601;,
  0.814775;0.190563;0.547565;,
  0.799772;0.285244;0.528206;,
  -0.764813;0.168658;0.621784;,
  -0.161297;0.429926;0.888340;,
  -0.069532;0.006340;0.997560;,
  0.073409;-0.123384;-0.989640;,
  0.309076;0.212536;-0.926985;,
  0.646535;0.199866;0.736238;,
  -0.365032;0.063813;0.928805;,
  0.733949;0.144457;0.663664;,
  -0.758707;0.121051;0.640086;,
  0.821986;0.094060;0.561687;,
  0.679668;0.042967;0.732261;,
  -0.814775;-0.190563;-0.547565;,
  -0.799772;-0.285244;-0.528206;,
  0.764813;-0.168658;-0.621784;,
  0.311933;0.111398;0.943551;,
  0.243546;-0.065633;0.967666;,
  -0.018546;-0.031288;-0.999338;,
  -0.254292;0.260705;-0.931326;,
  -0.311933;-0.111398;-0.943551;,
  0.161297;-0.429926;-0.888340;,
  0.069532;-0.006340;-0.997560;,
  -0.040901;-0.183218;0.982221;,
  0.015319;0.059411;-0.998116;,
  -0.073409;0.123384;0.989640;,
  -0.309076;-0.212536;0.926985;,
  -0.287889;-0.142831;0.946953;,
  0.287889;0.142831;-0.946953;,
  -0.646535;-0.199866;-0.736238;,
  -0.388112;0.434257;0.812890;,
  0.365032;-0.063813;-0.928805;,
  0.388112;-0.434257;-0.812890;,
  -0.636576;-0.026181;0.770769;,
  0.286761;0.316278;-0.904288;,
  -0.733949;-0.144457;-0.663664;,
  -0.758171;0.133575;0.638228;,
  0.758707;-0.121051;-0.640086;,
  0.758171;-0.133575;-0.638228;,
  -0.759122;0.108508;0.641841;;
  76;
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
  3;38,28,26;,
  3;31,29,42;,
  4;38,27,32,39;,
  4;38,39,33,28;,
  4;40,34,33,39;,
  4;40,39,32,35;,
  4;42,29,36,41;,
  4;42,41,37,30;,
  4;41,36,34,40;,
  4;41,40,35,37;,
  3;26,27,38;,
  3;31,42,30;,
  3;54,55,43;,
  3;56,38,26;,
  3;43,55,44;,
  3;57,38,56;,
  3;45,38,45;,
  3;58,58,58;,
  3;59,55,60;,
  3;61,62,63;,
  3;59,60,46;,
  3;64,61,63;,
  3;46,39,47;,
  3;65,61,64;,
  3;47,60,66;,
  3;67,61,65;,
  3;67,65,48;,
  3;68,47,66;,
  3;67,48,49;,
  3;69,68,66;,
  3;69,66,70;,
  3;71,40,49;,
  3;50,50,50;,
  3;72,72,72;,
  3;73,70,51;,
  3;74,71,75;,
  3;51,70,76;,
  3;77,71,74;,
  3;52,42,52;,
  3;78,78,78;,
  3;79,76,53;,
  3;80,42,81;,
  3;80,31,42;,
  3;76,82,53;;
 }
 MeshTextureCoords {
  90;
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
  0.720367;0.502478;,
  0.721093;0.552715;,
  0.674731;0.502112;,
  0.331668;0.509383;,
  0.278047;0.551326;,
  0.278533;0.514240;,
  0.719644;0.452309;,
  0.811588;0.416173;,
  0.811954;0.503700;,
  0.812277;0.580868;,
  0.999857;0.513270;,
  0.999236;0.629423;,
  1.000655;0.363059;,
  0.184569;0.581986;,
  0.185394;0.514847;,
  0.186524;0.421957;,
  0.279252;0.458963;,
  -0.000764;0.629423;,
  -0.000143;0.513270;,
  0.000655;0.363059;,
  -2.257230;2.697796;,
  -2.336651;1.821842;,
  -2.484737;1.801687;,
  -2.400971;1.165135;,
  -1.862401;0.528554;,
  -1.070835;0.643020;,
  -1.145003;0.139821;,
  -0.392491;-0.128536;,
  0.499948;0.292148;,
  0.499680;-0.336080;,
  1.340827;-0.190873;,
  2.043136;0.626036;,
  2.151989;0.064420;,
  2.832032;0.482946;,
  3.360243;1.807632;,
  3.357538;1.066839;,
  3.539937;1.784377;,
  3.268712;2.847650;;
 }
}