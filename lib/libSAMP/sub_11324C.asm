; =========================================================
; Game Engine Function: sub_11324C
; Address            : 0x11324C - 0x1132F6
; =========================================================

11324C:  PUSH            {R4-R7,LR}
11324E:  ADD             R7, SP, #0xC
113250:  PUSH.W          {R8-R11}
113254:  SUB             SP, SP, #0xC
113256:  MOV             R6, R1
113258:  MOV             R9, R1
11325A:  LDR.W           R4, [R6,#4]!
11325E:  MOV             R8, R0
113260:  CBZ             R4, loc_113288
113262:  LDRB            R0, [R2]
113264:  ADD.W           R6, R9, #4
113268:  LDRB            R1, [R4,#0x10]
11326A:  CMP             R0, R1
11326C:  BCS             loc_113274
11326E:  LDR             R1, [R4]
113270:  CBNZ            R1, loc_113282
113272:  B               loc_11328C
113274:  CMP             R1, R0
113276:  BCS             loc_11328E
113278:  MOV             R6, R4
11327A:  LDR.W           R1, [R6,#4]!
11327E:  CBZ             R1, loc_11328E
113280:  MOV             R4, R6
113282:  MOV             R6, R4
113284:  MOV             R4, R1
113286:  B               loc_113268
113288:  MOV             R4, R6
11328A:  B               loc_11328E
11328C:  MOV             R6, R4
11328E:  LDR             R5, [R6]
113290:  MOV.W           R10, #0
113294:  CBNZ            R5, loc_1132E6
113296:  MOVS            R0, #0x2C ; ','; unsigned int
113298:  LDR.W           R11, [R7,#arg_0]
11329C:  BLX             j__Znwj; operator new(uint)
1132A0:  MOV             R5, R0
1132A2:  LDR             R0, =(_ZTVN7sigslot11signal_baseINS_6detail10null_mutexEJRN6RakNet9BitStreamEEEE - 0x1132AE); `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,RakNet::BitStream &> ...
1132A4:  LDR.W           R1, [R11]
1132A8:  MOV             R2, R6
1132AA:  ADD             R0, PC; `vtable for'sigslot::signal_base<sigslot::detail::null_mutex,RakNet::BitStream &>
1132AC:  MOV             R3, R5
1132AE:  ADDS            R0, #8
1132B0:  STR             R0, [R5,#0x14]
1132B2:  LDRB            R0, [R1]
1132B4:  MOV             R1, R4
1132B6:  STRB            R0, [R5,#0x10]
1132B8:  ADD.W           R0, R9, #4
1132BC:  STR             R0, [SP,#0x28+var_24]
1132BE:  MOVS            R0, #1
1132C0:  STRB.W          R0, [SP,#0x28+var_20]
1132C4:  MOV             R0, R9
1132C6:  STR.W           R10, [R5,#0x21]
1132CA:  STR.W           R10, [R5,#0x25]
1132CE:  STRD.W          R10, R10, [R5,#0x1C]
1132D2:  BL              sub_1132FC
1132D6:  MOV             R0, SP
1132D8:  MOVS            R1, #0
1132DA:  STR.W           R10, [SP,#0x28+var_28]
1132DE:  BL              sub_11340C
1132E2:  MOV.W           R10, #1
1132E6:  STRB.W          R10, [R8,#4]
1132EA:  STR.W           R5, [R8]
1132EE:  ADD             SP, SP, #0xC
1132F0:  POP.W           {R8-R11}
1132F4:  POP             {R4-R7,PC}
