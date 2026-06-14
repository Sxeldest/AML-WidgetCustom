; =========================================================
; Game Engine Function: sub_DCDCC
; Address            : 0xDCDCC - 0xDCDFE
; =========================================================

DCDCC:  PUSH            {R7,LR}
DCDCE:  MOV             R7, SP
DCDD0:  SUB             SP, SP, #0x10
DCDD2:  MOVS            R2, #1
DCDD4:  LDR             R0, [R0]
DCDD6:  STRB.W          R2, [SP,#0x18+var_9]
DCDDA:  MOVS            R2, #0x20 ; ' '
DCDDC:  STR.W           R2, [SP,#0x18+var_D]
DCDE0:  MOVS            R2, #0
DCDE2:  MOV.W           R3, #0xFFFFFFFF
DCDE6:  STRH.W          R2, [SP,#0x18+var_F]
DCDEA:  STRD.W          R2, R3, [SP,#0x18+var_18]
DCDEE:  MOVS            R3, #0
DCDF0:  STRB.W          R2, [SP,#0x18+var_10]
DCDF4:  MOV             R2, SP
DCDF6:  BL              sub_DFACC
DCDFA:  ADD             SP, SP, #0x10
DCDFC:  POP             {R7,PC}
