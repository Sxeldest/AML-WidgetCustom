; =========================================================
; Game Engine Function: sub_15E87C
; Address            : 0x15E87C - 0x15E8B4
; =========================================================

15E87C:  PUSH            {R4,R6,R7,LR}
15E87E:  ADD             R7, SP, #8
15E880:  SUB             SP, SP, #0x20
15E882:  MOV             R4, R3
15E884:  STR             R2, [SP,#0x28+var_1C]
15E886:  BL              sub_15E798
15E88A:  LDR             R3, =(unk_BA757 - 0x15E89E)
15E88C:  ADD.W           R12, SP, #0x28+var_18
15E890:  MOV             R1, R0
15E892:  ADD             R0, SP, #0x28+var_14
15E894:  ADD             R2, SP, #0x28+var_1C
15E896:  STRD.W          R0, R12, [SP,#0x28+var_28]
15E89A:  ADD             R3, PC; unk_BA757
15E89C:  ADD             R0, SP, #0x28+var_10
15E89E:  STR             R2, [SP,#0x28+var_14]
15E8A0:  BL              sub_15F2EE
15E8A4:  LDR             R0, [SP,#0x28+var_10]
15E8A6:  LDR             R1, [R7,#arg_0]
15E8A8:  STR             R1, [R0,#0xC]
15E8AA:  MOVS            R1, #1
15E8AC:  STR             R4, [R0,#0x18]
15E8AE:  STRB            R1, [R0,#0x14]
15E8B0:  ADD             SP, SP, #0x20 ; ' '
15E8B2:  POP             {R4,R6,R7,PC}
