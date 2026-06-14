; =========================================================
; Game Engine Function: sub_715D0
; Address            : 0x715D0 - 0x71764
; =========================================================

715D0:  PUSH            {R4-R7,LR}
715D2:  ADD             R7, SP, #0xC
715D4:  PUSH.W          {R8-R11}
715D8:  SUB             SP, SP, #4
715DA:  VPUSH           {D8-D11}
715DE:  SUB             SP, SP, #0x40
715E0:  MOV             R9, R3
715E2:  MOV             R3, R2
715E4:  LDR             R2, =(__stack_chk_guard_ptr - 0x715F2)
715E6:  MOV             R5, R1
715E8:  VLDR            S16, [R7,#arg_8]
715EC:  MOV             R4, R0
715EE:  ADD             R2, PC; __stack_chk_guard_ptr
715F0:  LDR             R1, [R7,#arg_C]
715F2:  VCMP.F32        S16, #0.0
715F6:  LDR             R0, [R7,#arg_4]
715F8:  LDR             R2, [R2]; __stack_chk_guard
715FA:  VMRS            APSR_nzcv, FPSCR
715FE:  LDR.W           R8, [R7,#arg_0]
71602:  LDR             R2, [R2]
71604:  STR             R2, [SP,#0x80+var_44]
71606:  LDR             R6, [R4,#8]
71608:  IT EQ
7160A:  VLDREQ          S16, [R6,#0x10]
7160E:  CMP             R1, #0
71610:  IT NE
71612:  MOVNE           R6, R1
71614:  CMP             R0, #0
71616:  BEQ.W           loc_71720
7161A:  LDR             R0, =(off_114C1C - 0x71626)
7161C:  ADR             R1, dword_71770
7161E:  VLDR            S0, [R5]
71622:  ADD             R0, PC; off_114C1C
71624:  VLD1.64         {D10-D11}, [R1@128]
71628:  LDR             R0, [R0]; dword_116D5C
7162A:  STR             R3, [SP,#0x80+var_68]
7162C:  VLDR            S18, [R0]
71630:  LDR             R0, [R4,#4]
71632:  VADD.F32        S0, S18, S0
71636:  STR             R0, [SP,#0x80+var_6C]
71638:  LDR             R0, [R5,#4]
7163A:  STR             R0, [SP,#0x80+var_4C]
7163C:  ADD             R0, SP, #0x80+var_60
7163E:  VST1.64         {D10-D11}, [R0]
71642:  VSTR            S0, [SP,#0x80+var_50]
71646:  BL              sub_88A34
7164A:  VMOV            R10, S16
7164E:  STRD.W          R0, R9, [SP,#0x80+var_80]; int
71652:  LDR             R0, [SP,#0x80+var_6C]; int
71654:  ADD             R3, SP, #0x80+var_50; int
71656:  MOV.W           R11, #0
7165A:  MOV             R1, R6; int
7165C:  STR             R5, [SP,#0x80+var_64]
7165E:  STRD.W          R8, R11, [SP,#0x80+var_78]; int
71662:  STR.W           R11, [SP,#0x80+var_70]; int
71666:  MOV             R2, R10; int
71668:  BL              sub_9D89C
7166C:  VLDR            S0, [SP,#0x80+var_50]
71670:  ADD             R0, SP, #0x80+var_60
71672:  LDR             R5, [R4,#4]
71674:  VSUB.F32        S0, S0, S18
71678:  VST1.64         {D10-D11}, [R0]
7167C:  VSUB.F32        S0, S0, S18
71680:  VSTR            S0, [SP,#0x80+var_50]
71684:  BL              sub_88A34
71688:  ADD             R3, SP, #0x80+var_50; int
7168A:  STRD.W          R0, R9, [SP,#0x80+var_80]; int
7168E:  MOV             R0, R5; int
71690:  MOV             R1, R6; int
71692:  MOV             R2, R10; int
71694:  STRD.W          R8, R11, [SP,#0x80+var_78]; int
71698:  STR.W           R11, [SP,#0x80+var_70]; int
7169C:  BL              sub_9D89C
716A0:  VLDR            S0, [SP,#0x80+var_50]
716A4:  ADD             R0, SP, #0x80+var_60
716A6:  VLDR            S2, [SP,#0x80+var_4C]
716AA:  VADD.F32        S0, S18, S0
716AE:  LDR             R5, [R4,#4]
716B0:  VADD.F32        S2, S18, S2
716B4:  VST1.64         {D10-D11}, [R0]
716B8:  MOV             R11, R0
716BA:  VSTR            S0, [SP,#0x80+var_50]
716BE:  VSTR            S2, [SP,#0x80+var_4C]
716C2:  BL              sub_88A34
716C6:  STRD.W          R0, R9, [SP,#0x80+var_80]; int
716CA:  MOVS            R0, #0
716CC:  ADD             R3, SP, #0x80+var_50; int
716CE:  STRD.W          R0, R0, [SP,#0x80+var_74]; float
716D2:  MOV             R0, R5; int
716D4:  MOV             R1, R6; int
716D6:  MOV             R2, R10; int
716D8:  STR.W           R8, [SP,#0x80+var_78]; int
716DC:  BL              sub_9D89C
716E0:  VLDR            S0, [SP,#0x80+var_4C]
716E4:  MOV             R0, R11
716E6:  LDR.W           R8, [R4,#4]
716EA:  VSUB.F32        S0, S0, S18
716EE:  VST1.64         {D10-D11}, [R11]
716F2:  VSUB.F32        S0, S0, S18
716F6:  VSTR            S0, [SP,#0x80+var_4C]
716FA:  BL              sub_88A34
716FE:  STRD.W          R0, R9, [SP,#0x80+var_80]; int
71702:  ADD             R3, SP, #0x80+var_50; int
71704:  LDR             R0, [R7,#arg_0]
71706:  MOV             R1, R6; int
71708:  STR             R0, [SP,#0x80+var_78]; int
7170A:  MOVS            R0, #0
7170C:  STRD.W          R0, R0, [SP,#0x80+var_74]; float
71710:  MOV             R0, R8; int
71712:  MOV             R2, R10; int
71714:  LDR             R5, [SP,#0x80+var_64]
71716:  LDR.W           R8, [R7,#arg_0]
7171A:  BL              sub_9D89C
7171E:  LDR             R3, [SP,#0x80+var_68]
71720:  MOV             R0, R3
71722:  LDR             R4, [R4,#4]
71724:  BL              sub_88A34
71728:  VMOV            R2, S16; int
7172C:  MOVS            R1, #0
7172E:  STRD.W          R0, R9, [SP,#0x80+var_80]; int
71732:  MOV             R0, R4; int
71734:  STRD.W          R8, R1, [SP,#0x80+var_78]; int
71738:  MOV             R3, R5; int
7173A:  STR             R1, [SP,#0x80+var_70]; int
7173C:  MOV             R1, R6; int
7173E:  BL              sub_9D89C
71742:  LDR             R0, [SP,#0x80+var_44]
71744:  LDR             R1, =(__stack_chk_guard_ptr - 0x7174A)
71746:  ADD             R1, PC; __stack_chk_guard_ptr
71748:  LDR             R1, [R1]; __stack_chk_guard
7174A:  LDR             R1, [R1]
7174C:  CMP             R1, R0
7174E:  ITTTT EQ
71750:  ADDEQ           SP, SP, #0x40 ; '@'
71752:  VPOPEQ          {D8-D11}
71756:  ADDEQ           SP, SP, #4
71758:  POPEQ.W         {R8-R11}
7175C:  IT EQ
7175E:  POPEQ           {R4-R7,PC}
71760:  BLX             __stack_chk_fail
