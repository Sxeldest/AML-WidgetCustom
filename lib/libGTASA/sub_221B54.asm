; =========================================================
; Game Engine Function: sub_221B54
; Address            : 0x221B54 - 0x221BBA
; =========================================================

221B54:  PUSH            {R4-R7,LR}
221B56:  ADD             R7, SP, #0xC
221B58:  PUSH.W          {R11}
221B5C:  MOV             R4, R0
221B5E:  LDR             R0, =(RwEngineInstance_ptr - 0x221B64)
221B60:  ADD             R0, PC; RwEngineInstance_ptr
221B62:  LDR             R0, [R0]; RwEngineInstance
221B64:  LDR             R0, [R0]
221B66:  LDR             R0, [R0,#4]
221B68:  LDRB            R0, [R0,#8]
221B6A:  LSLS            R0, R0, #0x1A
221B6C:  BMI             loc_221B72
221B6E:  MOVS            R0, #0
221B70:  B               loc_221BAE
221B72:  MOVS            R0, #2
221B74:  BLX             j__Z33_rwOpenGLLightsGlobalLightsEnable11RpLightFlag; _rwOpenGLLightsGlobalLightsEnable(RpLightFlag)
221B78:  MOV             R5, R0
221B7A:  LDR             R0, =(RwEngineInstance_ptr - 0x221B80)
221B7C:  ADD             R0, PC; RwEngineInstance_ptr
221B7E:  LDR             R0, [R0]; RwEngineInstance
221B80:  LDR             R0, [R0]
221B82:  LDRH            R1, [R0,#0xA]
221B84:  ADDS            R1, #1
221B86:  STRH            R1, [R0,#0xA]
221B88:  LDR.W           R6, [R4,#0x48]!
221B8C:  CMP             R6, R4
221B8E:  BNE             loc_221B98
221B90:  B               loc_221BAC
221B92:  LDR             R6, [R6]
221B94:  CMP             R6, R4
221B96:  BEQ             loc_221BAC
221B98:  LDR             R0, [R6,#8]
221B9A:  CMP             R0, #0
221B9C:  BEQ             loc_221B92
221B9E:  LDRB            R1, [R0,#2]
221BA0:  LSLS            R1, R1, #0x1E
221BA2:  BPL             loc_221B92
221BA4:  BLX             j__Z31_rwOpenGLLightsLocalLightEnablePK7RpLight; _rwOpenGLLightsLocalLightEnable(RpLight const*)
221BA8:  ORRS            R5, R0
221BAA:  B               loc_221B92
221BAC:  MOV             R0, R5; int
221BAE:  POP.W           {R11}
221BB2:  POP.W           {R4-R7,LR}
221BB6:  B.W             j_j__Z21_rwOpenGLLightsEnablei; j__rwOpenGLLightsEnable(int)
