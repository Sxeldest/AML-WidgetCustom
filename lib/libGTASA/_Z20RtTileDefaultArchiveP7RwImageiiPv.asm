; =========================================================
; Game Engine Function: _Z20RtTileDefaultArchiveP7RwImageiiPv
; Address            : 0x212518 - 0x2125F4
; =========================================================

212518:  PUSH            {R4-R7,LR}
21251A:  ADD             R7, SP, #0xC
21251C:  PUSH.W          {R8-R11}
212520:  SUB             SP, SP, #0xC
212522:  MOV             R5, R3
212524:  MOV             R4, R0
212526:  CMP             R5, #0
212528:  BEQ             loc_2125EA
21252A:  LDR             R0, [R5,#0x1C]
21252C:  CMP             R0, R1
21252E:  BLE             loc_2125D2
212530:  LDR             R6, [R5,#0x18]
212532:  CMP             R6, #1
212534:  BLT             loc_2125D2
212536:  LDR             R3, [R4,#0x10]
212538:  MUL.W           R9, R6, R2
21253C:  LDR             R0, [R5,#0xC]
21253E:  STRD.W          R4, R3, [SP,#0x28+var_24]
212542:  LDR.W           R12, [R4,#0x14]
212546:  ADD.W           LR, R0, R0,LSL#1
21254A:  LDR             R4, [R5,#0x14]
21254C:  LDR.W           R10, [R5,#0x30]
212550:  MUL.W           R0, R1, R4
212554:  ADD.W           R0, R0, R0,LSL#1
212558:  ADD.W           R6, R10, R0
21255C:  MOV.W           R10, #0
212560:  CMP             R4, #0
212562:  BGT             loc_212592
212564:  LDR             R0, [R5]
212566:  LDR             R2, [SP,#0x28+var_20]
212568:  ADD             R6, LR
21256A:  CMP             R0, #1
21256C:  ADD             R12, R2
21256E:  BEQ             loc_212578
212570:  B               loc_21257E
212572:  LDR             R0, [SP,#0x28+var_20]
212574:  ADD             R6, LR
212576:  ADD             R12, R0
212578:  LDR             R0, [R5,#0x2C]
21257A:  CMP             R9, R0
21257C:  BGT             loc_2125CE
21257E:  LDR             R0, [R5,#0x18]
212580:  ADD.W           R10, R10, #1
212584:  CMP             R10, R0
212586:  BGE             loc_2125CE
212588:  LDR             R4, [R5,#0x14]
21258A:  ADD.W           R9, R9, #1
21258E:  CMP             R4, #0
212590:  BLE             loc_212564
212592:  MUL.W           R11, R4, R1
212596:  MOVS            R2, #0
212598:  ADD.W           R0, R12, R2,LSL#2
21259C:  ADD.W           R4, R2, R2,LSL#1
2125A0:  LDRB.W          R8, [R0,#2]
2125A4:  STRB.W          R8, [R6,R4]
2125A8:  ADD             R4, R6
2125AA:  LDRB            R0, [R0,#1]
2125AC:  STRB            R0, [R4,#1]
2125AE:  LDRB.W          R0, [R12,R2,LSL#2]
2125B2:  STRB            R0, [R4,#2]
2125B4:  LDR             R0, [R5]
2125B6:  CMP             R0, #1
2125B8:  BNE             loc_2125C4
2125BA:  LDR             R3, [R5,#0x28]
2125BC:  ADD.W           R4, R11, R2
2125C0:  CMP             R4, R3
2125C2:  BGT             loc_212572
2125C4:  LDR             R3, [R5,#0x14]
2125C6:  ADDS            R2, #1
2125C8:  CMP             R2, R3
2125CA:  BLT             loc_212598
2125CC:  B               loc_212566
2125CE:  LDR             R0, [R5,#0x1C]
2125D0:  LDR             R4, [SP,#0x28+var_24]
2125D2:  SUBS            R0, #1
2125D4:  CMP             R0, R1
2125D6:  BGT             loc_2125EA
2125D8:  LDR             R0, [R5,#8]; int
2125DA:  LDR             R2, [R5,#0x24]; size_t
2125DC:  LDR             R1, [R5,#0x30]; void *
2125DE:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
2125E2:  LDR             R1, [R5,#0x24]
2125E4:  LDR             R0, [R5,#0x30]
2125E6:  BLX             j___aeabi_memclr8_1
2125EA:  MOV             R0, R4
2125EC:  ADD             SP, SP, #0xC
2125EE:  POP.W           {R8-R11}
2125F2:  POP             {R4-R7,PC}
