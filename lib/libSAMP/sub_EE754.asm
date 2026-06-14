; =========================================================
; Game Engine Function: sub_EE754
; Address            : 0xEE754 - 0xEE8EE
; =========================================================

EE754:  PUSH            {R4-R7,LR}
EE756:  ADD             R7, SP, #0xC
EE758:  PUSH.W          {R8}
EE75C:  CMP             R0, R1
EE75E:  BEQ.W           loc_EE866
EE762:  MOVW            R8, #1
EE766:  MOVW            LR, #0xE823
EE76A:  MOVS            R3, #1
EE76C:  MOVT            R8, #0x60 ; '`'
EE770:  MOVW            R12, #0x1501
EE774:  MOVT            LR, #0x3000
EE778:  MOV             R5, R0
EE77A:  LDRB            R0, [R0]
EE77C:  CMP             R0, #0x25 ; '%'
EE77E:  BEQ             loc_EE78A
EE780:  CMP             R0, #0x7D ; '}'
EE782:  BEQ.W           loc_EE864
EE786:  ADDS            R0, R5, #1
EE788:  B               loc_EE7FA; jumptable 000EE7A0 cases 37,65-68,70-73,77,82-90,97-101,103,104,106,109,110,112,114,116,117,119-122
EE78A:  ADDS            R0, R5, #1
EE78C:  CMP             R0, R1
EE78E:  BEQ.W           loc_EE86C
EE792:  LDRB            R0, [R5,#1]
EE794:  SUB.W           R6, R0, #0x25 ; '%'; switch 86 cases
EE798:  CMP             R6, #0x55 ; 'U'
EE79A:  BHI.W           def_EE7A0; jumptable 000EE7A0 default case, cases 38-64,74-76,78,80,91-96,102,105,107,108,111,115,118
EE79E:  ADDS            R0, R5, #2
EE7A0:  TBB.W           [PC,R6]; switch jump
EE7A4:  DCB 0x2B; jump table for switch statement
EE7A5:  DCB 0x78
EE7A6:  DCB 0x78
EE7A7:  DCB 0x78
EE7A8:  DCB 0x78
EE7A9:  DCB 0x78
EE7AA:  DCB 0x78
EE7AB:  DCB 0x78
EE7AC:  DCB 0x78
EE7AD:  DCB 0x78
EE7AE:  DCB 0x78
EE7AF:  DCB 0x78
EE7B0:  DCB 0x78
EE7B1:  DCB 0x78
EE7B2:  DCB 0x78
EE7B3:  DCB 0x78
EE7B4:  DCB 0x78
EE7B5:  DCB 0x78
EE7B6:  DCB 0x78
EE7B7:  DCB 0x78
EE7B8:  DCB 0x78
EE7B9:  DCB 0x78
EE7BA:  DCB 0x78
EE7BB:  DCB 0x78
EE7BC:  DCB 0x78
EE7BD:  DCB 0x78
EE7BE:  DCB 0x78
EE7BF:  DCB 0x78
EE7C0:  DCB 0x2B
EE7C1:  DCB 0x2B
EE7C2:  DCB 0x2B
EE7C3:  DCB 0x2B
EE7C4:  DCB 0x46
EE7C5:  DCB 0x2B
EE7C6:  DCB 0x2B
EE7C7:  DCB 0x2B
EE7C8:  DCB 0x2B
EE7C9:  DCB 0x78
EE7CA:  DCB 0x78
EE7CB:  DCB 0x78
EE7CC:  DCB 0x2B
EE7CD:  DCB 0x78
EE7CE:  DCB 0x2F
EE7CF:  DCB 0x78
EE7D0:  DCB 0x75
EE7D1:  DCB 0x2B
EE7D2:  DCB 0x2B
EE7D3:  DCB 0x2B
EE7D4:  DCB 0x2B
EE7D5:  DCB 0x2B
EE7D6:  DCB 0x2B
EE7D7:  DCB 0x2B
EE7D8:  DCB 0x2B
EE7D9:  DCB 0x2B
EE7DA:  DCB 0x78
EE7DB:  DCB 0x78
EE7DC:  DCB 0x78
EE7DD:  DCB 0x78
EE7DE:  DCB 0x78
EE7DF:  DCB 0x78
EE7E0:  DCB 0x2B
EE7E1:  DCB 0x2B
EE7E2:  DCB 0x2B
EE7E3:  DCB 0x2B
EE7E4:  DCB 0x2B
EE7E5:  DCB 0x78
EE7E6:  DCB 0x2B
EE7E7:  DCB 0x2B
EE7E8:  DCB 0x78
EE7E9:  DCB 0x2B
EE7EA:  DCB 0x78
EE7EB:  DCB 0x78
EE7EC:  DCB 0x2B
EE7ED:  DCB 0x2B
EE7EE:  DCB 0x78
EE7EF:  DCB 0x2B
EE7F0:  DCB 0x75
EE7F1:  DCB 0x2B
EE7F2:  DCB 0x78
EE7F3:  DCB 0x2B
EE7F4:  DCB 0x2B
EE7F5:  DCB 0x78
EE7F6:  DCB 0x2B
EE7F7:  DCB 0x2B
EE7F8:  DCB 0x2B
EE7F9:  DCB 0x2B
EE7FA:  CMP             R0, R1; jumptable 000EE7A0 cases 37,65-68,70-73,77,82-90,97-101,103,104,106,109,110,112,114,116,117,119-122
EE7FC:  BNE.W           loc_EE778
EE800:  B               loc_EE860
EE802:  CMP             R0, R1; jumptable 000EE7A0 case 79
EE804:  BEQ             loc_EE8A6
EE806:  LDRB            R6, [R5,#2]
EE808:  ADDS            R0, R5, #3
EE80A:  SUB.W           R5, R6, #0x48 ; 'H'
EE80E:  CMP             R5, #0x1D
EE810:  BHI             loc_EE81C
EE812:  LSL.W           R4, R3, R5
EE816:  TST.W           R4, LR
EE81A:  BNE             loc_EE7FA; jumptable 000EE7A0 cases 37,65-68,70-73,77,82-90,97-101,103,104,106,109,110,112,114,116,117,119-122
EE81C:  SUB.W           R5, R6, #0x6D ; 'm'
EE820:  CMP             R5, #0xC
EE822:  BHI             loc_EE8DC
EE824:  LSL.W           R4, R3, R5
EE828:  TST.W           R4, R12
EE82C:  BNE             loc_EE7FA; jumptable 000EE7A0 cases 37,65-68,70-73,77,82-90,97-101,103,104,106,109,110,112,114,116,117,119-122
EE82E:  B               loc_EE8DC
EE830:  CMP             R0, R1; jumptable 000EE7A0 case 69
EE832:  BEQ             loc_EE8B8
EE834:  LDRB            R6, [R5,#2]
EE836:  ADDS            R0, R5, #3
EE838:  SUB.W           R5, R6, #0x43 ; 'C'
EE83C:  CMP             R5, #0x16
EE83E:  BLS             loc_EE854
EE840:  SUB.W           R5, R6, #0x63 ; 'c'
EE844:  CMP             R5, #0x16
EE846:  BHI             loc_EE8CA
EE848:  LSL.W           R4, R3, R5
EE84C:  TST.W           R4, R8
EE850:  BNE             loc_EE7FA; jumptable 000EE7A0 cases 37,65-68,70-73,77,82-90,97-101,103,104,106,109,110,112,114,116,117,119-122
EE852:  B               loc_EE8CA
EE854:  LSL.W           R4, R3, R5
EE858:  TST.W           R4, R8
EE85C:  BNE             loc_EE7FA; jumptable 000EE7A0 cases 37,65-68,70-73,77,82-90,97-101,103,104,106,109,110,112,114,116,117,119-122
EE85E:  B               loc_EE840
EE860:  MOV             R0, R1
EE862:  B               loc_EE866
EE864:  MOV             R0, R5
EE866:  POP.W           {R8}
EE86A:  POP             {R4-R7,PC}
EE86C:  MOVS            R0, #8; thrown_size
EE86E:  BLX             j___cxa_allocate_exception
EE872:  LDR             R1, =(aInvalidFormat - 0xEE87A); "invalid format" ...
EE874:  MOV             R4, R0
EE876:  ADD             R1, PC; "invalid format"
EE878:  BL              sub_EE924
EE87C:  LDR             R0, =(_ZTIN3fmt2v812format_errorE_ptr - 0xEE884)
EE87E:  LDR             R2, =(_ZN3fmt2v812format_errorD2Ev_ptr - 0xEE886)
EE880:  ADD             R0, PC; _ZTIN3fmt2v812format_errorE_ptr
EE882:  ADD             R2, PC; _ZN3fmt2v812format_errorD2Ev_ptr
EE884:  LDR             R1, [R0]; lptinfo
EE886:  MOV             R0, R4; void *
EE888:  LDR             R2, [R2]; fmt::v8::format_error::~format_error() ; void (*)(void *)
EE88A:  BLX             j___cxa_throw
EE88E:  MOV             R0, R2; jumptable 000EE7A0 cases 81,113
EE890:  BL              sub_EE93C
EE894:  MOVS            R0, #8; jumptable 000EE7A0 default case, cases 38-64,74-76,78,80,91-96,102,105,107,108,111,115,118
EE896:  BLX             j___cxa_allocate_exception
EE89A:  LDR             R1, =(aInvalidFormat - 0xEE8A2); "invalid format" ...
EE89C:  MOV             R4, R0
EE89E:  ADD             R1, PC; "invalid format"
EE8A0:  BL              sub_EE924
EE8A4:  B               loc_EE87C
EE8A6:  MOVS            R0, #8; thrown_size
EE8A8:  BLX             j___cxa_allocate_exception
EE8AC:  LDR             R1, =(aInvalidFormat - 0xEE8B4); "invalid format" ...
EE8AE:  MOV             R4, R0
EE8B0:  ADD             R1, PC; "invalid format"
EE8B2:  BL              sub_EE924
EE8B6:  B               loc_EE87C
EE8B8:  MOVS            R0, #8; thrown_size
EE8BA:  BLX             j___cxa_allocate_exception
EE8BE:  LDR             R1, =(aInvalidFormat - 0xEE8C6); "invalid format" ...
EE8C0:  MOV             R4, R0
EE8C2:  ADD             R1, PC; "invalid format"
EE8C4:  BL              sub_EE924
EE8C8:  B               loc_EE87C
EE8CA:  MOVS            R0, #8; thrown_size
EE8CC:  BLX             j___cxa_allocate_exception
EE8D0:  LDR             R1, =(aInvalidFormat - 0xEE8D8); "invalid format" ...
EE8D2:  MOV             R4, R0
EE8D4:  ADD             R1, PC; "invalid format"
EE8D6:  BL              sub_EE924
EE8DA:  B               loc_EE87C
EE8DC:  MOVS            R0, #8; thrown_size
EE8DE:  BLX             j___cxa_allocate_exception
EE8E2:  LDR             R1, =(aInvalidFormat - 0xEE8EA); "invalid format" ...
EE8E4:  MOV             R4, R0
EE8E6:  ADD             R1, PC; "invalid format"
EE8E8:  BL              sub_EE924
EE8EC:  B               loc_EE87C
