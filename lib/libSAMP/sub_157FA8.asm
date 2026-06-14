; =========================================================
; Game Engine Function: sub_157FA8
; Address            : 0x157FA8 - 0x157FD2
; =========================================================

157FA8:  SUB             SP, SP, #4
157FAA:  PUSH            {R7,LR}
157FAC:  MOV             R7, SP
157FAE:  SUB             SP, SP, #0xC
157FB0:  ADD.W           R1, R7, #8
157FB4:  MOV             R12, R2
157FB6:  STR             R3, [R7,#8]
157FB8:  MOVW            R2, #0x7FF
157FBC:  STR             R1, [SP,#0x18+var_10]
157FBE:  MOV             R3, R12
157FC0:  STR             R1, [SP,#0x18+var_18]
157FC2:  MOVS            R1, #0
157FC4:  BLX             __vsprintf_chk
157FC8:  ADD             SP, SP, #0xC
157FCA:  POP.W           {R7,LR}
157FCE:  ADD             SP, SP, #4
157FD0:  BX              LR
