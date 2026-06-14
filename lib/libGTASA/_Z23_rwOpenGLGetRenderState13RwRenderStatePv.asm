; =========================================================
; Game Engine Function: _Z23_rwOpenGLGetRenderState13RwRenderStatePv
; Address            : 0x1AF7D8 - 0x1AF88C
; =========================================================

1AF7D8:  SUBS            R2, R0, #1; switch 20 cases
1AF7DA:  MOVS            R0, #0
1AF7DC:  CMP             R2, #0x13
1AF7DE:  IT HI
1AF7E0:  BXHI            LR
1AF7E2:  TBB.W           [PC,R2]; switch jump
1AF7E6:  DCB 0xA; jump table for switch statement
1AF7E7:  DCB 0x11
1AF7E8:  DCB 0x52
1AF7E9:  DCB 0x52
1AF7EA:  DCB 0x1F
1AF7EB:  DCB 0x22
1AF7EC:  DCB 0x26
1AF7ED:  DCB 0x2A
1AF7EE:  DCB 0x2E
1AF7EF:  DCB 0x35
1AF7F0:  DCB 0x39
1AF7F1:  DCB 0x3D
1AF7F2:  DCB 0x52
1AF7F3:  DCB 0x41
1AF7F4:  DCB 0x45
1AF7F5:  DCB 0x49
1AF7F6:  DCB 0x52
1AF7F7:  DCB 0x52
1AF7F8:  DCB 0x52
1AF7F9:  DCB 0x4D
1AF7FA:  LDR             R0, =(dword_6B3208 - 0x1AF800); jumptable 001AF7E2 case 1
1AF7FC:  ADD             R0, PC; dword_6B3208
1AF7FE:  LDRB            R2, [R0,#(byte_6B320C - 0x6B3208)]
1AF800:  LDR             R0, [R0,#(dword_6B3210 - 0x6B3208)]
1AF802:  LDR.W           R0, [R0,R2,LSL#2]
1AF806:  B               loc_1AF886
1AF808:  LDR             R0, =(dword_6B3208 - 0x1AF80E); jumptable 001AF7E2 case 2
1AF80A:  ADD             R0, PC; dword_6B3208
1AF80C:  LDRB            R2, [R0,#(byte_6B320C - 0x6B3208)]
1AF80E:  LDRD.W          R3, R0, [R0,#(dword_6B3218 - 0x6B3208)]
1AF812:  LDR.W           R0, [R0,R2,LSL#2]
1AF816:  LDR.W           R2, [R3,R2,LSL#2]
1AF81A:  CMP             R2, R0
1AF81C:  IT NE
1AF81E:  MOVNE           R2, #0
1AF820:  STR             R2, [R1]
1AF822:  B               loc_1AF888
1AF824:  MOVS            R0, #1; jumptable 001AF7E2 case 5
1AF826:  STR             R0, [R1]
1AF828:  BX              LR
1AF82A:  LDR             R0, =(dword_6B3208 - 0x1AF830); jumptable 001AF7E2 case 6
1AF82C:  ADD             R0, PC; dword_6B3208
1AF82E:  LDR             R0, [R0,#(dword_6B3224 - 0x6B3208)]
1AF830:  B               loc_1AF886
1AF832:  LDR             R0, =(dword_6B3208 - 0x1AF838); jumptable 001AF7E2 case 7
1AF834:  ADD             R0, PC; dword_6B3208
1AF836:  LDR             R0, [R0]
1AF838:  B               loc_1AF886
1AF83A:  LDR             R0, =(dword_6B3208 - 0x1AF840); jumptable 001AF7E2 case 8
1AF83C:  ADD             R0, PC; dword_6B3208
1AF83E:  LDR             R0, [R0,#(dword_6B3228 - 0x6B3208)]
1AF840:  B               loc_1AF886
1AF842:  LDR             R0, =(dword_6B3208 - 0x1AF848); jumptable 001AF7E2 case 9
1AF844:  ADD             R0, PC; dword_6B3208
1AF846:  LDRB            R2, [R0,#(byte_6B320C - 0x6B3208)]
1AF848:  LDR             R0, [R0,#(dword_6B3214 - 0x6B3208)]
1AF84A:  LDR.W           R0, [R0,R2,LSL#2]
1AF84E:  B               loc_1AF886
1AF850:  LDR             R0, =(dword_6B3208 - 0x1AF856); jumptable 001AF7E2 case 10
1AF852:  ADD             R0, PC; dword_6B3208
1AF854:  LDR             R0, [R0,#(dword_6B322C - 0x6B3208)]
1AF856:  B               loc_1AF886
1AF858:  LDR             R0, =(dword_6B3208 - 0x1AF85E); jumptable 001AF7E2 case 11
1AF85A:  ADD             R0, PC; dword_6B3208
1AF85C:  LDR             R0, [R0,#(dword_6B3230 - 0x6B3208)]
1AF85E:  B               loc_1AF886
1AF860:  LDR             R0, =(dword_6B3208 - 0x1AF866); jumptable 001AF7E2 case 12
1AF862:  ADD             R0, PC; dword_6B3208
1AF864:  LDR             R0, [R0,#(dword_6B3234 - 0x6B3208)]
1AF866:  B               loc_1AF886
1AF868:  LDR             R0, =(dword_6B3208 - 0x1AF86E); jumptable 001AF7E2 case 14
1AF86A:  ADD             R0, PC; dword_6B3208
1AF86C:  LDR             R0, [R0,#(dword_6B3238 - 0x6B3208)]
1AF86E:  B               loc_1AF886
1AF870:  LDR             R0, =(dword_6B3208 - 0x1AF876); jumptable 001AF7E2 case 15
1AF872:  ADD             R0, PC; dword_6B3208
1AF874:  LDR             R0, [R0,#(dword_6B323C - 0x6B3208)]
1AF876:  B               loc_1AF886
1AF878:  LDR             R0, =(dword_6B3208 - 0x1AF87E); jumptable 001AF7E2 case 16
1AF87A:  ADD             R0, PC; dword_6B3208
1AF87C:  LDR             R0, [R0,#(dword_6B3240 - 0x6B3208)]
1AF87E:  B               loc_1AF886
1AF880:  LDR             R0, =(dword_6B3208 - 0x1AF886); jumptable 001AF7E2 case 20
1AF882:  ADD             R0, PC; dword_6B3208
1AF884:  LDR             R0, [R0,#(dword_6B3274 - 0x6B3208)]
1AF886:  STR             R0, [R1]
1AF888:  MOVS            R0, #1
1AF88A:  BX              LR; jumptable 001AF7E2 cases 3,4,13,17-19
