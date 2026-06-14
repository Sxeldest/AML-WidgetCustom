; =========================================================
; Game Engine Function: sub_F5FC8
; Address            : 0xF5FC8 - 0xF6014
; =========================================================

F5FC8:  PUSH            {R4,R6,R7,LR}
F5FCA:  ADD             R7, SP, #8
F5FCC:  SUB             SP, SP, #8
F5FCE:  LDR             R4, =(off_23494C - 0xF5FD8)
F5FD0:  MOV.W           R12, #0
F5FD4:  ADD             R4, PC; off_23494C
F5FD6:  LDR             R4, [R4]; dword_23DF24
F5FD8:  LDR.W           LR, [R4]
F5FDC:  CMP.W           LR, #0
F5FE0:  ITTT NE
F5FE2:  MOVWNE          R4, #0xF660
F5FE6:  MOVTNE          R4, #0x66 ; 'f'
F5FEA:  ADDSNE.W        LR, LR, R4
F5FEE:  BNE             loc_F5FF6
F5FF0:  MOV             R0, R12
F5FF2:  ADD             SP, SP, #8
F5FF4:  POP             {R4,R6,R7,PC}
F5FF6:  LDR.W           R12, [LR]
F5FFA:  CMP.W           R12, #0
F5FFE:  BEQ             loc_F600E
F6000:  LDRD.W          R4, LR, [R7,#arg_0]
F6004:  STRD.W          R4, LR, [SP,#0x10+var_10]
F6008:  BLX             R12
F600A:  MOV             R12, R0
F600C:  B               loc_F5FF0
F600E:  MOV.W           R12, #0
F6012:  B               loc_F5FF0
