; =========================================================
; Game Engine Function: _ZN12CWidgetRadar10IsHeldDownEv
; Address            : 0x2BF80C - 0x2BF84E
; =========================================================

2BF80C:  PUSH            {R4,R6,R7,LR}
2BF80E:  ADD             R7, SP, #8
2BF810:  MOV             R4, R0
2BF812:  LDR             R0, [R4,#4]
2BF814:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2BF818:  VLDR            S0, [R4,#0x44]
2BF81C:  MOVS            R1, #0
2BF81E:  VLDR            S2, [R4,#0x8C]
2BF822:  VCMPE.F32       S0, S2
2BF826:  VMRS            APSR_nzcv, FPSCR
2BF82A:  IT GE
2BF82C:  MOVGE           R1, #1
2BF82E:  EORS.W          R0, R0, #1
2BF832:  BNE             loc_2BF84A
2BF834:  VCMPE.F32       S0, S2
2BF838:  VMRS            APSR_nzcv, FPSCR
2BF83C:  BLT             loc_2BF84A
2BF83E:  LDR             R0, [R4,#4]
2BF840:  MOVS            R1, #0
2BF842:  POP.W           {R4,R6,R7,LR}
2BF846:  B.W             sub_196BF4
2BF84A:  ANDS            R0, R1
2BF84C:  POP             {R4,R6,R7,PC}
