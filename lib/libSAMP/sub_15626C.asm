; =========================================================
; Game Engine Function: sub_15626C
; Address            : 0x15626C - 0x1562FE
; =========================================================

15626C:  PUSH            {R4-R7,LR}
15626E:  ADD             R7, SP, #0xC
156270:  PUSH.W          {R11}
156274:  SUB             SP, SP, #0x10
156276:  MOV             R5, R0
156278:  LDR             R0, [R0]
15627A:  LDRB            R1, [R0]
15627C:  CMP             R1, #1
15627E:  BEQ             loc_1562C0
156280:  CMP             R1, #2
156282:  BEQ             loc_1562BC
156284:  CBZ             R1, loc_1562CC
156286:  LDR             R1, [R5,#0xC]
156288:  CBZ             R1, loc_1562C4
15628A:  MOVS            R0, #0x10; thrown_size
15628C:  BLX             j___cxa_allocate_exception
156290:  LDR             R1, =(aCannotGetValue - 0x156298); "cannot get value" ...
156292:  MOV             R4, R0
156294:  ADD             R1, PC; "cannot get value"
156296:  ADD             R0, SP, #0x20+var_1C; int
156298:  BL              sub_DC6DC
15629C:  MOVS            R6, #1
15629E:  LDR             R3, [R5]
1562A0:  ADD             R2, SP, #0x20+var_1C
1562A2:  MOV             R0, R4
1562A4:  MOVS            R1, #0xD6
1562A6:  BL              sub_E9B38
1562AA:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0x1562B4); `typeinfo for'nlohmann::detail::invalid_iterator ...
1562AC:  MOVS            R6, #0
1562AE:  LDR             R2, =(sub_E9438+1 - 0x1562B6)
1562B0:  ADD             R1, PC; lptinfo
1562B2:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
1562B4:  MOV             R0, R4; void *
1562B6:  BLX             j___cxa_throw
1562BA:  B               loc_1562FC
1562BC:  LDR             R0, [R5,#8]
1562BE:  B               loc_1562C4
1562C0:  LDR             R0, [R5,#4]
1562C2:  ADDS            R0, #0x20 ; ' '
1562C4:  ADD             SP, SP, #0x10
1562C6:  POP.W           {R11}
1562CA:  POP             {R4-R7,PC}
1562CC:  MOVS            R0, #0x10; thrown_size
1562CE:  BLX             j___cxa_allocate_exception
1562D2:  LDR             R1, =(aCannotGetValue - 0x1562DA); "cannot get value" ...
1562D4:  MOV             R4, R0
1562D6:  ADD             R1, PC; "cannot get value"
1562D8:  ADD             R0, SP, #0x20+var_1C; int
1562DA:  BL              sub_DC6DC
1562DE:  MOVS            R6, #1
1562E0:  LDR             R3, [R5]
1562E2:  ADD             R2, SP, #0x20+var_1C
1562E4:  MOV             R0, R4
1562E6:  MOVS            R1, #0xD6
1562E8:  BL              sub_E9B38
1562EC:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0x1562F6); `typeinfo for'nlohmann::detail::invalid_iterator ...
1562EE:  MOVS            R6, #0
1562F0:  LDR             R2, =(sub_E9438+1 - 0x1562F8)
1562F2:  ADD             R1, PC; lptinfo
1562F4:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
1562F6:  MOV             R0, R4; void *
1562F8:  BLX             j___cxa_throw
1562FC:  B               loc_156300
