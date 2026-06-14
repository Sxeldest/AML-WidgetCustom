; =========================================================
; Game Engine Function: _ZN14CRunningScript11GetPadStateEtt
; Address            : 0x34D78C - 0x34D834
; =========================================================

34D78C:  PUSH            {R4,R5,R7,LR}
34D78E:  ADD             R7, SP, #8
34D790:  MOV             R4, R2
34D792:  MOVS            R5, #0
34D794:  CBZ             R1, loc_34D79A
34D796:  SXTH            R0, R5; jumptable 0034D7A4 default case
34D798:  POP             {R4,R5,R7,PC}
34D79A:  MOVS            R0, #0; this
34D79C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
34D7A0:  CMP             R4, #0x13; switch 20 cases
34D7A2:  BHI             def_34D7A4; jumptable 0034D7A4 default case
34D7A4:  TBB.W           [PC,R4]; switch jump
34D7A8:  DCB 0xA; jump table for switch statement
34D7A9:  DCB 0xD
34D7AA:  DCB 0x10
34D7AB:  DCB 0x13
34D7AC:  DCB 0x16
34D7AD:  DCB 0x19
34D7AE:  DCB 0x1C
34D7AF:  DCB 0x1F
34D7B0:  DCB 0x22
34D7B1:  DCB 0x25
34D7B2:  DCB 0x28
34D7B3:  DCB 0x2B
34D7B4:  DCB 0x2E
34D7B5:  DCB 0x31
34D7B6:  DCB 0x34
34D7B7:  DCB 0x37
34D7B8:  DCB 0x3A
34D7B9:  DCB 0x3D
34D7BA:  DCB 0x40
34D7BB:  DCB 0x43
34D7BC:  LDRH            R5, [R0]; jumptable 0034D7A4 case 0
34D7BE:  SXTH            R0, R5
34D7C0:  POP             {R4,R5,R7,PC}
34D7C2:  LDRH            R5, [R0,#2]; jumptable 0034D7A4 case 1
34D7C4:  SXTH            R0, R5
34D7C6:  POP             {R4,R5,R7,PC}
34D7C8:  LDRH            R5, [R0,#4]; jumptable 0034D7A4 case 2
34D7CA:  SXTH            R0, R5
34D7CC:  POP             {R4,R5,R7,PC}
34D7CE:  LDRH            R5, [R0,#6]; jumptable 0034D7A4 case 3
34D7D0:  SXTH            R0, R5
34D7D2:  POP             {R4,R5,R7,PC}
34D7D4:  LDRH            R5, [R0,#8]; jumptable 0034D7A4 case 4
34D7D6:  SXTH            R0, R5
34D7D8:  POP             {R4,R5,R7,PC}
34D7DA:  LDRH            R5, [R0,#0xA]; jumptable 0034D7A4 case 5
34D7DC:  SXTH            R0, R5
34D7DE:  POP             {R4,R5,R7,PC}
34D7E0:  LDRH            R5, [R0,#0xC]; jumptable 0034D7A4 case 6
34D7E2:  SXTH            R0, R5
34D7E4:  POP             {R4,R5,R7,PC}
34D7E6:  LDRH            R5, [R0,#0xE]; jumptable 0034D7A4 case 7
34D7E8:  SXTH            R0, R5
34D7EA:  POP             {R4,R5,R7,PC}
34D7EC:  LDRH            R5, [R0,#0x10]; jumptable 0034D7A4 case 8
34D7EE:  SXTH            R0, R5
34D7F0:  POP             {R4,R5,R7,PC}
34D7F2:  LDRH            R5, [R0,#0x12]; jumptable 0034D7A4 case 9
34D7F4:  SXTH            R0, R5
34D7F6:  POP             {R4,R5,R7,PC}
34D7F8:  LDRH            R5, [R0,#0x14]; jumptable 0034D7A4 case 10
34D7FA:  SXTH            R0, R5
34D7FC:  POP             {R4,R5,R7,PC}
34D7FE:  LDRH            R5, [R0,#0x16]; jumptable 0034D7A4 case 11
34D800:  SXTH            R0, R5
34D802:  POP             {R4,R5,R7,PC}
34D804:  LDRH            R5, [R0,#0x18]; jumptable 0034D7A4 case 12
34D806:  SXTH            R0, R5
34D808:  POP             {R4,R5,R7,PC}
34D80A:  LDRH            R5, [R0,#0x1A]; jumptable 0034D7A4 case 13
34D80C:  SXTH            R0, R5
34D80E:  POP             {R4,R5,R7,PC}
34D810:  LDRH            R5, [R0,#0x1C]; jumptable 0034D7A4 case 14
34D812:  SXTH            R0, R5
34D814:  POP             {R4,R5,R7,PC}
34D816:  LDRH            R5, [R0,#0x1E]; jumptable 0034D7A4 case 15
34D818:  SXTH            R0, R5
34D81A:  POP             {R4,R5,R7,PC}
34D81C:  LDRH            R5, [R0,#0x20]; jumptable 0034D7A4 case 16
34D81E:  SXTH            R0, R5
34D820:  POP             {R4,R5,R7,PC}
34D822:  LDRH            R5, [R0,#0x22]; jumptable 0034D7A4 case 17
34D824:  SXTH            R0, R5
34D826:  POP             {R4,R5,R7,PC}
34D828:  LDRH            R5, [R0,#0x24]; jumptable 0034D7A4 case 18
34D82A:  SXTH            R0, R5
34D82C:  POP             {R4,R5,R7,PC}
34D82E:  LDRH            R5, [R0,#0x26]; jumptable 0034D7A4 case 19
34D830:  SXTH            R0, R5
34D832:  POP             {R4,R5,R7,PC}
