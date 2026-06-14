; =========================================================
; Game Engine Function: sub_7E9BC
; Address            : 0x7E9BC - 0x7EA8E
; =========================================================

7E9BC:  PUSH            {R4-R7,LR}
7E9BE:  ADD             R7, SP, #0xC
7E9C0:  PUSH.W          {R11}
7E9C4:  MOV             R2, R0
7E9C6:  LDR             R0, =(byte_1A45F3 - 0x7E9CC)
7E9C8:  ADD             R0, PC; byte_1A45F3
7E9CA:  LDRB            R0, [R0]
7E9CC:  CBZ             R0, loc_7EA18
7E9CE:  LDR             R6, =(dword_1A4980 - 0x7E9D4)
7E9D0:  ADD             R6, PC; dword_1A4980
7E9D2:  LDRD.W          R1, R4, [R6]
7E9D6:  SUBS            R0, R4, R1
7E9D8:  BEQ             loc_7EA02
7E9DA:  MOVW            R3, #0xAAAB
7E9DE:  ADDS            R1, #0x10
7E9E0:  MOVT            R3, #0x2AAA
7E9E4:  MOVS            R5, #0
7E9E6:  SMMUL.W         R0, R0, R3
7E9EA:  ASRS            R3, R0, #2
7E9EC:  ADD.W           R0, R3, R0,LSR#31
7E9F0:  CMP             R0, #1
7E9F2:  IT LS
7E9F4:  MOVLS           R0, #1
7E9F6:  LDR             R3, [R1]
7E9F8:  CBZ             R3, loc_7EA2E
7E9FA:  ADDS            R5, #1
7E9FC:  ADDS            R1, #0x18
7E9FE:  CMP             R0, R5
7EA00:  BNE             loc_7E9F6
7EA02:  LDR             R0, [R6,#(dword_1A4988 - 0x1A4980)]
7EA04:  CMP             R4, R0
7EA06:  BCS             loc_7EA1E
7EA08:  MOV             R0, R2
7EA0A:  LDR.W           R1, [R0,#0x10]!
7EA0E:  CBZ             R1, loc_7EA4A
7EA10:  CMP             R2, R1
7EA12:  BEQ             loc_7EA54
7EA14:  STR             R1, [R4,#0x10]
7EA16:  B               loc_7EA4E
7EA18:  MOV.W           R5, #0xFFFFFFFF
7EA1C:  B               loc_7EA78
7EA1E:  LDR             R4, =(dword_1A4980 - 0x7EA24)
7EA20:  ADD             R4, PC; dword_1A4980
7EA22:  MOV             R0, R4
7EA24:  MOV             R1, R2
7EA26:  BL              sub_7F678
7EA2A:  LDR             R0, [R4,#(dword_1A4984 - 0x1A4980)]
7EA2C:  B               loc_7EA66
7EA2E:  MOVS            R0, #0
7EA30:  MOV             R6, R1
7EA32:  STR.W           R0, [R6],#-0x10
7EA36:  MOV             R3, R2
7EA38:  LDR.W           R4, [R3,#0x10]!
7EA3C:  CBZ             R4, loc_7EA46
7EA3E:  CMP             R2, R4
7EA40:  BEQ             loc_7EA80
7EA42:  STR             R4, [R1]
7EA44:  MOV             R1, R3
7EA46:  STR             R0, [R1]
7EA48:  B               loc_7EA78
7EA4A:  ADD.W           R0, R4, #0x10
7EA4E:  MOVS            R1, #0
7EA50:  STR             R1, [R0]
7EA52:  B               loc_7EA60
7EA54:  STR             R4, [R4,#0x10]
7EA56:  LDR             R0, [R0]
7EA58:  LDR             R1, [R0]
7EA5A:  LDR             R2, [R1,#0xC]
7EA5C:  MOV             R1, R4
7EA5E:  BLX             R2
7EA60:  ADD.W           R0, R4, #0x18
7EA64:  STR             R0, [R6,#(dword_1A4984 - 0x1A4980)]
7EA66:  LDR             R1, [R6]
7EA68:  SUBS            R0, R0, R1
7EA6A:  MOV             R1, #0xAAAAAAAB
7EA72:  ASRS            R0, R0, #3
7EA74:  MULS            R0, R1
7EA76:  SUBS            R5, R0, #1
7EA78:  MOV             R0, R5
7EA7A:  POP.W           {R11}
7EA7E:  POP             {R4-R7,PC}
7EA80:  STR.W           R6, [R1],#-0x10
7EA84:  LDR             R0, [R3]
7EA86:  LDR             R2, [R0]
7EA88:  LDR             R2, [R2,#0xC]
7EA8A:  BLX             R2
7EA8C:  B               loc_7EA78
