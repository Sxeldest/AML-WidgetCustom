; =========================================================
; Game Engine Function: sub_155D58
; Address            : 0x155D58 - 0x155DBE
; =========================================================

155D58:  PUSH            {R4,R6,R7,LR}
155D5A:  ADD             R7, SP, #8
155D5C:  SUB             SP, SP, #0x10
155D5E:  VMOV            S0, R1
155D62:  VLDR            S2, =100.0
155D66:  MOV             R4, R0
155D68:  VCVT.F32.S32    S0, S0
155D6C:  VDIV.F32        S0, S0, S2
155D70:  VCVT.F64.F32    D16, S0
155D74:  VMOV            R2, R3, D16
155D78:  VSTR            S0, [R0,#0x74]
155D7C:  MOVS            R0, #0
155D7E:  STRD.W          R0, R0, [SP,#0x18+var_10]
155D82:  STRB.W          R0, [SP,#0x18+var_18]
155D86:  MOV             R0, SP
155D88:  BL              sub_EA660
155D8C:  LDR             R1, =(aVehiclevolume - 0x155D92); "vehicleVolume" ...
155D8E:  ADD             R1, PC; "vehicleVolume"
155D90:  ADD.W           R0, R4, #0x60 ; '`'
155D94:  BL              sub_E4710
155D98:  LDRB.W          R1, [SP,#0x18+var_18]
155D9C:  LDRB            R2, [R0]
155D9E:  STRB            R1, [R0]
155DA0:  LDRD.W          R1, R4, [SP,#0x18+var_10]
155DA4:  LDRD.W          R3, R12, [R0,#8]
155DA8:  STRD.W          R1, R4, [R0,#8]
155DAC:  MOV             R0, SP
155DAE:  STRB.W          R2, [SP,#0x18+var_18]
155DB2:  STRD.W          R3, R12, [SP,#0x18+var_10]
155DB6:  BL              sub_E3F7A
155DBA:  ADD             SP, SP, #0x10
155DBC:  POP             {R4,R6,R7,PC}
