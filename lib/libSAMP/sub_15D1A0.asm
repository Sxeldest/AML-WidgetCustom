; =========================================================
; Game Engine Function: sub_15D1A0
; Address            : 0x15D1A0 - 0x15D2D4
; =========================================================

15D1A0:  PUSH            {R4-R7,LR}
15D1A2:  ADD             R7, SP, #0xC
15D1A4:  PUSH.W          {R8-R11}
15D1A8:  SUB             SP, SP, #4
15D1AA:  MOV             R4, R0
15D1AC:  CMP             R1, #0
15D1AE:  BEQ             loc_15D22E
15D1B0:  MOV             R10, R1
15D1B2:  CMP.W           R1, #0x40000000
15D1B6:  BCS.W           loc_15D2CC
15D1BA:  MOV.W           R0, R10,LSL#2; unsigned int
15D1BE:  BLX             j__Znwj; operator new(uint)
15D1C2:  MOV             R1, R0
15D1C4:  LDR             R0, [R4]; void *
15D1C6:  STR             R1, [R4]
15D1C8:  CBZ             R0, loc_15D1CE
15D1CA:  BLX             j__ZdlPv; operator delete(void *)
15D1CE:  MOVS            R0, #0
15D1D0:  MOVS            R1, #0
15D1D2:  STR.W           R10, [R4,#4]
15D1D6:  LDR             R2, [R4]
15D1D8:  STR.W           R0, [R2,R1,LSL#2]
15D1DC:  ADDS            R1, #1
15D1DE:  CMP             R10, R1
15D1E0:  BNE             loc_15D1D6
15D1E2:  MOV             R6, R4
15D1E4:  LDR.W           R11, [R6,#8]!
15D1E8:  CMP.W           R11, #0
15D1EC:  BEQ             loc_15D2C4
15D1EE:  MOV.W           R0, #0x55555555
15D1F2:  MOV.W           R1, #0x33333333
15D1F6:  AND.W           R0, R0, R10,LSR#1
15D1FA:  LDR.W           R8, [R11,#4]
15D1FE:  SUB.W           R0, R10, R0
15D202:  AND.W           R1, R1, R0,LSR#2
15D206:  BIC.W           R0, R0, #0xCCCCCCCC
15D20A:  ADD             R0, R1
15D20C:  MOV.W           R1, #0x1010101
15D210:  ADD.W           R0, R0, R0,LSR#4
15D214:  BIC.W           R0, R0, #0xF0F0F0F0
15D218:  MULS            R0, R1
15D21A:  MOV.W           R9, R0,LSR#24
15D21E:  CMP.W           R9, #1
15D222:  BHI             loc_15D23E
15D224:  SUB.W           R0, R10, #1
15D228:  AND.W           R8, R8, R0
15D22C:  B               loc_15D24C
15D22E:  LDR             R0, [R4]; void *
15D230:  MOVS            R5, #0
15D232:  STR             R5, [R4]
15D234:  CBZ             R0, loc_15D23A
15D236:  BLX             j__ZdlPv; operator delete(void *)
15D23A:  STR             R5, [R4,#4]
15D23C:  B               loc_15D2C4
15D23E:  CMP             R8, R10
15D240:  BCC             loc_15D24C
15D242:  MOV             R0, R8
15D244:  MOV             R1, R10
15D246:  BLX             sub_221798
15D24A:  MOV             R8, R1
15D24C:  LDR             R0, [R4]
15D24E:  STR.W           R6, [R0,R8,LSL#2]
15D252:  LDR.W           R6, [R11]
15D256:  CBZ             R6, loc_15D2C4
15D258:  SUB.W           R12, R10, #1
15D25C:  LDR             R0, [R6,#4]
15D25E:  CMP.W           R9, #1
15D262:  BHI             loc_15D26A
15D264:  AND.W           R0, R0, R12
15D268:  B               loc_15D27A
15D26A:  CMP             R0, R10
15D26C:  BCC             loc_15D27A
15D26E:  MOV             R1, R10
15D270:  MOV             R5, R12
15D272:  BLX             sub_221798
15D276:  MOV             R12, R5
15D278:  MOV             R0, R1
15D27A:  CMP             R0, R8
15D27C:  BNE             loc_15D282
15D27E:  MOV             R11, R6
15D280:  B               loc_15D2BC
15D282:  LDR             R1, [R4]
15D284:  LDR.W           R2, [R1,R0,LSL#2]
15D288:  CMP             R2, #0
15D28A:  MOV             R2, R6
15D28C:  BEQ             loc_15D2B4
15D28E:  MOV             R1, R2
15D290:  LDR             R2, [R2]
15D292:  CBZ             R2, loc_15D29C
15D294:  LDRH            R3, [R2,#8]
15D296:  LDRH            R5, [R6,#8]
15D298:  CMP             R5, R3
15D29A:  BEQ             loc_15D28E
15D29C:  STR.W           R2, [R11]
15D2A0:  LDR             R2, [R4]
15D2A2:  LDR.W           R2, [R2,R0,LSL#2]
15D2A6:  LDR             R2, [R2]
15D2A8:  STR             R2, [R1]
15D2AA:  LDR             R1, [R4]
15D2AC:  LDR.W           R0, [R1,R0,LSL#2]
15D2B0:  STR             R6, [R0]
15D2B2:  B               loc_15D2BC
15D2B4:  STR.W           R11, [R1,R0,LSL#2]
15D2B8:  MOV             R11, R6
15D2BA:  MOV             R8, R0
15D2BC:  LDR.W           R6, [R11]
15D2C0:  CMP             R6, #0
15D2C2:  BNE             loc_15D25C
15D2C4:  ADD             SP, SP, #4
15D2C6:  POP.W           {R8-R11}
15D2CA:  POP             {R4-R7,PC}
15D2CC:  LDR             R0, =(aAllocatorTAllo - 0x15D2D2); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15D2CE:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15D2D0:  BL              sub_DC8D4
