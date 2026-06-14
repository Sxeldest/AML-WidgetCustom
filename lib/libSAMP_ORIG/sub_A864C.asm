; =========================================================
; Game Engine Function: sub_A864C
; Address            : 0xA864C - 0xA87C6
; =========================================================

A864C:  PUSH            {R4-R7,LR}
A864E:  ADD             R7, SP, #0xC
A8650:  PUSH.W          {R8-R11}
A8654:  SUB             SP, SP, #0x64
A8656:  MOV             R6, R0
A8658:  LDR             R0, =(off_114D5C - 0xA8662)
A865A:  MOV             R11, R3
A865C:  MOV             R5, R2
A865E:  ADD             R0, PC; off_114D5C
A8660:  MOV             R10, R1
A8662:  LDR             R4, [R7,#arg_4]
A8664:  LDR             R0, [R0]; dword_1ACF68
A8666:  LDR.W           R8, [R0]
A866A:  LDR             R0, =(__stack_chk_guard_ptr - 0xA8670)
A866C:  ADD             R0, PC; __stack_chk_guard_ptr
A866E:  LDR             R0, [R0]; __stack_chk_guard
A8670:  LDR             R0, [R0]
A8672:  STR             R0, [SP,#0x80+var_20]
A8674:  MOVW            R0, #0x2CA8
A8678:  LDR.W           R9, [R8,R0]
A867C:  MOVW            R0, #0x19AC
A8680:  ADD             R0, R8
A8682:  STR             R0, [SP,#0x80+var_6C]
A8684:  CMP             R9, R1
A8686:  IT NE
A8688:  BLNE            sub_8B080
A868C:  LDRB            R0, [R4]
A868E:  LDR             R3, [R7,#arg_0]
A8690:  STR             R5, [SP,#0x80+var_70]
A8692:  CBZ             R0, loc_A870C
A8694:  MOV             R1, R4
A8696:  B               loc_A86A4
A8698:  CMP             R0, #0x25 ; '%'
A869A:  IT EQ
A869C:  ADDEQ           R1, #1
A869E:  LDRB.W          R0, [R1,#1]!
A86A2:  CBZ             R0, loc_A870C
A86A4:  CMP             R0, #0x25 ; '%'
A86A6:  BNE             loc_A8698
A86A8:  LDRB            R2, [R1,#1]
A86AA:  CMP             R2, #0x25 ; '%'
A86AC:  BEQ             loc_A8698
A86AE:  MOVW            R12, #0xA80
A86B2:  MOVS            R4, #0x25 ; '%'
A86B4:  MOVS            R2, #1
A86B6:  MOVT            R12, #0x248
A86BA:  MOVS            R0, #1
A86BC:  B               loc_A86D2
A86BE:  SUB.W           R5, R4, #0x41 ; 'A'
A86C2:  LSL.W           R5, R2, R5
A86C6:  TST.W           R5, #0x900
A86CA:  BEQ             loc_A86F0
A86CC:  LDRB            R4, [R1,R0]
A86CE:  ADDS            R0, #1
A86D0:  CBZ             R4, loc_A870A
A86D2:  SUB.W           R5, R4, #0x41 ; 'A'
A86D6:  CMP             R5, #0x19
A86D8:  BLS             loc_A86BE
A86DA:  SUB.W           R5, R4, #0x61 ; 'a'
A86DE:  CMP             R5, #0x19
A86E0:  BHI             loc_A86CC
A86E2:  SUB.W           R5, R4, #0x61 ; 'a'
A86E6:  LSL.W           R5, R2, R5
A86EA:  TST.W           R5, R12
A86EE:  BNE             loc_A86CC
A86F0:  LDRB            R2, [R1,R0]
A86F2:  CBZ             R2, loc_A870A
A86F4:  ADD             R4, SP, #0x80+var_40
A86F6:  ADDS            R2, R0, #1
A86F8:  CMP             R2, #0x20 ; ' '
A86FA:  IT CS
A86FC:  MOVCS           R2, #0x20 ; ' '
A86FE:  MOV             R0, R4
A8700:  MOV             R5, R3
A8702:  BL              sub_885C0
A8706:  MOV             R3, R5
A8708:  B               loc_A870C
A870A:  MOV             R4, R1
A870C:  STR             R4, [SP,#0x80+var_80]
A870E:  ADD             R4, SP, #0x80+var_60
A8710:  MOVS            R1, #0x20 ; ' '
A8712:  MOV             R2, R11
A8714:  MOV             R0, R4
A8716:  MOV             R5, R3
A8718:  BL              sub_A819C
A871C:  MOV             R0, R4; dest
A871E:  BL              sub_8865A
A8722:  LDR             R0, [SP,#0x80+var_6C]
A8724:  MOVS            R3, #0x20 ; ' '
A8726:  LDRD.W          R1, R2, [R6]
A872A:  LDR             R0, [R0]
A872C:  STRD.W          R1, R2, [R0,#0xC8]
A8730:  MOVS            R2, #0x11
A8732:  VLDR            S0, [R6]
A8736:  BIC.W           R0, R11, #1
A873A:  VLDR            S4, [R6,#8]
A873E:  CMP             R0, #8
A8740:  VLDR            S2, [R6,#4]
A8744:  MOVT            R2, #0x20 ; ' '
A8748:  VLDR            S6, [R6,#0xC]
A874C:  VSUB.F32        S0, S4, S0
A8750:  ADD             R0, SP, #0x80+var_68
A8752:  ITT EQ
A8754:  MOVEQ           R2, #0x10
A8756:  MOVTEQ          R2, #0x22 ; '"'
A875A:  VSUB.F32        S2, S6, S2
A875E:  STRD.W          R0, R2, [SP,#0x80+var_80]
A8762:  LDR             R0, [SP,#0x80+var_70]
A8764:  MOVS            R1, #0
A8766:  STRD.W          R1, R1, [SP,#0x80+var_78]
A876A:  MOVS            R1, #0
A876C:  MOV             R2, R4
A876E:  VSTR            S0, [SP,#0x80+var_68]
A8772:  VSTR            S2, [SP,#0x80+var_64]
A8776:  BL              sub_AB8BC
A877A:  CMP             R9, R10
A877C:  BEQ             loc_A878A
A877E:  LDR             R2, [SP,#0x80+var_6C]
A8780:  MOVW            R1, #0x2CA8
A8784:  ADD             R1, R8
A8786:  LDR             R2, [R2,#0x24]
A8788:  STR             R2, [R1]
A878A:  MOVS            R4, #0
A878C:  CBZ             R0, loc_A87AA
A878E:  LDR             R0, [SP,#0x80+var_6C]
A8790:  MOV             R2, R11
A8792:  MOV             R3, R5
A8794:  LDR.W           R1, [R0,#0x45C]
A8798:  ADD             R0, SP, #0x80+var_60
A879A:  STR             R4, [SP,#0x80+var_80]
A879C:  BL              sub_A8214
A87A0:  CBZ             R0, loc_A87AA
A87A2:  MOV             R0, R10
A87A4:  BL              sub_8B0DC
A87A8:  MOVS            R4, #1
A87AA:  LDR             R0, [SP,#0x80+var_20]
A87AC:  LDR             R1, =(__stack_chk_guard_ptr - 0xA87B2)
A87AE:  ADD             R1, PC; __stack_chk_guard_ptr
A87B0:  LDR             R1, [R1]; __stack_chk_guard
A87B2:  LDR             R1, [R1]
A87B4:  CMP             R1, R0
A87B6:  ITTTT EQ
A87B8:  MOVEQ           R0, R4
A87BA:  ADDEQ           SP, SP, #0x64 ; 'd'
A87BC:  POPEQ.W         {R8-R11}
A87C0:  POPEQ           {R4-R7,PC}
A87C2:  BLX             __stack_chk_fail
