; =========================================================
; Game Engine Function: _ZN21CTaskComplexUseEffect13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EDCB4 - 0x4EDDA8
; =========================================================

4EDCB4:  PUSH            {R4-R7,LR}
4EDCB6:  ADD             R7, SP, #0xC
4EDCB8:  PUSH.W          {R8}
4EDCBC:  MOV             R4, R0
4EDCBE:  MOV             R6, R1
4EDCC0:  LDR             R0, [R4,#8]
4EDCC2:  MOV             R8, R3
4EDCC4:  LDR             R1, [R0]
4EDCC6:  LDR             R5, [R1,#0x1C]
4EDCC8:  MOV             R1, R6
4EDCCA:  BLX             R5
4EDCCC:  MOVS            R5, #0
4EDCCE:  CMP             R0, #1
4EDCD0:  BNE             loc_4EDDA0
4EDCD2:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EDCD6:  LDR             R2, [R4,#0x14]; CPedAttractor *
4EDCD8:  MOV             R1, R6; CPed *
4EDCDA:  BLX             j__ZN20CPedAttractorManager13DeRegisterPedEP4CPedP13CPedAttractor; CPedAttractorManager::DeRegisterPed(CPed *,CPedAttractor *)
4EDCDE:  CMP.W           R8, #0
4EDCE2:  STRD.W          R5, R5, [R4,#0x14]
4EDCE6:  BEQ             loc_4EDD9E
4EDCE8:  LDR             R0, [R4,#8]
4EDCEA:  LDR             R1, [R0]
4EDCEC:  LDR             R1, [R1,#0x14]
4EDCEE:  BLX             R1
4EDCF0:  MOVW            R1, #0x393
4EDCF4:  CMP             R0, R1
4EDCF6:  BNE             loc_4EDD9E
4EDCF8:  LDR.W           R0, [R8]
4EDCFC:  LDR             R5, [R4,#8]
4EDCFE:  LDR             R1, [R0,#8]
4EDD00:  MOV             R0, R8
4EDD02:  BLX             R1
4EDD04:  ORR.W           R0, R0, #1
4EDD08:  CMP             R0, #3
4EDD0A:  BNE             loc_4EDD9E
4EDD0C:  LDR             R0, [R6,#0x14]
4EDD0E:  VLDR            S0, [R5,#0x10]
4EDD12:  ADD.W           R1, R0, #0x30 ; '0'
4EDD16:  CMP             R0, #0
4EDD18:  VLDR            S2, [R5,#0x14]
4EDD1C:  IT EQ
4EDD1E:  ADDEQ           R1, R6, #4
4EDD20:  VLDR            S4, [R1]
4EDD24:  VLDR            S6, [R1,#4]
4EDD28:  VSUB.F32        S4, S4, S0
4EDD2C:  VSUB.F32        S6, S6, S2
4EDD30:  VMUL.F32        S4, S4, S4
4EDD34:  VMUL.F32        S6, S6, S6
4EDD38:  VADD.F32        S8, S4, S6
4EDD3C:  VLDR            S4, =0.0
4EDD40:  VMOV.F32        S6, #2.25
4EDD44:  VADD.F32        S8, S8, S4
4EDD48:  VCMPE.F32       S8, S6
4EDD4C:  VMRS            APSR_nzcv, FPSCR
4EDD50:  BGE             loc_4EDD9E
4EDD52:  LDR.W           R0, [R8,#0x10]
4EDD56:  CBZ             R0, loc_4EDD9E
4EDD58:  LDR             R1, [R0,#0x14]
4EDD5A:  ADD.W           R2, R1, #0x30 ; '0'
4EDD5E:  CMP             R1, #0
4EDD60:  IT EQ
4EDD62:  ADDEQ           R2, R0, #4
4EDD64:  VLDR            S8, [R2]
4EDD68:  VLDR            S10, [R2,#4]
4EDD6C:  VSUB.F32        S0, S8, S0
4EDD70:  VSUB.F32        S2, S10, S2
4EDD74:  VMUL.F32        S0, S0, S0
4EDD78:  VMUL.F32        S2, S2, S2
4EDD7C:  VADD.F32        S0, S0, S2
4EDD80:  VADD.F32        S0, S0, S4
4EDD84:  VCMPE.F32       S0, S6
4EDD88:  VMRS            APSR_nzcv, FPSCR
4EDD8C:  BGE             loc_4EDD9E
4EDD8E:  LDR.W           R0, [R0,#0x450]
4EDD92:  MOVS            R5, #1
4EDD94:  CMP             R0, #1
4EDD96:  IT EQ
4EDD98:  STRBEQ.W        R5, [R4,#0x20]
4EDD9C:  B               loc_4EDDA0
4EDD9E:  MOVS            R5, #1
4EDDA0:  MOV             R0, R5
4EDDA2:  POP.W           {R8}
4EDDA6:  POP             {R4-R7,PC}
