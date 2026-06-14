; =========================================================
; Game Engine Function: sub_8696C
; Address            : 0x8696C - 0x86A3E
; =========================================================

8696C:  PUSH            {R4-R7,LR}
8696E:  ADD             R7, SP, #0xC
86970:  PUSH.W          {R11}
86974:  MOV             R2, R0
86976:  LDR             R0, =(byte_1ABE88 - 0x8697C)
86978:  ADD             R0, PC; byte_1ABE88
8697A:  LDRB            R0, [R0]
8697C:  CBZ             R0, loc_869C8
8697E:  LDR             R6, =(dword_1ABE98 - 0x86984)
86980:  ADD             R6, PC; dword_1ABE98
86982:  LDRD.W          R1, R4, [R6]
86986:  SUBS            R0, R4, R1
86988:  BEQ             loc_869B2
8698A:  MOVW            R3, #0xAAAB
8698E:  ADDS            R1, #0x10
86990:  MOVT            R3, #0x2AAA
86994:  MOVS            R5, #0
86996:  SMMUL.W         R0, R0, R3
8699A:  ASRS            R3, R0, #2
8699C:  ADD.W           R0, R3, R0,LSR#31
869A0:  CMP             R0, #1
869A2:  IT LS
869A4:  MOVLS           R0, #1
869A6:  LDR             R3, [R1]
869A8:  CBZ             R3, loc_869DE
869AA:  ADDS            R5, #1
869AC:  ADDS            R1, #0x18
869AE:  CMP             R0, R5
869B0:  BNE             loc_869A6
869B2:  LDR             R0, [R6,#(dword_1ABEA0 - 0x1ABE98)]
869B4:  CMP             R4, R0
869B6:  BCS             loc_869CE
869B8:  MOV             R0, R2
869BA:  LDR.W           R1, [R0,#0x10]!
869BE:  CBZ             R1, loc_869FA
869C0:  CMP             R2, R1
869C2:  BEQ             loc_86A04
869C4:  STR             R1, [R4,#0x10]
869C6:  B               loc_869FE
869C8:  MOV.W           R5, #0xFFFFFFFF
869CC:  B               loc_86A28
869CE:  LDR             R4, =(dword_1ABE98 - 0x869D4)
869D0:  ADD             R4, PC; dword_1ABE98
869D2:  MOV             R0, R4
869D4:  MOV             R1, R2
869D6:  BL              sub_7FB88
869DA:  LDR             R0, [R4,#(dword_1ABE9C - 0x1ABE98)]
869DC:  B               loc_86A16
869DE:  MOVS            R0, #0
869E0:  MOV             R6, R1
869E2:  STR.W           R0, [R6],#-0x10
869E6:  MOV             R3, R2
869E8:  LDR.W           R4, [R3,#0x10]!
869EC:  CBZ             R4, loc_869F6
869EE:  CMP             R2, R4
869F0:  BEQ             loc_86A30
869F2:  STR             R4, [R1]
869F4:  MOV             R1, R3
869F6:  STR             R0, [R1]
869F8:  B               loc_86A28
869FA:  ADD.W           R0, R4, #0x10
869FE:  MOVS            R1, #0
86A00:  STR             R1, [R0]
86A02:  B               loc_86A10
86A04:  STR             R4, [R4,#0x10]
86A06:  LDR             R0, [R0]
86A08:  LDR             R1, [R0]
86A0A:  LDR             R2, [R1,#0xC]
86A0C:  MOV             R1, R4
86A0E:  BLX             R2
86A10:  ADD.W           R0, R4, #0x18
86A14:  STR             R0, [R6,#(dword_1ABE9C - 0x1ABE98)]
86A16:  LDR             R1, [R6]
86A18:  SUBS            R0, R0, R1
86A1A:  MOV             R1, #0xAAAAAAAB
86A22:  ASRS            R0, R0, #3
86A24:  MULS            R0, R1
86A26:  SUBS            R5, R0, #1
86A28:  MOV             R0, R5
86A2A:  POP.W           {R11}
86A2E:  POP             {R4-R7,PC}
86A30:  STR.W           R6, [R1],#-0x10
86A34:  LDR             R0, [R3]
86A36:  LDR             R2, [R0]
86A38:  LDR             R2, [R2,#0xC]
86A3A:  BLX             R2
86A3C:  B               loc_86A28
