; =========================================================
; Game Engine Function: _Z17BuildVertexSourcej
; Address            : 0x1CEA10 - 0x1CF726
; =========================================================

1CEA10:  PUSH            {R4-R7,LR}
1CEA12:  ADD             R7, SP, #0xC
1CEA14:  PUSH.W          {R8-R11}
1CEA18:  SUB.W           SP, SP, #0x430
1CEA1C:  SUB             SP, SP, #4
1CEA1E:  MOV             R10, R0
1CEA20:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1CEA2E)
1CEA24:  ADD             R6, SP, #0x450+var_228
1CEA26:  ADR.W           R2, aVersion100; "#version 100\n"
1CEA2A:  ADD             R0, PC; __stack_chk_guard_ptr
1CEA2C:  MOV.W           R1, #0x200
1CEA30:  LDR             R0, [R0]; __stack_chk_guard
1CEA32:  LDR             R0, [R0]
1CEA34:  STR.W           R0, [R7,#var_24]
1CEA38:  MOV             R0, R6
1CEA3A:  BL.W            sub_5E6B74
1CEA3E:  LDR.W           R5, =(byte_6BABE9 - 0x1CEA48)
1CEA42:  MOV             R1, R6; src
1CEA44:  ADD             R5, PC; byte_6BABE9
1CEA46:  MOV             R0, R5; dest
1CEA48:  BLX             strcat
1CEA4C:  ADD             R6, SP, #0x450+var_228
1CEA4E:  ADR.W           R2, aPrecisionHighp; "precision highp float;"
1CEA52:  MOV.W           R1, #0x200
1CEA56:  MOV             R0, R6
1CEA58:  BL.W            sub_5E6B74
1CEA5C:  MOV             R0, R5; dest
1CEA5E:  MOV             R1, R6; src
1CEA60:  BLX             strcat
1CEA64:  ADD             R6, SP, #0x450+var_228
1CEA66:  ADR.W           R2, aUniformMat4Pro; "uniform mat4 ProjMatrix;"
1CEA6A:  MOV.W           R1, #0x200
1CEA6E:  MOV             R0, R6
1CEA70:  BL.W            sub_5E6B74
1CEA74:  MOV             R0, R5; dest
1CEA76:  MOV             R1, R6; src
1CEA78:  BLX             strcat
1CEA7C:  ADD             R6, SP, #0x450+var_228
1CEA7E:  ADR.W           R2, aUniformMat4Vie; "uniform mat4 ViewMatrix;"
1CEA82:  MOV.W           R1, #0x200
1CEA86:  MOV             R0, R6
1CEA88:  BL.W            sub_5E6B74
1CEA8C:  MOV             R0, R5; dest
1CEA8E:  MOV             R1, R6; src
1CEA90:  BLX             strcat
1CEA94:  ADD             R6, SP, #0x450+var_228
1CEA96:  ADR.W           R2, aUniformMat4Obj; "uniform mat4 ObjMatrix;"
1CEA9A:  MOV.W           R1, #0x200
1CEA9E:  MOV             R0, R6
1CEAA0:  BL.W            sub_5E6B74
1CEAA4:  MOV             R0, R5; dest
1CEAA6:  MOV             R1, R6; src
1CEAA8:  BLX             strcat
1CEAAC:  ANDS.W          R9, R10, #2
1CEAB0:  BEQ.W           loc_1CEC0E
1CEAB4:  LDR.W           R2, =(aUniformLowpVec_0 - 0x1CEAC2); "uniform lowp vec3 AmbientLightColor;"
1CEAB8:  ADD             R6, SP, #0x450+var_228
1CEABA:  MOV.W           R1, #0x200
1CEABE:  ADD             R2, PC; "uniform lowp vec3 AmbientLightColor;"
1CEAC0:  MOV             R0, R6
1CEAC2:  BL.W            sub_5E6B74
1CEAC6:  LDR.W           R5, =(byte_6BABE9 - 0x1CEAD0)
1CEACA:  MOV             R1, R6; src
1CEACC:  ADD             R5, PC; byte_6BABE9
1CEACE:  MOV             R0, R5; dest
1CEAD0:  BLX             strcat
1CEAD4:  LDR.W           R2, =(aUniformLowpVec_1 - 0x1CEAE2); "uniform lowp vec4 MaterialEmissive;"
1CEAD8:  ADD             R6, SP, #0x450+var_228
1CEADA:  MOV.W           R1, #0x200
1CEADE:  ADD             R2, PC; "uniform lowp vec4 MaterialEmissive;"
1CEAE0:  MOV             R0, R6
1CEAE2:  BL.W            sub_5E6B74
1CEAE6:  MOV             R0, R5; dest
1CEAE8:  MOV             R1, R6; src
1CEAEA:  BLX             strcat
1CEAEE:  LDR.W           R2, =(aUniformLowpVec_2 - 0x1CEAFC); "uniform lowp vec4 MaterialAmbient;"
1CEAF2:  ADD             R6, SP, #0x450+var_228
1CEAF4:  MOV.W           R1, #0x200
1CEAF8:  ADD             R2, PC; "uniform lowp vec4 MaterialAmbient;"
1CEAFA:  MOV             R0, R6
1CEAFC:  BL.W            sub_5E6B74
1CEB00:  MOV             R0, R5; dest
1CEB02:  MOV             R1, R6; src
1CEB04:  BLX             strcat
1CEB08:  LDR.W           R2, =(aUniformLowpVec_3 - 0x1CEB16); "uniform lowp vec4 MaterialDiffuse;"
1CEB0C:  ADD             R6, SP, #0x450+var_228
1CEB0E:  MOV.W           R1, #0x200
1CEB12:  ADD             R2, PC; "uniform lowp vec4 MaterialDiffuse;"
1CEB14:  MOV             R0, R6
1CEB16:  BL.W            sub_5E6B74
1CEB1A:  MOV             R0, R5; dest
1CEB1C:  MOV             R1, R6; src
1CEB1E:  BLX             strcat
1CEB22:  MOVS.W          R0, R10,LSL#18
1CEB26:  BPL             loc_1CEB8E
1CEB28:  LDR.W           R2, =(aUniformLowpVec_4 - 0x1CEB36); "uniform lowp vec3 DirLightDiffuseColor;"
1CEB2C:  ADD             R5, SP, #0x450+var_228
1CEB2E:  MOV.W           R1, #0x200
1CEB32:  ADD             R2, PC; "uniform lowp vec3 DirLightDiffuseColor;"
1CEB34:  MOV             R0, R5
1CEB36:  BL.W            sub_5E6B74
1CEB3A:  LDR.W           R6, =(byte_6BABE9 - 0x1CEB44)
1CEB3E:  MOV             R1, R5; src
1CEB40:  ADD             R6, PC; byte_6BABE9
1CEB42:  MOV             R0, R6; dest
1CEB44:  BLX             strcat
1CEB48:  LDR.W           R2, =(aUniformVec3Dir - 0x1CEB56); "uniform vec3 DirLightDirection;"
1CEB4C:  ADD             R5, SP, #0x450+var_228
1CEB4E:  MOV.W           R1, #0x200
1CEB52:  ADD             R2, PC; "uniform vec3 DirLightDirection;"
1CEB54:  MOV             R0, R5
1CEB56:  BL.W            sub_5E6B74
1CEB5A:  MOV             R0, R6; dest
1CEB5C:  MOV             R1, R5; src
1CEB5E:  BLX             strcat
1CEB62:  BLX             j__Z22GetMobileEffectSettingv; GetMobileEffectSetting(void)
1CEB66:  TST.W           R10, #0x1180
1CEB6A:  BEQ             loc_1CEB8E
1CEB6C:  CMP             R0, #3
1CEB6E:  BNE             loc_1CEB8E
1CEB70:  LDR.W           R2, =(aUniformVec3Dir_0 - 0x1CEB7E); "uniform vec3 DirBackLightDirection;"
1CEB74:  ADD             R5, SP, #0x450+var_228
1CEB76:  MOV.W           R1, #0x200
1CEB7A:  ADD             R2, PC; "uniform vec3 DirBackLightDirection;"
1CEB7C:  MOV             R0, R5
1CEB7E:  BL.W            sub_5E6B74
1CEB82:  LDR.W           R0, =(byte_6BABE9 - 0x1CEB8C)
1CEB86:  MOV             R1, R5; src
1CEB88:  ADD             R0, PC; byte_6BABE9 ; dest
1CEB8A:  BLX             strcat
1CEB8E:  MOVS.W          R0, R10,LSL#17
1CEB92:  BPL             loc_1CEBCE
1CEB94:  LDR.W           R2, =(aUniformLowpVec_5 - 0x1CEBA2); "uniform lowp vec3 DirLight2DiffuseColor"...
1CEB98:  ADD             R5, SP, #0x450+var_228
1CEB9A:  MOV.W           R1, #0x200
1CEB9E:  ADD             R2, PC; "uniform lowp vec3 DirLight2DiffuseColor"...
1CEBA0:  MOV             R0, R5
1CEBA2:  BL.W            sub_5E6B74
1CEBA6:  LDR.W           R6, =(byte_6BABE9 - 0x1CEBB0)
1CEBAA:  MOV             R1, R5; src
1CEBAC:  ADD             R6, PC; byte_6BABE9
1CEBAE:  MOV             R0, R6; dest
1CEBB0:  BLX             strcat
1CEBB4:  LDR.W           R2, =(aUniformVec3Dir_1 - 0x1CEBC2); "uniform vec3 DirLight2Direction;"
1CEBB8:  ADD             R5, SP, #0x450+var_228
1CEBBA:  MOV.W           R1, #0x200
1CEBBE:  ADD             R2, PC; "uniform vec3 DirLight2Direction;"
1CEBC0:  MOV             R0, R5
1CEBC2:  BL.W            sub_5E6B74
1CEBC6:  MOV             R0, R6; dest
1CEBC8:  MOV             R1, R5; src
1CEBCA:  BLX             strcat
1CEBCE:  MOVS.W          R0, R10,LSL#16
1CEBD2:  BPL             loc_1CEC0E
1CEBD4:  LDR.W           R2, =(aUniformLowpVec_6 - 0x1CEBE2); "uniform lowp vec3 DirLight3DiffuseColor"...
1CEBD8:  ADD             R5, SP, #0x450+var_228
1CEBDA:  MOV.W           R1, #0x200
1CEBDE:  ADD             R2, PC; "uniform lowp vec3 DirLight3DiffuseColor"...
1CEBE0:  MOV             R0, R5
1CEBE2:  BL.W            sub_5E6B74
1CEBE6:  LDR.W           R6, =(byte_6BABE9 - 0x1CEBF0)
1CEBEA:  MOV             R1, R5; src
1CEBEC:  ADD             R6, PC; byte_6BABE9
1CEBEE:  MOV             R0, R6; dest
1CEBF0:  BLX             strcat
1CEBF4:  LDR.W           R2, =(aUniformVec3Dir_2 - 0x1CEC02); "uniform vec3 DirLight3Direction;"
1CEBF8:  ADD             R5, SP, #0x450+var_228
1CEBFA:  MOV.W           R1, #0x200
1CEBFE:  ADD             R2, PC; "uniform vec3 DirLight3Direction;"
1CEC00:  MOV             R0, R5
1CEC02:  BL.W            sub_5E6B74
1CEC06:  MOV             R0, R6; dest
1CEC08:  MOV             R1, R5; src
1CEC0A:  BLX             strcat
1CEC0E:  LDR.W           R2, =(aAttributeVec3P - 0x1CEC1C); "attribute vec3 Position;"
1CEC12:  ADD             R5, SP, #0x450+var_228
1CEC14:  MOV.W           R1, #0x200
1CEC18:  ADD             R2, PC; "attribute vec3 Position;"
1CEC1A:  MOV             R0, R5
1CEC1C:  BL.W            sub_5E6B74
1CEC20:  LDR.W           R6, =(byte_6BABE9 - 0x1CEC2A)
1CEC24:  MOV             R1, R5; src
1CEC26:  ADD             R6, PC; byte_6BABE9
1CEC28:  MOV             R0, R6; dest
1CEC2A:  BLX             strcat
1CEC2E:  ADD             R5, SP, #0x450+var_228
1CEC30:  ADR.W           R2, aAttributeVec3N; "attribute vec3 Normal;"
1CEC34:  MOV.W           R1, #0x200
1CEC38:  MOV             R0, R5
1CEC3A:  BL.W            sub_5E6B74
1CEC3E:  MOV             R0, R6; dest
1CEC40:  MOV             R1, R5; src
1CEC42:  BLX             strcat
1CEC46:  ANDS.W          R4, R10, #0x20 ; ' '
1CEC4A:  BEQ             loc_1CEC8A
1CEC4C:  MOVS.W          R0, R10,LSL#13
1CEC50:  BMI             loc_1CEC6C
1CEC52:  LDR.W           R2, =(aAttributeVec2T - 0x1CEC60); "attribute vec2 TexCoord0;"
1CEC56:  ADD             R5, SP, #0x450+var_228
1CEC58:  MOV.W           R1, #0x200
1CEC5C:  ADD             R2, PC; "attribute vec2 TexCoord0;"
1CEC5E:  MOV             R0, R5
1CEC60:  BL.W            sub_5E6B74
1CEC64:  LDR.W           R0, =(byte_6BABE9 - 0x1CEC6C)
1CEC68:  ADD             R0, PC; byte_6BABE9
1CEC6A:  B               loc_1CEC84
1CEC6C:  LDR.W           R2, =(aAttributeVec4T - 0x1CEC7A); "attribute vec4 TexCoord0;"
1CEC70:  ADD             R5, SP, #0x450+var_228
1CEC72:  MOV.W           R1, #0x200
1CEC76:  ADD             R2, PC; "attribute vec4 TexCoord0;"
1CEC78:  MOV             R0, R5
1CEC7A:  BL.W            sub_5E6B74
1CEC7E:  LDR.W           R0, =(byte_6BABE9 - 0x1CEC86)
1CEC82:  ADD             R0, PC; byte_6BABE9 ; dest
1CEC84:  MOV             R1, R5; src
1CEC86:  BLX             strcat
1CEC8A:  LDR.W           R2, =(aAttributeVec4G - 0x1CEC98); "attribute vec4 GlobalColor;"
1CEC8E:  ADD             R5, SP, #0x450+var_228
1CEC90:  MOV.W           R1, #0x200
1CEC94:  ADD             R2, PC; "attribute vec4 GlobalColor;"
1CEC96:  MOV             R0, R5
1CEC98:  BL.W            sub_5E6B74
1CEC9C:  LDR.W           R0, =(byte_6BABE9 - 0x1CECA6)
1CECA0:  MOV             R1, R5; src
1CECA2:  ADD             R0, PC; byte_6BABE9 ; dest
1CECA4:  BLX             strcat
1CECA8:  ANDS.W          R0, R10, #0x180
1CECAC:  STR             R0, [SP,#0x450+var_42C]
1CECAE:  BEQ             loc_1CED12
1CECB0:  LDR.W           R2, =(aAttributeVec4B - 0x1CECBE); "attribute vec4 BoneWeight;"
1CECB4:  ADD             R6, SP, #0x450+var_228
1CECB6:  MOV.W           R1, #0x200
1CECBA:  ADD             R2, PC; "attribute vec4 BoneWeight;"
1CECBC:  MOV             R0, R6
1CECBE:  BL.W            sub_5E6B74
1CECC2:  LDR.W           R5, =(byte_6BABE9 - 0x1CECCC)
1CECC6:  MOV             R1, R6; src
1CECC8:  ADD             R5, PC; byte_6BABE9
1CECCA:  MOV             R0, R5; dest
1CECCC:  BLX             strcat
1CECD0:  LDR.W           R2, =(aAttributeVec4B_0 - 0x1CECDE); "attribute vec4 BoneIndices;"
1CECD4:  ADD             R6, SP, #0x450+var_228
1CECD6:  MOV.W           R1, #0x200
1CECDA:  ADD             R2, PC; "attribute vec4 BoneIndices;"
1CECDC:  MOV             R0, R6
1CECDE:  BL.W            sub_5E6B74
1CECE2:  MOV             R0, R5; dest
1CECE4:  MOV             R1, R6; src
1CECE6:  BLX             strcat
1CECEA:  LDR.W           R0, =(RQMaxBones_ptr - 0x1CECFC)
1CECEE:  ADD             R6, SP, #0x450+var_228
1CECF0:  LDR.W           R2, =(aUniformHighpVe - 0x1CECFE); "uniform highp vec4 Bones[%d];"
1CECF4:  MOV.W           R1, #0x200
1CECF8:  ADD             R0, PC; RQMaxBones_ptr
1CECFA:  ADD             R2, PC; "uniform highp vec4 Bones[%d];"
1CECFC:  LDR             R0, [R0]; RQMaxBones
1CECFE:  LDR             R0, [R0]
1CED00:  ADD.W           R3, R0, R0,LSL#1
1CED04:  MOV             R0, R6
1CED06:  BL.W            sub_5E6B74
1CED0A:  MOV             R0, R5; dest
1CED0C:  MOV             R1, R6; src
1CED0E:  BLX             strcat
1CED12:  CBZ             R4, loc_1CED32
1CED14:  LDR.W           R2, =(aVaryingMediump - 0x1CED22); "varying mediump vec2 Out_Tex0;"
1CED18:  ADD             R5, SP, #0x450+var_228
1CED1A:  MOV.W           R1, #0x200
1CED1E:  ADD             R2, PC; "varying mediump vec2 Out_Tex0;"
1CED20:  MOV             R0, R5
1CED22:  BL.W            sub_5E6B74
1CED26:  LDR.W           R0, =(byte_6BABE9 - 0x1CED30)
1CED2A:  MOV             R1, R5; src
1CED2C:  ADD             R0, PC; byte_6BABE9 ; dest
1CED2E:  BLX             strcat
1CED32:  ANDS.W          R0, R10, #0x2000000
1CED36:  STR             R4, [SP,#0x450+var_438]
1CED38:  STR             R0, [SP,#0x450+var_444]
1CED3A:  BEQ             loc_1CED5A
1CED3C:  LDR.W           R2, =(aUniformMat3Nor - 0x1CED4A); "uniform mat3 NormalMatrix;"
1CED40:  ADD             R5, SP, #0x450+var_228
1CED42:  MOV.W           R1, #0x200
1CED46:  ADD             R2, PC; "uniform mat3 NormalMatrix;"
1CED48:  MOV             R0, R5
1CED4A:  BL.W            sub_5E6B74
1CED4E:  LDR.W           R0, =(byte_6BABE9 - 0x1CED58)
1CED52:  MOV             R1, R5; src
1CED54:  ADD             R0, PC; byte_6BABE9 ; dest
1CED56:  BLX             strcat
1CED5A:  MOV             R11, #0x1000040
1CED62:  ANDS.W          R8, R10, R11
1CED66:  BEQ             loc_1CEDC4
1CED68:  MOVS.W          R0, R10,LSL#25
1CED6C:  BMI             loc_1CED88
1CED6E:  LDR.W           R2, =(aVaryingMediump_0 - 0x1CED7C); "varying mediump vec3 Out_Refl;"
1CED72:  ADD             R5, SP, #0x450+var_228
1CED74:  MOV.W           R1, #0x200
1CED78:  ADD             R2, PC; "varying mediump vec3 Out_Refl;"
1CED7A:  MOV             R0, R5
1CED7C:  BL.W            sub_5E6B74
1CED80:  LDR.W           R0, =(byte_6BABE9 - 0x1CED88)
1CED84:  ADD             R0, PC; byte_6BABE9
1CED86:  B               loc_1CEDA0
1CED88:  LDR.W           R2, =(aVaryingMediump_1 - 0x1CED96); "varying mediump vec2 Out_Tex1;"
1CED8C:  ADD             R5, SP, #0x450+var_228
1CED8E:  MOV.W           R1, #0x200
1CED92:  ADD             R2, PC; "varying mediump vec2 Out_Tex1;"
1CED94:  MOV             R0, R5
1CED96:  BL.W            sub_5E6B74
1CED9A:  LDR.W           R0, =(byte_6BABE9 - 0x1CEDA2)
1CED9E:  ADD             R0, PC; byte_6BABE9 ; dest
1CEDA0:  MOV             R1, R5; src
1CEDA2:  BLX             strcat
1CEDA6:  LDR.W           R2, =(aUniformLowpFlo - 0x1CEDB4); "uniform lowp float EnvMapCoefficient;"
1CEDAA:  ADD             R5, SP, #0x450+var_228
1CEDAC:  MOV.W           R1, #0x200
1CEDB0:  ADD             R2, PC; "uniform lowp float EnvMapCoefficient;"
1CEDB2:  MOV             R0, R5
1CEDB4:  BL.W            sub_5E6B74
1CEDB8:  LDR.W           R0, =(byte_6BABE9 - 0x1CEDC2)
1CEDBC:  MOV             R1, R5; src
1CEDBE:  ADD             R0, PC; byte_6BABE9 ; dest
1CEDC0:  BLX             strcat
1CEDC4:  MOV             R0, #0x18807C0
1CEDCC:  TST.W           R10, R0
1CEDD0:  BEQ             loc_1CEDF0
1CEDD2:  LDR.W           R2, =(aUniformVec3Cam - 0x1CEDE0); "uniform vec3 CameraPosition;"
1CEDD6:  ADD             R5, SP, #0x450+var_228
1CEDD8:  MOV.W           R1, #0x200
1CEDDC:  ADD             R2, PC; "uniform vec3 CameraPosition;"
1CEDDE:  MOV             R0, R5
1CEDE0:  BL.W            sub_5E6B74
1CEDE4:  LDR.W           R0, =(byte_6BABE9 - 0x1CEDEE)
1CEDE8:  MOV             R1, R5; src
1CEDEA:  ADD             R0, PC; byte_6BABE9 ; dest
1CEDEC:  BLX             strcat
1CEDF0:  ANDS.W          R0, R10, #0x400
1CEDF4:  STR             R0, [SP,#0x450+var_440]
1CEDF6:  BEQ             loc_1CEE32
1CEDF8:  LDR.W           R2, =(aVaryingMediump_2 - 0x1CEE06); "varying mediump float Out_FogAmt;"
1CEDFC:  ADD             R5, SP, #0x450+var_228
1CEDFE:  MOV.W           R1, #0x200
1CEE02:  ADD             R2, PC; "varying mediump float Out_FogAmt;"
1CEE04:  MOV             R0, R5
1CEE06:  BL.W            sub_5E6B74
1CEE0A:  LDR.W           R6, =(byte_6BABE9 - 0x1CEE14)
1CEE0E:  MOV             R1, R5; src
1CEE10:  ADD             R6, PC; byte_6BABE9
1CEE12:  MOV             R0, R6; dest
1CEE14:  BLX             strcat
1CEE18:  LDR.W           R2, =(aUniformVec3Fog - 0x1CEE26); "uniform vec3 FogDistances;"
1CEE1C:  ADD             R5, SP, #0x450+var_228
1CEE1E:  MOV.W           R1, #0x200
1CEE22:  ADD             R2, PC; "uniform vec3 FogDistances;"
1CEE24:  MOV             R0, R5
1CEE26:  BL.W            sub_5E6B74
1CEE2A:  MOV             R0, R6; dest
1CEE2C:  MOV             R1, R5; src
1CEE2E:  BLX             strcat
1CEE32:  ANDS.W          R0, R10, #0x80000
1CEE36:  STR             R0, [SP,#0x450+var_430]
1CEE38:  BEQ             loc_1CEEA8
1CEE3A:  LDR.W           R2, =(aUniformVec3Wat - 0x1CEE48); "uniform vec3 WaterSpecs;"
1CEE3E:  ADD             R6, SP, #0x450+var_228
1CEE40:  MOV.W           R1, #0x200
1CEE44:  ADD             R2, PC; "uniform vec3 WaterSpecs;"
1CEE46:  MOV             R0, R6
1CEE48:  BL.W            sub_5E6B74
1CEE4C:  LDR.W           R5, =(byte_6BABE9 - 0x1CEE56)
1CEE50:  MOV             R1, R6; src
1CEE52:  ADD             R5, PC; byte_6BABE9
1CEE54:  MOV             R0, R5; dest
1CEE56:  BLX             strcat
1CEE5A:  LDR.W           R2, =(aVaryingMediump_3 - 0x1CEE68); "varying mediump vec2 Out_WaterDetail;"
1CEE5E:  ADD             R6, SP, #0x450+var_228
1CEE60:  MOV.W           R1, #0x200
1CEE64:  ADD             R2, PC; "varying mediump vec2 Out_WaterDetail;"
1CEE66:  MOV             R0, R6
1CEE68:  BL.W            sub_5E6B74
1CEE6C:  MOV             R0, R5; dest
1CEE6E:  MOV             R1, R6; src
1CEE70:  BLX             strcat
1CEE74:  LDR.W           R2, =(aVaryingMediump_4 - 0x1CEE82); "varying mediump vec2 Out_WaterDetail2;"
1CEE78:  ADD             R6, SP, #0x450+var_228
1CEE7A:  MOV.W           R1, #0x200
1CEE7E:  ADD             R2, PC; "varying mediump vec2 Out_WaterDetail2;"
1CEE80:  MOV             R0, R6
1CEE82:  BL.W            sub_5E6B74
1CEE86:  MOV             R0, R5; dest
1CEE88:  MOV             R1, R6; src
1CEE8A:  BLX             strcat
1CEE8E:  LDR.W           R2, =(aVaryingMediump_5 - 0x1CEE9C); "varying mediump float Out_WaterAlphaBle"...
1CEE92:  ADD             R6, SP, #0x450+var_228
1CEE94:  MOV.W           R1, #0x200
1CEE98:  ADD             R2, PC; "varying mediump float Out_WaterAlphaBle"...
1CEE9A:  MOV             R0, R6
1CEE9C:  BL.W            sub_5E6B74
1CEEA0:  MOV             R0, R5; dest
1CEEA2:  MOV             R1, R6; src
1CEEA4:  BLX             strcat
1CEEA8:  ANDS.W          R0, R10, #0x100000
1CEEAC:  STR             R0, [SP,#0x450+var_43C]
1CEEAE:  BEQ             loc_1CEEEA
1CEEB0:  LDR.W           R2, =(aAttributeVec4C - 0x1CEEBE); "attribute vec4 Color2;"
1CEEB4:  ADD             R5, SP, #0x450+var_228
1CEEB6:  MOV.W           R1, #0x200
1CEEBA:  ADD             R2, PC; "attribute vec4 Color2;"
1CEEBC:  MOV             R0, R5
1CEEBE:  BL.W            sub_5E6B74
1CEEC2:  LDR.W           R6, =(byte_6BABE9 - 0x1CEECC)
1CEEC6:  MOV             R1, R5; src
1CEEC8:  ADD             R6, PC; byte_6BABE9
1CEECA:  MOV             R0, R6; dest
1CEECC:  BLX             strcat
1CEED0:  LDR.W           R2, =(aUniformLowpFlo_1 - 0x1CEEDE); "uniform lowp float ColorInterp;"
1CEED4:  ADD             R5, SP, #0x450+var_228
1CEED6:  MOV.W           R1, #0x200
1CEEDA:  ADD             R2, PC; "uniform lowp float ColorInterp;"
1CEEDC:  MOV             R0, R5
1CEEDE:  BL.W            sub_5E6B74
1CEEE2:  MOV             R0, R6; dest
1CEEE4:  MOV             R1, R5; src
1CEEE6:  BLX             strcat
1CEEEA:  ANDS.W          R0, R10, #0x12
1CEEEE:  STR             R0, [SP,#0x450+var_434]
1CEEF0:  BEQ             loc_1CEF10
1CEEF2:  LDR.W           R2, =(aVaryingLowpVec - 0x1CEF00); "varying lowp vec4 Out_Color;"
1CEEF6:  ADD             R5, SP, #0x450+var_228
1CEEF8:  MOV.W           R1, #0x200
1CEEFC:  ADD             R2, PC; "varying lowp vec4 Out_Color;"
1CEEFE:  MOV             R0, R5
1CEF00:  BL.W            sub_5E6B74
1CEF04:  LDR.W           R0, =(byte_6BABE9 - 0x1CEF0E)
1CEF08:  MOV             R1, R5; src
1CEF0A:  ADD             R0, PC; byte_6BABE9 ; dest
1CEF0C:  BLX             strcat
1CEF10:  ANDS.W          R0, R10, #0x2000
1CEF14:  STR             R0, [SP,#0x450+var_448]
1CEF16:  MOV.W           R4, #0
1CEF1A:  ADD.W           R0, R11, #0x180
1CEF1E:  IT EQ
1CEF20:  MOVEQ           R4, #1
1CEF22:  TST.W           R10, R0
1CEF26:  BEQ             loc_1CEF48
1CEF28:  CBNZ            R4, loc_1CEF48
1CEF2A:  LDR.W           R2, =(aVaryingLowpVec_0 - 0x1CEF38); "varying lowp vec3 Out_Spec;"
1CEF2E:  ADD             R5, SP, #0x450+var_228
1CEF30:  MOV.W           R1, #0x200
1CEF34:  ADD             R2, PC; "varying lowp vec3 Out_Spec;"
1CEF36:  MOV             R0, R5
1CEF38:  BL.W            sub_5E6B74
1CEF3C:  LDR.W           R0, =(byte_6BABE9 - 0x1CEF46)
1CEF40:  MOV             R1, R5; src
1CEF42:  ADD             R0, PC; byte_6BABE9 ; dest
1CEF44:  BLX             strcat
1CEF48:  LDR.W           R2, =(aVoidMain_0 - 0x1CEF56); "void main() {"
1CEF4C:  ADD             R5, SP, #0x450+var_228
1CEF4E:  MOV.W           R1, #0x200
1CEF52:  ADD             R2, PC; "void main() {"
1CEF54:  MOV             R0, R5
1CEF56:  BL.W            sub_5E6B74
1CEF5A:  LDR.W           R0, =(byte_6BABE9 - 0x1CEF64)
1CEF5E:  MOV             R1, R5; src
1CEF60:  ADD             R0, PC; byte_6BABE9 ; dest
1CEF62:  BLX             strcat
1CEF66:  LDR             R0, [SP,#0x450+var_42C]
1CEF68:  MOV             R11, R9
1CEF6A:  CMP             R0, #0
1CEF6C:  BEQ.W           loc_1CF12A
1CEF70:  LDR.W           R2, =(aIvec4Blendinde - 0x1CEF7E); "\tivec4 BlendIndexArray = ivec4(BoneInd"...
1CEF74:  ADD             R5, SP, #0x450+var_228
1CEF76:  MOV.W           R1, #0x200
1CEF7A:  ADD             R2, PC; "\tivec4 BlendIndexArray = ivec4(BoneInd"...
1CEF7C:  MOV             R0, R5
1CEF7E:  BL.W            sub_5E6B74
1CEF82:  LDR.W           R6, =(byte_6BABE9 - 0x1CEF8C)
1CEF86:  MOV             R1, R5; src
1CEF88:  ADD             R6, PC; byte_6BABE9
1CEF8A:  MOV             R0, R6; dest
1CEF8C:  BLX             strcat
1CEF90:  LDR.W           R2, =(aMat4Bonetoloca - 0x1CEF9E); "\tmat4 BoneToLocal;"
1CEF94:  ADD             R5, SP, #0x450+var_228
1CEF96:  MOV.W           R1, #0x200
1CEF9A:  ADD             R2, PC; "\tmat4 BoneToLocal;"
1CEF9C:  MOV             R0, R5
1CEF9E:  BL.W            sub_5E6B74
1CEFA2:  MOV             R0, R6; dest
1CEFA4:  MOV             R1, R5; src
1CEFA6:  BLX             strcat
1CEFAA:  LDR.W           R2, =(aBonetolocal0Bo - 0x1CEFB8); "\tBoneToLocal[0] = Bones[BlendIndexArra"...
1CEFAE:  ADD             R5, SP, #0x450+var_228
1CEFB0:  MOV.W           R1, #0x200
1CEFB4:  ADD             R2, PC; "\tBoneToLocal[0] = Bones[BlendIndexArra"...
1CEFB6:  MOV             R0, R5
1CEFB8:  BL.W            sub_5E6B74
1CEFBC:  MOV             R0, R6; dest
1CEFBE:  MOV             R1, R5; src
1CEFC0:  BLX             strcat
1CEFC4:  LDR.W           R2, =(aBonetolocal1Bo - 0x1CEFD2); "\tBoneToLocal[1] = Bones[BlendIndexArra"...
1CEFC8:  ADD             R5, SP, #0x450+var_228
1CEFCA:  MOV.W           R1, #0x200
1CEFCE:  ADD             R2, PC; "\tBoneToLocal[1] = Bones[BlendIndexArra"...
1CEFD0:  MOV             R0, R5
1CEFD2:  BL.W            sub_5E6B74
1CEFD6:  MOV             R0, R6; dest
1CEFD8:  MOV             R1, R5; src
1CEFDA:  BLX             strcat
1CEFDE:  LDR.W           R2, =(aBonetolocal2Bo - 0x1CEFEC); "\tBoneToLocal[2] = Bones[BlendIndexArra"...
1CEFE2:  ADD             R5, SP, #0x450+var_228
1CEFE4:  MOV.W           R1, #0x200
1CEFE8:  ADD             R2, PC; "\tBoneToLocal[2] = Bones[BlendIndexArra"...
1CEFEA:  MOV             R0, R5
1CEFEC:  BL.W            sub_5E6B74
1CEFF0:  MOV             R0, R6; dest
1CEFF2:  MOV             R1, R5; src
1CEFF4:  BLX             strcat
1CEFF8:  LDR.W           R2, =(aBonetolocal3Ve - 0x1CF006); "\tBoneToLocal[3] = vec4(0.0,0.0,0.0,1.0"...
1CEFFC:  ADD             R5, SP, #0x450+var_228
1CEFFE:  MOV.W           R1, #0x200
1CF002:  ADD             R2, PC; "\tBoneToLocal[3] = vec4(0.0,0.0,0.0,1.0"...
1CF004:  MOV             R0, R5
1CF006:  BL.W            sub_5E6B74
1CF00A:  MOV             R0, R6; dest
1CF00C:  MOV             R1, R5; src
1CF00E:  BLX             strcat
1CF012:  LDR.W           R2, =(aBonetolocal0Bo_0 - 0x1CF020); "\tBoneToLocal[0] += Bones[BlendIndexArr"...
1CF016:  ADD             R5, SP, #0x450+var_228
1CF018:  MOV.W           R1, #0x200
1CF01C:  ADD             R2, PC; "\tBoneToLocal[0] += Bones[BlendIndexArr"...
1CF01E:  MOV             R0, R5
1CF020:  BL.W            sub_5E6B74
1CF024:  MOV             R0, R6; dest
1CF026:  MOV             R1, R5; src
1CF028:  BLX             strcat
1CF02C:  LDR.W           R2, =(aBonetolocal1Bo_0 - 0x1CF03A); "\tBoneToLocal[1] += Bones[BlendIndexArr"...
1CF030:  ADD             R5, SP, #0x450+var_228
1CF032:  MOV.W           R1, #0x200
1CF036:  ADD             R2, PC; "\tBoneToLocal[1] += Bones[BlendIndexArr"...
1CF038:  MOV             R0, R5
1CF03A:  BL.W            sub_5E6B74
1CF03E:  MOV             R0, R6; dest
1CF040:  MOV             R1, R5; src
1CF042:  BLX             strcat
1CF046:  LDR.W           R2, =(aBonetolocal2Bo_0 - 0x1CF054); "\tBoneToLocal[2] += Bones[BlendIndexArr"...
1CF04A:  ADD             R5, SP, #0x450+var_228
1CF04C:  MOV.W           R1, #0x200
1CF050:  ADD             R2, PC; "\tBoneToLocal[2] += Bones[BlendIndexArr"...
1CF052:  MOV             R0, R5
1CF054:  BL.W            sub_5E6B74
1CF058:  MOV             R0, R6; dest
1CF05A:  MOV             R1, R5; src
1CF05C:  BLX             strcat
1CF060:  LDR.W           R2, =(aBonetolocal0Bo_1 - 0x1CF06E); "\tBoneToLocal[0] += Bones[BlendIndexArr"...
1CF064:  ADD             R5, SP, #0x450+var_228
1CF066:  MOV.W           R1, #0x200
1CF06A:  ADD             R2, PC; "\tBoneToLocal[0] += Bones[BlendIndexArr"...
1CF06C:  MOV             R0, R5
1CF06E:  BL.W            sub_5E6B74
1CF072:  MOV             R0, R6; dest
1CF074:  MOV             R1, R5; src
1CF076:  BLX             strcat
1CF07A:  LDR.W           R2, =(aBonetolocal1Bo_1 - 0x1CF088); "\tBoneToLocal[1] += Bones[BlendIndexArr"...
1CF07E:  ADD             R5, SP, #0x450+var_228
1CF080:  MOV.W           R1, #0x200
1CF084:  ADD             R2, PC; "\tBoneToLocal[1] += Bones[BlendIndexArr"...
1CF086:  MOV             R0, R5
1CF088:  BL.W            sub_5E6B74
1CF08C:  MOV             R0, R6; dest
1CF08E:  MOV             R1, R5; src
1CF090:  BLX             strcat
1CF094:  LDR.W           R2, =(aBonetolocal2Bo_1 - 0x1CF0A2); "\tBoneToLocal[2] += Bones[BlendIndexArr"...
1CF098:  ADD             R5, SP, #0x450+var_228
1CF09A:  MOV.W           R1, #0x200
1CF09E:  ADD             R2, PC; "\tBoneToLocal[2] += Bones[BlendIndexArr"...
1CF0A0:  MOV             R0, R5
1CF0A2:  BL.W            sub_5E6B74
1CF0A6:  MOV             R0, R6; dest
1CF0A8:  MOV             R1, R5; src
1CF0AA:  BLX             strcat
1CF0AE:  MOVS.W          R0, R10,LSL#23
1CF0B2:  MOV             R9, R8
1CF0B4:  BPL             loc_1CF10A
1CF0B6:  LDR.W           R2, =(aBonetolocal0Bo_2 - 0x1CF0C4); "\tBoneToLocal[0] += Bones[BlendIndexArr"...
1CF0BA:  ADD             R5, SP, #0x450+var_228
1CF0BC:  MOV.W           R1, #0x200
1CF0C0:  ADD             R2, PC; "\tBoneToLocal[0] += Bones[BlendIndexArr"...
1CF0C2:  MOV             R0, R5
1CF0C4:  BL.W            sub_5E6B74
1CF0C8:  LDR.W           R6, =(byte_6BABE9 - 0x1CF0D2)
1CF0CC:  MOV             R1, R5; src
1CF0CE:  ADD             R6, PC; byte_6BABE9
1CF0D0:  MOV             R0, R6; dest
1CF0D2:  BLX             strcat
1CF0D6:  LDR.W           R2, =(aBonetolocal1Bo_2 - 0x1CF0E4); "\tBoneToLocal[1] += Bones[BlendIndexArr"...
1CF0DA:  ADD             R5, SP, #0x450+var_228
1CF0DC:  MOV.W           R1, #0x200
1CF0E0:  ADD             R2, PC; "\tBoneToLocal[1] += Bones[BlendIndexArr"...
1CF0E2:  MOV             R0, R5
1CF0E4:  BL.W            sub_5E6B74
1CF0E8:  MOV             R0, R6; dest
1CF0EA:  MOV             R1, R5; src
1CF0EC:  BLX             strcat
1CF0F0:  LDR.W           R2, =(aBonetolocal2Bo_2 - 0x1CF0FE); "\tBoneToLocal[2] += Bones[BlendIndexArr"...
1CF0F4:  ADD             R5, SP, #0x450+var_228
1CF0F6:  MOV.W           R1, #0x200
1CF0FA:  ADD             R2, PC; "\tBoneToLocal[2] += Bones[BlendIndexArr"...
1CF0FC:  MOV             R0, R5
1CF0FE:  BL.W            sub_5E6B74
1CF102:  MOV             R0, R6; dest
1CF104:  MOV             R1, R5; src
1CF106:  BLX             strcat
1CF10A:  LDR.W           R2, =(aVec4WorldposOb - 0x1CF118); "\tvec4 WorldPos = ObjMatrix * (vec4(Pos"...
1CF10E:  ADD             R5, SP, #0x450+var_228
1CF110:  MOV.W           R1, #0x200
1CF114:  ADD             R2, PC; "\tvec4 WorldPos = ObjMatrix * (vec4(Pos"...
1CF116:  MOV             R0, R5
1CF118:  BL.W            sub_5E6B74
1CF11C:  LDR.W           R0, =(byte_6BABE9 - 0x1CF126)
1CF120:  MOV             R1, R5; src
1CF122:  ADD             R0, PC; byte_6BABE9 ; dest
1CF124:  BLX             strcat
1CF128:  B               loc_1CF14A
1CF12A:  LDR.W           R2, =(aVec4WorldposOb_0 - 0x1CF138); "\tvec4 WorldPos = ObjMatrix * vec4(Posi"...
1CF12E:  ADD             R5, SP, #0x450+var_228
1CF130:  MOV.W           R1, #0x200
1CF134:  ADD             R2, PC; "\tvec4 WorldPos = ObjMatrix * vec4(Posi"...
1CF136:  MOV             R0, R5
1CF138:  BL.W            sub_5E6B74
1CF13C:  LDR.W           R0, =(byte_6BABE9 - 0x1CF146)
1CF140:  MOV             R1, R5; src
1CF142:  ADD             R0, PC; byte_6BABE9 ; dest
1CF144:  BLX             strcat
1CF148:  MOV             R9, R8
1CF14A:  LDR.W           R8, [SP,#0x450+var_438]
1CF14E:  MOVS.W          R0, R10,LSL#8
1CF152:  BMI             loc_1CF17C
1CF154:  LDR.W           R2, =(aVec4ViewposVie - 0x1CF162); "\tvec4 ViewPos = ViewMatrix * WorldPos;"
1CF158:  ADD             R5, SP, #0x450+var_228
1CF15A:  MOV.W           R1, #0x200
1CF15E:  ADD             R2, PC; "\tvec4 ViewPos = ViewMatrix * WorldPos;"
1CF160:  MOV             R0, R5
1CF162:  BL.W            sub_5E6B74
1CF166:  LDR.W           R6, =(byte_6BABE9 - 0x1CF170)
1CF16A:  MOV             R1, R5; src
1CF16C:  ADD             R6, PC; byte_6BABE9
1CF16E:  MOV             R0, R6; dest
1CF170:  BLX             strcat
1CF174:  LDR.W           R2, =(aGlPositionProj - 0x1CF17C); "\tgl_Position = ProjMatrix * ViewPos;"
1CF178:  ADD             R2, PC; "\tgl_Position = ProjMatrix * ViewPos;"
1CF17A:  B               loc_1CF1D6
1CF17C:  LDR.W           R2, =(aVec3Reflvector - 0x1CF18A); "    vec3 ReflVector = WorldPos.xyz - Ca"...
1CF180:  ADD             R5, SP, #0x450+var_228
1CF182:  MOV.W           R1, #0x200
1CF186:  ADD             R2, PC; "    vec3 ReflVector = WorldPos.xyz - Ca"...
1CF188:  MOV             R0, R5
1CF18A:  BL.W            sub_5E6B74
1CF18E:  LDR.W           R6, =(byte_6BABE9 - 0x1CF198)
1CF192:  MOV             R1, R5; src
1CF194:  ADD             R6, PC; byte_6BABE9
1CF196:  MOV             R0, R6; dest
1CF198:  BLX             strcat
1CF19C:  LDR.W           R2, =(aVec3ReflposNor - 0x1CF1AA); "\tvec3 ReflPos = normalize(ReflVector);"
1CF1A0:  ADD             R5, SP, #0x450+var_228
1CF1A2:  MOV.W           R1, #0x200
1CF1A6:  ADD             R2, PC; "\tvec3 ReflPos = normalize(ReflVector);"
1CF1A8:  MOV             R0, R5
1CF1AA:  BL.W            sub_5E6B74
1CF1AE:  MOV             R0, R6; dest
1CF1B0:  MOV             R1, R5; src
1CF1B2:  BLX             strcat
1CF1B6:  LDR.W           R2, =(aReflposXyNorma - 0x1CF1C4); "    ReflPos.xy = normalize(ReflPos.xy) "...
1CF1BA:  ADD             R5, SP, #0x450+var_228
1CF1BC:  MOV.W           R1, #0x200
1CF1C0:  ADD             R2, PC; "    ReflPos.xy = normalize(ReflPos.xy) "...
1CF1C2:  MOV             R0, R5
1CF1C4:  BL.W            sub_5E6B74
1CF1C8:  MOV             R0, R6; dest
1CF1CA:  MOV             R1, R5; src
1CF1CC:  BLX             strcat
1CF1D0:  LDR.W           R2, =(aGlPositionVec4 - 0x1CF1D8); "\tgl_Position = vec4(ReflPos.xy, length"...
1CF1D4:  ADD             R2, PC; "\tgl_Position = vec4(ReflPos.xy, length"...
1CF1D6:  ADD             R5, SP, #0x450+var_228
1CF1D8:  MOV.W           R1, #0x200
1CF1DC:  MOV             R0, R5
1CF1DE:  BL.W            sub_5E6B74
1CF1E2:  MOV             R0, R6; dest
1CF1E4:  MOV             R1, R5; src
1CF1E6:  BLX             strcat
1CF1EA:  CMP.W           R11, #0
1CF1EE:  BEQ             loc_1CF21C
1CF1F0:  MOVW            R0, #0x201
1CF1F4:  AND.W           R1, R10, R0
1CF1F8:  CMP             R1, R0
1CF1FA:  BNE             loc_1CF23C
1CF1FC:  ANDS.W          R0, R10, #0xE000
1CF200:  BEQ             loc_1CF23C
1CF202:  LDR.W           R2, =(aVec3Worldnorma - 0x1CF210); "vec3 WorldNormal = normalize(vec3(World"...
1CF206:  ADD             R5, SP, #0x450+var_228
1CF208:  MOV.W           R1, #0x200
1CF20C:  ADD             R2, PC; "vec3 WorldNormal = normalize(vec3(World"...
1CF20E:  MOV             R0, R5
1CF210:  BL.W            sub_5E6B74
1CF214:  LDR.W           R0, =(byte_6BABE9 - 0x1CF21C)
1CF218:  ADD             R0, PC; byte_6BABE9
1CF21A:  B               loc_1CF272
1CF21C:  CMP.W           R9, #0
1CF220:  BEQ             loc_1CF278
1CF222:  LDR.W           R2, =(aVec3Worldnorma_0 - 0x1CF230); "vec3 WorldNormal = vec3(0.0, 0.0, 0.0);"
1CF226:  ADD             R5, SP, #0x450+var_228
1CF228:  MOV.W           R1, #0x200
1CF22C:  ADD             R2, PC; "vec3 WorldNormal = vec3(0.0, 0.0, 0.0);"
1CF22E:  MOV             R0, R5
1CF230:  BL.W            sub_5E6B74
1CF234:  LDR.W           R0, =(byte_6BABE9 - 0x1CF23C)
1CF238:  ADD             R0, PC; byte_6BABE9
1CF23A:  B               loc_1CF272
1CF23C:  LDR             R0, [SP,#0x450+var_42C]
1CF23E:  CBZ             R0, loc_1CF25A
1CF240:  LDR.W           R2, =(aVec3Worldnorma_1 - 0x1CF24E); "vec3 WorldNormal = mat3(ObjMatrix) * (N"...
1CF244:  ADD             R5, SP, #0x450+var_228
1CF246:  MOV.W           R1, #0x200
1CF24A:  ADD             R2, PC; "vec3 WorldNormal = mat3(ObjMatrix) * (N"...
1CF24C:  MOV             R0, R5
1CF24E:  BL.W            sub_5E6B74
1CF252:  LDR.W           R0, =(byte_6BABE9 - 0x1CF25A)
1CF256:  ADD             R0, PC; byte_6BABE9
1CF258:  B               loc_1CF272
1CF25A:  LDR.W           R2, =(aVec3Worldnorma_2 - 0x1CF268); "vec3 WorldNormal = (ObjMatrix * vec4(No"...
1CF25E:  ADD             R5, SP, #0x450+var_228
1CF260:  MOV.W           R1, #0x200
1CF264:  ADD             R2, PC; "vec3 WorldNormal = (ObjMatrix * vec4(No"...
1CF266:  MOV             R0, R5
1CF268:  BL.W            sub_5E6B74
1CF26C:  LDR.W           R0, =(byte_6BABE9 - 0x1CF274)
1CF270:  ADD             R0, PC; byte_6BABE9 ; dest
1CF272:  MOV             R1, R5; src
1CF274:  BLX             strcat
1CF278:  LDR.W           R0, =(RQCaps_ptr - 0x1CF280)
1CF27C:  ADD             R0, PC; RQCaps_ptr
1CF27E:  LDR             R0, [R0]; RQCaps
1CF280:  LDRB            R0, [R0,#(byte_6B8BA4 - 0x6B8B9C)]
1CF282:  CBNZ            R0, loc_1CF2A6
1CF284:  LDR             R0, [SP,#0x450+var_440]
1CF286:  CBZ             R0, loc_1CF2A6
1CF288:  LDR.W           R2, =(aOutFogamtClamp - 0x1CF296); "Out_FogAmt = clamp((length(WorldPos.xyz"...
1CF28C:  ADD             R5, SP, #0x450+var_228
1CF28E:  MOV.W           R1, #0x200
1CF292:  ADD             R2, PC; "Out_FogAmt = clamp((length(WorldPos.xyz"...
1CF294:  MOV             R0, R5
1CF296:  BL.W            sub_5E6B74
1CF29A:  LDR.W           R0, =(byte_6BABE9 - 0x1CF2A4)
1CF29E:  MOV             R1, R5; src
1CF2A0:  ADD             R0, PC; byte_6BABE9 ; dest
1CF2A2:  BLX             strcat
1CF2A6:  CMP.W           R8, #0
1CF2AA:  BEQ             loc_1CF318
1CF2AC:  MOVS.W          R0, R10,LSL#13
1CF2B0:  BMI             loc_1CF2C0
1CF2B2:  MOVS.W          R0, R10,LSL#14
1CF2B6:  BMI             loc_1CF2C8
1CF2B8:  LDR.W           R2, =(aTexcoord0_0 - 0x1CF2C0); "TexCoord0"
1CF2BC:  ADD             R2, PC; "TexCoord0"
1CF2BE:  B               loc_1CF2CE
1CF2C0:  LDR.W           R2, =(aTexcoord0XyTex - 0x1CF2C8); "TexCoord0.xy / TexCoord0.w"
1CF2C4:  ADD             R2, PC; "TexCoord0.xy / TexCoord0.w"
1CF2C6:  B               loc_1CF2CE
1CF2C8:  LDR.W           R2, =(aTexcoord05120 - 0x1CF2D0); "TexCoord0 / 512.0"
1CF2CC:  ADD             R2, PC; "TexCoord0 / 512.0"
1CF2CE:  ADD             R0, SP, #0x450+var_428
1CF2D0:  MOV.W           R1, #0x100
1CF2D4:  BL.W            sub_5E6B74
1CF2D8:  LDR             R0, [SP,#0x450+var_444]
1CF2DA:  CBZ             R0, loc_1CF2F8
1CF2DC:  LDR.W           R2, =(aOutTex0Normalm - 0x1CF2EC); "Out_Tex0 = (NormalMatrix * vec3(%s, 1.0"...
1CF2E0:  ADD             R5, SP, #0x450+var_228
1CF2E2:  ADD             R3, SP, #0x450+var_428
1CF2E4:  MOV.W           R1, #0x200
1CF2E8:  ADD             R2, PC; "Out_Tex0 = (NormalMatrix * vec3(%s, 1.0"...
1CF2EA:  MOV             R0, R5
1CF2EC:  BL.W            sub_5E6B74
1CF2F0:  LDR.W           R0, =(byte_6BABE9 - 0x1CF2F8)
1CF2F4:  ADD             R0, PC; byte_6BABE9
1CF2F6:  B               loc_1CF312
1CF2F8:  LDR.W           R2, =(aOutTex0S - 0x1CF308); "Out_Tex0 = %s;"
1CF2FC:  ADD             R5, SP, #0x450+var_228
1CF2FE:  ADD             R3, SP, #0x450+var_428
1CF300:  MOV.W           R1, #0x200
1CF304:  ADD             R2, PC; "Out_Tex0 = %s;"
1CF306:  MOV             R0, R5
1CF308:  BL.W            sub_5E6B74
1CF30C:  LDR.W           R0, =(byte_6BABE9 - 0x1CF314)
1CF310:  ADD             R0, PC; byte_6BABE9 ; dest
1CF312:  MOV             R1, R5; src
1CF314:  BLX             strcat
1CF318:  CMP.W           R9, #0
1CF31C:  BEQ             loc_1CF396
1CF31E:  LDR.W           R2, =(aVec3Reflvector_0 - 0x1CF32C); "vec3 reflVector = normalize(WorldPos.xy"...
1CF322:  ADD             R5, SP, #0x450+var_228
1CF324:  MOV.W           R1, #0x200
1CF328:  ADD             R2, PC; "vec3 reflVector = normalize(WorldPos.xy"...
1CF32A:  MOV             R0, R5
1CF32C:  BL.W            sub_5E6B74
1CF330:  LDR.W           R6, =(byte_6BABE9 - 0x1CF33A)
1CF334:  MOV             R1, R5; src
1CF336:  ADD             R6, PC; byte_6BABE9
1CF338:  MOV             R0, R6; dest
1CF33A:  BLX             strcat
1CF33E:  LDR.W           R2, =(aReflvectorRefl - 0x1CF34C); "reflVector = reflVector - 2.0 * dot(ref"...
1CF342:  ADD             R5, SP, #0x450+var_228
1CF344:  MOV.W           R1, #0x200
1CF348:  ADD             R2, PC; "reflVector = reflVector - 2.0 * dot(ref"...
1CF34A:  MOV             R0, R5
1CF34C:  BL.W            sub_5E6B74
1CF350:  MOV             R0, R6; dest
1CF352:  MOV             R1, R5; src
1CF354:  BLX             strcat
1CF358:  MOVS.W          R0, R10,LSL#7
1CF35C:  BMI             loc_1CF378
1CF35E:  LDR.W           R2, =(aOutTex1Vec2Len - 0x1CF36C); "Out_Tex1 = vec2(length(reflVector.xy), "...
1CF362:  ADD             R5, SP, #0x450+var_228
1CF364:  MOV.W           R1, #0x200
1CF368:  ADD             R2, PC; "Out_Tex1 = vec2(length(reflVector.xy), "...
1CF36A:  MOV             R0, R5
1CF36C:  BL.W            sub_5E6B74
1CF370:  LDR.W           R0, =(byte_6BABE9 - 0x1CF378)
1CF374:  ADD             R0, PC; byte_6BABE9
1CF376:  B               loc_1CF390
1CF378:  LDR.W           R2, =(aOutReflReflvec - 0x1CF386); "Out_Refl = reflVector;"
1CF37C:  ADD             R5, SP, #0x450+var_228
1CF37E:  MOV.W           R1, #0x200
1CF382:  ADD             R2, PC; "Out_Refl = reflVector;"
1CF384:  MOV             R0, R5
1CF386:  BL.W            sub_5E6B74
1CF38A:  LDR.W           R0, =(byte_6BABE9 - 0x1CF392)
1CF38E:  ADD             R0, PC; byte_6BABE9 ; dest
1CF390:  MOV             R1, R5; src
1CF392:  BLX             strcat
1CF396:  LDR             R0, [SP,#0x450+var_43C]
1CF398:  CBZ             R0, loc_1CF3C0
1CF39A:  LDR.W           R2, =(aLowpVec4Interp - 0x1CF3A8); "lowp vec4 InterpColor = mix(GlobalColor"...
1CF39E:  ADD             R5, SP, #0x450+var_228
1CF3A0:  MOV.W           R1, #0x200
1CF3A4:  ADD             R2, PC; "lowp vec4 InterpColor = mix(GlobalColor"...
1CF3A6:  MOV             R0, R5
1CF3A8:  BL.W            sub_5E6B74
1CF3AC:  LDR.W           R0, =(byte_6BABE9 - 0x1CF3B6)
1CF3B0:  MOV             R1, R5; src
1CF3B2:  ADD             R0, PC; byte_6BABE9 ; dest
1CF3B4:  BLX             strcat
1CF3B8:  LDR.W           R0, =(aInterpcolor - 0x1CF3C0); "InterpColor"
1CF3BC:  ADD             R0, PC; "InterpColor"
1CF3BE:  B               loc_1CF3C6
1CF3C0:  LDR.W           R0, =(aGlobalcolor_1 - 0x1CF3C8); "GlobalColor"
1CF3C4:  ADD             R0, PC; "GlobalColor"
1CF3C6:  VLDR            D16, [R0]
1CF3CA:  MOV             R0, #unk_726F6C
1CF3D2:  CMP.W           R11, #0
1CF3D6:  STR             R0, [SP,#0x450+var_220]
1CF3D8:  VSTR            D16, [SP,#0x450+var_228]
1CF3DC:  BEQ             loc_1CF494
1CF3DE:  LDR.W           R2, =(aVec3OutLightin - 0x1CF3EC); "vec3 Out_LightingColor;"
1CF3E2:  ADD             R5, SP, #0x450+var_428
1CF3E4:  MOV.W           R1, #0x200
1CF3E8:  ADD             R2, PC; "vec3 Out_LightingColor;"
1CF3EA:  MOV             R0, R5
1CF3EC:  BL.W            sub_5E6B74
1CF3F0:  LDR.W           R0, =(byte_6BABE9 - 0x1CF3FA)
1CF3F4:  MOV             R1, R5; src
1CF3F6:  ADD             R0, PC; byte_6BABE9 ; dest
1CF3F8:  BLX             strcat
1CF3FC:  MOVS.W          R0, R10,LSL#28
1CF400:  BMI             loc_1CF41C
1CF402:  LDR.W           R2, =(aOutLightingcol - 0x1CF410); "Out_LightingColor = AmbientLightColor *"...
1CF406:  ADD             R5, SP, #0x450+var_428
1CF408:  MOV.W           R1, #0x200
1CF40C:  ADD             R2, PC; "Out_LightingColor = AmbientLightColor *"...
1CF40E:  MOV             R0, R5
1CF410:  BL.W            sub_5E6B74
1CF414:  LDR.W           R0, =(byte_6BABE9 - 0x1CF41C)
1CF418:  ADD             R0, PC; byte_6BABE9
1CF41A:  B               loc_1CF456
1CF41C:  MOVS.W          R0, R10,LSL#22
1CF420:  BMI             loc_1CF43E
1CF422:  LDR.W           R2, =(aOutLightingcol_0 - 0x1CF432); "Out_LightingColor = AmbientLightColor *"...
1CF426:  ADD             R5, SP, #0x450+var_428
1CF428:  ADD             R3, SP, #0x450+var_228
1CF42A:  MOV.W           R1, #0x200
1CF42E:  ADD             R2, PC; "Out_LightingColor = AmbientLightColor *"...
1CF430:  MOV             R0, R5
1CF432:  BL.W            sub_5E6B74
1CF436:  LDR.W           R0, =(byte_6BABE9 - 0x1CF43E)
1CF43A:  ADD             R0, PC; byte_6BABE9
1CF43C:  B               loc_1CF456
1CF43E:  LDR.W           R2, =(aOutLightingcol_1 - 0x1CF44C); "Out_LightingColor = AmbientLightColor *"...
1CF442:  ADD             R5, SP, #0x450+var_428
1CF444:  MOV.W           R1, #0x200
1CF448:  ADD             R2, PC; "Out_LightingColor = AmbientLightColor *"...
1CF44A:  MOV             R0, R5
1CF44C:  BL.W            sub_5E6B74
1CF450:  LDR.W           R0, =(byte_6BABE9 - 0x1CF458)
1CF454:  ADD             R0, PC; byte_6BABE9 ; dest
1CF456:  MOV             R1, R5; src
1CF458:  BLX             strcat
1CF45C:  TST.W           R10, #0xE000
1CF460:  BEQ             loc_1CF494
1CF462:  LDR             R0, [SP,#0x450+var_448]
1CF464:  CMP             R0, #0
1CF466:  BNE             loc_1CF4EA
1CF468:  MOVS.W          R0, R10,LSL#17
1CF46C:  BMI.W           loc_1CF702
1CF470:  MOVS.W          R0, R10,LSL#16
1CF474:  BPL             loc_1CF494
1CF476:  LDR.W           R2, =(aOutLightingcol_2 - 0x1CF484); "Out_LightingColor += max(dot(DirLight3D"...
1CF47A:  ADD             R5, SP, #0x450+var_428
1CF47C:  MOV.W           R1, #0x200
1CF480:  ADD             R2, PC; "Out_LightingColor += max(dot(DirLight3D"...
1CF482:  MOV             R0, R5
1CF484:  BL.W            sub_5E6B74
1CF488:  LDR.W           R0, =(byte_6BABE9 - 0x1CF492)
1CF48C:  MOV             R1, R5; src
1CF48E:  ADD             R0, PC; byte_6BABE9 ; dest
1CF490:  BLX             strcat
1CF494:  LDR             R0, [SP,#0x450+var_434]
1CF496:  CMP             R0, #0
1CF498:  BEQ             loc_1CF558
1CF49A:  CMP.W           R11, #0
1CF49E:  BEQ             loc_1CF4C4
1CF4A0:  MOV             R5, R4
1CF4A2:  ANDS.W          R0, R10, #0x10
1CF4A6:  BNE             loc_1CF516
1CF4A8:  LDR.W           R2, =(aOutColorVec4Ou - 0x1CF4B8); "Out_Color = vec4(Out_LightingColor * Ma"...
1CF4AC:  ADD             R4, SP, #0x450+var_428
1CF4AE:  ADD             R3, SP, #0x450+var_228
1CF4B0:  MOV.W           R1, #0x200
1CF4B4:  ADD             R2, PC; "Out_Color = vec4(Out_LightingColor * Ma"...
1CF4B6:  MOV             R0, R4
1CF4B8:  BL.W            sub_5E6B74
1CF4BC:  LDR.W           R0, =(byte_6BABE9 - 0x1CF4C4)
1CF4C0:  ADD             R0, PC; byte_6BABE9
1CF4C2:  B               loc_1CF532
1CF4C4:  LDR.W           R2, =(aOutColorS - 0x1CF4D2); "Out_Color = %s;"
1CF4C8:  MOV             R5, R4
1CF4CA:  ADD             R4, SP, #0x450+var_428
1CF4CC:  ADD             R3, SP, #0x450+var_228
1CF4CE:  ADD             R2, PC; "Out_Color = %s;"
1CF4D0:  MOV.W           R1, #0x200
1CF4D4:  MOV             R0, R4
1CF4D6:  BL.W            sub_5E6B74
1CF4DA:  LDR.W           R0, =(byte_6BABE9 - 0x1CF4E6)
1CF4DE:  MOV             R1, R4; src
1CF4E0:  MOV             R4, R5
1CF4E2:  ADD             R0, PC; byte_6BABE9 ; dest
1CF4E4:  BLX             strcat
1CF4E8:  B               loc_1CF558
1CF4EA:  BLX             j__Z22GetMobileEffectSettingv; GetMobileEffectSetting(void)
1CF4EE:  TST.W           R10, #0x1180
1CF4F2:  BEQ.W           loc_1CF6E0
1CF4F6:  CMP             R0, #3
1CF4F8:  BNE.W           loc_1CF6E0
1CF4FC:  LDR.W           R2, =(aOutLightingcol_3 - 0x1CF50A); "Out_LightingColor += (max(dot(DirLightD"...
1CF500:  ADD             R5, SP, #0x450+var_428
1CF502:  MOV.W           R1, #0x200
1CF506:  ADD             R2, PC; "Out_LightingColor += (max(dot(DirLightD"...
1CF508:  MOV             R0, R5
1CF50A:  BL.W            sub_5E6B74
1CF50E:  LDR.W           R0, =(byte_6BABE9 - 0x1CF516)
1CF512:  ADD             R0, PC; byte_6BABE9
1CF514:  B               loc_1CF6F4
1CF516:  LDR.W           R2, =(aOutColorVec4Ou_0 - 0x1CF526); "Out_Color = vec4((Out_LightingColor.xyz"...
1CF51A:  ADD             R4, SP, #0x450+var_428
1CF51C:  ADD             R3, SP, #0x450+var_228
1CF51E:  MOV.W           R1, #0x200
1CF522:  ADD             R2, PC; "Out_Color = vec4((Out_LightingColor.xyz"...
1CF524:  MOV             R0, R4
1CF526:  STR             R3, [SP,#0x450+var_450]
1CF528:  BL.W            sub_5E6B74
1CF52C:  LDR.W           R0, =(byte_6BABE9 - 0x1CF534)
1CF530:  ADD             R0, PC; byte_6BABE9 ; dest
1CF532:  MOV             R1, R4; src
1CF534:  BLX             strcat
1CF538:  LDR.W           R2, =(aOutColorClampO - 0x1CF546); "Out_Color = clamp(Out_Color, 0.0, 1.0);"
1CF53C:  ADD             R4, SP, #0x450+var_428
1CF53E:  MOV.W           R1, #0x200
1CF542:  ADD             R2, PC; "Out_Color = clamp(Out_Color, 0.0, 1.0);"
1CF544:  MOV             R0, R4
1CF546:  BL.W            sub_5E6B74
1CF54A:  LDR.W           R0, =(byte_6BABE9 - 0x1CF554)
1CF54E:  MOV             R1, R4; src
1CF550:  ADD             R0, PC; byte_6BABE9 ; dest
1CF552:  BLX             strcat
1CF556:  MOV             R4, R5
1CF558:  LDR.W           R0, =(RQCaps_ptr - 0x1CF560)
1CF55C:  ADD             R0, PC; RQCaps_ptr
1CF55E:  LDR             R0, [R0]; RQCaps
1CF560:  LDRB            R0, [R0,#(byte_6B8BA4 - 0x6B8B9C)]
1CF562:  CMP             R0, #0
1CF564:  IT NE
1CF566:  MOVNE           R0, #1
1CF568:  ORRS            R0, R4
1CF56A:  BNE             loc_1CF658
1CF56C:  CMP.W           R9, #0
1CF570:  BEQ             loc_1CF5C8
1CF572:  LDR.W           R0, =(RQCaps_ptr - 0x1CF584)
1CF576:  VMOV.F64        D16, #9.0
1CF57A:  LDR.W           R2, =(aFloatSpecamtMa - 0x1CF58A); "float specAmt = max(pow(dot(reflVector,"...
1CF57E:  ADD             R4, SP, #0x450+var_428
1CF580:  ADD             R0, PC; RQCaps_ptr
1CF582:  MOV.W           R1, #0x200
1CF586:  ADD             R2, PC; "float specAmt = max(pow(dot(reflVector,"...
1CF588:  LDR             R0, [R0]; RQCaps
1CF58A:  VMOV.F64        D17, #10.0
1CF58E:  LDRB            R0, [R0,#(byte_6B8BA9 - 0x6B8B9C)]
1CF590:  CMP             R0, #0
1CF592:  MOV             R0, R4
1CF594:  IT NE
1CF596:  VMOVNE.F64      D17, D16
1CF59A:  VSTR            D17, [SP,#0x450+var_450]
1CF59E:  BL.W            sub_5E6B74
1CF5A2:  LDR.W           R5, =(byte_6BABE9 - 0x1CF5AC)
1CF5A6:  MOV             R1, R4; src
1CF5A8:  ADD             R5, PC; byte_6BABE9
1CF5AA:  MOV             R0, R5; dest
1CF5AC:  BLX             strcat
1CF5B0:  LDR.W           R2, =(aOutSpecSpecamt - 0x1CF5BE); "Out_Spec = specAmt * DirLightDiffuseCol"...
1CF5B4:  ADD             R4, SP, #0x450+var_428
1CF5B6:  MOV.W           R1, #0x200
1CF5BA:  ADD             R2, PC; "Out_Spec = specAmt * DirLightDiffuseCol"...
1CF5BC:  MOV             R0, R4
1CF5BE:  BL.W            sub_5E6B74
1CF5C2:  MOV             R0, R5
1CF5C4:  MOV             R1, R4
1CF5C6:  B               loc_1CF654
1CF5C8:  LDR             R0, [SP,#0x450+var_42C]
1CF5CA:  CMP             R0, #0
1CF5CC:  BEQ             loc_1CF658
1CF5CE:  LDR.W           R2, =(aVec3Reflvector_0 - 0x1CF5DC); "vec3 reflVector = normalize(WorldPos.xy"...
1CF5D2:  ADD             R5, SP, #0x450+var_428
1CF5D4:  MOV.W           R1, #0x200
1CF5D8:  ADD             R2, PC; "vec3 reflVector = normalize(WorldPos.xy"...
1CF5DA:  MOV             R0, R5
1CF5DC:  BL.W            sub_5E6B74
1CF5E0:  LDR.W           R4, =(byte_6BABE9 - 0x1CF5EA)
1CF5E4:  MOV             R1, R5; src
1CF5E6:  ADD             R4, PC; byte_6BABE9
1CF5E8:  MOV             R0, R4; dest
1CF5EA:  BLX             strcat
1CF5EE:  LDR.W           R2, =(aReflvectorRefl - 0x1CF5FC); "reflVector = reflVector - 2.0 * dot(ref"...
1CF5F2:  ADD             R5, SP, #0x450+var_428
1CF5F4:  MOV.W           R1, #0x200
1CF5F8:  ADD             R2, PC; "reflVector = reflVector - 2.0 * dot(ref"...
1CF5FA:  MOV             R0, R5
1CF5FC:  BL.W            sub_5E6B74
1CF600:  MOV             R0, R4; dest
1CF602:  MOV             R1, R5; src
1CF604:  BLX             strcat
1CF608:  LDR.W           R0, =(RQCaps_ptr - 0x1CF61A)
1CF60C:  VMOV.F64        D16, #5.0
1CF610:  LDR.W           R2, =(aFloatSpecamtMa_0 - 0x1CF620); "float specAmt = max(pow(dot(reflVector,"...
1CF614:  ADD             R5, SP, #0x450+var_428
1CF616:  ADD             R0, PC; RQCaps_ptr
1CF618:  MOV.W           R1, #0x200
1CF61C:  ADD             R2, PC; "float specAmt = max(pow(dot(reflVector,"...
1CF61E:  LDR             R0, [R0]; RQCaps
1CF620:  VMOV.F64        D17, #4.0
1CF624:  LDRB            R0, [R0,#(byte_6B8BA9 - 0x6B8B9C)]
1CF626:  CMP             R0, #0
1CF628:  MOV             R0, R5
1CF62A:  IT NE
1CF62C:  VMOVNE.F64      D17, D16
1CF630:  VSTR            D17, [SP,#0x450+var_450]
1CF634:  BL.W            sub_5E6B74
1CF638:  MOV             R0, R4; dest
1CF63A:  MOV             R1, R5; src
1CF63C:  BLX             strcat
1CF640:  LDR             R2, =(aOutSpecSpecamt - 0x1CF64C); "Out_Spec = specAmt * DirLightDiffuseCol"...
1CF642:  ADD             R5, SP, #0x450+var_428
1CF644:  MOV.W           R1, #0x200
1CF648:  ADD             R2, PC; "Out_Spec = specAmt * DirLightDiffuseCol"...
1CF64A:  MOV             R0, R5
1CF64C:  BL.W            sub_5E6B74
1CF650:  MOV             R0, R4; dest
1CF652:  MOV             R1, R5; src
1CF654:  BLX             strcat
1CF658:  LDR             R0, [SP,#0x450+var_430]
1CF65A:  CBZ             R0, loc_1CF6A8
1CF65C:  LDR             R2, =(aOutWaterdetail - 0x1CF668); "Out_WaterDetail = (Out_Tex0 * 4.0) + ve"...
1CF65E:  ADD             R4, SP, #0x450+var_428
1CF660:  MOV.W           R1, #0x200
1CF664:  ADD             R2, PC; "Out_WaterDetail = (Out_Tex0 * 4.0) + ve"...
1CF666:  MOV             R0, R4
1CF668:  BL.W            sub_5E6B74
1CF66C:  LDR             R5, =(byte_6BABE9 - 0x1CF674)
1CF66E:  MOV             R1, R4; src
1CF670:  ADD             R5, PC; byte_6BABE9
1CF672:  MOV             R0, R5; dest
1CF674:  BLX             strcat
1CF678:  LDR             R2, =(aOutWaterdetail_0 - 0x1CF684); "Out_WaterDetail2 = (Out_Tex0 * -8.0) + "...
1CF67A:  ADD             R4, SP, #0x450+var_428
1CF67C:  MOV.W           R1, #0x200
1CF680:  ADD             R2, PC; "Out_WaterDetail2 = (Out_Tex0 * -8.0) + "...
1CF682:  MOV             R0, R4
1CF684:  BL.W            sub_5E6B74
1CF688:  MOV             R0, R5; dest
1CF68A:  MOV             R1, R4; src
1CF68C:  BLX             strcat
1CF690:  LDR             R2, =(aOutWateralphab - 0x1CF69C); "Out_WaterAlphaBlend = distance(WorldPos"...
1CF692:  ADD             R4, SP, #0x450+var_428
1CF694:  MOV.W           R1, #0x200
1CF698:  ADD             R2, PC; "Out_WaterAlphaBlend = distance(WorldPos"...
1CF69A:  MOV             R0, R4
1CF69C:  BL.W            sub_5E6B74
1CF6A0:  MOV             R0, R5; dest
1CF6A2:  MOV             R1, R4; src
1CF6A4:  BLX             strcat
1CF6A8:  ADD             R4, SP, #0x450+var_228
1CF6AA:  ADR             R2, dword_1CFA2C
1CF6AC:  MOV.W           R1, #0x200
1CF6B0:  MOV             R0, R4
1CF6B2:  BL.W            sub_5E6B74
1CF6B6:  LDR             R0, =(byte_6BABE9 - 0x1CF6BE)
1CF6B8:  MOV             R1, R4; src
1CF6BA:  ADD             R0, PC; byte_6BABE9 ; dest
1CF6BC:  BLX             strcat
1CF6C0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CF6CA)
1CF6C2:  LDR.W           R1, [R7,#var_24]
1CF6C6:  ADD             R0, PC; __stack_chk_guard_ptr
1CF6C8:  LDR             R0, [R0]; __stack_chk_guard
1CF6CA:  LDR             R0, [R0]
1CF6CC:  SUBS            R0, R0, R1
1CF6CE:  ITTTT EQ
1CF6D0:  ADDEQ.W         SP, SP, #0x430
1CF6D4:  ADDEQ           SP, SP, #4
1CF6D6:  POPEQ.W         {R8-R11}
1CF6DA:  POPEQ           {R4-R7,PC}
1CF6DC:  BLX             __stack_chk_fail
1CF6E0:  LDR             R2, =(aOutLightingcol_4 - 0x1CF6EC); "Out_LightingColor += max(dot(DirLightDi"...
1CF6E2:  ADD             R5, SP, #0x450+var_428
1CF6E4:  MOV.W           R1, #0x200
1CF6E8:  ADD             R2, PC; "Out_LightingColor += max(dot(DirLightDi"...
1CF6EA:  MOV             R0, R5
1CF6EC:  BL.W            sub_5E6B74
1CF6F0:  LDR             R0, =(byte_6BABE9 - 0x1CF6F6)
1CF6F2:  ADD             R0, PC; byte_6BABE9 ; dest
1CF6F4:  MOV             R1, R5; src
1CF6F6:  BLX             strcat
1CF6FA:  MOVS.W          R0, R10,LSL#17
1CF6FE:  BPL.W           loc_1CF470
1CF702:  LDR             R2, =(aOutLightingcol_5 - 0x1CF70E); "Out_LightingColor += max(dot(DirLight2D"...
1CF704:  ADD             R5, SP, #0x450+var_428
1CF706:  MOV.W           R1, #0x200
1CF70A:  ADD             R2, PC; "Out_LightingColor += max(dot(DirLight2D"...
1CF70C:  MOV             R0, R5
1CF70E:  BL.W            sub_5E6B74
1CF712:  LDR             R0, =(byte_6BABE9 - 0x1CF71A)
1CF714:  MOV             R1, R5; src
1CF716:  ADD             R0, PC; byte_6BABE9 ; dest
1CF718:  BLX             strcat
1CF71C:  MOVS.W          R0, R10,LSL#16
1CF720:  BMI.W           loc_1CF476
1CF724:  B               loc_1CF494
