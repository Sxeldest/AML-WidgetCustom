; =========================================================
; Game Engine Function: _Z27RwEngineGetCurrentSubSystemv
; Address            : 0x1D7510 - 0x1D753C
; =========================================================

1D7510:  PUSH            {R4,R6,R7,LR}
1D7512:  ADD             R7, SP, #8
1D7514:  SUB             SP, SP, #8
1D7516:  LDR             R0, =(RwEngineInstance_ptr - 0x1D7522)
1D7518:  ADD             R1, SP, #0x10+var_C
1D751A:  MOVS            R2, #0
1D751C:  MOVS            R3, #0
1D751E:  ADD             R0, PC; RwEngineInstance_ptr
1D7520:  MOVS            R4, #0
1D7522:  LDR             R0, [R0]; RwEngineInstance
1D7524:  LDR             R0, [R0]
1D7526:  LDR.W           R12, [R0,#0x14]
1D752A:  MOVS            R0, #0xF
1D752C:  BLX             R12
1D752E:  CMP             R0, #0
1D7530:  ITE EQ
1D7532:  STREQ           R4, [SP,#0x10+var_C]
1D7534:  LDRNE           R4, [SP,#0x10+var_C]
1D7536:  MOV             R0, R4
1D7538:  ADD             SP, SP, #8
1D753A:  POP             {R4,R6,R7,PC}
