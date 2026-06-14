; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePoint18CreateFirstSubTaskEP4CPed
; Address            : 0x512980 - 0x512AA4
; =========================================================

512980:  PUSH            {R4-R7,LR}
512982:  ADD             R7, SP, #0xC
512984:  PUSH.W          {R8,R9,R11}
512988:  VPUSH           {D8}
51298C:  SUB             SP, SP, #0x10
51298E:  MOV             R5, R1
512990:  MOV             R9, R0
512992:  LDRB.W          R0, [R5,#0x485]
512996:  LSLS            R0, R0, #0x1F
512998:  ITT NE
51299A:  LDRNE.W         R0, [R5,#0x590]
51299E:  CMPNE           R0, #0
5129A0:  BNE             loc_512A8E
5129A2:  LDR             R0, [R5,#0x14]
5129A4:  ADDS            R4, R5, #4
5129A6:  VLDR            S0, [R9,#0xC]
5129AA:  CMP             R0, #0
5129AC:  MOV             R1, R4
5129AE:  VLDR            S2, [R9,#0x10]
5129B2:  IT NE
5129B4:  ADDNE.W         R1, R0, #0x30 ; '0'
5129B8:  VLDR            S4, [R1]
5129BC:  MOVS            R0, #0
5129BE:  VLDR            S6, [R1,#4]
5129C2:  VSUB.F32        S0, S4, S0
5129C6:  VSTR            S0, [SP,#0x30+var_2C]
5129CA:  VSUB.F32        S0, S6, S2
5129CE:  STR             R0, [SP,#0x30+var_24]
5129D0:  ADD             R0, SP, #0x30+var_2C; this
5129D2:  VSTR            S0, [SP,#0x30+var_28]
5129D6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5129DA:  BLX             rand
5129DE:  VMOV            S0, R0
5129E2:  VLDR            S16, =4.6566e-10
5129E6:  VLDR            S2, =0.66
5129EA:  VCVT.F32.S32    S0, S0
5129EE:  VMUL.F32        S0, S0, S16
5129F2:  VMUL.F32        S0, S0, S2
5129F6:  VLDR            S2, =-0.33
5129FA:  VADD.F32        S0, S0, S2
5129FE:  VMOV            R6, S0
512A02:  MOV             R0, R6; x
512A04:  BLX             cosf
512A08:  MOV             R8, R0
512A0A:  MOV             R0, R6; x
512A0C:  BLX             sinf
512A10:  MOV             R6, R0
512A12:  BLX             rand
512A16:  VMOV            S0, R0
512A1A:  MOV.W           R1, #0x384
512A1E:  VMOV.F32        S2, #3.0
512A22:  VCVT.F32.S32    S0, S0
512A26:  VLDR            S6, [SP,#0x30+var_2C]
512A2A:  VMOV            S10, R8
512A2E:  VLDR            S8, [SP,#0x30+var_28]
512A32:  VMOV            S4, R6
512A36:  LDR             R0, [R5,#0x14]
512A38:  VMUL.F32        S6, S10, S6
512A3C:  VMUL.F32        S4, S4, S8
512A40:  CMP             R0, #0
512A42:  IT NE
512A44:  ADDNE.W         R4, R0, #0x30 ; '0'
512A48:  VMUL.F32        S0, S0, S16
512A4C:  VMUL.F32        S0, S0, S2
512A50:  VADD.F32        S0, S0, S2
512A54:  VADD.F32        S2, S6, S4
512A58:  VSUB.F32        S4, S6, S4
512A5C:  VLDR            S6, [R4]
512A60:  VMUL.F32        S2, S0, S2
512A64:  VMUL.F32        S0, S0, S4
512A68:  VADD.F32        S2, S6, S2
512A6C:  VSTR            S2, [R9,#0x18]
512A70:  VLDR            S2, [R4,#4]
512A74:  VADD.F32        S0, S0, S2
512A78:  VLDR            S2, =0.0
512A7C:  VSTR            S0, [R9,#0x1C]
512A80:  VLDR            S0, [R4,#8]
512A84:  VADD.F32        S0, S0, S2
512A88:  VSTR            S0, [R9,#0x20]
512A8C:  B               loc_512A92
512A8E:  MOVW            R1, #0x2CA; int
512A92:  MOV             R0, R9; this
512A94:  BLX             j__ZN21CTaskComplexFleePoint13CreateSubTaskEi; CTaskComplexFleePoint::CreateSubTask(int)
512A98:  ADD             SP, SP, #0x10
512A9A:  VPOP            {D8}
512A9E:  POP.W           {R8,R9,R11}
512AA2:  POP             {R4-R7,PC}
