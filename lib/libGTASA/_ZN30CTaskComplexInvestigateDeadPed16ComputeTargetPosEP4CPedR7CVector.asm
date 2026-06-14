; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPed16ComputeTargetPosEP4CPedR7CVector
; Address            : 0x5467EC - 0x546890
; =========================================================

5467EC:  PUSH            {R4-R7,LR}
5467EE:  ADD             R7, SP, #0xC
5467F0:  PUSH.W          {R11}
5467F4:  SUB             SP, SP, #0x10
5467F6:  MOV             R5, R0
5467F8:  MOV             R6, R2
5467FA:  LDR             R0, [R5,#0xC]
5467FC:  LDR             R2, [R1,#0x14]
5467FE:  LDR             R3, [R0,#0x14]
546800:  ADD.W           R4, R2, #0x30 ; '0'
546804:  CMP             R2, #0
546806:  IT EQ
546808:  ADDEQ           R4, R1, #4
54680A:  ADD.W           R1, R3, #0x30 ; '0'
54680E:  CMP             R3, #0
546810:  VLDR            S0, [R4]
546814:  VLDR            S2, [R4,#4]
546818:  IT EQ
54681A:  ADDEQ           R1, R0, #4
54681C:  VLDR            S4, [R1]
546820:  MOVS            R0, #0
546822:  VLDR            S6, [R1,#4]
546826:  VSUB.F32        S0, S0, S4
54682A:  STR             R0, [SP,#0x20+var_14]
54682C:  VSUB.F32        S2, S2, S6
546830:  ADD             R0, SP, #0x20+var_1C; this
546832:  VSTR            S2, [SP,#0x20+var_18]
546836:  VSTR            S0, [SP,#0x20+var_1C]
54683A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
54683E:  VLDR            S0, [SP,#0x20+var_1C]
546842:  VLDR            S2, [SP,#0x20+var_18]
546846:  VLDR            S4, [SP,#0x20+var_14]
54684A:  VADD.F32        S0, S0, S0
54684E:  LDR             R0, [R5,#0xC]
546850:  VADD.F32        S2, S2, S2
546854:  VADD.F32        S4, S4, S4
546858:  LDR             R1, [R0,#0x14]
54685A:  ADD.W           R2, R1, #0x30 ; '0'
54685E:  CMP             R1, #0
546860:  IT EQ
546862:  ADDEQ           R2, R0, #4
546864:  VLDR            S6, [R2]
546868:  VLDR            S8, [R2,#4]
54686C:  VLDR            S10, [R2,#8]
546870:  VADD.F32        S0, S0, S6
546874:  VADD.F32        S2, S2, S8
546878:  VADD.F32        S4, S4, S10
54687C:  VSTR            S0, [R6]
546880:  VSTR            S2, [R6,#4]
546884:  VSTR            S4, [R6,#8]
546888:  ADD             SP, SP, #0x10
54688A:  POP.W           {R11}
54688E:  POP             {R4-R7,PC}
