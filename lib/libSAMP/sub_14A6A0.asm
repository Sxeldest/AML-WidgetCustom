; =========================================================
; Game Engine Function: sub_14A6A0
; Address            : 0x14A6A0 - 0x14A8A6
; =========================================================

14A6A0:  PUSH            {R4-R7,LR}
14A6A2:  ADD             R7, SP, #0xC
14A6A4:  PUSH.W          {R8-R11}
14A6A8:  SUB             SP, SP, #0xC
14A6AA:  MOV             R4, R0
14A6AC:  MOVS            R0, #0
14A6AE:  STR             R0, [R4,#4]
14A6B0:  ADD.W           R6, R1, #0x12
14A6B4:  VLD1.8          {D16-D17}, [R6]
14A6B8:  MOV             R5, R1
14A6BA:  MOV             R8, R2
14A6BC:  VCEQ.F32        Q8, Q8, #0.0
14A6C0:  VMVN            Q8, Q8
14A6C4:  VMOVN.I32       D16, Q8
14A6C8:  VMOV.U16        R0, D16[1]
14A6CC:  VMOV.U16        R1, D16[0]
14A6D0:  VMOV.U16        R2, D16[2]
14A6D4:  VMOV.U16        R3, D16[3]
14A6D8:  AND.W           R0, R0, #1
14A6DC:  AND.W           R1, R1, #1
14A6E0:  ORR.W           R0, R1, R0,LSL#1
14A6E4:  AND.W           R1, R2, #1
14A6E8:  ORR.W           R0, R0, R1,LSL#2
14A6EC:  ORR.W           R0, R0, R3,LSL#3
14A6F0:  LSLS            R0, R0, #0x1C
14A6F2:  BEQ.W           loc_14A874
14A6F6:  MOV             R9, R4
14A6F8:  LDRH            R1, [R5]
14A6FA:  LDRH.W          R0, [R9,#0x74]!
14A6FE:  LDRB.W          R11, [R9,#0xA8]
14A702:  CMP             R1, R0
14A704:  BNE             loc_14A7BE
14A706:  LDRH.W          R0, [R4,#0x76]
14A70A:  LDRH            R1, [R5,#2]
14A70C:  CMP             R1, R0
14A70E:  BNE             loc_14A7BE
14A710:  LDRH.W          R0, [R4,#0x78]
14A714:  LDRH            R1, [R5,#4]
14A716:  CMP             R1, R0
14A718:  BNE             loc_14A7BE
14A71A:  LDRH.W          R0, [R4,#0xB2]
14A71E:  LDRH            R1, [R5,#0x3E]
14A720:  CMP             R1, R0
14A722:  BNE             loc_14A7BE
14A724:  LDR.W           R0, [R4,#0x110]
14A728:  LDR             R1, [R5,#0x40]
14A72A:  CMP             R1, R0
14A72C:  BNE             loc_14A7BE
14A72E:  LDRB.W          R0, [R4,#0x99]
14A732:  LDRB.W          R1, [R5,#0x25]
14A736:  CMP             R1, R0
14A738:  BNE             loc_14A7BA
14A73A:  LDRB.W          R0, [R4,#0x96]
14A73E:  LDRB.W          R1, [R5,#0x22]
14A742:  CMP             R1, R0
14A744:  BNE             loc_14A7BA
14A746:  LDRB.W          R0, [R4,#0x97]
14A74A:  LDRB.W          R1, [R5,#0x23]
14A74E:  CMP             R1, R0
14A750:  BNE             loc_14A7BA
14A752:  LDRB.W          R0, [R4,#0x98]
14A756:  LDRB.W          R1, [R5,#0x24]
14A75A:  SUBS            R2, R1, R0
14A75C:  IT NE
14A75E:  MOVNE           R2, #1
14A760:  CMP             R1, R0
14A762:  STRB.W          R2, [R4,#0x11C]
14A766:  BNE             loc_14A7BA
14A768:  ADDS            R0, R5, #6; s1
14A76A:  ADD.W           R1, R4, #0x7A ; 'z'; s2
14A76E:  MOVS            R2, #0xC; n
14A770:  BLX             memcmp
14A774:  CMP             R0, #0
14A776:  IT NE
14A778:  MOVNE           R0, #1
14A77A:  STRB.W          R0, [R4,#0x11C]
14A77E:  BNE             loc_14A7BA
14A780:  ADD.W           R1, R4, #0x86; s2
14A784:  MOV             R0, R6; s1
14A786:  MOVS            R2, #0x10; n
14A788:  BLX             memcmp
14A78C:  CMP             R0, #0
14A78E:  IT NE
14A790:  MOVNE           R0, #1
14A792:  STRB.W          R0, [R4,#0x11C]
14A796:  BNE             loc_14A7BA
14A798:  ADD.W           R6, R5, #0x32 ; '2'
14A79C:  ADD.W           R10, R4, #0xA6
14A7A0:  MOVS            R2, #0xC; n
14A7A2:  MOV             R0, R6; s1
14A7A4:  MOV             R1, R10; s2
14A7A6:  BLX             memcmp
14A7AA:  CMP             R0, #0
14A7AC:  MOV             R1, R0
14A7AE:  IT NE
14A7B0:  MOVNE           R1, #1
14A7B2:  CMP             R0, #0
14A7B4:  STRB.W          R1, [R4,#0x11C]
14A7B8:  BEQ             loc_14A894
14A7BA:  MOVS            R0, #1
14A7BC:  B               loc_14A7C4
14A7BE:  MOVS            R0, #1
14A7C0:  STRB.W          R0, [R4,#0x11C]
14A7C4:  LDR.W           R1, [R4,#0x128]
14A7C8:  STRB.W          R0, [R4,#0x11C]
14A7CC:  CBZ             R1, loc_14A7F8
14A7CE:  LDR             R1, [R1,#0x5C]
14A7D0:  CBZ             R1, loc_14A7F8
14A7D2:  CLZ.W           R2, R11
14A7D6:  LSRS            R2, R2, #5
14A7D8:  ORRS            R2, R0
14A7DA:  ITT EQ
14A7DC:  LDREQ.W         R2, [R1,#0x484]
14A7E0:  STREQ.W         R2, [R4,#0x118]
14A7E4:  CMP.W           R11, #0
14A7E8:  BNE             loc_14A7F8
14A7EA:  EORS.W          R0, R0, #1
14A7EE:  ITT NE
14A7F0:  LDRNE.W         R0, [R4,#0x118]
14A7F4:  STRNE.W         R0, [R1,#0x484]
14A7F8:  LDR             R0, [R5,#0x40]
14A7FA:  MOV             R1, R5; src
14A7FC:  STR.W           R0, [R4,#0x110]
14A800:  MOV             R0, R9; dest
14A802:  MOVS            R2, #0x44 ; 'D'; n
14A804:  STR.W           R8, [R4,#0x124]
14A808:  BLX             j_memcpy
14A80C:  LDRB.W          R0, [R5,#0x22]
14A810:  LDRB.W          R1, [R5,#0x23]
14A814:  VMOV            S0, R0
14A818:  MOVS            R0, #0x10
14A81A:  VMOV            S2, R1
14A81E:  STRB            R0, [R4,#0x1A]
14A820:  VCVT.F32.U32    S0, S0
14A824:  VCVT.F32.U32    S2, S2
14A828:  VSTR            S0, [R4,#8]
14A82C:  VSTR            S2, [R4,#0xC]
14A830:  BL              sub_F0B30
14A834:  LDR.W           R1, [R4,#0xB4]
14A838:  LDRB.W          R2, [R5,#0x25]
14A83C:  STR.W           R0, [R4,#0x120]
14A840:  CMP.W           R1, #0xFFFFFFFF
14A844:  STRB            R2, [R4,#0x1B]
14A846:  ITT LE
14A848:  MOVLE           R0, #0
14A84A:  STRLE.W         R0, [R4,#0xB4]
14A84E:  LDR.W           R0, [R4,#0x128]
14A852:  CBZ             R0, loc_14A868
14A854:  BL              sub_104108
14A858:  CBZ             R0, loc_14A868
14A85A:  LDRB            R0, [R4,#0x1B]
14A85C:  SUBS            R0, #3
14A85E:  CMP             R0, #2
14A860:  ITT CS
14A862:  MOVCS           R0, R4
14A864:  BLCS            sub_14A8B4
14A868:  LDRB            R0, [R4,#0x19]
14A86A:  CMP             R0, #0x11
14A86C:  ITT NE
14A86E:  MOVNE           R0, #0x11
14A870:  STRBNE          R0, [R4,#0x19]
14A872:  B               loc_14A88C
14A874:  LDR             R1, =(aAxl - 0x14A882); "AXL" ...
14A876:  MOV.W           R0, #0x260
14A87A:  LDR             R2, =(aBadCquaternion - 0x14A884); "Bad CQuaternion: File: %s - Line: %i" ...
14A87C:  LDR             R3, =(aRemoteplayerCp - 0x14A888); "remoteplayer.cpp" ...
14A87E:  ADD             R1, PC; "AXL"
14A880:  ADD             R2, PC; "Bad CQuaternion: File: %s - Line: %i"
14A882:  STR             R0, [SP,#0x28+var_28]
14A884:  ADD             R3, PC; "remoteplayer.cpp"
14A886:  MOVS            R0, #4; prio
14A888:  BLX             __android_log_print
14A88C:  ADD             SP, SP, #0xC
14A88E:  POP.W           {R8-R11}
14A892:  POP             {R4-R7,PC}
14A894:  MOV             R0, R6; s1
14A896:  MOV             R1, R10; s2
14A898:  MOVS            R2, #0xC; n
14A89A:  BLX             memcmp
14A89E:  CMP             R0, #0
14A8A0:  IT NE
14A8A2:  MOVNE           R0, #1
14A8A4:  B               loc_14A7C4
