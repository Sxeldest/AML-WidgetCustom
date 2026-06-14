; =========================================================
; Game Engine Function: _ZN11CShinyTexts6RenderEv
; Address            : 0x5C0EA8 - 0x5C11AA
; =========================================================

5C0EA8:  LDR             R0, =(_ZN11CShinyTexts13NumShinyTextsE_ptr - 0x5C0EAE)
5C0EAA:  ADD             R0, PC; _ZN11CShinyTexts13NumShinyTextsE_ptr
5C0EAC:  LDR             R0, [R0]; CShinyTexts::NumShinyTexts ...
5C0EAE:  LDR             R0, [R0]; CShinyTexts::NumShinyTexts
5C0EB0:  CMP             R0, #0
5C0EB2:  IT EQ
5C0EB4:  BXEQ            LR
5C0EB6:  PUSH            {R4-R7,LR}
5C0EB8:  ADD             R7, SP, #0x14+var_8
5C0EBA:  PUSH.W          {R8-R11}
5C0EBE:  SUB             SP, SP, #0x54 ; 'T'
5C0EC0:  MOVS            R0, #0x14
5C0EC2:  MOVS            R1, #1
5C0EC4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0EC8:  MOVS            R0, #8
5C0ECA:  MOVS            R1, #0
5C0ECC:  MOVS            R4, #0
5C0ECE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0ED2:  MOVS            R0, #0xA
5C0ED4:  MOVS            R1, #2
5C0ED6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0EDA:  MOVS            R0, #0xB
5C0EDC:  MOVS            R1, #2
5C0EDE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0EE2:  LDR             R0, =(_ZN11CShinyTexts13NumShinyTextsE_ptr - 0x5C0EEA)
5C0EE4:  LDR             R1, =(TempBufferIndicesStored_ptr - 0x5C0EEE)
5C0EE6:  ADD             R0, PC; _ZN11CShinyTexts13NumShinyTextsE_ptr
5C0EE8:  LDR             R2, =(TempBufferVerticesStored_ptr - 0x5C0EF2)
5C0EEA:  ADD             R1, PC; TempBufferIndicesStored_ptr
5C0EEC:  LDR             R0, [R0]; CShinyTexts::NumShinyTexts ...
5C0EEE:  ADD             R2, PC; TempBufferVerticesStored_ptr
5C0EF0:  LDR             R1, [R1]; TempBufferIndicesStored
5C0EF2:  LDR             R2, [R2]; TempBufferVerticesStored
5C0EF4:  LDR             R0, [R0]; CShinyTexts::NumShinyTexts
5C0EF6:  STR             R4, [R1]
5C0EF8:  CMP             R0, #1
5C0EFA:  STR             R4, [R2]
5C0EFC:  BLT.W           loc_5C1176
5C0F00:  LDR             R0, =(_ZN11CShinyTexts11aShinyTextsE_ptr - 0x5C0F0C)
5C0F02:  MOV.W           R9, #0
5C0F06:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C0F10)
5C0F08:  ADD             R0, PC; _ZN11CShinyTexts11aShinyTextsE_ptr
5C0F0A:  LDR             R2, =(TempBufferVerticesStored_ptr - 0x5C0F14)
5C0F0C:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C0F0E:  LDR             R4, [R0]; CShinyTexts::aShinyTexts ...
5C0F10:  ADD             R2, PC; TempBufferVerticesStored_ptr
5C0F12:  LDR             R0, =(gpHandManTex_ptr - 0x5C0F18)
5C0F14:  ADD             R0, PC; gpHandManTex_ptr
5C0F16:  LDR             R0, [R0]; gpHandManTex
5C0F18:  STR             R0, [SP,#0x78+var_2C]
5C0F1A:  LDR             R0, =(TempVertexBuffer_ptr - 0x5C0F20)
5C0F1C:  ADD             R0, PC; TempVertexBuffer_ptr
5C0F1E:  LDR             R0, [R0]; TempVertexBuffer
5C0F20:  STR             R0, [SP,#0x78+var_3C]
5C0F22:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C0F28)
5C0F24:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C0F26:  LDR             R0, [R0]; TempBufferVerticesStored
5C0F28:  STR             R0, [SP,#0x78+var_30]
5C0F2A:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C0F30)
5C0F2C:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C0F2E:  LDR             R0, [R0]; TempBufferIndicesStored
5C0F30:  STR             R0, [SP,#0x78+var_34]
5C0F32:  LDR             R0, [R1]; TempBufferRenderIndexList
5C0F34:  STR             R0, [SP,#0x78+var_38]
5C0F36:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C0F3E)
5C0F38:  LDR             R1, =(gpHandManTex_ptr - 0x5C0F40)
5C0F3A:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C0F3C:  ADD             R1, PC; gpHandManTex_ptr
5C0F3E:  LDR             R0, [R0]; TempBufferVerticesStored
5C0F40:  STR             R0, [SP,#0x78+var_50]
5C0F42:  LDR             R0, [R1]; gpHandManTex
5C0F44:  STR             R0, [SP,#0x78+var_54]
5C0F46:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C0F4E)
5C0F48:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C0F50)
5C0F4A:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C0F4C:  ADD             R1, PC; TempVertexBuffer_ptr
5C0F4E:  LDR             R0, [R0]; TempBufferVerticesStored
5C0F50:  STR             R0, [SP,#0x78+var_60]
5C0F52:  LDR             R0, [R1]; TempVertexBuffer
5C0F54:  STR             R0, [SP,#0x78+var_64]
5C0F56:  LDR             R0, =(gpHandManTex_ptr - 0x5C0F5E)
5C0F58:  LDR             R1, =(TempBufferIndicesStored_ptr - 0x5C0F60)
5C0F5A:  ADD             R0, PC; gpHandManTex_ptr
5C0F5C:  ADD             R1, PC; TempBufferIndicesStored_ptr
5C0F5E:  LDR             R0, [R0]; gpHandManTex
5C0F60:  STR             R0, [SP,#0x78+var_68]
5C0F62:  LDR             R0, [R1]; TempBufferIndicesStored
5C0F64:  STR             R0, [SP,#0x78+var_6C]
5C0F66:  LDR             R0, [R2]; TempBufferVerticesStored
5C0F68:  MOVS            R2, #0
5C0F6A:  STR             R0, [SP,#0x78+var_70]
5C0F6C:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C0F74)
5C0F6E:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C0F76)
5C0F70:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C0F72:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C0F74:  LDR             R0, [R0]; TempBufferIndicesStored
5C0F76:  STR             R0, [SP,#0x78+var_74]
5C0F78:  LDR             R0, [R1]; TempBufferRenderIndexList
5C0F7A:  STR             R0, [SP,#0x78+var_78]
5C0F7C:  LDR             R0, =(_ZN11CShinyTexts13NumShinyTextsE_ptr - 0x5C0F84)
5C0F7E:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C0F86)
5C0F80:  ADD             R0, PC; _ZN11CShinyTexts13NumShinyTextsE_ptr
5C0F82:  ADD             R1, PC; TempVertexBuffer_ptr
5C0F84:  LDR.W           R8, [R0]; CShinyTexts::NumShinyTexts ...
5C0F88:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C0F8E)
5C0F8A:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C0F8C:  LDR             R0, [R0]; TempBufferVerticesStored
5C0F8E:  STR             R0, [SP,#0x78+var_40]
5C0F90:  LDR             R0, [R1]; TempVertexBuffer
5C0F92:  STR             R0, [SP,#0x78+var_44]
5C0F94:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C0F9C)
5C0F96:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5C0F9E)
5C0F98:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C0F9A:  ADD             R1, PC; TempBufferVerticesStored_ptr
5C0F9C:  LDR             R0, [R0]; TempBufferIndicesStored
5C0F9E:  STR             R0, [SP,#0x78+var_48]
5C0FA0:  LDR             R0, [R1]; TempBufferVerticesStored
5C0FA2:  STR             R0, [SP,#0x78+var_4C]
5C0FA4:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C0FAC)
5C0FA6:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C0FAE)
5C0FA8:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C0FAA:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C0FAC:  LDR             R0, [R0]; TempBufferIndicesStored
5C0FAE:  STR             R0, [SP,#0x78+var_58]
5C0FB0:  LDR             R0, [R1]; TempBufferRenderIndexList
5C0FB2:  MOVS            R1, #0
5C0FB4:  STR             R0, [SP,#0x78+var_5C]
5C0FB6:  MOVS            R0, #0
5C0FB8:  STR             R2, [SP,#0x78+var_28]
5C0FBA:  CMP.W           R0, #0x7C0
5C0FBE:  MOV.W           R2, #0
5C0FC2:  IT LE
5C0FC4:  MOVLE           R2, #1
5C0FC6:  CMP.W           R1, #0xFC0
5C0FCA:  MOV.W           R3, #0
5C0FCE:  IT LE
5C0FD0:  MOVLE           R3, #1
5C0FD2:  CBZ             R1, loc_5C1008
5C0FD4:  ANDS            R2, R3
5C0FD6:  BNE             loc_5C1008
5C0FD8:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5C0FDC:  LDR             R0, [SP,#0x78+var_40]
5C0FDE:  MOVS            R2, #0
5C0FE0:  MOVS            R3, #1
5C0FE2:  LDR             R1, [R0]
5C0FE4:  LDR             R0, [SP,#0x78+var_44]
5C0FE6:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C0FEA:  CBZ             R0, loc_5C0FFC
5C0FEC:  LDR             R0, [SP,#0x78+var_58]
5C0FEE:  LDR             R1, [SP,#0x78+var_5C]
5C0FF0:  LDR             R2, [R0]
5C0FF2:  MOVS            R0, #3
5C0FF4:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C0FF8:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C0FFC:  LDR             R0, [SP,#0x78+var_48]
5C0FFE:  MOVS            R1, #0
5C1000:  STR             R1, [R0]
5C1002:  LDR             R0, [SP,#0x78+var_4C]
5C1004:  STR             R1, [R0]
5C1006:  MOVS            R0, #0
5C1008:  LDRB.W          R2, [R4,#0x54]
5C100C:  CMP             R2, #1
5C100E:  BNE.W           loc_5C111E
5C1012:  LDR             R2, [SP,#0x78+var_2C]
5C1014:  LDRB.W          R10, [R4,#0x55]
5C1018:  LDRB.W          R11, [R4,#0x56]
5C101C:  LDRB.W          R5, [R4,#0x57]
5C1020:  LDR             R2, [R2]
5C1022:  LDR             R3, [SP,#0x78+var_28]
5C1024:  CMP             R3, R2
5C1026:  BEQ             loc_5C106E
5C1028:  CBZ             R1, loc_5C105C
5C102A:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5C102E:  LDR             R0, [SP,#0x78+var_60]
5C1030:  MOVS            R2, #0
5C1032:  MOVS            R3, #1
5C1034:  LDR             R1, [R0]
5C1036:  LDR             R0, [SP,#0x78+var_64]
5C1038:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C103C:  CBZ             R0, loc_5C104E
5C103E:  LDR             R0, [SP,#0x78+var_74]
5C1040:  LDR             R1, [SP,#0x78+var_78]
5C1042:  LDR             R2, [R0]
5C1044:  MOVS            R0, #3
5C1046:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C104A:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C104E:  LDR             R0, [SP,#0x78+var_68]
5C1050:  LDR             R1, [SP,#0x78+var_6C]
5C1052:  LDR             R2, [R0]
5C1054:  MOVS            R0, #0
5C1056:  STR             R0, [R1]
5C1058:  LDR             R1, [SP,#0x78+var_70]
5C105A:  STR             R0, [R1]
5C105C:  LDR             R1, [R2]
5C105E:  MOVS            R0, #1
5C1060:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1064:  LDR             R0, [SP,#0x78+var_50]
5C1066:  LDR             R1, [SP,#0x78+var_54]
5C1068:  LDR             R0, [R0]
5C106A:  LDR             R1, [R1]
5C106C:  STR             R1, [SP,#0x78+var_28]
5C106E:  ADD.W           R2, R0, R0,LSL#3
5C1072:  LDR.W           LR, [SP,#0x78+var_3C]
5C1076:  ORR.W           R0, R10, R11,LSL#8
5C107A:  ADD.W           R1, LR, R2,LSL#2
5C107E:  ORR.W           R0, R0, R5,LSL#16
5C1082:  ORR.W           R0, R0, #0xFF000000
5C1086:  ADD.W           R12, R1, #0x24 ; '$'
5C108A:  STR             R0, [R1,#0x18]
5C108C:  LDM.W           R4, {R3,R5,R6}
5C1090:  STR.W           R3, [LR,R2,LSL#2]
5C1094:  STRD.W          R5, R6, [R1,#4]
5C1098:  ADD.W           R6, R4, #0xC
5C109C:  LDR             R2, [R4,#0x30]
5C109E:  STR             R2, [R1,#0x1C]
5C10A0:  LDR             R2, [R4,#0x34]
5C10A2:  STR             R0, [R1,#0x3C]
5C10A4:  STR             R2, [R1,#0x20]
5C10A6:  LDM             R6, {R2,R3,R6}
5C10A8:  STM.W           R12, {R2,R3,R6}
5C10AC:  ADD.W           R6, R4, #0x18
5C10B0:  LDR             R2, [R4,#0x38]
5C10B2:  STR             R2, [R1,#0x40]
5C10B4:  LDR             R2, [R4,#0x3C]
5C10B6:  STR             R0, [R1,#0x60]
5C10B8:  STR             R2, [R1,#0x44]
5C10BA:  ADDS            R1, #0x48 ; 'H'
5C10BC:  LDM             R6, {R2,R3,R6}
5C10BE:  STM             R1!, {R2,R3,R6}
5C10C0:  ADD.W           R6, R4, #0x24 ; '$'
5C10C4:  LDR.W           R12, [SP,#0x78+var_30]
5C10C8:  LDR             R2, [R4,#0x40]
5C10CA:  LDR.W           R1, [R12]
5C10CE:  ADD.W           R3, R1, R1,LSL#3
5C10D2:  ADD.W           R3, LR, R3,LSL#2
5C10D6:  ADD.W           LR, R3, #0x6C ; 'l'
5C10DA:  STR             R2, [R3,#0x64]
5C10DC:  LDR             R2, [R4,#0x44]
5C10DE:  STR.W           R0, [R3,#0x84]
5C10E2:  STR             R2, [R3,#0x68]
5C10E4:  LDM             R6, {R0,R2,R6}
5C10E6:  STM.W           LR, {R0,R2,R6}
5C10EA:  ADDS            R6, R1, #2
5C10EC:  LDR             R0, [R4,#0x48]
5C10EE:  STR.W           R0, [R3,#0x88]
5C10F2:  LDR             R0, [R4,#0x4C]
5C10F4:  STR.W           R0, [R3,#0x8C]
5C10F8:  ADDS            R3, R1, #1
5C10FA:  LDR             R5, [SP,#0x78+var_34]
5C10FC:  LDR             R0, [SP,#0x78+var_38]
5C10FE:  LDR             R2, [R5]
5C1100:  STRH.W          R1, [R0,R2,LSL#1]
5C1104:  ADD.W           R0, R0, R2,LSL#1
5C1108:  STRH            R3, [R0,#2]
5C110A:  STRH            R6, [R0,#4]
5C110C:  STRH            R6, [R0,#6]
5C110E:  STRH            R3, [R0,#8]
5C1110:  ADDS            R3, R1, #3
5C1112:  STRH            R3, [R0,#0xA]
5C1114:  ADDS            R0, R1, #4
5C1116:  ADDS            R1, R2, #6
5C1118:  STR.W           R0, [R12]
5C111C:  STR             R1, [R5]
5C111E:  LDR.W           R2, [R8]; CShinyTexts::NumShinyTexts
5C1122:  ADD.W           R9, R9, #1
5C1126:  ADDS            R4, #0x58 ; 'X'
5C1128:  CMP             R9, R2
5C112A:  BLT.W           loc_5C0FBA
5C112E:  CBZ             R1, loc_5C1176
5C1130:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5C1134:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C1140)
5C1136:  MOVS            R3, #1
5C1138:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C1142)
5C113A:  MOVS            R4, #0
5C113C:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C113E:  ADD             R1, PC; TempVertexBuffer_ptr
5C1140:  LDR             R2, [R0]; TempBufferVerticesStored
5C1142:  LDR             R0, [R1]; TempVertexBuffer
5C1144:  LDR             R1, [R2]
5C1146:  MOVS            R2, #0
5C1148:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C114C:  CBZ             R0, loc_5C1166
5C114E:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C1156)
5C1150:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C1158)
5C1152:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C1154:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C1156:  LDR             R0, [R0]; TempBufferIndicesStored
5C1158:  LDR             R1, [R1]; TempBufferRenderIndexList
5C115A:  LDR             R2, [R0]
5C115C:  MOVS            R0, #3
5C115E:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C1162:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C1166:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C116E)
5C1168:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5C1170)
5C116A:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C116C:  ADD             R1, PC; TempBufferVerticesStored_ptr
5C116E:  LDR             R0, [R0]; TempBufferIndicesStored
5C1170:  LDR             R1, [R1]; TempBufferVerticesStored
5C1172:  STR             R4, [R0]
5C1174:  STR             R4, [R1]
5C1176:  LDR             R0, =(_ZN11CShinyTexts13NumShinyTextsE_ptr - 0x5C117E)
5C1178:  MOVS            R1, #0
5C117A:  ADD             R0, PC; _ZN11CShinyTexts13NumShinyTextsE_ptr
5C117C:  LDR             R0, [R0]; CShinyTexts::NumShinyTexts ...
5C117E:  STR             R1, [R0]; CShinyTexts::NumShinyTexts
5C1180:  MOVS            R0, #0xC
5C1182:  MOVS            R1, #0
5C1184:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1188:  MOVS            R0, #8
5C118A:  MOVS            R1, #1
5C118C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1190:  MOVS            R0, #0xA
5C1192:  MOVS            R1, #5
5C1194:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1198:  MOVS            R0, #0xB
5C119A:  MOVS            R1, #6
5C119C:  ADD             SP, SP, #0x54 ; 'T'
5C119E:  POP.W           {R8-R11}
5C11A2:  POP.W           {R4-R7,LR}
5C11A6:  B.W             sub_192888
