; =========================================================
; Game Engine Function: sub_155DEC
; Address            : 0x155DEC - 0x155E52
; =========================================================

155DEC:  PUSH            {R4,R6,R7,LR}
155DEE:  ADD             R7, SP, #8
155DF0:  SUB             SP, SP, #0x10
155DF2:  VMOV            S0, R1
155DF6:  VLDR            S2, =100.0
155DFA:  MOV             R4, R0
155DFC:  VCVT.F32.S32    S0, S0
155E00:  VDIV.F32        S0, S0, S2
155E04:  VCVT.F64.F32    D16, S0
155E08:  VMOV            R2, R3, D16
155E0C:  VSTR            S0, [R0,#0x78]
155E10:  MOVS            R0, #0
155E12:  STRD.W          R0, R0, [SP,#0x18+var_10]
155E16:  STRB.W          R0, [SP,#0x18+var_18]
155E1A:  MOV             R0, SP
155E1C:  BL              sub_EA660
155E20:  LDR             R1, =(a3dvolume - 0x155E26); "3DVolume" ...
155E22:  ADD             R1, PC; "3DVolume"
155E24:  ADD.W           R0, R4, #0x60 ; '`'
155E28:  BL              sub_E4710
155E2C:  LDRB.W          R1, [SP,#0x18+var_18]
155E30:  LDRB            R2, [R0]
155E32:  STRB            R1, [R0]
155E34:  LDRD.W          R1, R4, [SP,#0x18+var_10]
155E38:  LDRD.W          R3, R12, [R0,#8]
155E3C:  STRD.W          R1, R4, [R0,#8]
155E40:  MOV             R0, SP
155E42:  STRB.W          R2, [SP,#0x18+var_18]
155E46:  STRD.W          R3, R12, [SP,#0x18+var_10]
155E4A:  BL              sub_E3F7A
155E4E:  ADD             SP, SP, #0x10
155E50:  POP             {R4,R6,R7,PC}
