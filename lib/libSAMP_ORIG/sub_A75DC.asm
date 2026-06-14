; =========================================================
; Game Engine Function: sub_A75DC
; Address            : 0xA75DC - 0xA77A0
; =========================================================

A75DC:  PUSH            {R4-R7,LR}
A75DE:  ADD             R7, SP, #0xC
A75E0:  PUSH.W          {R8-R10}
A75E4:  VPUSH           {D8-D9}
A75E8:  SUB             SP, SP, #0x28
A75EA:  LDR             R1, =(off_114D5C - 0xA75F0)
A75EC:  ADD             R1, PC; off_114D5C
A75EE:  LDR             R1, [R1]; dword_1ACF68
A75F0:  LDR             R1, [R1]
A75F2:  LDR             R2, =(__stack_chk_guard_ptr - 0xA75F8)
A75F4:  ADD             R2, PC; __stack_chk_guard_ptr
A75F6:  LDR             R2, [R2]; __stack_chk_guard
A75F8:  LDR             R2, [R2]
A75FA:  STR             R2, [SP,#0x50+var_2C]
A75FC:  MOVW            R2, #0x19AC
A7600:  LDR             R5, [R1,R2]
A7602:  MOVS            R2, #1
A7604:  STRB.W          R2, [R5,#0x7C]
A7608:  LDRB.W          R2, [R5,#0x7F]
A760C:  CBZ             R2, loc_A762C
A760E:  LDR             R0, [SP,#0x50+var_2C]
A7610:  LDR             R1, =(__stack_chk_guard_ptr - 0xA7616)
A7612:  ADD             R1, PC; __stack_chk_guard_ptr
A7614:  LDR             R1, [R1]; __stack_chk_guard
A7616:  LDR             R1, [R1]
A7618:  CMP             R1, R0
A761A:  ITTTT EQ
A761C:  ADDEQ           SP, SP, #0x28 ; '('
A761E:  VPOPEQ          {D8-D9}
A7622:  POPEQ.W         {R8-R10}
A7626:  POPEQ           {R4-R7,PC}
A7628:  BLX             __stack_chk_fail
A762C:  MOVW            R2, #0x2D20
A7630:  ADDS            R6, R1, R2
A7632:  LSLS            R1, R0, #0x1E
A7634:  BMI             loc_A766A
A7636:  LSLS            R1, R0, #0x1F
A7638:  BEQ             loc_A760E
A763A:  VLDR            S0, [R5,#0xC]
A763E:  MOVS            R4, #0
A7640:  VLDR            S2, [R5,#0x14]
A7644:  LDR.W           R1, [R5,#0x19C]
A7648:  VMOV.F32        S16, S0
A764C:  VADD.F32        S18, S0, S2
A7650:  CMP             R1, #0
A7652:  ITT NE
A7654:  VLDRNE          S4, [R5,#0x1B4]
A7658:  VADDNE.F32      S16, S0, S4
A765C:  LSLS            R0, R0, #0x1D
A765E:  BMI             loc_A76F2
A7660:  MOV.W           R9, #1
A7664:  MOV.W           R8, #0
A7668:  B               loc_A770E
A766A:  VMOV.F32        S0, #1.0
A766E:  VLDR            S2, [R5,#0xC8]
A7672:  VLDR            S4, [R5,#0xCC]
A7676:  MOVS            R0, #0
A7678:  VLDR            S6, [R5,#0xEC]
A767C:  MOVS            R1, #0
A767E:  STRD.W          R0, R0, [SP,#0x50+var_44]
A7682:  ADD             R0, SP, #0x50+var_44
A7684:  VADD.F32        S6, S4, S6
A7688:  VSTR            S4, [SP,#0x50+var_38]
A768C:  VSTR            S2, [SP,#0x50+var_3C]
A7690:  VADD.F32        S0, S2, S0
A7694:  VSTR            S6, [SP,#0x50+var_30]
A7698:  VSTR            S0, [SP,#0x50+var_34]
A769C:  BL              sub_8B104
A76A0:  ADD             R0, SP, #0x50+var_3C
A76A2:  MOVS            R1, #0
A76A4:  MOVS            R2, #0
A76A6:  BL              sub_8B314
A76AA:  CMP             R0, #0
A76AC:  BEQ             loc_A760E
A76AE:  VLDR            S0, [SP,#0x50+var_3C]
A76B2:  LDR             R0, [SP,#0x50+var_30]
A76B4:  LDR             R1, [SP,#0x50+var_38]
A76B6:  STR             R1, [SP,#0x50+var_40]
A76B8:  MOV.W           R1, #0x3F800000
A76BC:  STR             R0, [SP,#0x50+var_48]
A76BE:  MOVS            R0, #0x1B
A76C0:  LDR.W           R4, [R5,#0x27C]
A76C4:  MOV.W           R5, #0x3F800000
A76C8:  VSTR            S0, [SP,#0x50+var_44]
A76CC:  VSTR            S0, [SP,#0x50+var_4C]
A76D0:  BL              sub_88C10
A76D4:  ADD             R1, SP, #0x50+var_44; int
A76D6:  ADD             R2, SP, #0x50+var_4C; int
A76D8:  MOV             R3, R0; int
A76DA:  MOV             R0, R4; int
A76DC:  STR             R5, [SP,#0x50+var_50]
A76DE:  BL              sub_9D43C
A76E2:  LDRB            R0, [R6]
A76E4:  CMP             R0, #0
A76E6:  BEQ             loc_A760E
A76E8:  LDR             R0, =(asc_4F1B7 - 0xA76EE); " |" ...
A76EA:  ADD             R0, PC; " |"
A76EC:  BL              sub_99FEC
A76F0:  B               loc_A760E
A76F2:  LDR.W           R8, [R5,#0x1C0]
A76F6:  CMP.W           R8, #0
A76FA:  BEQ             loc_A7706
A76FC:  BL              sub_99784
A7700:  MOV.W           R9, #0
A7704:  B               loc_A770E
A7706:  MOV.W           R8, #0
A770A:  MOV.W           R9, #1
A770E:  VMOV.F32        S0, #1.0
A7712:  VLDR            S2, [R5,#0xCC]
A7716:  ADD             R0, SP, #0x50+var_44
A7718:  MOVS            R1, #0
A771A:  VSTR            S18, [SP,#0x50+var_34]
A771E:  VSTR            S16, [SP,#0x50+var_3C]
A7722:  VSTR            S2, [SP,#0x50+var_38]
A7726:  STRD.W          R4, R4, [SP,#0x50+var_44]
A772A:  VADD.F32        S0, S2, S0
A772E:  VSTR            S0, [SP,#0x50+var_30]
A7732:  BL              sub_8B104
A7736:  ADD             R0, SP, #0x50+var_3C
A7738:  MOVS            R1, #0
A773A:  MOVS            R2, #0
A773C:  BL              sub_8B314
A7740:  CBZ             R0, loc_A7792
A7742:  LDRD.W          R0, R1, [SP,#0x50+var_38]
A7746:  MOV.W           R10, #0x3F800000
A774A:  LDR.W           R4, [R5,#0x27C]
A774E:  STRD.W          R1, R0, [SP,#0x50+var_44]
A7752:  MOVS            R0, #0x1B
A7754:  MOV.W           R1, #0x3F800000
A7758:  BL              sub_88C10
A775C:  ADD             R1, SP, #0x50+var_3C; int
A775E:  ADD             R2, SP, #0x50+var_44; int
A7760:  MOV             R3, R0; int
A7762:  MOV             R0, R4; int
A7764:  STR.W           R10, [SP,#0x50+var_50]
A7768:  BL              sub_9D43C
A776C:  LDRB            R0, [R6]
A776E:  CBZ             R0, loc_A777C
A7770:  LDR             R1, =(asc_4D9A1 - 0xA777A); "--------------------------------" ...
A7772:  ADD             R0, SP, #0x50+var_3C; int
A7774:  MOVS            R2, #0
A7776:  ADD             R1, PC; "--------------------------------"
A7778:  BL              sub_892E0
A777C:  CMP.W           R9, #0
A7780:  BNE.W           loc_A760E
A7784:  BL              sub_997F0
A7788:  LDR.W           R0, [R5,#0xCC]
A778C:  STR.W           R0, [R8,#0x1C]
A7790:  B               loc_A760E
A7792:  CMP.W           R9, #0
A7796:  BNE.W           loc_A760E
A779A:  BL              sub_997F0
A779E:  B               loc_A760E
