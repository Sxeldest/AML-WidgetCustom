; =========================================================
; Game Engine Function: _Z23jinit_c_main_controllerP20jpeg_compress_structh
; Address            : 0x478388 - 0x478412
; =========================================================

478388:  PUSH            {R4-R7,LR}
47838A:  ADD             R7, SP, #0xC
47838C:  PUSH.W          {R8,R9,R11}
478390:  MOV             R9, R0
478392:  MOV             R5, R1
478394:  LDR.W           R0, [R9,#4]
478398:  MOVS            R1, #1
47839A:  MOVS            R2, #0x28 ; '('
47839C:  LDR             R3, [R0]
47839E:  MOV             R0, R9
4783A0:  BLX             R3
4783A2:  LDR             R1, =(sub_478418+1 - 0x4783AC)
4783A4:  STR.W           R0, [R9,#0x140]
4783A8:  ADD             R1, PC; sub_478418
4783AA:  STR             R1, [R0]
4783AC:  LDRB.W          R1, [R9,#0xB0]
4783B0:  CBZ             R1, loc_4783B8
4783B2:  POP.W           {R8,R9,R11}
4783B6:  POP             {R4-R7,PC}
4783B8:  CBZ             R5, loc_4783D4
4783BA:  LDR.W           R0, [R9]
4783BE:  MOVS            R1, #4
4783C0:  STR             R1, [R0,#0x14]
4783C2:  LDR.W           R0, [R9]
4783C6:  LDR             R1, [R0]
4783C8:  MOV             R0, R9
4783CA:  POP.W           {R8,R9,R11}
4783CE:  POP.W           {R4-R7,LR}
4783D2:  BX              R1
4783D4:  LDR.W           R1, [R9,#0x3C]
4783D8:  CMP             R1, #1
4783DA:  BLT             loc_4783B2
4783DC:  LDR.W           R1, [R9,#0x44]
4783E0:  ADD.W           R8, R0, #0x18
4783E4:  MOVS            R5, #0
4783E6:  ADD.W           R6, R1, #0x1C
4783EA:  LDR.W           R0, [R9,#4]
4783EE:  LDR.W           R3, [R6,#-0x10]
4783F2:  LDR             R1, [R6]
4783F4:  LDR             R4, [R0,#8]
4783F6:  MOV             R0, R9
4783F8:  LSLS            R3, R3, #3
4783FA:  LSLS            R2, R1, #3
4783FC:  MOVS            R1, #1
4783FE:  BLX             R4
478400:  STR.W           R0, [R8,R5,LSL#2]
478404:  ADDS            R6, #0x54 ; 'T'
478406:  ADDS            R5, #1
478408:  LDR.W           R0, [R9,#0x3C]
47840C:  CMP             R5, R0
47840E:  BLT             loc_4783EA
478410:  B               loc_4783B2
