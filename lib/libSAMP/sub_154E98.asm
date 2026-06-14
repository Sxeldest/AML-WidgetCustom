; =========================================================
; Game Engine Function: sub_154E98
; Address            : 0x154E98 - 0x154EF2
; =========================================================

154E98:  PUSH            {R4,R5,R7,LR}
154E9A:  ADD             R7, SP, #8
154E9C:  MOV             R4, R0
154E9E:  CBZ             R1, loc_154EAA
154EA0:  BL              sub_15E510
154EA4:  EOR.W           R5, R0, #1
154EA8:  B               loc_154EAC
154EAA:  MOVS            R5, #0
154EAC:  LDRB.W          R0, [R4,#0x7E]
154EB0:  CMP             R0, R5
154EB2:  BNE             locret_154EF0
154EB4:  EOR.W           R0, R5, #1
154EB8:  STRB.W          R0, [R4,#0x7E]
154EBC:  LDRB.W          R0, [R4,#0x7D]
154EC0:  MOVS            R1, #0
154EC2:  STR.W           R1, [R4,#0x80]
154EC6:  CBZ             R0, locret_154EF0
154EC8:  LDR             R0, [R4,#0x70]
154ECA:  CMP             R5, #0
154ECC:  IT EQ
154ECE:  MOVEQ           R0, R5
154ED0:  BL              sub_154698
154ED4:  LDR             R0, [R4,#0x58]
154ED6:  CLZ.W           R0, R0
154EDA:  LSRS            R0, R0, #5
154EDC:  ORRS            R0, R5
154EDE:  IT NE
154EE0:  POPNE           {R4,R5,R7,PC}
154EE2:  LDR             R0, [R4,#0x5C]
154EE4:  BL              sub_157E92
154EE8:  LDR             R0, [R4,#0x58]
154EEA:  MOVS            R1, #0
154EEC:  BL              sub_15249E
154EF0:  POP             {R4,R5,R7,PC}
