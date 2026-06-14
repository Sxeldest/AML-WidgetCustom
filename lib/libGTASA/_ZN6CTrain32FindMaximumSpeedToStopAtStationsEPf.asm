; =========================================================
; Game Engine Function: _ZN6CTrain32FindMaximumSpeedToStopAtStationsEPf
; Address            : 0x57E618 - 0x57E70A
; =========================================================

57E618:  MOVS            R2, #0x42480000
57E61E:  STR             R2, [R1]
57E620:  LDRB.W          R2, [R0,#0x5D4]
57E624:  CMP             R2, #0
57E626:  ITT NE
57E628:  MOVNE           R0, #0
57E62A:  BXNE            LR
57E62C:  VMOV.F32        S6, #-0.5
57E630:  LDR.W           R12, =(unk_A12EA4 - 0x57E640)
57E634:  VMOV.F32        S8, #0.5
57E638:  LDRH.W          R2, [R0,#0x5CC]
57E63C:  ADD             R12, PC; unk_A12EA4
57E63E:  ADDW            R0, R0, #0x5BC
57E642:  ADR             R3, dword_57E714
57E644:  VLDR            S0, =10000.0
57E648:  VLDR            S2, [R12]
57E64C:  ANDS.W          R12, R2, #0x40 ; '@'
57E650:  VLDR            S4, [R0]
57E654:  IT EQ
57E656:  ADDEQ           R3, #4
57E658:  VLDR            S10, [R3]
57E65C:  MOVS            R2, #0
57E65E:  LDR             R3, =(StationDist_ptr - 0x57E66C)
57E660:  VMUL.F32        S6, S2, S6
57E664:  VMUL.F32        S8, S2, S8
57E668:  ADD             R3, PC; StationDist_ptr
57E66A:  LDR             R3, [R3]; StationDist
57E66C:  ADD.W           R0, R3, R2,LSL#2
57E670:  VLDR            S12, [R0]
57E674:  VSUB.F32        S12, S12, S4
57E678:  VADD.F32        S12, S12, S10
57E67C:  B               loc_57E682
57E67E:  VSUB.F32        S12, S12, S2
57E682:  VCMPE.F32       S12, S8
57E686:  VMRS            APSR_nzcv, FPSCR
57E68A:  BGT             loc_57E67E
57E68C:  B               loc_57E692
57E68E:  VADD.F32        S12, S12, S2
57E692:  VCMPE.F32       S12, S6
57E696:  VMRS            APSR_nzcv, FPSCR
57E69A:  BLT             loc_57E68E
57E69C:  VCMPE.F32       S12, #0.0
57E6A0:  CMP.W           R12, #0
57E6A4:  BNE             loc_57E6B6
57E6A6:  VMRS            APSR_nzcv, FPSCR
57E6AA:  ITT LT
57E6AC:  VNEGLT.F32      S12, S12
57E6B0:  VMINLT.F32      D0, D0, D6
57E6B4:  B               loc_57E6C0
57E6B6:  VMRS            APSR_nzcv, FPSCR
57E6BA:  IT GT
57E6BC:  VMINGT.F32      D0, D6, D0
57E6C0:  ADDS            R2, #1
57E6C2:  CMP             R2, #6
57E6C4:  BNE             loc_57E66C
57E6C6:  VLDR            S2, =500.0
57E6CA:  VCMPE.F32       S0, S2
57E6CE:  VMRS            APSR_nzcv, FPSCR
57E6D2:  BGE             loc_57E6EE
57E6D4:  VSUB.F32        S4, S2, S0
57E6D8:  VDIV.F32        S2, S4, S2
57E6DC:  VMOV.F32        S4, #1.0
57E6E0:  VSUB.F32        S2, S4, S2
57E6E4:  VLDR            S4, =50.0
57E6E8:  VMUL.F32        S2, S2, S4
57E6EC:  B               loc_57E6F2
57E6EE:  VLDR            S2, =100000.0
57E6F2:  VMOV.F32        S4, #5.0
57E6F6:  MOVS            R0, #0
57E6F8:  VSTR            S2, [R1]
57E6FC:  VCMPE.F32       S0, S4
57E700:  VMRS            APSR_nzcv, FPSCR
57E704:  IT LT
57E706:  MOVLT           R0, #1
57E708:  BX              LR
