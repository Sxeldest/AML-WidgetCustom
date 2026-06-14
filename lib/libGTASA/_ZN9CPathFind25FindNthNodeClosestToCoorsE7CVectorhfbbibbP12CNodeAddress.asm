; =========================================================
; Game Engine Function: _ZN9CPathFind25FindNthNodeClosestToCoorsE7CVectorhfbbibbP12CNodeAddress
; Address            : 0x3176B8 - 0x3177FC
; =========================================================

3176B8:  PUSH            {R4-R7,LR}
3176BA:  ADD             R7, SP, #0xC
3176BC:  PUSH.W          {R8-R11}
3176C0:  SUB             SP, SP, #4
3176C2:  VPUSH           {D8}
3176C6:  SUB             SP, SP, #0x28
3176C8:  LDR.W           R9, [R7,#arg_0]
3176CC:  MOV             R8, R0
3176CE:  VLDR            S16, [R7,#arg_4]
3176D2:  MOVW            R10, #0x1104
3176D6:  STR             R2, [SP,#0x50+var_2C]
3176D8:  STRD.W          R3, R1, [SP,#0x50+var_34]
3176DC:  MOVS            R1, #0
3176DE:  ADD.W           R2, R8, R1,LSL#2
3176E2:  LDR.W           R6, [R2,#0x804]
3176E6:  CBZ             R6, loc_317752
3176E8:  CMP.W           R9, #1
3176EC:  BEQ             loc_3176FC
3176EE:  CMP.W           R9, #0
3176F2:  BNE             loc_317708
3176F4:  ADD.W           R3, R2, R10
3176F8:  MOVS            R0, #0
3176FA:  B               loc_317704
3176FC:  LDR.W           R0, [R2,R10]
317700:  ADDW            R3, R2, #0xFE4
317704:  LDR.W           R11, [R3]
317708:  CMP             R0, R11
31770A:  BGE             loc_317752
31770C:  RSB.W           R5, R0, R0,LSL#3
317710:  ADD.W           R6, R6, R5,LSL#2
317714:  LDRH.W          R4, [R6,#0x18]!
317718:  BIC.W           R4, R4, #0x200
31771C:  STRH            R4, [R6]
31771E:  ADDS            R4, R0, #1
317720:  CMP             R4, R11
317722:  BEQ             loc_317752
317724:  SUB.W           R4, R11, #1
317728:  MOVS            R3, #0x34 ; '4'
31772A:  ADDW            R2, R2, #0x804
31772E:  SUBS            R6, R4, R0
317730:  ADD.W           R5, R3, R5,LSL#2
317734:  LDR             R4, [R2]
317736:  SUBS            R6, #1
317738:  ADD.W           R12, R4, R5
31773C:  LDRH            R3, [R4,R5]
31773E:  LDRB.W          LR, [R12,#2]
317742:  BIC.W           R3, R3, #0x200
317746:  STRH            R3, [R4,R5]
317748:  ADD.W           R5, R5, #0x1C
31774C:  STRB.W          LR, [R12,#2]
317750:  BNE             loc_317734
317752:  ADDS            R1, #1
317754:  CMP             R1, #0x48 ; 'H'
317756:  BNE             loc_3176DE
317758:  LDR             R0, [R7,#arg_10]
31775A:  LDR             R6, [SP,#0x50+var_34]
31775C:  CMP             R0, #1
31775E:  BLT             loc_3177C8
317760:  ADD.W           R11, R0, #1
317764:  MOVS            R5, #1
317766:  MOVS            R4, #0
317768:  MOVW            R10, #0xFFFF
31776C:  LDR             R0, [R7,#arg_8]
31776E:  ADD             R1, SP, #0x50+var_48
317770:  MOV             R3, R6
317772:  STM             R1!, {R0,R4,R5}
317774:  LDR             R0, [R7,#arg_14]
317776:  STR             R0, [SP,#0x50+var_3C]
317778:  LDR             R0, [R7,#arg_18]
31777A:  STR             R0, [SP,#0x50+var_38]
31777C:  MOV             R0, R8
31777E:  VSTR            S16, [SP,#0x50+var_4C]
317782:  STR.W           R9, [SP,#0x50+var_50]
317786:  LDRD.W          R1, R2, [SP,#0x50+var_30]
31778A:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
31778E:  LDR             R1, [R7,#arg_1C]
317790:  CMP             R1, #0
317792:  IT NE
317794:  STRNE           R0, [R1]
317796:  UXTH            R1, R0
317798:  CMP             R1, R10
31779A:  BEQ             loc_3177EE
31779C:  ADD.W           R1, R8, R1,LSL#2
3177A0:  LSRS            R2, R0, #0x10
3177A2:  LSLS            R2, R2, #3
3177A4:  SUB.W           R0, R2, R0,LSR#16
3177A8:  LDR.W           R1, [R1,#0x804]
3177AC:  SUB.W           R11, R11, #1
3177B0:  CMP.W           R11, #1
3177B4:  ADD.W           R0, R1, R0,LSL#2
3177B8:  LDRH.W          R1, [R0,#0x18]!
3177BC:  LDRB            R2, [R0,#2]
3177BE:  ORR.W           R1, R1, #0x200
3177C2:  STRH            R1, [R0]
3177C4:  STRB            R2, [R0,#2]
3177C6:  BGT             loc_31776C
3177C8:  MOVS            R0, #0
3177CA:  LDR             R2, [R7,#arg_8]
3177CC:  MOVS            R1, #1
3177CE:  STRD.W          R2, R0, [SP,#0x50+var_48]
3177D2:  STR             R1, [SP,#0x50+var_40]
3177D4:  MOV             R3, R6
3177D6:  LDR             R1, [R7,#arg_14]
3177D8:  STRD.W          R1, R0, [SP,#0x50+var_3C]
3177DC:  MOV             R0, R8
3177DE:  VSTR            S16, [SP,#0x50+var_4C]
3177E2:  STR.W           R9, [SP,#0x50+var_50]
3177E6:  LDRD.W          R1, R2, [SP,#0x50+var_30]
3177EA:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
3177EE:  ADD             SP, SP, #0x28 ; '('
3177F0:  VPOP            {D8}
3177F4:  ADD             SP, SP, #4
3177F6:  POP.W           {R8-R11}
3177FA:  POP             {R4-R7,PC}
