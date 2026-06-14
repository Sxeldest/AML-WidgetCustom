; =========================================================
; Game Engine Function: sub_21C6FC
; Address            : 0x21C6FC - 0x21C752
; =========================================================

21C6FC:  PUSH            {R4,R6,R7,LR}
21C6FE:  ADD             R7, SP, #8
21C700:  LDR             R0, [R0,#8]
21C702:  CMP             R0, #5; switch 6 cases
21C704:  BHI             def_21C70E; jumptable 0021C70E default case
21C706:  LDR             R3, =(aStdAllocator - 0x21C70C); "std::allocator" ...
21C708:  ADD             R3, PC; "std::allocator"
21C70A:  ADD.W           R2, R3, #0xE
21C70E:  TBB.W           [PC,R0]; switch jump
21C712:  DCB 0x1A; jump table for switch statement
21C713:  DCB 3
21C714:  DCB 9
21C715:  DCB 0xE
21C716:  DCB 0x11
21C717:  DCB 0x16
21C718:  LDR             R3, =(aStdBasicString - 0x21C71E); jumptable 0021C70E case 1
21C71A:  ADD             R3, PC; "std::basic_string"
21C71C:  ADD.W           R2, R3, #0x11
21C720:  B               loc_21C746; jumptable 0021C70E case 0
21C722:  POP             {R4,R6,R7,PC}; jumptable 0021C70E default case
21C724:  LDR             R3, =(aStdBasicString_0 - 0x21C72A); jumptable 0021C70E case 2
21C726:  ADD             R3, PC; "std::basic_string<char, std::char_trait"...
21C728:  ADD.W           R2, R3, #0x46 ; 'F'
21C72C:  B               loc_21C746; jumptable 0021C70E case 0
21C72E:  LDR             R3, =(aStdBasicIstrea - 0x21C734); jumptable 0021C70E case 3
21C730:  ADD             R3, PC; "std::basic_istream<char, std::char_trai"...
21C732:  B               loc_21C738
21C734:  LDR             R3, =(aStdBasicOstrea - 0x21C73A); jumptable 0021C70E case 4
21C736:  ADD             R3, PC; "std::basic_ostream<char, std::char_trai"...
21C738:  ADD.W           R2, R3, #0x31 ; '1'
21C73C:  B               loc_21C746; jumptable 0021C70E case 0
21C73E:  LDR             R3, =(aStdBasicIostre - 0x21C744); jumptable 0021C70E case 5
21C740:  ADD             R3, PC; "std::basic_iostream<char, std::char_tra"...
21C742:  ADD.W           R2, R3, #0x32 ; '2'
21C746:  MOV             R0, R1; jumptable 0021C70E case 0
21C748:  MOV             R1, R3
21C74A:  POP.W           {R4,R6,R7,LR}
21C74E:  B.W             sub_216F98
