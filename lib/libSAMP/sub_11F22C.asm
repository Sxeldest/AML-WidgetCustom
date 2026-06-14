; =========================================================
; Game Engine Function: sub_11F22C
; Address            : 0x11F22C - 0x11F274
; =========================================================

11F22C:  PUSH            {R4,R5,R7,LR}
11F22E:  ADD             R7, SP, #8
11F230:  MOV             R4, R0
11F232:  LDR             R0, [R0,#0x10]
11F234:  MOV             R5, R1
11F236:  MOVS            R1, #0
11F238:  CMP             R4, R0
11F23A:  STR             R1, [R4,#0x10]
11F23C:  BEQ             loc_11F244
11F23E:  CBZ             R0, loc_11F24E
11F240:  MOVS            R1, #5
11F242:  B               loc_11F246
11F244:  MOVS            R1, #4
11F246:  LDR             R2, [R0]
11F248:  LDR.W           R1, [R2,R1,LSL#2]
11F24C:  BLX             R1
11F24E:  LDR             R0, [R5,#0x10]
11F250:  CBZ             R0, loc_11F25E
11F252:  CMP             R5, R0
11F254:  BEQ             loc_11F264
11F256:  STR             R0, [R4,#0x10]
11F258:  MOVS            R0, #0
11F25A:  STR             R0, [R5,#0x10]
11F25C:  B               loc_11F270
11F25E:  MOVS            R0, #0
11F260:  STR             R0, [R4,#0x10]
11F262:  B               loc_11F270
11F264:  STR             R4, [R4,#0x10]
11F266:  LDR             R0, [R5,#0x10]
11F268:  LDR             R1, [R0]
11F26A:  LDR             R2, [R1,#0xC]
11F26C:  MOV             R1, R4
11F26E:  BLX             R2
11F270:  MOV             R0, R4
11F272:  POP             {R4,R5,R7,PC}
