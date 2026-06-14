; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePoint18ComputeTargetPointEPK4CPed
; Address            : 0x512BAC - 0x512CB6
; =========================================================

512BAC:  PUSH            {R4-R7,LR}
512BAE:  ADD             R7, SP, #0xC
512BB0:  PUSH.W          {R8,R9,R11}
512BB4:  VPUSH           {D8}
512BB8:  SUB             SP, SP, #0x10
512BBA:  MOV             R8, R1
512BBC:  MOV             R4, R0
512BBE:  LDR.W           R0, [R8,#0x14]
512BC2:  ADD.W           R5, R8, #4
512BC6:  VLDR            S0, [R4,#0xC]
512BCA:  CMP             R0, #0
512BCC:  MOV             R1, R5
512BCE:  VLDR            S2, [R4,#0x10]
512BD2:  IT NE
512BD4:  ADDNE.W         R1, R0, #0x30 ; '0'
512BD8:  VLDR            S4, [R1]
512BDC:  MOVS            R0, #0
512BDE:  VLDR            S6, [R1,#4]
512BE2:  VSUB.F32        S0, S4, S0
512BE6:  VSTR            S0, [SP,#0x30+var_2C]
512BEA:  VSUB.F32        S0, S6, S2
512BEE:  STR             R0, [SP,#0x30+var_24]
512BF0:  ADD             R0, SP, #0x30+var_2C; this
512BF2:  VSTR            S0, [SP,#0x30+var_28]
512BF6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
512BFA:  BLX             rand
512BFE:  VMOV            S0, R0
512C02:  VLDR            S16, =4.6566e-10
512C06:  VLDR            S2, =0.66
512C0A:  VCVT.F32.S32    S0, S0
512C0E:  VMUL.F32        S0, S0, S16
512C12:  VMUL.F32        S0, S0, S2
512C16:  VLDR            S2, =-0.33
512C1A:  VADD.F32        S0, S0, S2
512C1E:  VMOV            R6, S0
512C22:  MOV             R0, R6; x
512C24:  BLX             cosf
512C28:  MOV             R9, R0
512C2A:  MOV             R0, R6; x
512C2C:  BLX             sinf
512C30:  MOV             R6, R0
512C32:  BLX             rand
512C36:  VMOV            S0, R0
512C3A:  VMOV.F32        S2, #3.0
512C3E:  VCVT.F32.S32    S0, S0
512C42:  VLDR            S6, [SP,#0x30+var_2C]
512C46:  VMOV            S10, R9
512C4A:  VLDR            S8, [SP,#0x30+var_28]
512C4E:  VMOV            S4, R6
512C52:  LDR.W           R0, [R8,#0x14]
512C56:  VMUL.F32        S6, S10, S6
512C5A:  VMUL.F32        S4, S4, S8
512C5E:  CMP             R0, #0
512C60:  IT NE
512C62:  ADDNE.W         R5, R0, #0x30 ; '0'
512C66:  VMUL.F32        S0, S0, S16
512C6A:  VMUL.F32        S0, S0, S2
512C6E:  VADD.F32        S0, S0, S2
512C72:  VADD.F32        S2, S6, S4
512C76:  VSUB.F32        S4, S6, S4
512C7A:  VLDR            S6, [R5]
512C7E:  VMUL.F32        S2, S0, S2
512C82:  VMUL.F32        S0, S0, S4
512C86:  VADD.F32        S2, S6, S2
512C8A:  VSTR            S2, [R4,#0x18]
512C8E:  VLDR            S2, [R5,#4]
512C92:  VADD.F32        S0, S0, S2
512C96:  VLDR            S2, =0.0
512C9A:  VSTR            S0, [R4,#0x1C]
512C9E:  VLDR            S0, [R5,#8]
512CA2:  VADD.F32        S0, S0, S2
512CA6:  VSTR            S0, [R4,#0x20]
512CAA:  ADD             SP, SP, #0x10
512CAC:  VPOP            {D8}
512CB0:  POP.W           {R8,R9,R11}
512CB4:  POP             {R4-R7,PC}
