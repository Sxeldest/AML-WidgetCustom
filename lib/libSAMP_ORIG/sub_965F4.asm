; =========================================================
; Game Engine Function: sub_965F4
; Address            : 0x965F4 - 0x9680C
; =========================================================

965F4:  PUSH            {R4-R7,LR}
965F6:  ADD             R7, SP, #0xC
965F8:  PUSH.W          {R8}
965FC:  VPUSH           {D8-D12}
96600:  SUB             SP, SP, #0x10
96602:  MOV             R8, R0
96604:  LDR             R0, =(dword_1ACF68 - 0x96612)
96606:  MOV             R6, R1
96608:  LDR             R1, =(__stack_chk_guard_ptr - 0x96614)
9660A:  VLDR            S2, =0.0
9660E:  ADD             R0, PC; dword_1ACF68
96610:  ADD             R1, PC; __stack_chk_guard_ptr
96612:  MOV             R5, R2
96614:  VMOV.F32        S0, S2
96618:  MOVW            R2, #0x152C
9661C:  LDR             R1, [R1]; __stack_chk_guard
9661E:  LDR             R1, [R1]
96620:  STR             R1, [SP,#0x48+var_3C]
96622:  LDR             R0, [R0]
96624:  LDR             R1, [R6,#8]
96626:  ADDS            R4, R0, R2
96628:  LSLS            R2, R1, #0x1F
9662A:  BNE             loc_96640
9662C:  VLDR            S0, [R4,#0x28]
96630:  VLDR            S4, [R4,#0x3A0]
96634:  VADD.F32        S0, S0, S0
96638:  VLDR            S6, [R6,#0x274]
9663C:  VMLA.F32        S0, S4, S6
96640:  VMOV.F32        S4, S2
96644:  LSLS            R2, R1, #0x15
96646:  BPL             loc_96664
96648:  VLDR            S4, [R4,#0x28]
9664C:  VLDR            S6, [R4,#0x3A0]
96650:  VLDR            S10, [R6,#0x274]
96654:  VADD.F32        S4, S4, S4
96658:  VLDR            S8, [R6,#0x148]
9665C:  VMLA.F32        S8, S6, S10
96660:  VADD.F32        S4, S4, S8
96664:  VLDR            S6, [R6,#0x34]
96668:  VADD.F32        S18, S0, S4
9666C:  VLDR            S8, [R6,#0x38]
96670:  LSLS            R2, R1, #6
96672:  VADD.F32        S20, S6, S6
96676:  VLDR            S6, [R5]
9667A:  VADD.F32        S16, S8, S8
9667E:  VLDR            S8, [R5,#4]
96682:  VADD.F32        S4, S20, S6
96686:  VADD.F32        S0, S16, S8
9668A:  VADD.F32        S2, S4, S2
9668E:  VADD.F32        S0, S18, S0
96692:  BMI.W           loc_96798
96696:  LDRD.W          R2, R3, [R4]
9669A:  TST.W           R1, #0x14000000
9669E:  BEQ             loc_966D4
966A0:  VMOV.F32        S4, #4.0
966A4:  VMOV            S6, R3
966A8:  VMOV            S8, R2
966AC:  VCMP.F32        S6, S4
966B0:  VMRS            APSR_nzcv, FPSCR
966B4:  VMOV.F32        S10, S4
966B8:  VCMP.F32        S8, S4
966BC:  IT MI
966BE:  VMOVMI.F32      S10, S6
966C2:  VMRS            APSR_nzcv, FPSCR
966C6:  IT MI
966C8:  VMOVMI.F32      S4, S8
966CC:  VMOV            R3, S10
966D0:  VMOV            R2, S4
966D4:  VLDR            S4, [R4,#0x84]
966D8:  VMOV.F32        S22, S2
966DC:  VLDR            S6, [R4,#0x88]
966E0:  VMOV.F32        S24, S0
966E4:  VADD.F32        S4, S4, S4
966E8:  VLDR            S8, [R0,#0x10]
966EC:  VADD.F32        S6, S6, S6
966F0:  VLDR            S10, [R0,#0x14]
966F4:  ADD             R0, SP, #0x48+var_44
966F6:  MOV             R1, R6
966F8:  VSUB.F32        S4, S8, S4
966FC:  VSUB.F32        S6, S10, S6
96700:  VMOV            S8, R2
96704:  VMOV            S10, R3
96708:  VCMP.F32        S4, S8
9670C:  VMRS            APSR_nzcv, FPSCR
96710:  VCMP.F32        S6, S10
96714:  IT LS
96716:  VMOVLS.F32      S4, S8
9671A:  VMRS            APSR_nzcv, FPSCR
9671E:  VCMP.F32        S2, S4
96722:  IT LS
96724:  VMOVLS.F32      S6, S10
96728:  VMRS            APSR_nzcv, FPSCR
9672C:  VCMP.F32        S0, S6
96730:  IT GT
96732:  VMOVGT.F32      S22, S4
96736:  VMRS            APSR_nzcv, FPSCR
9673A:  VCMP.F32        S2, S8
9673E:  IT GT
96740:  VMOVGT.F32      S24, S6
96744:  VMRS            APSR_nzcv, FPSCR
96748:  VCMP.F32        S0, S10
9674C:  IT MI
9674E:  VMOVMI.F32      S22, S8
96752:  VMRS            APSR_nzcv, FPSCR
96756:  IT MI
96758:  VMOVMI.F32      S24, S10
9675C:  VMOV            R2, S22
96760:  VMOV            R3, S24
96764:  VSTR            S22, [R8]
96768:  VSTR            S24, [R8,#4]
9676C:  BL              sub_963FC
96770:  VLDR            S0, [SP,#0x48+var_44]
96774:  VLDR            S2, [R5]
96778:  VSUB.F32        S0, S0, S20
9677C:  LDR             R0, [R6,#8]
9677E:  VCMP.F32        S0, S2
96782:  VMRS            APSR_nzcv, FPSCR
96786:  BPL             loc_967A2
96788:  MOVW            R1, #0x808
9678C:  ANDS            R1, R0
9678E:  CMP.W           R1, #0x800
96792:  BNE             loc_967A2
96794:  MOVS            R1, #1
96796:  B               loc_967A6
96798:  VSTR            S2, [R8]
9679C:  VSTR            S0, [R8,#4]
967A0:  B               loc_967EE
967A2:  UXTH            R1, R0
967A4:  LSRS            R1, R1, #0xF
967A6:  VLDR            S0, [SP,#0x48+var_40]
967AA:  VLDR            S2, [R5,#4]
967AE:  VSUB.F32        S0, S0, S16
967B2:  VSUB.F32        S0, S0, S18
967B6:  VCMP.F32        S0, S2
967BA:  VMRS            APSR_nzcv, FPSCR
967BE:  BPL             loc_967CA
967C0:  ANDS.W          R2, R0, #8
967C4:  BNE             loc_967CA
967C6:  MOVS            R0, #1
967C8:  B               loc_967CE
967CA:  UBFX.W          R0, R0, #0xE, #1
967CE:  CMP             R1, #0
967D0:  ITTT NE
967D2:  VLDRNE          S0, [R4,#0x54]
967D6:  VADDNE.F32      S0, S24, S0
967DA:  VSTRNE          S0, [R8,#4]
967DE:  CMP             R0, #0
967E0:  ITTT NE
967E2:  VLDRNE          S0, [R4,#0x54]
967E6:  VADDNE.F32      S0, S22, S0
967EA:  VSTRNE          S0, [R8]
967EE:  LDR             R0, [SP,#0x48+var_3C]
967F0:  LDR             R1, =(__stack_chk_guard_ptr - 0x967F6)
967F2:  ADD             R1, PC; __stack_chk_guard_ptr
967F4:  LDR             R1, [R1]; __stack_chk_guard
967F6:  LDR             R1, [R1]
967F8:  CMP             R1, R0
967FA:  ITTTT EQ
967FC:  ADDEQ           SP, SP, #0x10
967FE:  VPOPEQ          {D8-D12}
96802:  POPEQ.W         {R8}
96806:  POPEQ           {R4-R7,PC}
96808:  BLX             __stack_chk_fail
