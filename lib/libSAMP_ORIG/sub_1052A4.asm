; =========================================================
; Game Engine Function: sub_1052A4
; Address            : 0x1052A4 - 0x1052FA
; =========================================================

1052A4:  PUSH            {R4,R6,R7,LR}
1052A6:  ADD             R7, SP, #8
1052A8:  LDR             R0, [R0,#8]
1052AA:  CMP             R0, #5; switch 6 cases
1052AC:  BHI             def_1052B6; jumptable 001052B6 default case
1052AE:  LDR             R3, =(aStdAllocator - 0x1052B4); "std::allocator" ...
1052B0:  ADD             R3, PC; "std::allocator"
1052B2:  ADD.W           R2, R3, #0xE
1052B6:  TBB.W           [PC,R0]; switch jump
1052BA:  DCB 0x1A; jump table for switch statement
1052BB:  DCB 3
1052BC:  DCB 9
1052BD:  DCB 0xE
1052BE:  DCB 0x11
1052BF:  DCB 0x16
1052C0:  LDR             R3, =(aStdBasicString - 0x1052C6); jumptable 001052B6 case 1
1052C2:  ADD             R3, PC; "std::basic_string"
1052C4:  ADD.W           R2, R3, #0x11
1052C8:  B               loc_1052EE; jumptable 001052B6 case 0
1052CA:  POP             {R4,R6,R7,PC}; jumptable 001052B6 default case
1052CC:  LDR             R3, =(aStdBasicString_0 - 0x1052D2); jumptable 001052B6 case 2
1052CE:  ADD             R3, PC; "std::basic_string<char, std::char_trait"...
1052D0:  ADD.W           R2, R3, #0x46 ; 'F'
1052D4:  B               loc_1052EE; jumptable 001052B6 case 0
1052D6:  LDR             R3, =(aStdBasicIstrea - 0x1052DC); jumptable 001052B6 case 3
1052D8:  ADD             R3, PC; "std::basic_istream<char, std::char_trai"...
1052DA:  B               loc_1052E0
1052DC:  LDR             R3, =(aStdBasicOstrea - 0x1052E2); jumptable 001052B6 case 4
1052DE:  ADD             R3, PC; "std::basic_ostream<char, std::char_trai"...
1052E0:  ADD.W           R2, R3, #0x31 ; '1'
1052E4:  B               loc_1052EE; jumptable 001052B6 case 0
1052E6:  LDR             R3, =(aStdBasicIostre - 0x1052EC); jumptable 001052B6 case 5
1052E8:  ADD             R3, PC; "std::basic_iostream<char, std::char_tra"...
1052EA:  ADD.W           R2, R3, #0x32 ; '2'
1052EE:  MOV             R0, R1; jumptable 001052B6 case 0
1052F0:  MOV             R1, R3
1052F2:  POP.W           {R4,R6,R7,LR}
1052F6:  B.W             sub_FFB40
