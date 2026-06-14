; =========================================================
; Game Engine Function: _ZN35CTaskComplexTurnToFaceEntityOrCoord14ControlSubTaskEP4CPed
; Address            : 0x524ED0 - 0x524FDA
; =========================================================

524ED0:  PUSH            {R4,R6,R7,LR}
524ED2:  ADD             R7, SP, #8
524ED4:  SUB             SP, SP, #0x10; float
524ED6:  MOV             R4, R0
524ED8:  LDRB            R0, [R4,#0x10]
524EDA:  CMP             R0, #0
524EDC:  BEQ             loc_524F86
524EDE:  LDR             R0, [R4,#0xC]
524EE0:  CMP             R0, #0
524EE2:  BEQ             loc_524F8A
524EE4:  LDR             R2, [R0,#0x14]
524EE6:  ADD.W           R3, R2, #0x30 ; '0'
524EEA:  CMP             R2, #0
524EEC:  IT EQ
524EEE:  ADDEQ           R3, R0, #4
524EF0:  LDR             R0, [R1,#0x14]
524EF2:  VLDR            S0, [R3]
524EF6:  ADD.W           R2, R0, #0x30 ; '0'
524EFA:  CMP             R0, #0
524EFC:  VLDR            S2, [R3,#4]
524F00:  ADD             R0, SP, #0x18+var_14; this
524F02:  VLDR            S4, [R3,#8]
524F06:  IT EQ
524F08:  ADDEQ           R2, R1, #4
524F0A:  VLDR            S6, [R2]
524F0E:  VLDR            S8, [R2,#4]
524F12:  VSUB.F32        S0, S0, S6
524F16:  VLDR            S10, [R2,#8]
524F1A:  VSTR            S0, [SP,#0x18+var_14]
524F1E:  VSUB.F32        S0, S2, S8
524F22:  VSTR            S0, [SP,#0x18+var_10]
524F26:  VSUB.F32        S0, S4, S10
524F2A:  VSTR            S0, [SP,#0x18+var_C]
524F2E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
524F32:  LDRD.W          R0, R1, [SP,#0x18+var_14]; float
524F36:  MOVS            R2, #0; float
524F38:  MOVS            R3, #0; float
524F3A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
524F3E:  LDR.W           R1, [R4,#8]!
524F42:  VMOV            S4, R0
524F46:  VLDR            S0, [R4,#0x18]
524F4A:  VLDR            S6, [R1,#8]
524F4E:  VLDR            S2, [R4,#0x1C]
524F52:  VCMP.F32        S6, S4
524F56:  VMRS            APSR_nzcv, FPSCR
524F5A:  BNE             loc_524F78
524F5C:  VLDR            S6, [R1,#0xC]
524F60:  VCMP.F32        S6, S0
524F64:  VMRS            APSR_nzcv, FPSCR
524F68:  BNE             loc_524F78
524F6A:  VLDR            S6, [R1,#0x10]
524F6E:  VCMP.F32        S6, S2
524F72:  VMRS            APSR_nzcv, FPSCR
524F76:  BEQ             loc_524FD4
524F78:  VSTR            S4, [R1,#8]
524F7C:  VSTR            S0, [R1,#0xC]
524F80:  VSTR            S2, [R1,#0x10]
524F84:  B               loc_524FD4
524F86:  ADDS            R4, #8
524F88:  B               loc_524FD4
524F8A:  LDR.W           R0, [R4,#8]!
524F8E:  ADDW            R1, R1, #0x55C
524F92:  VLDR            S4, [R1]
524F96:  VLDR            S6, [R0,#8]
524F9A:  VLDR            S0, [R4,#0x18]
524F9E:  VCMP.F32        S6, S4
524FA2:  VLDR            S2, [R4,#0x1C]
524FA6:  VMRS            APSR_nzcv, FPSCR
524FAA:  BNE             loc_524FC8
524FAC:  VLDR            S6, [R0,#0xC]
524FB0:  VCMP.F32        S6, S0
524FB4:  VMRS            APSR_nzcv, FPSCR
524FB8:  BNE             loc_524FC8
524FBA:  VLDR            S6, [R0,#0x10]
524FBE:  VCMP.F32        S6, S2
524FC2:  VMRS            APSR_nzcv, FPSCR
524FC6:  BEQ             loc_524FD4
524FC8:  VSTR            S4, [R0,#8]
524FCC:  VSTR            S0, [R0,#0xC]
524FD0:  VSTR            S2, [R0,#0x10]
524FD4:  LDR             R0, [R4]
524FD6:  ADD             SP, SP, #0x10
524FD8:  POP             {R4,R6,R7,PC}
