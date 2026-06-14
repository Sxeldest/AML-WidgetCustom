; =========================================================
; Game Engine Function: _Z14GxtCharToAsciiPth
; Address            : 0x54D698 - 0x54D730
; =========================================================

54D698:  CMP             R1, #0
54D69A:  ITTTT NE
54D69C:  SUBNE           R1, #1
54D69E:  UXTBNE          R1, R1
54D6A0:  ADDNE.W         R0, R0, R1,LSL#1
54D6A4:  ADDNE           R0, #2
54D6A6:  PUSH            {R7,LR}
54D6A8:  MOV             R7, SP
54D6AA:  MOV.W           LR, #0
54D6AE:  MOVS            R1, #0
54D6B0:  CBZ             R0, loc_54D726
54D6B2:  LDR             R3, =(unk_A01AC2 - 0x54D6C0)
54D6B4:  MOV             R12, #0xBFF1D1
54D6BC:  ADD             R3, PC; unk_A01AC2
54D6BE:  MOV             R2, R1
54D6C0:  LDRH.W          R1, [R0,R2,LSL#1]
54D6C4:  CBZ             R1, loc_54D724
54D6C6:  CMP             R1, #0x80
54D6C8:  BCC             loc_54D71A
54D6CA:  CMP             R1, #0x83
54D6CC:  BHI             loc_54D6D2
54D6CE:  ADDS            R1, #0x40 ; '@'
54D6D0:  B               loc_54D71A
54D6D2:  CMP             R1, #0x8D
54D6D4:  BHI             loc_54D6DA
54D6D6:  ADDS            R1, #0x42 ; 'B'
54D6D8:  B               loc_54D71A
54D6DA:  CMP             R1, #0x91
54D6DC:  BHI             loc_54D6E2
54D6DE:  ADDS            R1, #0x44 ; 'D'
54D6E0:  B               loc_54D71A
54D6E2:  CMP             R1, #0x95
54D6E4:  BHI             loc_54D6EA
54D6E6:  ADDS            R1, #0x47 ; 'G'
54D6E8:  B               loc_54D71A
54D6EA:  CMP             R1, #0x9A
54D6EC:  BHI             loc_54D6F2
54D6EE:  ADDS            R1, #0x49 ; 'I'
54D6F0:  B               loc_54D71A
54D6F2:  CMP             R1, #0xA4
54D6F4:  BHI             loc_54D6FA
54D6F6:  ADDS            R1, #0x4B ; 'K'
54D6F8:  B               loc_54D71A
54D6FA:  CMP             R1, #0xA8
54D6FC:  BHI             loc_54D702
54D6FE:  ADDS            R1, #0x4D ; 'M'
54D700:  B               loc_54D71A
54D702:  CMP             R1, #0xCC
54D704:  BHI             loc_54D70A
54D706:  ADDS            R1, #0x50 ; 'P'
54D708:  B               loc_54D71A
54D70A:  SUBS            R1, #0xCD
54D70C:  UXTH            R1, R1
54D70E:  CMP             R1, #3
54D710:  ITTE CC
54D712:  LSLCC           R1, R1, #3
54D714:  LSRCC.W         R1, R12, R1
54D718:  MOVCS           R1, #0x23 ; '#'
54D71A:  STRB            R1, [R3,R2]
54D71C:  ADDS            R1, R2, #1
54D71E:  CMP             R2, #0xFE
54D720:  BLT             loc_54D6BE
54D722:  B               loc_54D726
54D724:  MOV             R1, R2
54D726:  LDR             R0, =(unk_A01AC2 - 0x54D72C)
54D728:  ADD             R0, PC; unk_A01AC2
54D72A:  STRB.W          LR, [R0,R1]
54D72E:  POP             {R7,PC}
