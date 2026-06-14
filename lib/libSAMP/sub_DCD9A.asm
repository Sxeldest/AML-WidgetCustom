; =========================================================
; Game Engine Function: sub_DCD9A
; Address            : 0xDCD9A - 0xDCDCC
; =========================================================

DCD9A:  PUSH            {R7,LR}
DCD9C:  MOV             R7, SP
DCD9E:  SUB             SP, SP, #0x10
DCDA0:  MOVS            R2, #1
DCDA2:  LDR             R0, [R0]
DCDA4:  STRB.W          R2, [SP,#0x18+var_9]
DCDA8:  MOVS            R2, #0x20 ; ' '
DCDAA:  STR.W           R2, [SP,#0x18+var_D]
DCDAE:  MOVS            R2, #0
DCDB0:  MOV.W           R3, #0xFFFFFFFF
DCDB4:  STRH.W          R2, [SP,#0x18+var_F]
DCDB8:  STRD.W          R2, R3, [SP,#0x18+var_18]
DCDBC:  MOVS            R3, #0
DCDBE:  STRB.W          R2, [SP,#0x18+var_10]
DCDC2:  MOV             R2, SP
DCDC4:  BL              sub_DD1E8
DCDC8:  ADD             SP, SP, #0x10
DCDCA:  POP             {R7,PC}
