; =========================================================
; Game Engine Function: sub_100D30
; Address            : 0x100D30 - 0x100DBA
; =========================================================

100D30:  PUSH            {R4-R7,LR}
100D32:  ADD             R7, SP, #0xC
100D34:  PUSH.W          {R8-R11}
100D38:  SUB             SP, SP, #4
100D3A:  MOV             R6, R1
100D3C:  MOV             R9, R1
100D3E:  LDR.W           R4, [R6,#4]!
100D42:  MOV             R8, R0
100D44:  CBZ             R4, loc_100D6C
100D46:  LDR             R0, [R2]
100D48:  ADD.W           R6, R9, #4
100D4C:  LDR             R1, [R4,#0x10]
100D4E:  CMP             R0, R1
100D50:  BCS             loc_100D58
100D52:  LDR             R1, [R4]
100D54:  CBNZ            R1, loc_100D66
100D56:  B               loc_100D70
100D58:  CMP             R1, R0
100D5A:  BCS             loc_100D72
100D5C:  MOV             R6, R4
100D5E:  LDR.W           R1, [R6,#4]!
100D62:  CBZ             R1, loc_100D72
100D64:  MOV             R4, R6
100D66:  MOV             R6, R4
100D68:  MOV             R4, R1
100D6A:  B               loc_100D4C
100D6C:  MOV             R4, R6
100D6E:  B               loc_100D72
100D70:  MOV             R6, R4
100D72:  LDR             R5, [R6]
100D74:  MOV.W           R10, #0
100D78:  CBNZ            R5, loc_100DAA
100D7A:  MOVS            R0, #0x20 ; ' '; unsigned int
100D7C:  LDR.W           R11, [R7,#arg_0]
100D80:  BLX             j__Znwj; operator new(uint)
100D84:  MOV             R5, R0
100D86:  LDR.W           R0, [R11]
100D8A:  MOV             R1, R5
100D8C:  MOV             R2, R6
100D8E:  STR.W           R10, [R1,#0x18]!
100D92:  MOV             R3, R5
100D94:  LDR             R0, [R0]
100D96:  STRD.W          R0, R1, [R5,#0x10]
100D9A:  MOV             R0, R9
100D9C:  MOV             R1, R4
100D9E:  STR.W           R10, [R5,#0x1C]
100DA2:  BL              sub_100DBA
100DA6:  MOV.W           R10, #1
100DAA:  STRB.W          R10, [R8,#4]
100DAE:  STR.W           R5, [R8]
100DB2:  ADD             SP, SP, #4
100DB4:  POP.W           {R8-R11}
100DB8:  POP             {R4-R7,PC}
