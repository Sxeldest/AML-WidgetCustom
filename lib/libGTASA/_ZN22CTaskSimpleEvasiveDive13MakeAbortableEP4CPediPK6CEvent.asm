; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveDive13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x50B16C - 0x50B1B4
; =========================================================

50B16C:  PUSH            {R4,R6,R7,LR}
50B16E:  ADD             R7, SP, #8
50B170:  MOV             R4, R3
50B172:  CMP             R2, #2
50B174:  BNE             loc_50B186
50B176:  LDR             R0, [R0,#0x10]
50B178:  CBZ             R0, loc_50B1AC
50B17A:  MOVS            R1, #0xC47A0000
50B180:  STR             R1, [R0,#0x1C]
50B182:  MOVS            R0, #1
50B184:  POP             {R4,R6,R7,PC}
50B186:  CBZ             R4, loc_50B1B0
50B188:  LDR             R0, [R4]
50B18A:  LDR             R1, [R0,#8]
50B18C:  MOV             R0, R4
50B18E:  BLX             R1
50B190:  CMP             R0, #9
50B192:  BNE             loc_50B1B0
50B194:  LDR             R0, [R4,#0x10]
50B196:  CBZ             R0, loc_50B1B0
50B198:  LDRB.W          R0, [R0,#0x3A]
50B19C:  AND.W           R0, R0, #7
50B1A0:  CMP             R0, #2
50B1A2:  BNE             loc_50B1B0
50B1A4:  LDR             R0, [R4,#0x18]
50B1A6:  SUBS            R0, #0x31 ; '1'
50B1A8:  CMP             R0, #2
50B1AA:  BCS             loc_50B1B0
50B1AC:  MOVS            R0, #1
50B1AE:  POP             {R4,R6,R7,PC}
50B1B0:  MOVS            R0, #0
50B1B2:  POP             {R4,R6,R7,PC}
