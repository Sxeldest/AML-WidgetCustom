; =========================================================
; Game Engine Function: sub_15297C
; Address            : 0x15297C - 0x1529DE
; =========================================================

15297C:  PUSH            {R4,R6,R7,LR}
15297E:  ADD             R7, SP, #8
152980:  SUB             SP, SP, #0x10
152982:  STR             R2, [SP,#0x18+var_C]
152984:  ADD             R2, SP, #0x18+var_C
152986:  LDRD.W          R4, R12, [R7,#arg_0]
15298A:  STRD.W          R4, R12, [SP,#0x18+var_18]
15298E:  BL              sub_1529E4
152992:  VLDR            S0, =300.0
152996:  MOV             R4, R0
152998:  VLDR            S2, [SP,#0x18+var_C]
15299C:  MOV             R0, #0x3ECCCCCD
1529A4:  MOV.W           R1, #0x10E
1529A8:  VCMP.F32        S2, S0
1529AC:  MOVS            R3, #0x2D ; '-'
1529AE:  VMRS            APSR_nzcv, FPSCR
1529B2:  IT GT
1529B4:  VMOVGT.F32      S0, S2
1529B8:  VMOV            R2, S0
1529BC:  STRD.W          R1, R0, [SP,#0x18+var_18]
1529C0:  MOVS            R1, #0
1529C2:  MOV             R0, R4
1529C4:  MOVT            R1, #0x4040
1529C8:  BL              sub_150D14
1529CC:  VLDR            S0, [SP,#0x18+var_C]
1529D0:  MOV             R0, R4
1529D2:  VMUL.F32        S0, S0, S0
1529D6:  VSTR            S0, [R4,#0x60]
1529DA:  ADD             SP, SP, #0x10
1529DC:  POP             {R4,R6,R7,PC}
