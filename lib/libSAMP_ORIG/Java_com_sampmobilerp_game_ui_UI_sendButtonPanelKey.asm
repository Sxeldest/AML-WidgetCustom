; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_sendButtonPanelKey
; Address            : 0x6A6C4 - 0x6A860
; =========================================================

6A6C4:  PUSH            {R4,R5,R7,LR}
6A6C6:  ADD             R7, SP, #8
6A6C8:  LDR             R1, =(aSampOrig - 0x6A6D4); "SAMP_ORIG" ...
6A6CA:  MOV             R4, R2
6A6CC:  LDR             R2, =(aJavaComSampmob_15 - 0x6A6D8); "Java_com_sampmobilerp_game_ui_UI_sendBu"... ...
6A6CE:  MOVS            R0, #4; prio
6A6D0:  ADD             R1, PC; "SAMP_ORIG"
6A6D2:  MOV             R3, R4
6A6D4:  ADD             R2, PC; "Java_com_sampmobilerp_game_ui_UI_sendBu"...
6A6D6:  BLX             __android_log_print
6A6DA:  SUBS            R0, R4, #1; switch 10 cases
6A6DC:  CMP             R0, #9
6A6DE:  BHI             def_6A6F2; jumptable 0006A6F2 default case
6A6E0:  LDR             R1, =(off_114AB0 - 0x6A6EE)
6A6E2:  MOV             R2, #0x23DEF4
6A6EA:  ADD             R1, PC; off_114AB0
6A6EC:  LDR             R5, [R1]; dword_1A4408
6A6EE:  LDR             R1, [R5]
6A6F0:  LDR             R2, [R1,R2]
6A6F2:  TBB.W           [PC,R0]; switch jump
6A6F6:  DCB 5; jump table for switch statement
6A6F7:  DCB 0x57
6A6F8:  DCB 0x68
6A6F9:  DCB 0x6B
6A6FA:  DCB 0x6E
6A6FB:  DCB 0x71
6A6FC:  DCB 0x7B
6A6FD:  DCB 0x7E
6A6FE:  DCB 0x81
6A6FF:  DCB 0x87
6A700:  LDR.W           R0, [R2,#0x3B0]; jumptable 0006A6F2 case 1
6A704:  LDR             R4, [R0,#0x18]
6A706:  LDR             R0, =(off_114B4C - 0x6A70C)
6A708:  ADD             R0, PC; off_114B4C
6A70A:  LDR             R1, [R0]; dword_1A44CC
6A70C:  LDR             R0, [R1]
6A70E:  CBZ             R0, loc_6A720
6A710:  LDR             R0, =(dword_1A41D8 - 0x6A71C)
6A712:  MOVS            R2, #0
6A714:  STR             R2, [R1]
6A716:  MOVS            R1, #0
6A718:  ADD             R0, PC; dword_1A41D8
6A71A:  LDR             R0, [R0]
6A71C:  BL              sub_6937C
6A720:  CMP             R4, #0
6A722:  BEQ             locret_6A7EA
6A724:  LDR             R0, [R5]
6A726:  MOV             R1, #0x14F47D
6A72E:  MOVS            R2, #0
6A730:  ADDS            R3, R0, R1
6A732:  MOV             R0, R4
6A734:  MOVS            R1, #0
6A736:  BLX             R3
6A738:  POP             {R4,R5,R7,PC}
6A73A:  LDR             R0, =(byte_1A43FC - 0x6A740); jumptable 0006A6F2 default case
6A73C:  ADD             R0, PC; byte_1A43FC
6A73E:  LDRB            R0, [R0]
6A740:  DMB.W           ISH
6A744:  LDR             R4, =(dword_1A43F4 - 0x6A74A)
6A746:  ADD             R4, PC; dword_1A43F4
6A748:  LSLS            R0, R0, #0x1F
6A74A:  BEQ             loc_6A826
6A74C:  LDRB            R0, [R4,#(dword_1A43F8+3 - 0x1A43F4)]
6A74E:  CBZ             R0, loc_6A792
6A750:  LDRB            R1, [R4]
6A752:  EOR.W           R0, R0, #0x5A ; 'Z'
6A756:  STRB            R0, [R4,#(dword_1A43F8+3 - 0x1A43F4)]
6A758:  LDRB            R0, [R4,#(dword_1A43F8 - 0x1A43F4)]
6A75A:  EOR.W           R1, R1, #0x5A ; 'Z'
6A75E:  LDRB            R2, [R4,#(dword_1A43F4+1 - 0x1A43F4)]
6A760:  LDRB            R3, [R4,#(dword_1A43F4+2 - 0x1A43F4)]
6A762:  EOR.W           R0, R0, #0x5A ; 'Z'
6A766:  LDRB.W          R12, [R4,#(dword_1A43F8+1 - 0x1A43F4)]
6A76A:  STRB            R1, [R4]
6A76C:  EOR.W           R1, R2, #0x5A ; 'Z'
6A770:  LDRB            R5, [R4,#(dword_1A43F4+3 - 0x1A43F4)]
6A772:  LDRB.W          LR, [R4,#(dword_1A43F8+2 - 0x1A43F4)]
6A776:  STRB            R1, [R4,#(dword_1A43F4+1 - 0x1A43F4)]
6A778:  EOR.W           R1, R3, #0x5A ; 'Z'
6A77C:  STRB            R0, [R4,#(dword_1A43F8 - 0x1A43F4)]
6A77E:  EOR.W           R0, R12, #0x5A ; 'Z'
6A782:  STRB            R1, [R4,#(dword_1A43F4+2 - 0x1A43F4)]
6A784:  EOR.W           R1, R5, #0x5A ; 'Z'
6A788:  STRB            R0, [R4,#(dword_1A43F8+1 - 0x1A43F4)]
6A78A:  EOR.W           R0, LR, #0x5A ; 'Z'
6A78E:  STRB            R1, [R4,#(dword_1A43F4+3 - 0x1A43F4)]
6A790:  STRB            R0, [R4,#(dword_1A43F8+2 - 0x1A43F4)]
6A792:  LDR             R1, =(aSampOrig - 0x6A79C); "SAMP_ORIG" ...
6A794:  MOVS            R0, #4
6A796:  LDR             R2, =(dword_1A43F4 - 0x6A79E)
6A798:  ADD             R1, PC; "SAMP_ORIG"
6A79A:  ADD             R2, PC; dword_1A43F4
6A79C:  POP.W           {R4,R5,R7,LR}
6A7A0:  B.W             sub_10C158
6A7A4:  BL              sub_6C808; jumptable 0006A6F2 case 2
6A7A8:  CBZ             R0, locret_6A7EA
6A7AA:  LDR             R0, =(off_114B4C - 0x6A7B0)
6A7AC:  ADD             R0, PC; off_114B4C
6A7AE:  LDR             R4, [R0]; dword_1A44CC
6A7B0:  LDR             R0, [R4]
6A7B2:  CBNZ            R0, locret_6A7EA
6A7B4:  LDR             R0, =(dword_1A41D8 - 0x6A7BE)
6A7B6:  MOVS            R1, #1
6A7B8:  MOVS            R5, #1
6A7BA:  ADD             R0, PC; dword_1A41D8
6A7BC:  LDR             R0, [R0]
6A7BE:  BL              sub_6937C
6A7C2:  STR             R5, [R4]
6A7C4:  POP             {R4,R5,R7,PC}
6A7C6:  LDR             R0, =(off_114BB4 - 0x6A7CC); jumptable 0006A6F2 case 3
6A7C8:  ADD             R0, PC; off_114BB4
6A7CA:  B               loc_6A7FC
6A7CC:  LDR             R0, =(off_114BB8 - 0x6A7D2); jumptable 0006A6F2 case 4
6A7CE:  ADD             R0, PC; off_114BB8
6A7D0:  B               loc_6A7FC
6A7D2:  LDR             R0, =(off_114BBC - 0x6A7D8); jumptable 0006A6F2 case 5
6A7D4:  ADD             R0, PC; off_114BBC
6A7D6:  B               loc_6A7FC
6A7D8:  LDR             R0, =(off_114B5C - 0x6A7E2); jumptable 0006A6F2 case 6
6A7DA:  MOVS            R2, #1
6A7DC:  LDR             R1, =(off_114BCC - 0x6A7E4)
6A7DE:  ADD             R0, PC; off_114B5C
6A7E0:  ADD             R1, PC; off_114BCC
6A7E2:  LDR             R0, [R0]; byte_1A3A60
6A7E4:  LDR             R1, [R1]; byte_1A44D3
6A7E6:  STRB            R2, [R0]
6A7E8:  STRB            R2, [R1]
6A7EA:  POP             {R4,R5,R7,PC}
6A7EC:  LDR             R0, =(off_114BC0 - 0x6A7F2); jumptable 0006A6F2 case 7
6A7EE:  ADD             R0, PC; off_114BC0
6A7F0:  B               loc_6A7FC
6A7F2:  LDR             R0, =(off_114BC4 - 0x6A7F8); jumptable 0006A6F2 case 8
6A7F4:  ADD             R0, PC; off_114BC4
6A7F6:  B               loc_6A7FC
6A7F8:  LDR             R0, =(off_114BC8 - 0x6A7FE); jumptable 0006A6F2 case 9
6A7FA:  ADD             R0, PC; off_114BC8
6A7FC:  LDR             R0, [R0]
6A7FE:  MOVS            R1, #1
6A800:  STRB            R1, [R0]
6A802:  POP             {R4,R5,R7,PC}
6A804:  LDR.W           R0, [R2,#0x3B0]; jumptable 0006A6F2 case 10
6A808:  LDR             R0, [R0]
6A80A:  CMP             R0, #0
6A80C:  BEQ             locret_6A7EA
6A80E:  MOVW            R2, #0x13BC
6A812:  LDR             R0, [R0,R2]
6A814:  CMP             R0, #0
6A816:  BEQ             locret_6A7EA
6A818:  MOV             R2, #0x1410CD
6A820:  ADD             R1, R2
6A822:  BLX             R1
6A824:  POP             {R4,R5,R7,PC}
6A826:  LDR             R0, =(byte_1A43FC - 0x6A82C)
6A828:  ADD             R0, PC; byte_1A43FC ; __guard *
6A82A:  BLX             j___cxa_guard_acquire
6A82E:  CMP             R0, #0
6A830:  BEQ.W           loc_6A74C
6A834:  MOVW            R1, #0x1316
6A838:  LDR             R0, =(sub_6AE3E+1 - 0x6A84E)
6A83A:  LDR             R2, =(off_110560 - 0x6A850)
6A83C:  MOVT            R1, #0x5A1E
6A840:  STR             R1, [R4,#(dword_1A43F8 - 0x1A43F4)]
6A842:  MOV             R1, #0x1B0C1413
6A84A:  ADD             R0, PC; sub_6AE3E ; lpfunc
6A84C:  ADD             R2, PC; off_110560 ; lpdso_handle
6A84E:  STR             R1, [R4]
6A850:  MOV             R1, R4; obj
6A852:  BLX             __cxa_atexit
6A856:  LDR             R0, =(byte_1A43FC - 0x6A85C)
6A858:  ADD             R0, PC; byte_1A43FC ; __guard *
6A85A:  BLX             j___cxa_guard_release
6A85E:  B               loc_6A74C
