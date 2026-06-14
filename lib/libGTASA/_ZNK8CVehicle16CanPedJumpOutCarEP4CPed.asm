; =========================================================
; Game Engine Function: _ZNK8CVehicle16CanPedJumpOutCarEP4CPed
; Address            : 0x584F90 - 0x585154
; =========================================================

584F90:  PUSH            {R4,R5,R7,LR}
584F92:  ADD             R7, SP, #8
584F94:  MOV             R4, R0
584F96:  LDR.W           R0, [R4,#0x5A0]
584F9A:  CMP             R0, #9
584F9C:  BNE             loc_584FD2
584F9E:  LDR.W           R0, [R4,#0x468]
584FA2:  CMP             R0, #0
584FA4:  IT NE
584FA6:  CMPNE           R0, R1
584FA8:  BNE.W           loc_58514E
584FAC:  VLDR            S0, [R4,#0x48]
584FB0:  VLDR            S1, [R4,#0x4C]
584FB4:  VMUL.F32        S4, S1, S1
584FB8:  VMUL.F32        S6, S0, S0
584FBC:  VADD.F32        S4, S6, S4
584FC0:  VLDR            S6, =0.07
584FC4:  VCMPE.F32       S4, S6
584FC8:  VMRS            APSR_nzcv, FPSCR
584FCC:  BGE.W           loc_5850D8
584FD0:  B               loc_5850DE
584FD2:  VLDR            S0, [R4,#0x48]
584FD6:  LDR.W           R1, [R4,#0x5A4]
584FDA:  VLDR            S1, [R4,#0x4C]
584FDE:  SUBS            R1, #3
584FE0:  VMUL.F32        S4, S1, S1
584FE4:  CMP             R1, #2
584FE6:  VMUL.F32        S6, S0, S0
584FEA:  VADD.F32        S4, S6, S4
584FEE:  BCS             loc_585094
584FF0:  VLDR            S0, =0.1
584FF4:  VCMPE.F32       S4, S0
584FF8:  VMRS            APSR_nzcv, FPSCR
584FFC:  BGE             loc_5850D8
584FFE:  LDR             R0, [R4]
585000:  MOVS            R1, #0
585002:  MOVS            R5, #0
585004:  LDR.W           R2, [R0,#0xE8]
585008:  MOV             R0, R4
58500A:  BLX             R2
58500C:  CMP             R0, #0
58500E:  BNE.W           loc_585150
585012:  VLDR            S6, =0.9
585016:  VLDR            S8, [R4,#0x54]
58501A:  VLDR            S10, [R4,#0x58]
58501E:  VLDR            S12, [R4,#0x5C]
585022:  VMUL.F32        S8, S8, S6
585026:  VMUL.F32        S10, S10, S6
58502A:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58503C)
58502C:  VMUL.F32        S12, S12, S6
585030:  VLDR            S0, [R4,#0x48]
585034:  VLDR            S4, [R4,#0x4C]
585038:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58503A:  VMUL.F32        S1, S0, S0
58503E:  VLDR            S2, [R4,#0x50]
585042:  VMUL.F32        S14, S4, S4
585046:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
585048:  VLDR            S3, =0.008
58504C:  VSTR            S8, [R4,#0x54]
585050:  VSTR            S10, [R4,#0x58]
585054:  VMUL.F32        S10, S2, S2
585058:  VSTR            S12, [R4,#0x5C]
58505C:  VLDR            S8, [R0]
585060:  VADD.F32        S12, S1, S14
585064:  VMUL.F32        S14, S8, S3
585068:  VADD.F32        S10, S12, S10
58506C:  VMUL.F32        S12, S14, S3
585070:  VLDR            S14, =0.01
585074:  VMUL.F32        S14, S10, S14
585078:  VMUL.F32        S12, S8, S12
58507C:  VCMPE.F32       S14, S12
585080:  VMRS            APSR_nzcv, FPSCR
585084:  BLE             loc_585116
585086:  VMUL.F32        S4, S4, S6
58508A:  VMUL.F32        S0, S0, S6
58508E:  VMUL.F32        S2, S2, S6
585092:  B               loc_585142
585094:  CBNZ            R0, loc_5850BC
585096:  LDR             R0, [R4,#0x14]
585098:  VLDR            S6, =0.3
58509C:  VLDR            S8, [R0,#0x28]
5850A0:  VCMPE.F32       S8, S6
5850A4:  VMRS            APSR_nzcv, FPSCR
5850A8:  BGE             loc_5850BC
5850AA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5850B2)
5850AC:  LDR             R1, [R4,#0x40]
5850AE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5850B0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5850B2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5850B4:  SUB.W           R0, R0, #0x3E8
5850B8:  CMP             R1, R0
5850BA:  BHI             loc_584FF0
5850BC:  VLDR            S6, =0.1
5850C0:  VCMPE.F32       S4, S6
5850C4:  VMRS            APSR_nzcv, FPSCR
5850C8:  BLT             loc_5850DE
5850CA:  VMOV.F32        S6, #0.5
5850CE:  VCMPE.F32       S4, S6
5850D2:  VMRS            APSR_nzcv, FPSCR
5850D6:  BGT             loc_5850DE
5850D8:  MOVS            R5, #1
5850DA:  MOV             R0, R5
5850DC:  POP             {R4,R5,R7,PC}
5850DE:  VLDR            S2, [R4,#0x50]
5850E2:  ADR             R1, dword_585160
5850E4:  VLDR            S4, =0.9
5850E8:  ADD.W           R0, R4, #0x48 ; 'H'
5850EC:  VLDR            S6, [R4,#0x58]
5850F0:  VLDR            S8, [R4,#0x5C]
5850F4:  VLDR            S3, [R4,#0x54]
5850F8:  VMUL.F32        S6, S6, S4
5850FC:  VLD1.64         {D16-D17}, [R1@128]
585100:  VMUL.F32        S4, S8, S4
585104:  VMUL.F32        Q8, Q0, Q8
585108:  VSTR            S6, [R4,#0x58]
58510C:  VSTR            S4, [R4,#0x5C]
585110:  VST1.32         {D16-D17}, [R0]
585114:  B               loc_58514E
585116:  VSQRT.F32       S6, S10
58511A:  VLDR            S10, =-0.016
58511E:  VMUL.F32        S8, S8, S10
585122:  VLDR            S10, =0.0
585126:  VDIV.F32        S6, S8, S6
58512A:  VMOV.F32        S8, #1.0
58512E:  VADD.F32        S6, S6, S8
585132:  VMAX.F32        D3, D3, D5
585136:  VMUL.F32        S4, S6, S4
58513A:  VMUL.F32        S0, S0, S6
58513E:  VMUL.F32        S2, S6, S2
585142:  VSTR            S0, [R4,#0x48]
585146:  VSTR            S4, [R4,#0x4C]
58514A:  VSTR            S2, [R4,#0x50]
58514E:  MOVS            R5, #0
585150:  MOV             R0, R5
585152:  POP             {R4,R5,R7,PC}
