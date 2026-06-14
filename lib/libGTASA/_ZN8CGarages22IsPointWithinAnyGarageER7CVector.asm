; =========================================================
; Game Engine Function: _ZN8CGarages22IsPointWithinAnyGarageER7CVector
; Address            : 0x3145B4 - 0x31466C
; =========================================================

3145B4:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x3145BE)
3145B6:  VLDR            S0, [R0]
3145BA:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
3145BC:  VLDR            S2, [R0,#4]
3145C0:  VLDR            S4, [R0,#8]
3145C4:  LDR             R1, [R1]; CGarages::aGarages ...
3145C6:  ADD.W           R0, R1, #0x4C ; 'L'
3145CA:  MOV.W           R1, #0xFFFFFFFF
3145CE:  B               loc_3145DC
3145D0:  ADDS            R1, #1
3145D2:  ADDS            R0, #0xD8
3145D4:  CMP             R1, #0x31 ; '1'
3145D6:  ITT GE
3145D8:  MOVGE           R0, #0
3145DA:  BXGE            LR
3145DC:  LDRB            R2, [R0]
3145DE:  CMP             R2, #0
3145E0:  BEQ             loc_3145D0
3145E2:  VLDR            S6, [R0,#-0x44]
3145E6:  VCMPE.F32       S6, S4
3145EA:  VMRS            APSR_nzcv, FPSCR
3145EE:  BGT             loc_3145D0
3145F0:  VLDR            S6, [R0,#-0x30]
3145F4:  VCMPE.F32       S6, S4
3145F8:  VMRS            APSR_nzcv, FPSCR
3145FC:  BLT             loc_3145D0
3145FE:  VLDR            S6, [R0,#-0x4C]
314602:  VLDR            S8, [R0,#-0x48]
314606:  VSUB.F32        S6, S0, S6
31460A:  VLDR            S10, [R0,#-0x40]
31460E:  VSUB.F32        S8, S2, S8
314612:  VLDR            S12, [R0,#-0x3C]
314616:  VMUL.F32        S10, S6, S10
31461A:  VMUL.F32        S12, S8, S12
31461E:  VADD.F32        S10, S10, S12
314622:  VCMPE.F32       S10, #0.0
314626:  VMRS            APSR_nzcv, FPSCR
31462A:  BLT             loc_3145D0
31462C:  VLDR            S12, [R0,#-0x2C]
314630:  VCMPE.F32       S10, S12
314634:  VMRS            APSR_nzcv, FPSCR
314638:  BGT             loc_3145D0
31463A:  VLDR            S10, [R0,#-0x38]
31463E:  VLDR            S12, [R0,#-0x34]
314642:  VMUL.F32        S6, S6, S10
314646:  VMUL.F32        S8, S8, S12
31464A:  VADD.F32        S6, S6, S8
31464E:  VCMPE.F32       S6, #0.0
314652:  VMRS            APSR_nzcv, FPSCR
314656:  BLT             loc_3145D0
314658:  VLDR            S8, [R0,#-0x28]
31465C:  VCMPE.F32       S6, S8
314660:  VMRS            APSR_nzcv, FPSCR
314664:  ITT LE
314666:  MOVLE           R0, #1
314668:  BXLE            LR
31466A:  B               loc_3145D0
