; =========================================================
; Game Engine Function: _Z34_rxOpenGLDefaultAtomicAllInOneNodeP14RxPipelineNodePK19RxPipelineNodeParam
; Address            : 0x220F30 - 0x221084
; =========================================================

220F30:  PUSH            {R4-R7,LR}
220F32:  ADD             R7, SP, #0xC
220F34:  PUSH.W          {R8-R11}
220F38:  SUB             SP, SP, #0xC
220F3A:  LDR.W           R9, [R1]
220F3E:  MOV             R5, R0
220F40:  LDR.W           R10, [R9,#0x18]
220F44:  LDR.W           R0, [R10,#0x14]
220F48:  CMP             R0, #1
220F4A:  BLT.W           loc_221070
220F4E:  LDR.W           R6, [R10,#0x58]
220F52:  LDRH            R0, [R6,#4]
220F54:  CMP             R0, #0
220F56:  BEQ.W           loc_221070
220F5A:  LDR.W           R11, [R10,#0x18]
220F5E:  ADD.W           R4, R9, #0x14
220F62:  CMP.W           R11, #1
220F66:  IT EQ
220F68:  ADDEQ.W         R4, R10, #0x5C ; '\'
220F6C:  LDR.W           R8, [R4]
220F70:  CMP.W           R8, #0
220F74:  BEQ             loc_220FE6
220F76:  LDRH            R0, [R6,#6]
220F78:  LDRH.W          R1, [R8,#0x18]
220F7C:  CMP             R1, R0
220F7E:  BNE             loc_220FE0
220F80:  LDR             R5, [R5,#0x14]
220F82:  LDR             R4, [R5,#8]
220F84:  CBZ             R4, loc_220F98
220F86:  LDRD.W          R3, R0, [R5]
220F8A:  MOV             R1, R8
220F8C:  MOV             R2, R6
220F8E:  STR             R0, [SP,#0x28+var_28]
220F90:  MOV             R0, R9
220F92:  BLX             R4
220F94:  CMP             R0, #0
220F96:  BEQ             loc_22107A
220F98:  LDR.W           R0, [R8]
220F9C:  CBZ             R0, loc_221012
220F9E:  LDR.W           R1, [R8,#4]
220FA2:  LDR             R2, =(resourcesModule_ptr - 0x220FAC)
220FA4:  LDR             R3, =(RwEngineInstance_ptr - 0x220FAE)
220FA6:  STR             R0, [R1]
220FA8:  ADD             R2, PC; resourcesModule_ptr
220FAA:  ADD             R3, PC; RwEngineInstance_ptr
220FAC:  LDRD.W          R0, R1, [R8]
220FB0:  LDR             R2, [R2]; resourcesModule
220FB2:  LDR             R3, [R3]; RwEngineInstance
220FB4:  STR             R1, [R0,#4]
220FB6:  LDR             R0, [R2]
220FB8:  LDR             R1, [R3]
220FBA:  ADD             R0, R1
220FBC:  LDR             R0, [R0,#0x24]
220FBE:  LDR             R0, [R0]
220FC0:  STR.W           R0, [R8]
220FC4:  LDR             R0, [R2]
220FC6:  LDR             R1, [R3]
220FC8:  ADD             R0, R1
220FCA:  LDR             R1, [R0,#0x24]
220FCC:  STR.W           R1, [R8,#4]
220FD0:  LDR             R1, [R0,#0x24]
220FD2:  LDR             R1, [R1]
220FD4:  STR.W           R8, [R1,#4]
220FD8:  LDR             R0, [R0,#0x24]
220FDA:  STR.W           R8, [R0]
220FDE:  B               loc_221012
220FE0:  MOV             R0, R8
220FE2:  BLX             j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
220FE6:  LDR             R5, [R5,#0x14]
220FE8:  CMP.W           R11, #1
220FEC:  MOV             R2, R4
220FEE:  MOV             R3, R6
220FF0:  LDRD.W          R0, R1, [R5]
220FF4:  STRD.W          R0, R1, [SP,#0x28+var_28]
220FF8:  MOV             R1, R9
220FFA:  IT EQ
220FFC:  MOVEQ           R1, R10
220FFE:  MOV             R0, R9
221000:  BLX             j__Z17_rxOpenGLInstancePvS_PP10RwResEntryP12RpMeshHeaderiPFiS_P24RxOpenGLMeshInstanceDataiiE; _rxOpenGLInstance(void *,void *,RwResEntry **,RpMeshHeader *,int,int (*)(void *,RxOpenGLMeshInstanceData *,int,int))
221004:  MOV             R8, R0
221006:  MOVS            R0, #0
221008:  CMP.W           R8, #0
22100C:  BEQ             loc_221072
22100E:  STRH.W          R0, [R10,#0xC]
221012:  LDR             R0, [R5,#0x10]
221014:  CBZ             R0, loc_221054
221016:  LDR             R1, [R5,#0xC]
221018:  CMP             R1, #0
22101A:  ITT NE
22101C:  MOVNE           R0, R9
22101E:  BLXNE           R1
221020:  LDR.W           R0, [R9,#4]
221024:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
221028:  LDRB            R1, [R0,#0xE]
22102A:  LSLS            R1, R1, #0x1E
22102C:  BMI             loc_221046
22102E:  BLX             j__Z23emu_glPushAndLoadMatrixPf; emu_glPushAndLoadMatrix(float *)
221032:  LDR             R6, [R5,#0x10]
221034:  MOV             R0, R8
221036:  LDR.W           R3, [R10,#8]
22103A:  MOV             R1, R9
22103C:  MOVS            R2, #1
22103E:  BLX             R6
221040:  BLX             j__Z15emu_glPopMatrixv; emu_glPopMatrix(void)
221044:  B               loc_221054
221046:  LDR             R6, [R5,#0x10]
221048:  MOV             R0, R8
22104A:  LDR.W           R3, [R10,#8]
22104E:  MOV             R1, R9
221050:  MOVS            R2, #1
221052:  BLX             R6
221054:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x22105A)
221056:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
221058:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
22105A:  LDR             R0, [R0]
22105C:  CBZ             R0, loc_221070
22105E:  MOV.W           R0, #0xB50; unsigned int
221062:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
221066:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x22106E)
221068:  MOVS            R1, #0
22106A:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
22106C:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
22106E:  STR             R1, [R0]
221070:  MOVS            R0, #1
221072:  ADD             SP, SP, #0xC
221074:  POP.W           {R8-R11}
221078:  POP             {R4-R7,PC}
22107A:  MOV             R0, R8
22107C:  BLX             j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
221080:  MOVS            R0, #0
221082:  B               loc_221072
