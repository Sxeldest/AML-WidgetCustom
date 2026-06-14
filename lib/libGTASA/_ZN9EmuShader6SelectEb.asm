; =========================================================
; Game Engine Function: _ZN9EmuShader6SelectEb
; Address            : 0x1C0F60 - 0x1C1462
; =========================================================

1C0F60:  PUSH            {R4-R7,LR}
1C0F62:  ADD             R7, SP, #0xC
1C0F64:  PUSH.W          {R8-R10}
1C0F68:  SUB             SP, SP, #0x10
1C0F6A:  MOV             R4, SP
1C0F6C:  BFC.W           R4, #0, #4
1C0F70:  MOV             SP, R4
1C0F72:  MOV             R4, R0
1C0F74:  LDR.W           R0, =(_ZN9EmuShader17curSelectedShaderE_ptr - 0x1C0F80)
1C0F78:  MOV             R9, R1
1C0F7A:  LDR             R1, [R4]
1C0F7C:  ADD             R0, PC; _ZN9EmuShader17curSelectedShaderE_ptr
1C0F7E:  LDR             R0, [R0]; EmuShader::curSelectedShader ...
1C0F80:  STR             R1, [R0]; EmuShader::curSelectedShader
1C0F82:  BLX             j__Z22GetCurrentObjectMatrixv; GetCurrentObjectMatrix(void)
1C0F86:  MOV             R6, R0
1C0F88:  CMP.W           R9, #0
1C0F8C:  ITT EQ
1C0F8E:  LDRBEQ.W        R0, [R6,#0x40]
1C0F92:  CMPEQ           R0, #0
1C0F94:  BEQ             loc_1C0FB6
1C0F96:  LDR             R0, [R4]
1C0F98:  MOV             R2, R6
1C0F9A:  LDR             R1, [R0]
1C0F9C:  LDR             R3, [R1,#0xC]
1C0F9E:  MOVS            R1, #2
1C0FA0:  BLX             R3
1C0FA2:  MOVS            R0, #0
1C0FA4:  STRB.W          R0, [R6,#0x40]
1C0FA8:  BLX             j__Z20GetCurrentViewMatrixv; GetCurrentViewMatrix(void)
1C0FAC:  MOV             R6, R0
1C0FAE:  CMP.W           R9, #0
1C0FB2:  BEQ             loc_1C0FBC
1C0FB4:  B               loc_1C0FC2
1C0FB6:  BLX             j__Z20GetCurrentViewMatrixv; GetCurrentViewMatrix(void)
1C0FBA:  MOV             R6, R0
1C0FBC:  LDRB.W          R0, [R6,#0x40]
1C0FC0:  CBZ             R0, loc_1C0FE2
1C0FC2:  LDR             R0, [R4]
1C0FC4:  MOV             R2, R6
1C0FC6:  LDR             R1, [R0]
1C0FC8:  LDR             R3, [R1,#0xC]
1C0FCA:  MOVS            R1, #1
1C0FCC:  BLX             R3
1C0FCE:  MOVS            R0, #0
1C0FD0:  STRB.W          R0, [R6,#0x40]
1C0FD4:  BLX             j__Z26GetCurrentProjectionMatrixv; GetCurrentProjectionMatrix(void)
1C0FD8:  MOV             R6, R0
1C0FDA:  CMP.W           R9, #0
1C0FDE:  BEQ             loc_1C0FE8
1C0FE0:  B               loc_1C0FEE
1C0FE2:  BLX             j__Z26GetCurrentProjectionMatrixv; GetCurrentProjectionMatrix(void)
1C0FE6:  MOV             R6, R0
1C0FE8:  LDRB.W          R0, [R6,#0x40]
1C0FEC:  CBZ             R0, loc_1C1000
1C0FEE:  LDR             R0, [R4]
1C0FF0:  MOV             R2, R6
1C0FF2:  MOVS            R5, #0
1C0FF4:  LDR             R1, [R0]
1C0FF6:  LDR             R3, [R1,#0xC]
1C0FF8:  MOVS            R1, #0
1C0FFA:  BLX             R3
1C0FFC:  STRB.W          R5, [R6,#0x40]
1C1000:  LDR             R0, [R4,#8]
1C1002:  TST.W           R0, #0x2000000
1C1006:  BEQ             loc_1C101A
1C1008:  BLX             j__Z23GetCurrentTextureMatrixv; GetCurrentTextureMatrix(void)
1C100C:  MOV             R2, R0
1C100E:  LDR             R0, [R4]
1C1010:  LDR             R1, [R0]
1C1012:  LDR             R3, [R1,#0xC]
1C1014:  MOVS            R1, #3
1C1016:  BLX             R3
1C1018:  LDR             R0, [R4,#8]
1C101A:  MOVS            R1, #0x1000040
1C1020:  TST             R0, R1
1C1022:  BEQ             loc_1C1050
1C1024:  BLX             j__Z24emu_GetEnvMapCoefficientv; emu_GetEnvMapCoefficient(void)
1C1028:  STR             R0, [SP,#0x28+var_28]
1C102A:  MOV             R2, SP
1C102C:  LDRB            R1, [R4,#8]
1C102E:  MOVS            R3, #1
1C1030:  LSLS            R1, R1, #0x1A
1C1032:  ITTTT PL
1C1034:  VMOVPL          S0, R0
1C1038:  VMOVPL.F32      S2, #0.5
1C103C:  VMULPL.F32      S0, S0, S2
1C1040:  VSTRPL          S0, [SP,#0x28+var_28]
1C1044:  LDR             R0, [R4]
1C1046:  LDR             R1, [R0]
1C1048:  LDR             R6, [R1,#8]
1C104A:  MOVS            R1, #0xB
1C104C:  BLX             R6
1C104E:  LDR             R0, [R4,#8]
1C1050:  LSLS            R1, R0, #0x1D
1C1052:  BMI             loc_1C1098
1C1054:  LSLS            R1, R0, #0xF
1C1056:  BMI             loc_1C10B2
1C1058:  LSLS            R0, R0, #0x15
1C105A:  BPL             loc_1C10CC
1C105C:  CMP.W           R9, #0
1C1060:  BNE             loc_1C1068
1C1062:  BLX             j__Z22emu_DistanceFogIsDirtyv; emu_DistanceFogIsDirty(void)
1C1066:  CBZ             R0, loc_1C10CC
1C1068:  LDR             R6, [R4]
1C106A:  LDR             R0, [R6]
1C106C:  LDR             R5, [R0,#8]
1C106E:  BLX             j__Z28emu_DistanceFogGetParametersv; emu_DistanceFogGetParameters(void)
1C1072:  MOV             R2, R0
1C1074:  MOV             R0, R6
1C1076:  MOVS            R1, #0xD
1C1078:  MOVS            R3, #3
1C107A:  BLX             R5
1C107C:  LDR             R6, [R4]
1C107E:  LDR             R0, [R6]
1C1080:  LDR             R5, [R0,#8]
1C1082:  BLX             j__Z23emu_DistanceFogGetColorv; emu_DistanceFogGetColor(void)
1C1086:  MOV             R2, R0
1C1088:  MOV             R0, R6
1C108A:  MOVS            R1, #0xE
1C108C:  MOVS            R3, #3
1C108E:  BLX             R5
1C1090:  MOVS            R0, #0; unsigned __int8
1C1092:  BLX             j__Z23emu_DistanceFogSetDirtyh; emu_DistanceFogSetDirty(uchar)
1C1096:  B               loc_1C10CC
1C1098:  BLX             j__Z16GetAlphaModulatev; GetAlphaModulate(void)
1C109C:  STR             R0, [SP,#0x28+var_28]
1C109E:  MOV             R2, SP
1C10A0:  LDR             R0, [R4]
1C10A2:  MOVS            R3, #1
1C10A4:  LDR             R1, [R0]
1C10A6:  LDR             R6, [R1,#8]
1C10A8:  MOVS            R1, #0x12
1C10AA:  BLX             R6
1C10AC:  LDR             R0, [R4,#8]
1C10AE:  LSLS            R1, R0, #0xF
1C10B0:  BPL             loc_1C1058
1C10B2:  LDR             R0, [R4]
1C10B4:  MOVS            R3, #1
1C10B6:  LDR.W           R1, =(detailTilingFactor_ptr - 0x1C10C0)
1C10BA:  LDR             R2, [R0]
1C10BC:  ADD             R1, PC; detailTilingFactor_ptr
1C10BE:  LDR             R6, [R2,#8]
1C10C0:  LDR             R2, [R1]; detailTilingFactor
1C10C2:  MOVS            R1, #0x11
1C10C4:  BLX             R6
1C10C6:  LDR             R0, [R4,#8]
1C10C8:  LSLS            R0, R0, #0x15
1C10CA:  BMI             loc_1C105C
1C10CC:  LDR             R0, [R4,#8]
1C10CE:  TST.W           R0, #0x80000
1C10D2:  BEQ             loc_1C10EA
1C10D4:  LDR             R0, [R4]
1C10D6:  MOVS            R3, #3
1C10D8:  LDR.W           R1, =(waterVars_ptr - 0x1C10E2)
1C10DC:  LDR             R2, [R0]
1C10DE:  ADD             R1, PC; waterVars_ptr
1C10E0:  LDR             R6, [R2,#8]
1C10E2:  LDR             R2, [R1]; waterVars
1C10E4:  MOVS            R1, #0x17
1C10E6:  BLX             R6
1C10E8:  LDR             R0, [R4,#8]
1C10EA:  LSLS            R1, R0, #0xB
1C10EC:  BPL             loc_1C1104
1C10EE:  LDR             R0, [R4]
1C10F0:  MOVS            R3, #1
1C10F2:  LDR.W           R1, =(colorInterp_ptr - 0x1C10FC)
1C10F6:  LDR             R2, [R0]
1C10F8:  ADD             R1, PC; colorInterp_ptr
1C10FA:  LDR             R6, [R2,#8]
1C10FC:  LDR             R2, [R1]; colorInterp
1C10FE:  MOVS            R1, #0x13
1C1100:  BLX             R6
1C1102:  LDR             R0, [R4,#8]
1C1104:  MOV             R1, #0x18807C0
1C110C:  TST             R0, R1
1C110E:  BEQ             loc_1C1136
1C1110:  BLX             j__Z25emu_CameraPositionIsDirtyv; emu_CameraPositionIsDirty(void)
1C1114:  CBNZ            R0, loc_1C111C
1C1116:  CMP.W           R9, #1
1C111A:  BNE             loc_1C1136
1C111C:  LDR             R6, [R4]
1C111E:  LDR             R0, [R6]
1C1120:  LDR             R5, [R0,#8]
1C1122:  BLX             j__Z21emu_GetCameraPositionv; emu_GetCameraPosition(void)
1C1126:  MOV             R2, R0
1C1128:  MOV             R0, R6
1C112A:  MOVS            R1, #0xC
1C112C:  MOVS            R3, #3
1C112E:  BLX             R5
1C1130:  MOVS            R0, #0; unsigned __int8
1C1132:  BLX             j__Z26emu_CameraPositionSetDirtyh; emu_CameraPositionSetDirty(uchar)
1C1136:  LDRH            R0, [R4,#8]
1C1138:  TST.W           R0, #0x180
1C113C:  BEQ             loc_1C116C
1C113E:  CMP.W           R9, #0
1C1142:  BNE             loc_1C114C
1C1144:  BLX             j__Z29emu_InternalSkinMatricesDirtyv; emu_InternalSkinMatricesDirty(void)
1C1148:  CMP             R0, #1
1C114A:  BNE             loc_1C116C
1C114C:  BLX             j__Z30emu_InternalSkinGetVectorCountv; emu_InternalSkinGetVectorCount(void)
1C1150:  CBZ             R0, loc_1C116C
1C1152:  LDR             R6, [R4]
1C1154:  LDR             R0, [R6]
1C1156:  LDR.W           R8, [R0,#0x10]
1C115A:  BLX             j__Z30emu_InternalSkinGetVectorCountv; emu_InternalSkinGetVectorCount(void)
1C115E:  MOV             R5, R0
1C1160:  BLX             j__Z27emu_InternalSkinGetMatricesv; emu_InternalSkinGetMatrices(void)
1C1164:  MOV             R2, R0
1C1166:  MOV             R0, R6
1C1168:  MOV             R1, R5
1C116A:  BLX             R8
1C116C:  LDRB            R0, [R4,#8]
1C116E:  LSLS            R0, R0, #0x1E
1C1170:  BPL.W           loc_1C13DA
1C1174:  LDR             R0, =(byte_6B45A0 - 0x1C117A)
1C1176:  ADD             R0, PC; byte_6B45A0
1C1178:  LDRB            R0, [R0]
1C117A:  DMB.W           ISH
1C117E:  TST.W           R0, #1
1C1182:  BNE             loc_1C11A4
1C1184:  LDR             R0, =(byte_6B45A0 - 0x1C118A)
1C1186:  ADD             R0, PC; byte_6B45A0 ; __guard *
1C1188:  BLX             j___cxa_guard_acquire
1C118C:  CBZ             R0, loc_1C11A4
1C118E:  ADR             R0, dword_1C1470
1C1190:  LDR             R1, =(unk_6B4590 - 0x1C119A)
1C1192:  VLD1.64         {D16-D17}, [R0@128]
1C1196:  ADD             R1, PC; unk_6B4590
1C1198:  LDR             R0, =(byte_6B45A0 - 0x1C11A2)
1C119A:  VST1.64         {D16-D17}, [R1@128]
1C119E:  ADD             R0, PC; byte_6B45A0 ; __guard *
1C11A0:  BLX             j___cxa_guard_release
1C11A4:  LDR             R0, =(byte_6B45C0 - 0x1C11AA)
1C11A6:  ADD             R0, PC; byte_6B45C0
1C11A8:  LDRB            R0, [R0]
1C11AA:  DMB.W           ISH
1C11AE:  TST.W           R0, #1
1C11B2:  BNE             loc_1C11D4
1C11B4:  LDR             R0, =(byte_6B45C0 - 0x1C11BA)
1C11B6:  ADD             R0, PC; byte_6B45C0 ; __guard *
1C11B8:  BLX             j___cxa_guard_acquire
1C11BC:  CBZ             R0, loc_1C11D4
1C11BE:  ADR             R0, dword_1C1480
1C11C0:  LDR             R1, =(unk_6B45B0 - 0x1C11CA)
1C11C2:  VLD1.64         {D16-D17}, [R0@128]
1C11C6:  ADD             R1, PC; unk_6B45B0
1C11C8:  LDR             R0, =(byte_6B45C0 - 0x1C11D2)
1C11CA:  VST1.64         {D16-D17}, [R1@128]
1C11CE:  ADD             R0, PC; byte_6B45C0 ; __guard *
1C11D0:  BLX             j___cxa_guard_release
1C11D4:  CMP.W           R9, #0
1C11D8:  BNE             loc_1C11E2
1C11DA:  BLX             j__Z20GetAmbientLightDirtyv; GetAmbientLightDirty(void)
1C11DE:  LDRB            R0, [R0]
1C11E0:  CBZ             R0, loc_1C1202
1C11E2:  LDR             R5, [R4]
1C11E4:  LDR             R0, [R5]
1C11E6:  LDR             R6, [R0,#8]
1C11E8:  BLX             j__Z20GetAmbientLightColorv; GetAmbientLightColor(void)
1C11EC:  MOV             R2, R0
1C11EE:  MOV             R0, R5
1C11F0:  MOVS            R1, #0
1C11F2:  MOVS            R3, #3
1C11F4:  MOV.W           R8, #0
1C11F8:  BLX             R6
1C11FA:  BLX             j__Z20GetAmbientLightDirtyv; GetAmbientLightDirty(void)
1C11FE:  STRB.W          R8, [R0]
1C1202:  LDRB            R0, [R4,#9]
1C1204:  LSLS            R0, R0, #0x1A
1C1206:  BPL             loc_1C129C
1C1208:  MOVS            R0, #0
1C120A:  MOVS            R1, #0
1C120C:  BLX             j__Z14GetLightByType12EmuLightTypej; GetLightByType(EmuLightType,uint)
1C1210:  MOV             R6, R0
1C1212:  CMP.W           R9, #0
1C1216:  BEQ             loc_1C124C
1C1218:  CBNZ            R6, loc_1C1252
1C121A:  LDR             R0, [R4]
1C121C:  MOVS            R3, #3
1C121E:  LDR             R2, =(unk_6B4590 - 0x1C1226)
1C1220:  LDR             R1, [R0]
1C1222:  ADD             R2, PC; unk_6B4590
1C1224:  LDR             R6, [R1,#8]
1C1226:  MOVS            R1, #1
1C1228:  BLX             R6
1C122A:  LDR             R0, [R4]
1C122C:  MOVS            R3, #3
1C122E:  LDR             R5, =(unk_6B45B0 - 0x1C1236)
1C1230:  LDR             R1, [R0]
1C1232:  ADD             R5, PC; unk_6B45B0
1C1234:  MOV             R2, R5
1C1236:  LDR             R6, [R1,#8]
1C1238:  MOVS            R1, #2
1C123A:  BLX             R6
1C123C:  LDR             R0, [R4]
1C123E:  MOV             R2, R5
1C1240:  MOVS            R3, #3
1C1242:  LDR             R1, [R0]
1C1244:  LDR             R6, [R1,#8]
1C1246:  MOVS            R1, #3
1C1248:  BLX             R6
1C124A:  B               loc_1C129C
1C124C:  CBZ             R6, loc_1C129C
1C124E:  LDRB            R0, [R6,#1]
1C1250:  CBZ             R0, loc_1C129C
1C1252:  ADR             R0, dword_1C1490
1C1254:  ADD.W           R10, R6, #0x34 ; '4'
1C1258:  VLD1.64         {D16-D17}, [R0@128]
1C125C:  MOV             R8, SP
1C125E:  ADD.W           R2, R6, #0x14
1C1262:  MOVS            R3, #3
1C1264:  VLD1.32         {D18-D19}, [R10]
1C1268:  VMUL.F32        Q8, Q9, Q8
1C126C:  VST1.64         {D16-D17}, [R8@128,#0x28+var_28]
1C1270:  LDR             R0, [R4]
1C1272:  LDR             R1, [R0]
1C1274:  LDR.W           R12, [R1,#8]
1C1278:  MOVS            R1, #1
1C127A:  BLX             R12
1C127C:  LDR             R0, [R4]
1C127E:  MOV             R2, R10
1C1280:  MOVS            R3, #3
1C1282:  LDR             R1, [R0]
1C1284:  LDR             R5, [R1,#8]
1C1286:  MOVS            R1, #2
1C1288:  BLX             R5
1C128A:  LDR             R0, [R4]
1C128C:  MOV             R2, R8
1C128E:  MOVS            R3, #3
1C1290:  LDR             R1, [R0]
1C1292:  LDR             R5, [R1,#8]
1C1294:  MOVS            R1, #3
1C1296:  BLX             R5
1C1298:  MOVS            R0, #0
1C129A:  STRB            R0, [R6,#1]
1C129C:  LDRB            R0, [R4,#9]
1C129E:  LSLS            R0, R0, #0x19
1C12A0:  BPL             loc_1C1306
1C12A2:  MOVS            R0, #0
1C12A4:  MOVS            R1, #1
1C12A6:  BLX             j__Z14GetLightByType12EmuLightTypej; GetLightByType(EmuLightType,uint)
1C12AA:  MOV             R6, R0
1C12AC:  CMP.W           R9, #0
1C12B0:  BEQ             loc_1C12D8
1C12B2:  LDR             R0, [R4]
1C12B4:  CMP             R6, #0
1C12B6:  LDR             R1, [R0]
1C12B8:  LDR             R5, [R1,#8]
1C12BA:  BNE             loc_1C12E8
1C12BC:  LDR             R2, =(unk_6B4590 - 0x1C12C6)
1C12BE:  MOVS            R1, #4
1C12C0:  MOVS            R3, #3
1C12C2:  ADD             R2, PC; unk_6B4590
1C12C4:  BLX             R5
1C12C6:  LDR             R0, [R4]
1C12C8:  MOVS            R3, #3
1C12CA:  LDR             R2, =(unk_6B45B0 - 0x1C12D2)
1C12CC:  LDR             R1, [R0]
1C12CE:  ADD             R2, PC; unk_6B45B0
1C12D0:  LDR             R6, [R1,#8]
1C12D2:  MOVS            R1, #5
1C12D4:  BLX             R6
1C12D6:  B               loc_1C1306
1C12D8:  CMP             R6, #0
1C12DA:  ITT NE
1C12DC:  LDRBNE          R0, [R6,#1]
1C12DE:  CMPNE           R0, #0
1C12E0:  BEQ             loc_1C1306
1C12E2:  LDR             R0, [R4]
1C12E4:  LDR             R1, [R0]
1C12E6:  LDR             R5, [R1,#8]
1C12E8:  ADD.W           R2, R6, #0x14
1C12EC:  MOVS            R1, #4
1C12EE:  MOVS            R3, #3
1C12F0:  BLX             R5
1C12F2:  LDR             R0, [R4]
1C12F4:  ADD.W           R2, R6, #0x34 ; '4'
1C12F8:  MOVS            R3, #3
1C12FA:  LDR             R1, [R0]
1C12FC:  LDR             R5, [R1,#8]
1C12FE:  MOVS            R1, #5
1C1300:  BLX             R5
1C1302:  MOVS            R0, #0
1C1304:  STRB            R0, [R6,#1]
1C1306:  LDRB            R0, [R4,#9]
1C1308:  LSLS            R0, R0, #0x18
1C130A:  BPL             loc_1C1370
1C130C:  MOVS            R0, #0
1C130E:  MOVS            R1, #2
1C1310:  BLX             j__Z14GetLightByType12EmuLightTypej; GetLightByType(EmuLightType,uint)
1C1314:  MOV             R6, R0
1C1316:  CMP.W           R9, #0
1C131A:  BEQ             loc_1C1342
1C131C:  LDR             R0, [R4]
1C131E:  CMP             R6, #0
1C1320:  LDR             R1, [R0]
1C1322:  LDR             R5, [R1,#8]
1C1324:  BNE             loc_1C1352
1C1326:  LDR             R2, =(unk_6B4590 - 0x1C1330)
1C1328:  MOVS            R1, #6
1C132A:  MOVS            R3, #3
1C132C:  ADD             R2, PC; unk_6B4590
1C132E:  BLX             R5
1C1330:  LDR             R0, [R4]
1C1332:  MOVS            R3, #3
1C1334:  LDR             R2, =(unk_6B45B0 - 0x1C133C)
1C1336:  LDR             R1, [R0]
1C1338:  ADD             R2, PC; unk_6B45B0
1C133A:  LDR             R6, [R1,#8]
1C133C:  MOVS            R1, #7
1C133E:  BLX             R6
1C1340:  B               loc_1C137E
1C1342:  CMP             R6, #0
1C1344:  ITT NE
1C1346:  LDRBNE          R0, [R6,#1]
1C1348:  CMPNE           R0, #0
1C134A:  BEQ             loc_1C1376
1C134C:  LDR             R0, [R4]
1C134E:  LDR             R1, [R0]
1C1350:  LDR             R5, [R1,#8]
1C1352:  ADD.W           R2, R6, #0x14
1C1356:  MOVS            R1, #6
1C1358:  MOVS            R3, #3
1C135A:  BLX             R5
1C135C:  LDR             R0, [R4]
1C135E:  ADD.W           R2, R6, #0x34 ; '4'
1C1362:  MOVS            R3, #3
1C1364:  LDR             R1, [R0]
1C1366:  LDR             R5, [R1,#8]
1C1368:  MOVS            R1, #7
1C136A:  BLX             R5
1C136C:  MOVS            R0, #0
1C136E:  STRB            R0, [R6,#1]
1C1370:  CMP.W           R9, #0
1C1374:  BNE             loc_1C137E
1C1376:  BLX             j__Z16GetMaterialDirtyv; GetMaterialDirty(void)
1C137A:  CMP             R0, #1
1C137C:  BNE             loc_1C13FC
1C137E:  LDRB            R0, [R4,#8]
1C1380:  LSLS            R0, R0, #0x1C
1C1382:  BMI             loc_1C139C
1C1384:  LDR             R5, [R4]
1C1386:  LDR             R0, [R5]
1C1388:  LDR             R6, [R0,#8]
1C138A:  MOV.W           R0, #0x1600; unsigned int
1C138E:  BLX             j__Z20GetMaterialParameterj; GetMaterialParameter(uint)
1C1392:  MOV             R2, R0
1C1394:  MOV             R0, R5
1C1396:  MOVS            R1, #8
1C1398:  MOVS            R3, #4
1C139A:  BLX             R6
1C139C:  LDR             R5, [R4]
1C139E:  LDR             R0, [R5]
1C13A0:  LDR             R6, [R0,#8]
1C13A2:  MOV.W           R0, #0x1200; unsigned int
1C13A6:  BLX             j__Z20GetMaterialParameterj; GetMaterialParameter(uint)
1C13AA:  MOV             R2, R0
1C13AC:  MOV             R0, R5
1C13AE:  MOVS            R1, #9
1C13B0:  MOVS            R3, #4
1C13B2:  BLX             R6
1C13B4:  LDRB            R0, [R4,#9]
1C13B6:  TST.W           R0, #0xE0
1C13BA:  BEQ             loc_1C13D4
1C13BC:  LDR             R5, [R4]
1C13BE:  LDR             R0, [R5]
1C13C0:  LDR             R6, [R0,#8]
1C13C2:  MOVW            R0, #0x1201; unsigned int
1C13C6:  BLX             j__Z20GetMaterialParameterj; GetMaterialParameter(uint)
1C13CA:  MOV             R2, R0
1C13CC:  MOV             R0, R5
1C13CE:  MOVS            R1, #0xA
1C13D0:  MOVS            R3, #4
1C13D2:  BLX             R6
1C13D4:  MOVS            R0, #0; bool
1C13D6:  BLX             j__Z16SetMaterialDirtyb; SetMaterialDirty(bool)
1C13DA:  CMP.W           R9, #1
1C13DE:  BNE             loc_1C13FC
1C13E0:  LDR             R0, [R4,#8]
1C13E2:  TST.W           R0, #0x200
1C13E6:  BEQ             loc_1C1432
1C13E8:  MOV.W           R1, #0x3F800000
1C13EC:  LSLS            R0, R0, #0x1D
1C13EE:  STRD.W          R1, R1, [SP,#0x28+var_28]
1C13F2:  STR             R1, [SP,#0x28+var_20]
1C13F4:  BMI             loc_1C1406
1C13F6:  VMOV.F32        S0, #1.0
1C13FA:  B               loc_1C140E
1C13FC:  BLX             j__Z19GetGlobalColorDirtyv; GetGlobalColorDirty(void)
1C1400:  LDRB            R0, [R0]
1C1402:  CBNZ            R0, loc_1C1432
1C1404:  B               loc_1C1456
1C1406:  BLX             j__Z16GetAlphaModulatev; GetAlphaModulate(void)
1C140A:  VMOV            S0, R0
1C140E:  VSTR            S0, [SP,#0x28+var_1C]
1C1412:  MOVS            R3, #3
1C1414:  LDR             R0, [R4]
1C1416:  LDR             R1, =(DirectionalLightColourFromDay_ptr - 0x1C141E)
1C1418:  LDR             R2, [R0]
1C141A:  ADD             R1, PC; DirectionalLightColourFromDay_ptr
1C141C:  LDR             R6, [R2,#8]
1C141E:  LDR             R2, [R1]; DirectionalLightColourFromDay
1C1420:  MOVS            R1, #0
1C1422:  BLX             R6
1C1424:  LDR             R0, [R4]
1C1426:  MOV             R2, SP
1C1428:  MOVS            R3, #4
1C142A:  LDR             R1, [R0]
1C142C:  LDR             R6, [R1,#8]
1C142E:  MOVS            R1, #9
1C1430:  BLX             R6
1C1432:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1C1438)
1C1434:  ADD             R0, PC; curEmulatorStateFlags_ptr
1C1436:  LDR             R0, [R0]; curEmulatorStateFlags
1C1438:  LDRB            R0, [R0,#(curEmulatorStateFlags+2 - 0x6B7098)]
1C143A:  LSLS            R0, R0, #0x18
1C143C:  BMI             loc_1C1456
1C143E:  LDR             R4, [R4]
1C1440:  LDR             R0, [R4]
1C1442:  LDR             R5, [R0,#0x14]
1C1444:  BLX             j__Z14GetGlobalColorv; GetGlobalColor(void)
1C1448:  MOV             R1, R0
1C144A:  MOV             R0, R4
1C144C:  BLX             R5
1C144E:  BLX             j__Z19GetGlobalColorDirtyv; GetGlobalColorDirty(void)
1C1452:  MOVS            R1, #0
1C1454:  STRB            R1, [R0]
1C1456:  SUB.W           R4, R7, #-var_18
1C145A:  MOV             SP, R4
1C145C:  POP.W           {R8-R10}
1C1460:  POP             {R4-R7,PC}
