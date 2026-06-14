; =========================================================
; Game Engine Function: sub_10555C
; Address            : 0x10555C - 0x1055B2
; =========================================================

10555C:  PUSH            {R4,R6,R7,LR}
10555E:  ADD             R7, SP, #8
105560:  LDR             R0, [R0,#8]
105562:  CMP             R0, #5; switch 6 cases
105564:  BHI             def_10556E; jumptable 0010556E default case
105566:  LDR             R3, =(aStdAllocator - 0x10556C); "std::allocator" ...
105568:  ADD             R3, PC; "std::allocator"
10556A:  ADD.W           R2, R3, #0xE
10556E:  TBB.W           [PC,R0]; switch jump
105572:  DCB 0x1A; jump table for switch statement
105573:  DCB 3
105574:  DCB 9
105575:  DCB 0xE
105576:  DCB 0x11
105577:  DCB 0x16
105578:  LDR             R3, =(aStdBasicString - 0x10557E); jumptable 0010556E case 1
10557A:  ADD             R3, PC; "std::basic_string"
10557C:  ADD.W           R2, R3, #0x11
105580:  B               loc_1055A6; jumptable 0010556E case 0
105582:  POP             {R4,R6,R7,PC}; jumptable 0010556E default case
105584:  LDR             R3, =(aStdString - 0x10558A); jumptable 0010556E case 2
105586:  ADD             R3, PC; "std::string"
105588:  ADD.W           R2, R3, #0xB
10558C:  B               loc_1055A6; jumptable 0010556E case 0
10558E:  LDR             R3, =(aStdIstream - 0x105594); jumptable 0010556E case 3
105590:  ADD             R3, PC; "std::istream"
105592:  B               loc_105598
105594:  LDR             R3, =(aStdOstream - 0x10559A); jumptable 0010556E case 4
105596:  ADD             R3, PC; "std::ostream"
105598:  ADD.W           R2, R3, #0xC
10559C:  B               loc_1055A6; jumptable 0010556E case 0
10559E:  LDR             R3, =(aStdIostream - 0x1055A4); jumptable 0010556E case 5
1055A0:  ADD             R3, PC; "std::iostream"
1055A2:  ADD.W           R2, R3, #0xD
1055A6:  MOV             R0, R1; jumptable 0010556E case 0
1055A8:  MOV             R1, R3
1055AA:  POP.W           {R4,R6,R7,LR}
1055AE:  B.W             sub_FFB40
