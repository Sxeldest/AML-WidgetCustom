; =========================================================
; Game Engine Function: _ZN9ES2Shader22InitializeAfterCompileEv
; Address            : 0x1CC7CC - 0x1CCA00
; =========================================================

1CC7CC:  PUSH            {R4,R5,R7,LR}
1CC7CE:  ADD             R7, SP, #8
1CC7D0:  MOV             R4, R0
1CC7D2:  BLX             j__Z14RQ_CheckThreadv; RQ_CheckThread(void)
1CC7D6:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CC7DC)
1CC7D8:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CC7DA:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CC7DC:  LDR             R0, [R0]; ES2Shader::activeShader
1CC7DE:  CMP             R0, R4
1CC7E0:  BEQ             loc_1CC7F2
1CC7E2:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CC7E8)
1CC7E4:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CC7E6:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CC7E8:  STR             R4, [R0]; ES2Shader::activeShader
1CC7EA:  LDR.W           R0, [R4,#0x3E8]
1CC7EE:  BLX             glUseProgram
1CC7F2:  ADD.W           R5, R4, #0x3E8
1CC7F6:  ADR             R1, aDiffuse; "Diffuse"
1CC7F8:  LDR             R0, [R5]
1CC7FA:  BLX             glGetUniformLocation
1CC7FE:  ADDS            R1, R0, #1
1CC800:  ITT NE
1CC802:  MOVNE           R1, #0
1CC804:  BLXNE           glUniform1i
1CC808:  LDR             R0, [R5]
1CC80A:  ADR             R1, aEnvmap; "EnvMap"
1CC80C:  BLX             glGetUniformLocation
1CC810:  ADDS            R1, R0, #1
1CC812:  ITT NE
1CC814:  MOVNE           R1, #1
1CC816:  BLXNE           glUniform1i
1CC81A:  LDR             R1, =(aProjmatrix - 0x1CC824); "ProjMatrix"
1CC81C:  LDR.W           R0, [R4,#0x3E8]
1CC820:  ADD             R1, PC; "ProjMatrix"
1CC822:  BLX             glGetUniformLocation
1CC826:  LDR             R1, =(aViewmatrix - 0x1CC830); "ViewMatrix"
1CC828:  LDR.W           R2, [R4,#0x3E8]
1CC82C:  ADD             R1, PC; "ViewMatrix"
1CC82E:  STR.W           R0, [R4,#0x2A4]
1CC832:  MOV             R0, R2
1CC834:  BLX             glGetUniformLocation
1CC838:  LDR.W           R2, [R4,#0x3E8]
1CC83C:  ADR             R1, aObjmatrix; "ObjMatrix"
1CC83E:  STR.W           R0, [R4,#0x2F0]
1CC842:  MOV             R0, R2
1CC844:  BLX             glGetUniformLocation
1CC848:  LDR             R1, =(aNormalmatrix - 0x1CC852); "NormalMatrix"
1CC84A:  LDR.W           R2, [R4,#0x3E8]
1CC84E:  ADD             R1, PC; "NormalMatrix"
1CC850:  STR.W           R0, [R4,#0x33C]
1CC854:  MOV             R0, R2
1CC856:  BLX             glGetUniformLocation
1CC85A:  LDR             R1, =(aAmbientlightco_2 - 0x1CC864); "AmbientLightColor"
1CC85C:  LDR.W           R2, [R4,#0x3E8]
1CC860:  ADD             R1, PC; "AmbientLightColor"
1CC862:  STR.W           R0, [R4,#0x388]
1CC866:  MOV             R0, R2
1CC868:  BLX             glGetUniformLocation
1CC86C:  LDR             R1, =(aDirlightdiffus - 0x1CC876); "DirLightDiffuseColor"
1CC86E:  LDR.W           R2, [R4,#0x3E8]
1CC872:  ADD             R1, PC; "DirLightDiffuseColor"
1CC874:  STR             R0, [R4,#4]
1CC876:  MOV             R0, R2
1CC878:  BLX             glGetUniformLocation
1CC87C:  LDR             R1, =(aDirlightdirect - 0x1CC886); "DirLightDirection"
1CC87E:  LDR.W           R2, [R4,#0x3E8]
1CC882:  ADD             R1, PC; "DirLightDirection"
1CC884:  STR             R0, [R4,#0x20]
1CC886:  MOV             R0, R2
1CC888:  BLX             glGetUniformLocation
1CC88C:  LDR             R1, =(aDirbacklightdi - 0x1CC896); "DirBackLightDirection"
1CC88E:  LDR.W           R2, [R4,#0x3E8]
1CC892:  ADD             R1, PC; "DirBackLightDirection"
1CC894:  STR             R0, [R4,#0x3C]
1CC896:  MOV             R0, R2
1CC898:  BLX             glGetUniformLocation
1CC89C:  LDR             R1, =(aDirlight2diffu - 0x1CC8A6); "DirLight2DiffuseColor"
1CC89E:  LDR.W           R2, [R4,#0x3E8]
1CC8A2:  ADD             R1, PC; "DirLight2DiffuseColor"
1CC8A4:  STR             R0, [R4,#0x58]
1CC8A6:  MOV             R0, R2
1CC8A8:  BLX             glGetUniformLocation
1CC8AC:  LDR             R1, =(aDirlight2direc - 0x1CC8B6); "DirLight2Direction"
1CC8AE:  LDR.W           R2, [R4,#0x3E8]
1CC8B2:  ADD             R1, PC; "DirLight2Direction"
1CC8B4:  STR             R0, [R4,#0x74]
1CC8B6:  MOV             R0, R2
1CC8B8:  BLX             glGetUniformLocation
1CC8BC:  LDR             R1, =(aDirlight3diffu - 0x1CC8C6); "DirLight3DiffuseColor"
1CC8BE:  LDR.W           R2, [R4,#0x3E8]
1CC8C2:  ADD             R1, PC; "DirLight3DiffuseColor"
1CC8C4:  STR.W           R0, [R4,#0x90]
1CC8C8:  MOV             R0, R2
1CC8CA:  BLX             glGetUniformLocation
1CC8CE:  LDR             R1, =(aDirlight3direc - 0x1CC8D8); "DirLight3Direction"
1CC8D0:  LDR.W           R2, [R4,#0x3E8]
1CC8D4:  ADD             R1, PC; "DirLight3Direction"
1CC8D6:  STR.W           R0, [R4,#0xAC]
1CC8DA:  MOV             R0, R2
1CC8DC:  BLX             glGetUniformLocation
1CC8E0:  LDR             R1, =(aMaterialemissi_0 - 0x1CC8EA); "MaterialEmissive"
1CC8E2:  LDR.W           R2, [R4,#0x3E8]
1CC8E6:  ADD             R1, PC; "MaterialEmissive"
1CC8E8:  STR.W           R0, [R4,#0xC8]
1CC8EC:  MOV             R0, R2
1CC8EE:  BLX             glGetUniformLocation
1CC8F2:  LDR             R1, =(aMaterialambien_0 - 0x1CC8FC); "MaterialAmbient"
1CC8F4:  LDR.W           R2, [R4,#0x3E8]
1CC8F8:  ADD             R1, PC; "MaterialAmbient"
1CC8FA:  STR.W           R0, [R4,#0xE4]
1CC8FE:  MOV             R0, R2
1CC900:  BLX             glGetUniformLocation
1CC904:  LDR             R1, =(aMaterialdiffus_0 - 0x1CC90E); "MaterialDiffuse"
1CC906:  LDR.W           R2, [R4,#0x3E8]
1CC90A:  ADD             R1, PC; "MaterialDiffuse"
1CC90C:  STR.W           R0, [R4,#0x100]
1CC910:  MOV             R0, R2
1CC912:  BLX             glGetUniformLocation
1CC916:  LDR             R1, =(aEnvmapcoeffici_0 - 0x1CC920); "EnvMapCoefficient"
1CC918:  LDR.W           R2, [R4,#0x3E8]
1CC91C:  ADD             R1, PC; "EnvMapCoefficient"
1CC91E:  STR.W           R0, [R4,#0x11C]
1CC922:  MOV             R0, R2
1CC924:  BLX             glGetUniformLocation
1CC928:  LDR             R1, =(aCameraposition - 0x1CC932); "CameraPosition"
1CC92A:  LDR.W           R2, [R4,#0x3E8]
1CC92E:  ADD             R1, PC; "CameraPosition"
1CC930:  STR.W           R0, [R4,#0x138]
1CC934:  MOV             R0, R2
1CC936:  BLX             glGetUniformLocation
1CC93A:  LDR.W           R2, [R4,#0x3E8]
1CC93E:  ADR             R1, aFogdistances; "FogDistances"
1CC940:  STR.W           R0, [R4,#0x154]
1CC944:  MOV             R0, R2
1CC946:  BLX             glGetUniformLocation
1CC94A:  LDR.W           R2, [R4,#0x3E8]
1CC94E:  ADR             R1, aFogcolor; "FogColor"
1CC950:  STR.W           R0, [R4,#0x170]
1CC954:  MOV             R0, R2
1CC956:  BLX             glGetUniformLocation
1CC95A:  LDR.W           R2, [R4,#0x3E8]
1CC95E:  ADR             R1, aWaterspecs; "WaterSpecs"
1CC960:  STR.W           R0, [R4,#0x18C]
1CC964:  MOV             R0, R2
1CC966:  BLX             glGetUniformLocation
1CC96A:  LDR.W           R2, [R4,#0x3E8]
1CC96E:  ADR             R1, aContrastmult_0; "ContrastMult"
1CC970:  STR.W           R0, [R4,#0x288]
1CC974:  MOV             R0, R2
1CC976:  BLX             glGetUniformLocation
1CC97A:  LDR.W           R2, [R4,#0x3E8]
1CC97E:  ADR             R1, aContrastadd_0; "ContrastAdd"
1CC980:  STR.W           R0, [R4,#0x1A8]
1CC984:  MOV             R0, R2
1CC986:  BLX             glGetUniformLocation
1CC98A:  LDR.W           R2, [R4,#0x3E8]
1CC98E:  ADR             R1, aDetailtiling; "DetailTiling"
1CC990:  STR.W           R0, [R4,#0x1C4]
1CC994:  MOV             R0, R2
1CC996:  BLX             glGetUniformLocation
1CC99A:  LDR.W           R2, [R4,#0x3E8]
1CC99E:  ADR             R1, aAlphamodulate; "AlphaModulate"
1CC9A0:  STR.W           R0, [R4,#0x1E0]
1CC9A4:  MOV             R0, R2
1CC9A6:  BLX             glGetUniformLocation
1CC9AA:  LDR.W           R2, [R4,#0x3E8]
1CC9AE:  ADR             R1, aColorinterp_0; "ColorInterp"
1CC9B0:  STR.W           R0, [R4,#0x1FC]
1CC9B4:  MOV             R0, R2
1CC9B6:  BLX             glGetUniformLocation
1CC9BA:  LDR.W           R2, [R4,#0x3E8]
1CC9BE:  ADR             R1, aRedgrade; "RedGrade"
1CC9C0:  STR.W           R0, [R4,#0x218]
1CC9C4:  MOV             R0, R2
1CC9C6:  BLX             glGetUniformLocation
1CC9CA:  LDR.W           R2, [R4,#0x3E8]
1CC9CE:  ADR             R1, aGreengrade; "GreenGrade"
1CC9D0:  STR.W           R0, [R4,#0x234]
1CC9D4:  MOV             R0, R2
1CC9D6:  BLX             glGetUniformLocation
1CC9DA:  LDR.W           R2, [R4,#0x3E8]
1CC9DE:  ADR             R1, aBluegrade; "BlueGrade"
1CC9E0:  STR.W           R0, [R4,#0x250]
1CC9E4:  MOV             R0, R2
1CC9E6:  BLX             glGetUniformLocation
1CC9EA:  LDR.W           R2, [R4,#0x3E8]
1CC9EE:  ADR             R1, aBones; "Bones"
1CC9F0:  STR.W           R0, [R4,#0x26C]
1CC9F4:  MOV             R0, R2
1CC9F6:  BLX             glGetUniformLocation
1CC9FA:  STR.W           R0, [R4,#0x3D4]
1CC9FE:  POP             {R4,R5,R7,PC}
