; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_viewShownStatusChanged
; Address            : 0x17CDC0 - 0x17CE54
; =========================================================

17CDC0:  PUSH            {R4-R7,LR}
17CDC2:  ADD             R7, SP, #0xC
17CDC4:  PUSH.W          {R8}
17CDC8:  ADDS            R0, R2, #1
17CDCA:  BEQ             loc_17CDF6
17CDCC:  LDR             R0, =(dword_381BF4 - 0x17CDD2)
17CDCE:  ADD             R0, PC; dword_381BF4
17CDD0:  LDR             R0, [R0]
17CDD2:  CBZ             R0, loc_17CDF6
17CDD4:  LDR             R1, =(off_23496C - 0x17CDDA)
17CDD6:  ADD             R1, PC; off_23496C
17CDD8:  LDR             R6, [R1]; dword_23DEF4
17CDDA:  LDR             R1, [R6]
17CDDC:  CBZ             R1, loc_17CDF6
17CDDE:  UXTB            R4, R2
17CDE0:  CMP             R4, #0x1C
17CDE2:  BCC             loc_17CDEA
17CDE4:  CBZ             R3, loc_17CDF6
17CDE6:  MOVS            R5, #1
17CDE8:  B               loc_17CE42
17CDEA:  UXTAB.W         R0, R0, R2
17CDEE:  LDRB.W          R1, [R0,#0x68]!
17CDF2:  CMP             R1, R3
17CDF4:  BNE             loc_17CDFC
17CDF6:  POP.W           {R8}
17CDFA:  POP             {R4-R7,PC}
17CDFC:  MOV             R5, R3
17CDFE:  CMP             R3, #0
17CE00:  IT NE
17CE02:  MOVNE           R5, #1
17CE04:  STRB            R5, [R0]
17CE06:  BIC.W           R0, R2, #1
17CE0A:  CMP             R0, #2
17CE0C:  IT EQ
17CE0E:  CMPEQ           R3, #0
17CE10:  BEQ             loc_17CE34
17CE12:  CMP             R2, #0x19
17CE14:  BNE             loc_17CE42
17CE16:  LDR             R0, =(off_234A24 - 0x17CE1C)
17CE18:  ADD             R0, PC; off_234A24
17CE1A:  LDR.W           R8, [R0]; dword_23DEEC
17CE1E:  LDR.W           R0, [R8]
17CE22:  BL              sub_12A778
17CE26:  LDR.W           R0, [R8]
17CE2A:  LDR             R0, [R0,#0x58]
17CE2C:  LDR             R1, [R0]
17CE2E:  LDR             R1, [R1,#8]
17CE30:  BLX             R1
17CE32:  B               loc_17CE42
17CE34:  LDR             R0, =(off_234A54 - 0x17CE3A)
17CE36:  ADD             R0, PC; off_234A54
17CE38:  LDR             R0, [R0]; dword_381A0C
17CE3A:  LDR             R0, [R0]
17CE3C:  BL              sub_155858
17CE40:  MOVS            R5, #0
17CE42:  LDR             R0, [R6]
17CE44:  MOV             R1, R4
17CE46:  MOV             R2, R5
17CE48:  POP.W           {R8}
17CE4C:  POP.W           {R4-R7,LR}
17CE50:  B.W             sub_1447E4
