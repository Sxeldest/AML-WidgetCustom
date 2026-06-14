; =========================================================
; Game Engine Function: sub_8B6F0
; Address            : 0x8B6F0 - 0x8B76C
; =========================================================

8B6F0:  PUSH            {R7,LR}
8B6F2:  MOV             R7, SP
8B6F4:  LDR             R3, =(dword_1ACF68 - 0x8B702)
8B6F6:  MOVW            R12, #0x19AC
8B6FA:  VLDR            S0, [R0,#0xC]
8B6FE:  ADD             R3, PC; dword_1ACF68
8B700:  LDR.W           LR, [R3]
8B704:  LDR.W           R3, [LR,R12]
8B708:  VLDR            S2, [R3,#0x214]
8B70C:  VCMP.F32        S2, S0
8B710:  VMRS            APSR_nzcv, FPSCR
8B714:  BPL             loc_8B74C
8B716:  VLDR            S0, [R0,#4]
8B71A:  VLDR            S2, [R3,#0x21C]
8B71E:  VCMP.F32        S2, S0
8B722:  VMRS            APSR_nzcv, FPSCR
8B726:  BLE             loc_8B74C
8B728:  VLDR            S0, [R0,#8]
8B72C:  VLDR            S2, [R3,#0x210]
8B730:  VCMP.F32        S2, S0
8B734:  VMRS            APSR_nzcv, FPSCR
8B738:  BPL             loc_8B74C
8B73A:  VLDR            S0, [R0]
8B73E:  VLDR            S2, [R3,#0x218]
8B742:  VCMP.F32        S2, S0
8B746:  VMRS            APSR_nzcv, FPSCR
8B74A:  BGT             loc_8B764
8B74C:  CBZ             R1, loc_8B758
8B74E:  ADD.W           R0, LR, R12
8B752:  LDR             R0, [R0,#0x24]
8B754:  CMP             R0, R1
8B756:  BEQ             loc_8B764
8B758:  CBNZ            R2, loc_8B768
8B75A:  MOVW            R0, #0x2D20
8B75E:  ADD             R0, LR
8B760:  LDRB            R0, [R0]
8B762:  CBZ             R0, loc_8B768
8B764:  MOVS            R0, #0
8B766:  POP             {R7,PC}
8B768:  MOVS            R0, #1
8B76A:  POP             {R7,PC}
