; =========================================================
; Game Engine Function: INT123_frame_exit
; Address            : 0x225D54 - 0x225E10
; =========================================================

225D54:  PUSH            {R4-R7,LR}
225D56:  ADD             R7, SP, #0xC
225D58:  PUSH.W          {R11}
225D5C:  MOV             R4, R0
225D5E:  MOVW            R0, #0xB2C0
225D62:  LDR             R0, [R4,R0]
225D64:  MOVW            R1, #0xB2A0
225D68:  ADDS            R5, R4, R1
225D6A:  CBZ             R0, loc_225D76
225D6C:  LDR             R0, [R5]; p
225D6E:  CMP             R0, #0
225D70:  IT NE
225D72:  BLXNE           free
225D76:  MOVS            R6, #0
225D78:  MOVW            R1, #0x4830
225D7C:  STR             R6, [R5]
225D7E:  ADDS            R5, R4, R1
225D80:  LDR             R0, [R4,R1]; p
225D82:  CMP             R0, #0
225D84:  IT NE
225D86:  BLXNE           free
225D8A:  MOVW            R0, #0x4834
225D8E:  STR             R6, [R5]
225D90:  STR             R6, [R4,R0]
225D92:  MOVW            R1, #0x483C
225D96:  ADDS            R6, R4, R1
225D98:  LDR             R0, [R4,R1]; p
225D9A:  CMP             R0, #0
225D9C:  IT NE
225D9E:  BLXNE           free
225DA2:  MOVS            R5, #0
225DA4:  MOVW            R0, #0x4840
225DA8:  STR             R5, [R6]
225DAA:  MOVW            R1, #0x4A78
225DAE:  STR             R5, [R4,R0]
225DB0:  ADDS            R6, R4, R1
225DB2:  LDR             R0, [R4,R1]; p
225DB4:  CMP             R0, #0
225DB6:  IT NE
225DB8:  BLXNE           free
225DBC:  STR             R5, [R6]
225DBE:  MOVW            R0, #0xB53C
225DC2:  LDR             R0, [R4,R0]; p
225DC4:  CMP             R0, #0
225DC6:  IT NE
225DC8:  BLXNE           free
225DCC:  MOVW            R1, #0x9324
225DD0:  LDR             R0, [R4,R1]; p
225DD2:  CBZ             R0, loc_225DDE
225DD4:  ADDS            R5, R4, R1
225DD6:  BLX             free
225DDA:  MOVS            R0, #0
225DDC:  STR             R0, [R5]
225DDE:  MOV             R0, R4
225DE0:  BLX             j_INT123_exit_id3
225DE4:  MOVW            R1, #0xB530
225DE8:  ADDS            R6, R4, R1
225DEA:  LDR             R0, [R4,R1]; p
225DEC:  CMP             R0, #0
225DEE:  IT NE
225DF0:  BLXNE           free
225DF4:  MOVS            R5, #0
225DF6:  MOVW            R0, #0xB554
225DFA:  STR             R5, [R6]
225DFC:  LDR             R1, [R4,R0]
225DFE:  CBZ             R1, loc_225E0A
225E00:  MOVW            R6, #0xB550
225E04:  LDR             R0, [R4,R6]
225E06:  BLX             R1
225E08:  STR             R5, [R4,R6]
225E0A:  POP.W           {R11}
225E0E:  POP             {R4-R7,PC}
