; =========================================================
; Game Engine Function: sub_12EBEC
; Address            : 0x12EBEC - 0x12EC4A
; =========================================================

12EBEC:  PUSH            {R4,R5,R7,LR}
12EBEE:  ADD             R7, SP, #8
12EBF0:  SUB             SP, SP, #0x20
12EBF2:  MOV             R5, R0
12EBF4:  LDR             R0, [R0,#0x2C]
12EBF6:  LDR             R2, [R5,#0x30]
12EBF8:  MOV             R4, R1
12EBFA:  VLDR            S2, [R5,#0x14]
12EBFE:  ADD.W           R3, R5, #0x74 ; 't'
12EC02:  VMOV            S6, R0
12EC06:  VLDR            S4, [R5,#0x18]
12EC0A:  VMOV            S0, R2
12EC0E:  LDR             R1, [R5,#0x70]
12EC10:  VADD.F32        S2, S2, S6
12EC14:  STRD.W          R0, R2, [SP,#0x28+var_10]
12EC18:  VADD.F32        S0, S4, S0
12EC1C:  ADD.W           R2, R5, #0x7C ; '|'
12EC20:  LDR             R1, [R1]
12EC22:  MOV.W           R0, #0xFFFFFFFF
12EC26:  STRD.W          R3, R2, [SP,#0x28+var_28]
12EC2A:  ADD             R2, SP, #0x28+var_10
12EC2C:  ADD             R3, SP, #0x28+var_18
12EC2E:  STR             R0, [SP,#0x28+var_20]
12EC30:  MOV             R0, R4
12EC32:  VSTR            S2, [SP,#0x28+var_18]
12EC36:  VSTR            S0, [SP,#0x28+var_14]
12EC3A:  BL              sub_12B2C0
12EC3E:  MOV             R0, R5
12EC40:  MOV             R1, R4
12EC42:  BL              sub_12C0B6
12EC46:  ADD             SP, SP, #0x20 ; ' '
12EC48:  POP             {R4,R5,R7,PC}
