; =========================================================
; Game Engine Function: sub_121D38
; Address            : 0x121D38 - 0x1224B0
; =========================================================

121D38:  PUSH            {R4-R7,LR}
121D3A:  ADD             R7, SP, #0xC
121D3C:  PUSH.W          {R8-R11}
121D40:  SUB             SP, SP, #0x14
121D42:  LDR             R3, =(aPrecisionMediu - 0x121D4C); "precision mediump float;" ...
121D44:  MOV             R8, R1
121D46:  MOV             R4, R0
121D48:  ADD             R3, PC; "precision mediump float;"
121D4A:  BL              sub_123338
121D4E:  LDR             R1, =(unk_2639B4 - 0x121D5A)
121D50:  ADDS            R4, #4
121D52:  MOV.W           R2, #0x2000
121D56:  ADD             R1, PC; unk_2639B4
121D58:  MOV             R0, R4
121D5A:  BLX             __strcat_chk
121D5E:  LDR             R1, =(asc_8D501 - 0x121D6A); "\n" ...
121D60:  MOV             R0, R4
121D62:  MOV.W           R2, #0x2000
121D66:  ADD             R1, PC; "\n"
121D68:  BLX             __strcat_chk
121D6C:  ANDS.W          R9, R8, #0x20 ; ' '
121D70:  BEQ             loc_121DBA
121D72:  LDR             R3, =(aUniformSampler - 0x121D78); "uniform sampler2D Diffuse;" ...
121D74:  ADD             R3, PC; "uniform sampler2D Diffuse;"
121D76:  BL              sub_123338
121D7A:  LDR             R5, =(unk_2639B4 - 0x121D86)
121D7C:  MOV             R0, R4
121D7E:  MOV.W           R2, #0x2000
121D82:  ADD             R5, PC; unk_2639B4
121D84:  MOV             R1, R5
121D86:  BLX             __strcat_chk
121D8A:  LDR             R6, =(asc_8D501 - 0x121D96); "\n" ...
121D8C:  MOV             R0, R4
121D8E:  MOV.W           R2, #0x2000
121D92:  ADD             R6, PC; "\n"
121D94:  MOV             R1, R6
121D96:  BLX             __strcat_chk
121D9A:  LDR             R3, =(aVaryingMediump - 0x121DA0); "varying mediump vec2 Out_Tex0;" ...
121D9C:  ADD             R3, PC; "varying mediump vec2 Out_Tex0;"
121D9E:  BL              sub_123338
121DA2:  MOV             R0, R4
121DA4:  MOV             R1, R5
121DA6:  MOV.W           R2, #0x2000
121DAA:  BLX             __strcat_chk
121DAE:  MOV             R0, R4
121DB0:  MOV             R1, R6
121DB2:  MOV.W           R2, #0x2000
121DB6:  BLX             __strcat_chk
121DBA:  MOVS            R0, #0x1000040
121DC0:  ANDS.W          R0, R0, R8; int
121DC4:  STR             R0, [SP,#0x30+var_2C]
121DC6:  BEQ             loc_121E22
121DC8:  LDR             R3, =(aUniformSampler_0 - 0x121DCE); "uniform sampler2D EnvMap;" ...
121DCA:  ADD             R3, PC; "uniform sampler2D EnvMap;"
121DCC:  BL              sub_123338
121DD0:  LDR             R5, =(unk_2639B4 - 0x121DDC)
121DD2:  MOV             R0, R4
121DD4:  MOV.W           R2, #0x2000
121DD8:  ADD             R5, PC; unk_2639B4
121DDA:  MOV             R1, R5
121DDC:  BLX             __strcat_chk
121DE0:  LDR             R6, =(asc_8D501 - 0x121DEC); "\n" ...
121DE2:  MOV             R0, R4
121DE4:  MOV.W           R2, #0x2000
121DE8:  ADD             R6, PC; "\n"
121DEA:  MOV             R1, R6
121DEC:  BLX             __strcat_chk
121DF0:  LDR             R3, =(aUniformLowpFlo - 0x121DF6); "uniform lowp float EnvMapCoefficient;" ...
121DF2:  ADD             R3, PC; "uniform lowp float EnvMapCoefficient;"
121DF4:  BL              sub_123338
121DF8:  MOV             R0, R4
121DFA:  MOV             R1, R5
121DFC:  MOV.W           R2, #0x2000
121E00:  BLX             __strcat_chk
121E04:  MOV             R0, R4
121E06:  MOV             R1, R6
121E08:  MOV.W           R2, #0x2000
121E0C:  BLX             __strcat_chk
121E10:  LDR             R0, =(aVaryingMediump_0 - 0x121E1C); "varying mediump vec2 Out_Tex1;" ...
121E12:  MOVS.W          R1, R8,LSL#25
121E16:  LDR             R3, =(aVaryingMediump_1 - 0x121E1E); "varying mediump vec3 Out_Refl;" ...
121E18:  ADD             R0, PC; "varying mediump vec2 Out_Tex1;"
121E1A:  ADD             R3, PC; "varying mediump vec3 Out_Refl;"
121E1C:  IT MI
121E1E:  MOVMI           R3, R0
121E20:  B               loc_121E50
121E22:  MOVS.W          R0, R8,LSL#15; int
121E26:  BPL             loc_121E70
121E28:  LDR             R3, =(aUniformSampler_0 - 0x121E2E); "uniform sampler2D EnvMap;" ...
121E2A:  ADD             R3, PC; "uniform sampler2D EnvMap;"
121E2C:  BL              sub_123338
121E30:  LDR             R1, =(unk_2639B4 - 0x121E3C)
121E32:  MOV             R0, R4
121E34:  MOV.W           R2, #0x2000
121E38:  ADD             R1, PC; unk_2639B4
121E3A:  BLX             __strcat_chk
121E3E:  LDR             R1, =(asc_8D501 - 0x121E4A); "\n" ...
121E40:  MOV             R0, R4
121E42:  MOV.W           R2, #0x2000
121E46:  ADD             R1, PC; "\n"
121E48:  BLX             __strcat_chk
121E4C:  LDR             R3, =(aUniformFloatDe - 0x121E52); "uniform float DetailTiling;" ...
121E4E:  ADD             R3, PC; "uniform float DetailTiling;"
121E50:  BL              sub_123338
121E54:  LDR             R1, =(unk_2639B4 - 0x121E60)
121E56:  MOV             R0, R4
121E58:  MOV.W           R2, #0x2000
121E5C:  ADD             R1, PC; unk_2639B4
121E5E:  BLX             __strcat_chk
121E62:  LDR             R1, =(asc_8D501 - 0x121E6E); "\n" ...
121E64:  MOV             R0, R4
121E66:  MOV.W           R2, #0x2000
121E6A:  ADD             R1, PC; "\n"
121E6C:  BLX             __strcat_chk
121E70:  ANDS.W          R0, R8, #0x400; int
121E74:  STR             R0, [SP,#0x30+var_24]
121E76:  BEQ             loc_121EC0
121E78:  LDR             R3, =(aVaryingMediump_2 - 0x121E7E); "varying mediump float Out_FogAmt;" ...
121E7A:  ADD             R3, PC; "varying mediump float Out_FogAmt;"
121E7C:  BL              sub_123338
121E80:  LDR             R5, =(unk_2639B4 - 0x121E8C)
121E82:  MOV             R0, R4
121E84:  MOV.W           R2, #0x2000
121E88:  ADD             R5, PC; unk_2639B4
121E8A:  MOV             R1, R5
121E8C:  BLX             __strcat_chk
121E90:  LDR             R6, =(asc_8D501 - 0x121E9C); "\n" ...
121E92:  MOV             R0, R4
121E94:  MOV.W           R2, #0x2000
121E98:  ADD             R6, PC; "\n"
121E9A:  MOV             R1, R6
121E9C:  BLX             __strcat_chk
121EA0:  LDR             R3, =(aUniformLowpVec - 0x121EA6); "uniform lowp vec3 FogColor;" ...
121EA2:  ADD             R3, PC; "uniform lowp vec3 FogColor;"
121EA4:  BL              sub_123338
121EA8:  MOV             R0, R4
121EAA:  MOV             R1, R5
121EAC:  MOV.W           R2, #0x2000
121EB0:  BLX             __strcat_chk
121EB4:  MOV             R0, R4
121EB6:  MOV             R1, R6
121EB8:  MOV.W           R2, #0x2000
121EBC:  BLX             __strcat_chk
121EC0:  ANDS.W          R10, R8, #0x12
121EC4:  BEQ             loc_121EEA
121EC6:  LDR             R3, =(aVaryingLowpVec - 0x121ECC); "varying lowp vec4 Out_Color;" ...
121EC8:  ADD             R3, PC; "varying lowp vec4 Out_Color;"
121ECA:  BL              sub_123338
121ECE:  LDR             R1, =(unk_2639B4 - 0x121EDA)
121ED0:  MOV             R0, R4
121ED2:  MOV.W           R2, #0x2000
121ED6:  ADD             R1, PC; unk_2639B4
121ED8:  BLX             __strcat_chk
121EDC:  LDR             R1, =(asc_8D501 - 0x121EE8); "\n" ...
121EDE:  MOV             R0, R4
121EE0:  MOV.W           R2, #0x2000
121EE4:  ADD             R1, PC; "\n"
121EE6:  BLX             __strcat_chk
121EEA:  ANDS.W          R0, R8, #0x2000; int
121EEE:  STR             R0, [SP,#0x30+var_28]
121EF0:  BEQ             loc_121F16
121EF2:  LDR             R3, =(aVaryingLowpVec_0 - 0x121EF8); "varying lowp vec3 Out_Spec;" ...
121EF4:  ADD             R3, PC; "varying lowp vec3 Out_Spec;"
121EF6:  BL              sub_123338
121EFA:  LDR             R1, =(unk_2639B4 - 0x121F06)
121EFC:  MOV             R0, R4
121EFE:  MOV.W           R2, #0x2000
121F02:  ADD             R1, PC; unk_2639B4
121F04:  BLX             __strcat_chk
121F08:  LDR             R1, =(asc_8D501 - 0x121F14); "\n" ...
121F0A:  MOV             R0, R4
121F0C:  MOV.W           R2, #0x2000
121F10:  ADD             R1, PC; "\n"
121F12:  BLX             __strcat_chk
121F16:  ANDS.W          R0, R8, #4; int
121F1A:  STR             R0, [SP,#0x30+var_20]
121F1C:  BEQ             loc_121F42
121F1E:  LDR             R3, =(aUniformLowpFlo_0 - 0x121F24); "uniform lowp float AlphaModulate;" ...
121F20:  ADD             R3, PC; "uniform lowp float AlphaModulate;"
121F22:  BL              sub_123338
121F26:  LDR             R1, =(unk_2639B4 - 0x121F32)
121F28:  MOV             R0, R4
121F2A:  MOV.W           R2, #0x2000
121F2E:  ADD             R1, PC; unk_2639B4
121F30:  BLX             __strcat_chk
121F34:  LDR             R1, =(asc_8D501 - 0x121F40); "\n" ...
121F36:  MOV             R0, R4
121F38:  MOV.W           R2, #0x2000
121F3C:  ADD             R1, PC; "\n"
121F3E:  BLX             __strcat_chk
121F42:  ANDS.W          R11, R8, #0x80000
121F46:  BEQ             loc_121FB0
121F48:  LDR             R3, =(aVaryingMediump_3 - 0x121F4E); "varying mediump vec2 Out_WaterDetail;" ...
121F4A:  ADD             R3, PC; "varying mediump vec2 Out_WaterDetail;"
121F4C:  BL              sub_123338
121F50:  LDR             R5, =(unk_2639B4 - 0x121F5C)
121F52:  MOV             R0, R4
121F54:  MOV.W           R2, #0x2000
121F58:  ADD             R5, PC; unk_2639B4
121F5A:  MOV             R1, R5
121F5C:  BLX             __strcat_chk
121F60:  LDR             R6, =(asc_8D501 - 0x121F6C); "\n" ...
121F62:  MOV             R0, R4
121F64:  MOV.W           R2, #0x2000
121F68:  ADD             R6, PC; "\n"
121F6A:  MOV             R1, R6
121F6C:  BLX             __strcat_chk
121F70:  LDR             R3, =(aVaryingMediump_4 - 0x121F76); "varying mediump vec2 Out_WaterDetail2;" ...
121F72:  ADD             R3, PC; "varying mediump vec2 Out_WaterDetail2;"
121F74:  BL              sub_123338
121F78:  MOV             R0, R4
121F7A:  MOV             R1, R5
121F7C:  MOV.W           R2, #0x2000
121F80:  BLX             __strcat_chk
121F84:  MOV             R0, R4
121F86:  MOV             R1, R6
121F88:  MOV.W           R2, #0x2000
121F8C:  BLX             __strcat_chk
121F90:  LDR             R3, =(aVaryingMediump_5 - 0x121F96); "varying mediump float Out_WaterAlphaBle"... ...
121F92:  ADD             R3, PC; "varying mediump float Out_WaterAlphaBle"...
121F94:  BL              sub_123338
121F98:  MOV             R0, R4
121F9A:  MOV             R1, R5
121F9C:  MOV.W           R2, #0x2000
121FA0:  BLX             __strcat_chk
121FA4:  MOV             R0, R4
121FA6:  MOV             R1, R6
121FA8:  MOV.W           R2, #0x2000
121FAC:  BLX             __strcat_chk
121FB0:  LDR             R3, =(aVoidMain - 0x121FB6); "void main() {" ...
121FB2:  ADD             R3, PC; "void main() {"
121FB4:  BL              sub_123338
121FB8:  LDR             R5, =(unk_2639B4 - 0x121FC4)
121FBA:  MOV             R0, R4
121FBC:  MOV.W           R2, #0x2000
121FC0:  ADD             R5, PC; unk_2639B4
121FC2:  MOV             R1, R5
121FC4:  BLX             __strcat_chk
121FC8:  LDR             R6, =(asc_8D501 - 0x121FD4); "\n" ...
121FCA:  MOV             R0, R4
121FCC:  MOV.W           R2, #0x2000
121FD0:  ADD             R6, PC; "\n"
121FD2:  MOV             R1, R6
121FD4:  BLX             __strcat_chk
121FD8:  LDR             R3, =(aLowpVec4Fcolor - 0x121FDE); "lowp vec4 fcolor;" ...
121FDA:  ADD             R3, PC; "lowp vec4 fcolor;"
121FDC:  BL              sub_123338
121FE0:  MOV             R0, R4
121FE2:  MOV             R1, R5
121FE4:  MOV.W           R2, #0x2000
121FE8:  BLX             __strcat_chk
121FEC:  MOV             R0, R4
121FEE:  MOV             R1, R6
121FF0:  MOV.W           R2, #0x2000
121FF4:  BLX             __strcat_chk
121FF8:  CMP.W           R9, #0
121FFC:  BNE             loc_122010
121FFE:  LDR             R0, =(aFcolorOutColor - 0x12200A); "fcolor = Out_Color;" ...
122000:  CMP.W           R10, #0
122004:  LDR             R3, =(aFcolor00 - 0x12200C); "fcolor = 0.0;" ...
122006:  ADD             R0, PC; "fcolor = Out_Color;"
122008:  ADD             R3, PC; "fcolor = 0.0;"
12200A:  IT NE
12200C:  MOVNE           R3, R0
12200E:  B               loc_1221DC
122010:  MOVS.W          R0, R8,LSL#20; int
122014:  BMI             loc_12202C
122016:  BL              sub_163F8C
12201A:  LDR             R1, =(aLowpVec4Diffus - 0x122024); "lowp vec4 diffuseColor = texture2D(Diff"... ...
12201C:  LDR             R3, =(aLowpVec4Diffus_0 - 0x122026); "lowp vec4 diffuseColor = texture2D(Diff"... ...
12201E:  LDRB            R0, [R0]
122020:  ADD             R1, PC; "lowp vec4 diffuseColor = texture2D(Diff"...
122022:  ADD             R3, PC; "lowp vec4 diffuseColor = texture2D(Diff"...
122024:  CMP             R0, #0
122026:  IT NE
122028:  MOVNE           R3, R1
12202A:  B               loc_122030
12202C:  LDR             R3, =(aLowpVec4Diffus_1 - 0x122032); "lowp vec4 diffuseColor = texture2D(Diff"... ...
12202E:  ADD             R3, PC; "lowp vec4 diffuseColor = texture2D(Diff"...
122030:  BL              sub_123338
122034:  LDR             R5, =(unk_2639B4 - 0x122040)
122036:  MOV             R0, R4
122038:  MOV.W           R2, #0x2000
12203C:  ADD             R5, PC; unk_2639B4
12203E:  MOV             R1, R5
122040:  BLX             __strcat_chk
122044:  LDR             R6, =(asc_8D501 - 0x122050); "\n" ...
122046:  MOV             R0, R4
122048:  MOV.W           R2, #0x2000
12204C:  ADD             R6, PC; "\n"
12204E:  MOV             R1, R6
122050:  BLX             __strcat_chk
122054:  LDR             R3, =(aFcolorDiffusec - 0x12205A); "fcolor = diffuseColor;" ...
122056:  ADD             R3, PC; "fcolor = diffuseColor;"
122058:  BL              sub_123338
12205C:  MOV             R0, R4
12205E:  MOV             R1, R5
122060:  MOV.W           R2, #0x2000
122064:  BLX             __strcat_chk
122068:  MOV             R0, R4
12206A:  MOV             R1, R6
12206C:  MOV.W           R2, #0x2000
122070:  BLX             __strcat_chk
122074:  CMP.W           R10, #0
122078:  BEQ             loc_1220A4
12207A:  MOVS.W          R0, R8,LSL#15; int
12207E:  BMI             loc_1220AE
122080:  LDR             R3, =(aFcolorOutColor_0 - 0x122086); "fcolor *= Out_Color;" ...
122082:  ADD             R3, PC; "fcolor *= Out_Color;"
122084:  BL              sub_123338
122088:  LDR             R1, =(unk_2639B4 - 0x122094)
12208A:  MOV             R0, R4
12208C:  MOV.W           R2, #0x2000
122090:  ADD             R1, PC; unk_2639B4
122092:  BLX             __strcat_chk
122096:  LDR             R1, =(asc_8D501 - 0x1220A2); "\n" ...
122098:  MOV             R0, R4
12209A:  MOV.W           R2, #0x2000
12209E:  ADD             R1, PC; "\n"
1220A0:  BLX             __strcat_chk
1220A4:  CMP.W           R11, #0
1220A8:  BNE.W           loc_1221D8
1220AC:  B               loc_1221FC
1220AE:  CMP.W           R11, #0
1220B2:  BNE             loc_122190
1220B4:  LDR             R3, =(aFcolorVec4OutC - 0x1220BA); "fcolor *= vec4(Out_Color.xyz * texture2"... ...
1220B6:  ADD             R3, PC; "fcolor *= vec4(Out_Color.xyz * texture2"...
1220B8:  B               loc_1221DC
1220BA:  ALIGN 4
1220BC:  DCD aPrecisionMediu - 0x121D4C
1220C0:  DCD unk_2639B4 - 0x121D5A
1220C4:  DCD asc_8D501 - 0x121D6A
1220C8:  DCD aUniformSampler - 0x121D78
1220CC:  DCD unk_2639B4 - 0x121D86
1220D0:  DCD asc_8D501 - 0x121D96
1220D4:  DCD aVaryingMediump - 0x121DA0
1220D8:  DCD aUniformSampler_0 - 0x121DCE
1220DC:  DCD unk_2639B4 - 0x121DDC
1220E0:  DCD asc_8D501 - 0x121DEC
1220E4:  DCD aUniformLowpFlo - 0x121DF6
1220E8:  DCD aVaryingMediump_0 - 0x121E1C
1220EC:  DCD aVaryingMediump_1 - 0x121E1E
1220F0:  DCD aUniformSampler_0 - 0x121E2E
1220F4:  DCD unk_2639B4 - 0x121E3C
1220F8:  DCD asc_8D501 - 0x121E4A
1220FC:  DCD aUniformFloatDe - 0x121E52
122100:  DCD unk_2639B4 - 0x121E60
122104:  DCD asc_8D501 - 0x121E6E
122108:  DCD aVaryingMediump_2 - 0x121E7E
12210C:  DCD unk_2639B4 - 0x121E8C
122110:  DCD asc_8D501 - 0x121E9C
122114:  DCD aUniformLowpVec - 0x121EA6
122118:  DCD aVaryingLowpVec - 0x121ECC
12211C:  DCD unk_2639B4 - 0x121EDA
122120:  DCD asc_8D501 - 0x121EE8
122124:  DCD aVaryingLowpVec_0 - 0x121EF8
122128:  DCD unk_2639B4 - 0x121F06
12212C:  DCD asc_8D501 - 0x121F14
122130:  DCD aUniformLowpFlo_0 - 0x121F24
122134:  DCD unk_2639B4 - 0x121F32
122138:  DCD asc_8D501 - 0x121F40
12213C:  DCD aVaryingMediump_3 - 0x121F4E
122140:  DCD unk_2639B4 - 0x121F5C
122144:  DCD asc_8D501 - 0x121F6C
122148:  DCD aVaryingMediump_4 - 0x121F76
12214C:  DCD aVaryingMediump_5 - 0x121F96
122150:  DCD aVoidMain - 0x121FB6
122154:  DCD unk_2639B4 - 0x121FC4
122158:  DCD asc_8D501 - 0x121FD4
12215C:  DCD aLowpVec4Fcolor - 0x121FDE
122160:  DCD aFcolorOutColor - 0x12200A
122164:  DCD aFcolor00 - 0x12200C
122168:  DCD aLowpVec4Diffus - 0x122024
12216C:  DCD aLowpVec4Diffus_0 - 0x122026
122170:  DCD aLowpVec4Diffus_1 - 0x122032
122174:  DCD unk_2639B4 - 0x122040
122178:  DCD asc_8D501 - 0x122050
12217C:  DCD aFcolorDiffusec - 0x12205A
122180:  DCD aFcolorOutColor_0 - 0x122086
122184:  DCD unk_2639B4 - 0x122094
122188:  DCD asc_8D501 - 0x1220A2
12218C:  DCD aFcolorVec4OutC - 0x1220BA
122190:  LDR             R3, =(aFloatWaterdeta - 0x122196); "float waterDetail = texture2D(EnvMap, O"... ...
122192:  ADD             R3, PC; "float waterDetail = texture2D(EnvMap, O"...
122194:  BL              sub_123338
122198:  LDR             R5, =(unk_2639B4 - 0x1221A4)
12219A:  MOV             R0, R4
12219C:  MOV.W           R2, #0x2000
1221A0:  ADD             R5, PC; unk_2639B4
1221A2:  MOV             R1, R5
1221A4:  BLX             __strcat_chk
1221A8:  LDR             R6, =(asc_8D501 - 0x1221B4); "\n" ...
1221AA:  MOV             R0, R4
1221AC:  MOV.W           R2, #0x2000
1221B0:  ADD             R6, PC; "\n"
1221B2:  MOV             R1, R6
1221B4:  BLX             __strcat_chk
1221B8:  LDR             R3, =(aFcolorVec4OutC_0 - 0x1221BE); "fcolor *= vec4(Out_Color.xyz * waterDet"... ...
1221BA:  ADD             R3, PC; "fcolor *= vec4(Out_Color.xyz * waterDet"...
1221BC:  BL              sub_123338
1221C0:  MOV             R0, R4
1221C2:  MOV             R1, R5
1221C4:  MOV.W           R2, #0x2000
1221C8:  BLX             __strcat_chk
1221CC:  MOV             R0, R4
1221CE:  MOV             R1, R6
1221D0:  MOV.W           R2, #0x2000
1221D4:  BLX             __strcat_chk
1221D8:  LDR             R3, =(aFcolorAOutWate - 0x1221DE); "fcolor.a += Out_WaterAlphaBlend;" ...
1221DA:  ADD             R3, PC; "fcolor.a += Out_WaterAlphaBlend;"
1221DC:  BL              sub_123338
1221E0:  LDR             R1, =(unk_2639B4 - 0x1221EC)
1221E2:  MOV             R0, R4
1221E4:  MOV.W           R2, #0x2000
1221E8:  ADD             R1, PC; unk_2639B4
1221EA:  BLX             __strcat_chk
1221EE:  LDR             R1, =(asc_8D501 - 0x1221FA); "\n" ...
1221F0:  MOV             R0, R4
1221F2:  MOV.W           R2, #0x2000
1221F6:  ADD             R1, PC; "\n"
1221F8:  BLX             __strcat_chk
1221FC:  MOVS.W          R0, R8,LSL#25; int
122200:  BPL             loc_122226
122202:  LDR             R3, =(aFcolorXyzMixFc - 0x122208); "fcolor.xyz = mix(fcolor.xyz, texture2D("... ...
122204:  ADD             R3, PC; "fcolor.xyz = mix(fcolor.xyz, texture2D("...
122206:  BL              sub_123338
12220A:  LDR             R1, =(unk_2639B4 - 0x122216)
12220C:  MOV             R0, R4
12220E:  MOV.W           R2, #0x2000
122212:  ADD             R1, PC; unk_2639B4
122214:  BLX             __strcat_chk
122218:  LDR             R1, =(asc_8D501 - 0x122224); "\n" ...
12221A:  MOV             R0, R4
12221C:  MOV.W           R2, #0x2000
122220:  ADD             R1, PC; "\n"
122222:  BLX             __strcat_chk
122226:  MOVS.W          R0, R8,LSL#7; int
12222A:  BPL             loc_1222D4
12222C:  LDR             R3, =(aVec2ReflposNor - 0x122232); "vec2 ReflPos = normalize(Out_Refl.xy) *"... ...
12222E:  ADD             R3, PC; "vec2 ReflPos = normalize(Out_Refl.xy) *"...
122230:  BL              sub_123338
122234:  LDR             R6, =(unk_2639B4 - 0x122240)
122236:  MOV             R0, R4
122238:  MOV.W           R2, #0x2000
12223C:  ADD             R6, PC; unk_2639B4
12223E:  MOV             R1, R6
122240:  BLX             __strcat_chk
122244:  LDR             R5, =(asc_8D501 - 0x122250); "\n" ...
122246:  MOV             R0, R4
122248:  MOV.W           R2, #0x2000
12224C:  ADD             R5, PC; "\n"
12224E:  MOV             R1, R5
122250:  BLX             __strcat_chk
122254:  LDR             R3, =(aReflposReflpos - 0x12225A); "ReflPos = (ReflPos * vec2(0.5,0.5)) + v"... ...
122256:  ADD             R3, PC; "ReflPos = (ReflPos * vec2(0.5,0.5)) + v"...
122258:  BL              sub_123338
12225C:  MOV             R0, R4
12225E:  MOV             R1, R6
122260:  MOV.W           R2, #0x2000
122264:  BLX             __strcat_chk
122268:  MOV             R0, R4
12226A:  MOV             R1, R5
12226C:  MOV.W           R2, #0x2000
122270:  BLX             __strcat_chk
122274:  LDR             R3, =(aLowpVec4Reflte - 0x12227A); "lowp vec4 ReflTexture =  texture2D(EnvM"... ...
122276:  ADD             R3, PC; "lowp vec4 ReflTexture =  texture2D(EnvM"...
122278:  BL              sub_123338
12227C:  MOV             R0, R4
12227E:  MOV             R1, R6
122280:  MOV.W           R2, #0x2000
122284:  BLX             __strcat_chk
122288:  MOV             R0, R4
12228A:  MOV             R1, R5
12228C:  MOV.W           R2, #0x2000
122290:  BLX             __strcat_chk
122294:  LDR             R3, =(aFcolorXyzMixFc_0 - 0x12229A); "fcolor.xyz = mix(fcolor.xyz,ReflTexture"... ...
122296:  ADD             R3, PC; "fcolor.xyz = mix(fcolor.xyz,ReflTexture"...
122298:  BL              sub_123338
12229C:  MOV             R0, R4
12229E:  MOV             R1, R6
1222A0:  MOV.W           R2, #0x2000
1222A4:  BLX             __strcat_chk
1222A8:  MOV             R0, R4
1222AA:  MOV             R1, R5
1222AC:  MOV.W           R2, #0x2000
1222B0:  BLX             __strcat_chk
1222B4:  LDR             R3, =(aFcolorWRefltex - 0x1222BA); "fcolor.w += ReflTexture.b * 0.125;" ...
1222B6:  ADD             R3, PC; "fcolor.w += ReflTexture.b * 0.125;"
1222B8:  BL              sub_123338
1222BC:  MOV             R0, R4
1222BE:  MOV             R1, R6
1222C0:  MOV.W           R2, #0x2000
1222C4:  BLX             __strcat_chk
1222C8:  MOV             R0, R4
1222CA:  MOV             R1, R5
1222CC:  MOV.W           R2, #0x2000
1222D0:  BLX             __strcat_chk
1222D4:  BL              sub_163F54
1222D8:  LDRB            R0, [R0]
1222DA:  CBNZ            R0, loc_122330
1222DC:  LDR             R0, [SP,#0x30+var_28]
1222DE:  CBZ             R0, loc_122308
1222E0:  LDR             R0, [SP,#0x30+var_2C]; int
1222E2:  CBZ             R0, loc_122308
1222E4:  LDR             R3, =(aFcolorXyzOutSp - 0x1222EA); "fcolor.xyz += Out_Spec;" ...
1222E6:  ADD             R3, PC; "fcolor.xyz += Out_Spec;"
1222E8:  BL              sub_123338
1222EC:  LDR             R1, =(unk_2639B4 - 0x1222F8)
1222EE:  MOV             R0, R4
1222F0:  MOV.W           R2, #0x2000
1222F4:  ADD             R1, PC; unk_2639B4
1222F6:  BLX             __strcat_chk
1222FA:  LDR             R1, =(asc_8D501 - 0x122306); "\n" ...
1222FC:  MOV             R0, R4
1222FE:  MOV.W           R2, #0x2000
122302:  ADD             R1, PC; "\n"
122304:  BLX             __strcat_chk
122308:  LDR             R0, [SP,#0x30+var_24]; int
12230A:  CBZ             R0, loc_122330
12230C:  LDR             R3, =(aFcolorXyzMixFc_1 - 0x122312); "fcolor.xyz = mix(fcolor.xyz, FogColor, "... ...
12230E:  ADD             R3, PC; "fcolor.xyz = mix(fcolor.xyz, FogColor, "...
122310:  BL              sub_123338
122314:  LDR             R1, =(unk_2639B4 - 0x122320)
122316:  MOV             R0, R4
122318:  MOV.W           R2, #0x2000
12231C:  ADD             R1, PC; unk_2639B4
12231E:  BLX             __strcat_chk
122322:  LDR             R1, =(asc_8D501 - 0x12232E); "\n" ...
122324:  MOV             R0, R4
122326:  MOV.W           R2, #0x2000
12232A:  ADD             R1, PC; "\n"
12232C:  BLX             __strcat_chk
122330:  MOVS.W          R0, R8,LSL#5; int
122334:  BPL             loc_12235A
122336:  LDR             R3, =(aFcolorXyzFcolo - 0x12233C); "fcolor.xyz += fcolor.xyz * 0.5;" ...
122338:  ADD             R3, PC; "fcolor.xyz += fcolor.xyz * 0.5;"
12233A:  BL              sub_123338
12233E:  LDR             R1, =(unk_2639B4 - 0x12234A)
122340:  MOV             R0, R4
122342:  MOV.W           R2, #0x2000
122346:  ADD             R1, PC; unk_2639B4
122348:  BLX             __strcat_chk
12234C:  LDR             R1, =(asc_8D501 - 0x122358); "\n" ...
12234E:  MOV             R0, R4
122350:  MOV.W           R2, #0x2000
122354:  ADD             R1, PC; "\n"
122356:  BLX             __strcat_chk
12235A:  LDR             R3, =(aGlFragcolorFco - 0x122360); "gl_FragColor = fcolor;" ...
12235C:  ADD             R3, PC; "gl_FragColor = fcolor;"
12235E:  BL              sub_123338
122362:  LDR             R1, =(unk_2639B4 - 0x12236E)
122364:  MOV             R0, R4
122366:  MOV.W           R2, #0x2000
12236A:  ADD             R1, PC; unk_2639B4
12236C:  BLX             __strcat_chk
122370:  LDR             R1, =(asc_8D501 - 0x12237C); "\n" ...
122372:  MOV             R0, R4
122374:  MOV.W           R2, #0x2000
122378:  ADD             R1, PC; "\n"
12237A:  BLX             __strcat_chk
12237E:  MOVS.W          R0, R8,LSL#31; int
122382:  BEQ             loc_12245A
122384:  LDR             R3, =(aAtbegin - 0x12238A); "/*ATBEGIN*/" ...
122386:  ADD             R3, PC; "/*ATBEGIN*/"
122388:  BL              sub_123338
12238C:  LDR             R1, =(unk_2639B4 - 0x122398)
12238E:  MOV             R0, R4
122390:  MOV.W           R2, #0x2000
122394:  ADD             R1, PC; unk_2639B4
122396:  BLX             __strcat_chk
12239A:  LDR             R1, =(asc_8D501 - 0x1223A6); "\n" ...
12239C:  MOV             R0, R4
12239E:  MOV.W           R2, #0x2000
1223A2:  ADD             R1, PC; "\n"
1223A4:  BLX             __strcat_chk
1223A8:  AND.W           R5, R8, #0x800
1223AC:  BL              sub_163F1C
1223B0:  CMP.W           R9, #0
1223B4:  BEQ             loc_1223C8
1223B6:  CMP             R0, #0xD
1223B8:  BNE             loc_1223C8
1223BA:  CBNZ            R5, loc_1223DC
1223BC:  MOVS.W          R0, R8,LSL#22; int
1223C0:  BMI             loc_1223EC
1223C2:  LDR             R5, =(aIfDiffusecolor - 0x1223C8); "if (diffuseColor.a < 0.2) { discard; }" ...
1223C4:  ADD             R5, PC; "if (diffuseColor.a < 0.2) { discard; }"
1223C6:  B               loc_122414
1223C8:  CBNZ            R5, loc_1223D6
1223CA:  MOVS.W          R0, R8,LSL#22
1223CE:  BMI             loc_1223E2
1223D0:  LDR             R5, =(aIfGlFragcolorA - 0x1223D6); "if (gl_FragColor.a < 0.2) { discard; }" ...
1223D2:  ADD             R5, PC; "if (gl_FragColor.a < 0.2) { discard; }"
1223D4:  B               loc_122414
1223D6:  LDR             R5, =(aIfGlFragcolorA_0 - 0x1223DC); "if (gl_FragColor.a < 0.8) { discard; }" ...
1223D8:  ADD             R5, PC; "if (gl_FragColor.a < 0.8) { discard; }"
1223DA:  B               loc_122414
1223DC:  LDR             R5, =(aIfDiffusecolor_0 - 0x1223E2); "if (diffuseColor.a < 0.8) { discard; }" ...
1223DE:  ADD             R5, PC; "if (diffuseColor.a < 0.8) { discard; }"
1223E0:  B               loc_122414
1223E2:  LDR             R5, =(aGlFragcolorAOu - 0x1223EA); "gl_FragColor.a = Out_Color.a;" ...
1223E4:  LDR             R3, =(aIfGlFragcolorA_1 - 0x1223EC); "if (gl_FragColor.a < 0.5) { discard; }" ...
1223E6:  ADD             R5, PC; "gl_FragColor.a = Out_Color.a;"
1223E8:  ADD             R3, PC; "if (gl_FragColor.a < 0.5) { discard; }"
1223EA:  B               loc_1223F4
1223EC:  LDR             R5, =(aIfDiffusecolor_1 - 0x1223F4); "if (diffuseColor.a < 0.5) { discard; }" ...
1223EE:  LDR             R3, =(aGlFragcolorAOu - 0x1223F6); "gl_FragColor.a = Out_Color.a;" ...
1223F0:  ADD             R5, PC; "if (diffuseColor.a < 0.5) { discard; }"
1223F2:  ADD             R3, PC; "gl_FragColor.a = Out_Color.a;"
1223F4:  BL              sub_123338
1223F8:  LDR             R1, =(unk_2639B4 - 0x122404)
1223FA:  MOV             R0, R4
1223FC:  MOV.W           R2, #0x2000
122400:  ADD             R1, PC; unk_2639B4
122402:  BLX             __strcat_chk
122406:  LDR             R1, =(asc_8D501 - 0x122412); "\n" ...
122408:  MOV             R0, R4
12240A:  MOV.W           R2, #0x2000
12240E:  ADD             R1, PC; "\n"
122410:  BLX             __strcat_chk
122414:  MOV             R3, R5; format
122416:  BL              sub_123338
12241A:  LDR             R5, =(unk_2639B4 - 0x122426)
12241C:  MOV             R0, R4
12241E:  MOV.W           R2, #0x2000
122422:  ADD             R5, PC; unk_2639B4
122424:  MOV             R1, R5
122426:  BLX             __strcat_chk
12242A:  LDR             R6, =(asc_8D501 - 0x122436); "\n" ...
12242C:  MOV             R0, R4
12242E:  MOV.W           R2, #0x2000
122432:  ADD             R6, PC; "\n"
122434:  MOV             R1, R6
122436:  BLX             __strcat_chk
12243A:  LDR             R3, =(aAtend - 0x122440); "/*ATEND*/" ...
12243C:  ADD             R3, PC; "/*ATEND*/"
12243E:  BL              sub_123338
122442:  MOV             R0, R4
122444:  MOV             R1, R5
122446:  MOV.W           R2, #0x2000
12244A:  BLX             __strcat_chk
12244E:  MOV             R0, R4
122450:  MOV             R1, R6
122452:  MOV.W           R2, #0x2000
122456:  BLX             __strcat_chk
12245A:  LDR             R0, [SP,#0x30+var_20]; int
12245C:  CBZ             R0, loc_122482
12245E:  LDR             R3, =(aGlFragcolorAAl - 0x122464); "gl_FragColor.a *= AlphaModulate;" ...
122460:  ADD             R3, PC; "gl_FragColor.a *= AlphaModulate;"
122462:  BL              sub_123338
122466:  LDR             R1, =(unk_2639B4 - 0x122472)
122468:  MOV             R0, R4
12246A:  MOV.W           R2, #0x2000
12246E:  ADD             R1, PC; unk_2639B4
122470:  BLX             __strcat_chk
122474:  LDR             R1, =(asc_8D501 - 0x122480); "\n" ...
122476:  MOV             R0, R4
122478:  MOV.W           R2, #0x2000
12247C:  ADD             R1, PC; "\n"
12247E:  BLX             __strcat_chk
122482:  LDR             R3, =(asc_89E0B - 0x122488); "}" ...
122484:  ADD             R3, PC; "}"
122486:  BL              sub_123338
12248A:  LDR             R1, =(unk_2639B4 - 0x122496)
12248C:  MOV             R0, R4
12248E:  MOV.W           R2, #0x2000
122492:  ADD             R1, PC; unk_2639B4
122494:  BLX             __strcat_chk
122498:  LDR             R1, =(asc_8D501 - 0x1224A4); "\n" ...
12249A:  MOV             R0, R4
12249C:  MOV.W           R2, #0x2000
1224A0:  ADD             R1, PC; "\n"
1224A2:  ADD             SP, SP, #0x14
1224A4:  POP.W           {R8-R11}
1224A8:  POP.W           {R4-R7,LR}
1224AC:  B.W             sub_22431C
