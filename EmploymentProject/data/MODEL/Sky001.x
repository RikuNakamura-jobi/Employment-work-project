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
 38;
 0.00000;100000.00000;0.00000;,
 0.00000;92387.94708;-38268.34488;,
 27059.80873;92387.94708;-27059.80492;,
 38268.34488;92387.94708;0.00167;,
 27059.80492;92387.94708;27059.80492;,
 -0.00335;92387.94708;38268.34488;,
 -27059.81064;92387.94708;27059.80301;,
 -38268.34488;92387.94708;-0.00046;,
 -27059.81064;92387.94708;-27059.80301;,
 0.00000;92387.94708;-38268.34488;,
 0.00000;70710.67810;-70710.67810;,
 50000.00000;70710.67810;-49999.99619;,
 27059.80873;92387.94708;-27059.80492;,
 70710.67810;70710.67810;0.00309;,
 50000.00000;70710.67810;50000.00000;,
 -0.00618;70710.67810;70710.67810;,
 -50000.00763;70710.67810;49999.99237;,
 -70710.67810;70710.67810;-0.00084;,
 -50000.00763;70710.67810;-49999.99237;,
 0.00000;70710.67810;-70710.67810;,
 0.00000;38268.34106;-92387.94708;,
 65328.14789;38268.34106;-65328.14789;,
 92387.94708;38268.34106;0.00404;,
 65328.14789;38268.34106;65328.14789;,
 -0.00808;38268.34106;92387.94708;,
 -65328.15552;38268.34106;65328.13263;,
 -92387.94708;38268.34106;-0.00110;,
 -65328.15552;38268.34106;-65328.14026;,
 0.00000;38268.34106;-92387.94708;,
 0.00000;-0.00437;-100000.00000;,
 70710.67810;-0.00437;-70710.67810;,
 100000.00000;-0.00437;0.00437;,
 70710.67810;-0.00437;70710.67810;,
 -0.00874;-0.00437;100000.00000;,
 -70710.68573;-0.00437;70710.66284;,
 -100000.00000;-0.00437;-0.00119;,
 -70710.68573;-0.00437;-70710.66284;,
 0.00000;-0.00437;-100000.00000;;
 
 32;
 3;0,1,2;,
 3;0,2,3;,
 3;0,3,4;,
 3;0,4,5;,
 3;0,5,6;,
 3;0,6,7;,
 3;0,7,8;,
 3;0,8,1;,
 4;9,10,11,12;,
 4;12,11,13,3;,
 4;3,13,14,4;,
 4;4,14,15,5;,
 4;5,15,16,6;,
 4;6,16,17,7;,
 4;7,17,18,8;,
 4;8,18,19,1;,
 4;10,20,21,11;,
 4;11,21,22,13;,
 4;13,22,23,14;,
 4;14,23,24,15;,
 4;15,24,25,16;,
 4;16,25,26,17;,
 4;17,26,27,18;,
 4;18,27,28,19;,
 4;20,29,30,21;,
 4;21,30,31,22;,
 4;22,31,32,23;,
 4;23,32,33,24;,
 4;24,33,34,25;,
 4;25,34,35,26;,
 4;26,35,36,27;,
 4;27,36,37,28;;
 
 MeshMaterialList {
  2;
  32;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
   1.000000;1.000000;1.000000;;
   TextureFilename {
    "data\\TEXTURE\\sky001.png";
   }
  }
  Material {
   1.000000;0.000000;0.074510;1.000000;;
   5.000000;
   1.000000;1.000000;1.000000;;
   1.000000;0.000000;0.074510;;
   TextureFilename {
    "data\\TEXTURE\\sky001.png";
   }
  }
 }
 MeshNormals {
  33;
  0.000000;-1.000000;-0.000000;,
  0.000000;-0.924735;0.380611;,
  -0.269133;-0.924735;0.269132;,
  -0.380611;-0.924735;-0.000000;,
  -0.269132;-0.924735;-0.269132;,
  0.000000;-0.924735;-0.380611;,
  0.269132;-0.924735;-0.269132;,
  0.380611;-0.924735;-0.000000;,
  0.269132;-0.924735;0.269132;,
  0.000000;-0.709230;0.704977;,
  -0.498494;-0.709230;0.498494;,
  -0.704977;-0.709230;-0.000000;,
  -0.498494;-0.709230;-0.498494;,
  0.000000;-0.709230;-0.704977;,
  0.498494;-0.709230;-0.498494;,
  0.704977;-0.709230;-0.000000;,
  0.498494;-0.709230;0.498494;,
  0.000000;-0.384551;0.923104;,
  -0.652733;-0.384551;0.652733;,
  -0.923104;-0.384551;-0.000000;,
  -0.652733;-0.384551;-0.652733;,
  0.000000;-0.384551;-0.923104;,
  0.652733;-0.384551;-0.652733;,
  0.923104;-0.384551;-0.000000;,
  0.652733;-0.384551;0.652733;,
  0.000000;-0.195090;0.980785;,
  -0.693520;-0.195090;0.693520;,
  -0.980785;-0.195090;-0.000000;,
  -0.693520;-0.195090;-0.693520;,
  0.000000;-0.195090;-0.980785;,
  0.693520;-0.195090;-0.693520;,
  0.980785;-0.195090;-0.000000;,
  0.693520;-0.195090;0.693520;;
  32;
  3;0,1,2;,
  3;0,2,3;,
  3;0,3,4;,
  3;0,4,5;,
  3;0,5,6;,
  3;0,6,7;,
  3;0,7,8;,
  3;0,8,1;,
  4;1,9,10,2;,
  4;2,10,11,3;,
  4;3,11,12,4;,
  4;4,12,13,5;,
  4;5,13,14,6;,
  4;6,14,15,7;,
  4;7,15,16,8;,
  4;8,16,9,1;,
  4;9,17,18,10;,
  4;10,18,19,11;,
  4;11,19,20,12;,
  4;12,20,21,13;,
  4;13,21,22,14;,
  4;14,22,23,15;,
  4;15,23,24,16;,
  4;16,24,17,9;,
  4;17,25,26,18;,
  4;18,26,27,19;,
  4;19,27,28,20;,
  4;20,28,29,21;,
  4;21,29,30,22;,
  4;22,30,31,23;,
  4;23,31,32,24;,
  4;24,32,25,17;;
 }
 MeshTextureCoords {
  38;
  0.750000;0.000000;,
  1.000000;0.087294;,
  1.125000;0.087294;,
  0.250000;0.087294;,
  0.375000;0.087294;,
  0.500000;0.087294;,
  0.625000;0.087294;,
  0.750000;0.087294;,
  0.875000;0.087294;,
  0.000000;0.087294;,
  0.000000;0.311565;,
  0.125000;0.311565;,
  0.125000;0.087294;,
  0.250000;0.311565;,
  0.375000;0.311565;,
  0.500000;0.311565;,
  0.625000;0.311565;,
  0.750000;0.311565;,
  0.875000;0.311565;,
  1.000000;0.311565;,
  0.000000;0.736504;,
  0.125000;0.736504;,
  0.250000;0.736504;,
  0.375000;0.736504;,
  0.500000;0.736504;,
  0.625000;0.736504;,
  0.750000;0.736504;,
  0.875000;0.736504;,
  1.000000;0.736504;,
  0.000000;0.874833;,
  0.125000;0.874833;,
  0.250000;0.874833;,
  0.375000;0.874833;,
  0.500000;0.874833;,
  0.625000;0.874833;,
  0.750000;0.874833;,
  0.875000;0.874833;,
  1.000000;0.874833;;
 }
}
