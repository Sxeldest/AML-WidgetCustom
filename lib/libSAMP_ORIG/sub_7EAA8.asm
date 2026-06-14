; =========================================================
; Game Engine Function: sub_7EAA8
; Address            : 0x7EAA8 - 0x7EB7A
; =========================================================

7EAA8:  PUSH            {R4-R7,LR}
7EAAA:  ADD             R7, SP, #0xC
7EAAC:  PUSH.W          {R11}
7EAB0:  MOV             R2, R0
7EAB2:  LDR             R0, =(byte_1A45F3 - 0x7EAB8)
7EAB4:  ADD             R0, PC; byte_1A45F3
7EAB6:  LDRB            R0, [R0]
7EAB8:  CBZ             R0, loc_7EB04
7EABA:  LDR             R6, =(dword_1A498C - 0x7EAC0)
7EABC:  ADD             R6, PC; dword_1A498C
7EABE:  LDRD.W          R1, R4, [R6]
7EAC2:  SUBS            R0, R4, R1
7EAC4:  BEQ             loc_7EAEE
7EAC6:  MOVW            R3, #0xAAAB
7EACA:  ADDS            R1, #0x10
7EACC:  MOVT            R3, #0x2AAA
7EAD0:  MOVS            R5, #0
7EAD2:  SMMUL.W         R0, R0, R3
7EAD6:  ASRS            R3, R0, #2
7EAD8:  ADD.W           R0, R3, R0,LSR#31
7EADC:  CMP             R0, #1
7EADE:  IT LS
7EAE0:  MOVLS           R0, #1
7EAE2:  LDR             R3, [R1]
7EAE4:  CBZ             R3, loc_7EB1A
7EAE6:  ADDS            R5, #1
7EAE8:  ADDS            R1, #0x18
7EAEA:  CMP             R0, R5
7EAEC:  BNE             loc_7EAE2
7EAEE:  LDR             R0, [R6,#(dword_1A4994 - 0x1A498C)]
7EAF0:  CMP             R4, R0
7EAF2:  BCS             loc_7EB0A
7EAF4:  MOV             R0, R2
7EAF6:  LDR.W           R1, [R0,#0x10]!
7EAFA:  CBZ             R1, loc_7EB36
7EAFC:  CMP             R2, R1
7EAFE:  BEQ             loc_7EB40
7EB00:  STR             R1, [R4,#0x10]
7EB02:  B               loc_7EB3A
7EB04:  MOV.W           R5, #0xFFFFFFFF
7EB08:  B               loc_7EB64
7EB0A:  LDR             R4, =(dword_1A498C - 0x7EB10)
7EB0C:  ADD             R4, PC; dword_1A498C
7EB0E:  MOV             R0, R4
7EB10:  MOV             R1, R2
7EB12:  BL              sub_7F828
7EB16:  LDR             R0, [R4,#(dword_1A4990 - 0x1A498C)]
7EB18:  B               loc_7EB52
7EB1A:  MOVS            R0, #0
7EB1C:  MOV             R6, R1
7EB1E:  STR.W           R0, [R6],#-0x10
7EB22:  MOV             R3, R2
7EB24:  LDR.W           R4, [R3,#0x10]!
7EB28:  CBZ             R4, loc_7EB32
7EB2A:  CMP             R2, R4
7EB2C:  BEQ             loc_7EB6C
7EB2E:  STR             R4, [R1]
7EB30:  MOV             R1, R3
7EB32:  STR             R0, [R1]
7EB34:  B               loc_7EB64
7EB36:  ADD.W           R0, R4, #0x10
7EB3A:  MOVS            R1, #0
7EB3C:  STR             R1, [R0]
7EB3E:  B               loc_7EB4C
7EB40:  STR             R4, [R4,#0x10]
7EB42:  LDR             R0, [R0]
7EB44:  LDR             R1, [R0]
7EB46:  LDR             R2, [R1,#0xC]
7EB48:  MOV             R1, R4
7EB4A:  BLX             R2
7EB4C:  ADD.W           R0, R4, #0x18
7EB50:  STR             R0, [R6,#(dword_1A4990 - 0x1A498C)]
7EB52:  LDR             R1, [R6]
7EB54:  SUBS            R0, R0, R1
7EB56:  MOV             R1, #0xAAAAAAAB
7EB5E:  ASRS            R0, R0, #3
7EB60:  MULS            R0, R1
7EB62:  SUBS            R5, R0, #1
7EB64:  MOV             R0, R5
7EB66:  POP.W           {R11}
7EB6A:  POP             {R4-R7,PC}
7EB6C:  STR.W           R6, [R1],#-0x10
7EB70:  LDR             R0, [R3]
7EB72:  LDR             R2, [R0]
7EB74:  LDR             R2, [R2,#0xC]
7EB76:  BLX             R2
7EB78:  B               loc_7EB64
