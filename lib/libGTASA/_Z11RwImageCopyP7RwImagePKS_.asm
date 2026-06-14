; =========================================================
; Game Engine Function: _Z11RwImageCopyP7RwImagePKS_
; Address            : 0x1D95E0 - 0x1D9742
; =========================================================

1D95E0:  PUSH            {R4-R7,LR}
1D95E2:  ADD             R7, SP, #0xC
1D95E4:  PUSH.W          {R8-R11}
1D95E8:  SUB             SP, SP, #0xC
1D95EA:  MOV             R9, R1
1D95EC:  MOV             R10, R0
1D95EE:  LDR.W           R1, [R9,#0xC]
1D95F2:  LDR.W           R6, [R10,#0xC]
1D95F6:  CMP             R6, R1
1D95F8:  BNE             loc_1D9658
1D95FA:  LDR.W           R0, [R10,#0x18]; void *
1D95FE:  CBZ             R0, loc_1D9618
1D9600:  CMP             R6, #8
1D9602:  BGT             loc_1D9618
1D9604:  LDR.W           R1, [R9,#0x18]; void *
1D9608:  CBZ             R1, loc_1D9618
1D960A:  MOVS            R3, #4
1D960C:  LSL.W           R2, R3, R6; size_t
1D9610:  BLX             memcpy_1
1D9614:  LDR.W           R6, [R10,#0xC]
1D9618:  LDR.W           R0, [R10,#8]
1D961C:  CMP             R0, #1
1D961E:  BLT             loc_1D971E
1D9620:  ADDS            R1, R6, #7
1D9622:  LDR.W           R0, [R10,#4]
1D9626:  LDR.W           R6, [R9,#0x14]
1D962A:  MOVS            R5, #0
1D962C:  ASRS            R1, R1, #3
1D962E:  LDR.W           R4, [R10,#0x14]
1D9632:  MUL.W           R8, R1, R0
1D9636:  MOV             R0, R4; void *
1D9638:  MOV             R1, R6; void *
1D963A:  MOV             R2, R8; size_t
1D963C:  BLX             memcpy_1
1D9640:  LDR.W           R1, [R10,#0x10]
1D9644:  ADDS            R5, #1
1D9646:  LDR.W           R2, [R9,#0x10]
1D964A:  LDR.W           R0, [R10,#8]
1D964E:  ADD             R4, R1
1D9650:  ADD             R6, R2
1D9652:  CMP             R5, R0
1D9654:  BLT             loc_1D9636
1D9656:  B               loc_1D971E
1D9658:  MOV             R0, R9
1D965A:  LDRD.W          R2, R11, [R10,#4]; size_t
1D965E:  LDR.W           R8, [R10,#0x14]
1D9662:  ORR.W           R1, R6, R1,LSL#8
1D9666:  LDR.W           R9, [R0,#0x14]
1D966A:  MOVW            R3, #0x807
1D966E:  STR             R0, [SP,#0x28+var_28]
1D9670:  CMP             R1, R3
1D9672:  LDR             R0, [R0,#0x18]
1D9674:  BGT             loc_1D96A6
1D9676:  MOVW            R3, #0x404
1D967A:  CMP             R1, R3
1D967C:  BEQ             loc_1D971A
1D967E:  CMP.W           R1, #0x408
1D9682:  BEQ             loc_1D96F2
1D9684:  CMP.W           R1, #0x420
1D9688:  BEQ             loc_1D96BC
1D968A:  MOVS            R0, #9
1D968C:  MOV.W           R10, #0
1D9690:  MOVT            R0, #0x8000; int
1D9694:  STR.W           R10, [SP,#0x28+var_24]
1D9698:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D969C:  STR             R0, [SP,#0x28+var_20]
1D969E:  ADD             R0, SP, #0x28+var_24
1D96A0:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D96A4:  B               loc_1D971A
1D96A6:  MOVW            R3, #0x808
1D96AA:  CMP             R1, R3
1D96AC:  ITT NE
1D96AE:  MOVWNE          R3, #0x2020
1D96B2:  CMPNE           R1, R3
1D96B4:  BEQ             loc_1D971A
1D96B6:  CMP.W           R1, #0x820
1D96BA:  BNE             loc_1D968A
1D96BC:  CMP.W           R11, #1
1D96C0:  BLT             loc_1D971A
1D96C2:  MOVS            R1, #0
1D96C4:  CMP             R2, #1
1D96C6:  BLT             loc_1D96DE
1D96C8:  MOV             R5, R9
1D96CA:  MOV             R3, R8
1D96CC:  MOV             R4, R2
1D96CE:  LDRB.W          R6, [R5],#1
1D96D2:  SUBS            R4, #1
1D96D4:  LDR.W           R6, [R0,R6,LSL#2]
1D96D8:  STR.W           R6, [R3],#4
1D96DC:  BNE             loc_1D96CE
1D96DE:  LDR             R3, [SP,#0x28+var_28]
1D96E0:  ADDS            R1, #1
1D96E2:  LDR.W           R6, [R10,#0x10]
1D96E6:  CMP             R1, R11
1D96E8:  LDR             R3, [R3,#0x10]
1D96EA:  ADD             R8, R6
1D96EC:  ADD             R9, R3
1D96EE:  BNE             loc_1D96C4
1D96F0:  B               loc_1D971A
1D96F2:  CMP.W           R11, #1
1D96F6:  BLT             loc_1D971A
1D96F8:  LDR             R5, [SP,#0x28+var_28]
1D96FA:  MOV             R0, R8; void *
1D96FC:  MOV             R1, R9; void *
1D96FE:  MOV             R4, R2
1D9700:  BLX             memcpy_1
1D9704:  LDR.W           R0, [R10,#0x10]
1D9708:  SUBS.W          R11, R11, #1
1D970C:  LDR             R1, [R5,#0x10]
1D970E:  MOV             R2, R4
1D9710:  ADD             R8, R0
1D9712:  ADD             R9, R1
1D9714:  BNE             loc_1D96FA
1D9716:  MOV             R9, R5
1D9718:  B               loc_1D971E
1D971A:  LDR.W           R9, [SP,#0x28+var_28]
1D971E:  LDR.W           R0, [R10]
1D9722:  BIC.W           R1, R0, #2
1D9726:  STR.W           R1, [R10]
1D972A:  LDR.W           R1, [R9]
1D972E:  LSRS            R1, R1, #1
1D9730:  BFI.W           R0, R1, #1, #1
1D9734:  STR.W           R0, [R10]
1D9738:  MOV             R0, R10
1D973A:  ADD             SP, SP, #0xC
1D973C:  POP.W           {R8-R11}
1D9740:  POP             {R4-R7,PC}
