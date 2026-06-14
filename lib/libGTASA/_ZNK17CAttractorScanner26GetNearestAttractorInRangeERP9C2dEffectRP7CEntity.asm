; =========================================================
; Game Engine Function: _ZNK17CAttractorScanner26GetNearestAttractorInRangeERP9C2dEffectRP7CEntity
; Address            : 0x4BB60C - 0x4BB74E
; =========================================================

4BB60C:  MOVS            R3, #0
4BB60E:  STR             R3, [R1]
4BB610:  STR             R3, [R2]
4BB612:  LDR             R3, [R0,#0x28]
4BB614:  CBZ             R3, loc_4BB61E
4BB616:  LDR             R3, [R0,#0x50]
4BB618:  STR             R3, [R1]
4BB61A:  LDR             R0, [R0,#0x28]
4BB61C:  B               loc_4BB74A
4BB61E:  VLDR            S0, =3.4028e38
4BB622:  VLDR            S2, [R0,#0x68]
4BB626:  VCMPE.F32       S2, S0
4BB62A:  VMRS            APSR_nzcv, FPSCR
4BB62E:  BGE             loc_4BB640
4BB630:  LDR             R3, [R0,#0x40]
4BB632:  CMP             R3, #0
4BB634:  ITTTT NE
4BB636:  STRNE           R3, [R1]
4BB638:  LDRNE           R3, [R0,#0x18]
4BB63A:  STRNE           R3, [R2]
4BB63C:  VMOVNE.F32      S0, S2
4BB640:  VLDR            S2, [R0,#0x6C]
4BB644:  VCMPE.F32       S2, S0
4BB648:  VMRS            APSR_nzcv, FPSCR
4BB64C:  BGE             loc_4BB65E
4BB64E:  LDR             R3, [R0,#0x44]
4BB650:  CMP             R3, #0
4BB652:  ITTTT NE
4BB654:  STRNE           R3, [R1]
4BB656:  LDRNE           R3, [R0,#0x1C]
4BB658:  STRNE           R3, [R2]
4BB65A:  VMOVNE.F32      S0, S2
4BB65E:  VLDR            S2, [R0,#0x70]
4BB662:  VCMPE.F32       S2, S0
4BB666:  VMRS            APSR_nzcv, FPSCR
4BB66A:  BGE             loc_4BB67C
4BB66C:  LDR             R3, [R0,#0x48]
4BB66E:  CMP             R3, #0
4BB670:  ITTTT NE
4BB672:  STRNE           R3, [R1]
4BB674:  LDRNE           R3, [R0,#0x20]
4BB676:  STRNE           R3, [R2]
4BB678:  VMOVNE.F32      S0, S2
4BB67C:  VLDR            S2, [R0,#0x74]
4BB680:  VCMPE.F32       S2, S0
4BB684:  VMRS            APSR_nzcv, FPSCR
4BB688:  BGE             loc_4BB69A
4BB68A:  LDR             R3, [R0,#0x4C]
4BB68C:  CMP             R3, #0
4BB68E:  ITTTT NE
4BB690:  STRNE           R3, [R1]
4BB692:  LDRNE           R3, [R0,#0x24]
4BB694:  STRNE           R3, [R2]
4BB696:  VMOVNE.F32      S0, S2
4BB69A:  VLDR            S2, [R0,#0x78]
4BB69E:  VCMPE.F32       S2, S0
4BB6A2:  VMRS            APSR_nzcv, FPSCR
4BB6A6:  BGE             loc_4BB6B8
4BB6A8:  LDR             R3, [R0,#0x50]
4BB6AA:  CMP             R3, #0
4BB6AC:  ITTTT NE
4BB6AE:  STRNE           R3, [R1]
4BB6B0:  LDRNE           R3, [R0,#0x28]
4BB6B2:  STRNE           R3, [R2]
4BB6B4:  VMOVNE.F32      S0, S2
4BB6B8:  VLDR            S2, [R0,#0x7C]
4BB6BC:  VCMPE.F32       S2, S0
4BB6C0:  VMRS            APSR_nzcv, FPSCR
4BB6C4:  BGE             loc_4BB6D6
4BB6C6:  LDR             R3, [R0,#0x54]
4BB6C8:  CMP             R3, #0
4BB6CA:  ITTTT NE
4BB6CC:  STRNE           R3, [R1]
4BB6CE:  LDRNE           R3, [R0,#0x2C]
4BB6D0:  STRNE           R3, [R2]
4BB6D2:  VMOVNE.F32      S0, S2
4BB6D6:  VLDR            S2, [R0,#0x80]
4BB6DA:  VCMPE.F32       S2, S0
4BB6DE:  VMRS            APSR_nzcv, FPSCR
4BB6E2:  BGE             loc_4BB6F4
4BB6E4:  LDR             R3, [R0,#0x58]
4BB6E6:  CMP             R3, #0
4BB6E8:  ITTTT NE
4BB6EA:  STRNE           R3, [R1]
4BB6EC:  LDRNE           R3, [R0,#0x30]
4BB6EE:  STRNE           R3, [R2]
4BB6F0:  VMOVNE.F32      S0, S2
4BB6F4:  VLDR            S2, [R0,#0x84]
4BB6F8:  VCMPE.F32       S2, S0
4BB6FC:  VMRS            APSR_nzcv, FPSCR
4BB700:  BGE             loc_4BB712
4BB702:  LDR             R3, [R0,#0x5C]
4BB704:  CMP             R3, #0
4BB706:  ITTTT NE
4BB708:  STRNE           R3, [R1]
4BB70A:  LDRNE           R3, [R0,#0x34]
4BB70C:  STRNE           R3, [R2]
4BB70E:  VMOVNE.F32      S0, S2
4BB712:  VLDR            S2, [R0,#0x88]
4BB716:  VCMPE.F32       S2, S0
4BB71A:  VMRS            APSR_nzcv, FPSCR
4BB71E:  BGE             loc_4BB730
4BB720:  LDR             R3, [R0,#0x60]
4BB722:  CMP             R3, #0
4BB724:  ITTTT NE
4BB726:  STRNE           R3, [R1]
4BB728:  LDRNE           R3, [R0,#0x38]
4BB72A:  STRNE           R3, [R2]
4BB72C:  VMOVNE.F32      S0, S2
4BB730:  VLDR            S2, [R0,#0x8C]
4BB734:  VCMPE.F32       S2, S0
4BB738:  VMRS            APSR_nzcv, FPSCR
4BB73C:  BGE             locret_4BB74C
4BB73E:  LDR             R3, [R0,#0x64]
4BB740:  CMP             R3, #0
4BB742:  IT EQ
4BB744:  BXEQ            LR
4BB746:  STR             R3, [R1]
4BB748:  LDR             R0, [R0,#0x3C]
4BB74A:  STR             R0, [R2]
4BB74C:  BX              LR
