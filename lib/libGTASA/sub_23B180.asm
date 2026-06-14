; =========================================================
; Game Engine Function: sub_23B180
; Address            : 0x23B180 - 0x23B1C4
; =========================================================

23B180:  PUSH            {R4,R6,R7,LR}
23B182:  ADD             R7, SP, #8
23B184:  LDR             R2, [R1]
23B186:  CMP             R2, #2
23B188:  BCC             loc_23B1C0
23B18A:  LDR             R2, [R0]
23B18C:  LDRB            R3, [R2]
23B18E:  CMP             R3, #0xFF
23B190:  BEQ             loc_23B1A0
23B192:  CMP             R3, #0xFE
23B194:  ITT EQ
23B196:  LDRBEQ          R3, [R2,#1]
23B198:  CMPEQ           R3, #0xFF
23B19A:  BNE             loc_23B1C0
23B19C:  MOVS            R4, #1
23B19E:  B               loc_23B1AA
23B1A0:  LDRB            R3, [R2,#1]
23B1A2:  CMP             R3, #0xFE
23B1A4:  BNE             loc_23B1C0
23B1A6:  MOV.W           R4, #0xFFFFFFFF
23B1AA:  ADDS            R2, #2
23B1AC:  STR             R2, [R0]
23B1AE:  LDR             R2, [R1]
23B1B0:  SUBS            R2, #2
23B1B2:  STR             R2, [R1]
23B1B4:  BL              sub_23B180
23B1B8:  CMP             R0, #0
23B1BA:  IT EQ
23B1BC:  MOVEQ           R0, R4
23B1BE:  POP             {R4,R6,R7,PC}
23B1C0:  MOVS            R0, #0
23B1C2:  POP             {R4,R6,R7,PC}
