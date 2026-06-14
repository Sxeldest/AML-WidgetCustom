; =========================================================
; Game Engine Function: _ZN15CDecisionSimple3SetEPiPhi
; Address            : 0x4BDC08 - 0x4BDC78
; =========================================================

4BDC08:  CMP             R3, #1
4BDC0A:  STR             R3, [R0,#0x30]
4BDC0C:  BLT             locret_4BDC76
4BDC0E:  PUSH            {R4,R6,R7,LR}
4BDC10:  ADD             R7, SP, #0x10+var_8
4BDC12:  VLDR            S0, =0.0
4BDC16:  MOVS            R4, #0
4BDC18:  MOV.W           R12, #0x18
4BDC1C:  LDR.W           R3, [R1,R4,LSL#2]
4BDC20:  STR.W           R3, [R0,R4,LSL#2]
4BDC24:  LDRB            R3, [R2,R4]
4BDC26:  ADDS            R4, #1
4BDC28:  VMOV            S2, R3
4BDC2C:  ADD.W           R3, R0, R12
4BDC30:  ADD.W           R12, R12, #4
4BDC34:  VCVT.F32.U32    S2, S2
4BDC38:  VADD.F32        S0, S0, S2
4BDC3C:  VSTR            S0, [R3]
4BDC40:  LDR.W           LR, [R0,#0x30]
4BDC44:  CMP             R4, LR
4BDC46:  BLT             loc_4BDC1C
4BDC48:  CMP.W           LR, #1
4BDC4C:  POP.W           {R4,R6,R7,LR}
4BDC50:  IT LT
4BDC52:  BXLT            LR
4BDC54:  VMOV.F32        S2, #1.0
4BDC58:  ADD.W           R1, R0, #0x18
4BDC5C:  MOVS            R2, #0
4BDC5E:  VDIV.F32        S0, S2, S0
4BDC62:  VLDR            S2, [R1]
4BDC66:  ADDS            R2, #1
4BDC68:  VMUL.F32        S2, S0, S2
4BDC6C:  VSTM            R1!, {S2}
4BDC70:  LDR             R3, [R0,#0x30]
4BDC72:  CMP             R2, R3
4BDC74:  BLT             loc_4BDC62
4BDC76:  BX              LR
