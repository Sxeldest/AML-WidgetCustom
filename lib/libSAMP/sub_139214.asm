; =========================================================
; Game Engine Function: sub_139214
; Address            : 0x139214 - 0x139348
; =========================================================

139214:  PUSH            {R4-R7,LR}
139216:  ADD             R7, SP, #0xC
139218:  PUSH.W          {R8-R11}
13921C:  SUB             SP, SP, #4
13921E:  MOV             R4, R0
139220:  CMP             R1, #0
139222:  BEQ             loc_1392A2
139224:  MOV             R10, R1
139226:  CMP.W           R1, #0x40000000
13922A:  BCS.W           loc_139340
13922E:  MOV.W           R0, R10,LSL#2; unsigned int
139232:  BLX             j__Znwj; operator new(uint)
139236:  MOV             R1, R0
139238:  LDR             R0, [R4]; void *
13923A:  STR             R1, [R4]
13923C:  CBZ             R0, loc_139242
13923E:  BLX             j__ZdlPv; operator delete(void *)
139242:  MOVS            R0, #0
139244:  MOVS            R1, #0
139246:  STR.W           R10, [R4,#4]
13924A:  LDR             R2, [R4]
13924C:  STR.W           R0, [R2,R1,LSL#2]
139250:  ADDS            R1, #1
139252:  CMP             R10, R1
139254:  BNE             loc_13924A
139256:  MOV             R6, R4
139258:  LDR.W           R11, [R6,#8]!
13925C:  CMP.W           R11, #0
139260:  BEQ             loc_139338
139262:  MOV.W           R0, #0x55555555
139266:  MOV.W           R1, #0x33333333
13926A:  AND.W           R0, R0, R10,LSR#1
13926E:  LDR.W           R8, [R11,#4]
139272:  SUB.W           R0, R10, R0
139276:  AND.W           R1, R1, R0,LSR#2
13927A:  BIC.W           R0, R0, #0xCCCCCCCC
13927E:  ADD             R0, R1
139280:  MOV.W           R1, #0x1010101
139284:  ADD.W           R0, R0, R0,LSR#4
139288:  BIC.W           R0, R0, #0xF0F0F0F0
13928C:  MULS            R0, R1
13928E:  MOV.W           R9, R0,LSR#24
139292:  CMP.W           R9, #1
139296:  BHI             loc_1392B2
139298:  SUB.W           R0, R10, #1
13929C:  AND.W           R8, R8, R0
1392A0:  B               loc_1392C0
1392A2:  LDR             R0, [R4]; void *
1392A4:  MOVS            R5, #0
1392A6:  STR             R5, [R4]
1392A8:  CBZ             R0, loc_1392AE
1392AA:  BLX             j__ZdlPv; operator delete(void *)
1392AE:  STR             R5, [R4,#4]
1392B0:  B               loc_139338
1392B2:  CMP             R8, R10
1392B4:  BCC             loc_1392C0
1392B6:  MOV             R0, R8
1392B8:  MOV             R1, R10
1392BA:  BLX             sub_221798
1392BE:  MOV             R8, R1
1392C0:  LDR             R0, [R4]
1392C2:  STR.W           R6, [R0,R8,LSL#2]
1392C6:  LDR.W           R6, [R11]
1392CA:  CBZ             R6, loc_139338
1392CC:  SUB.W           R12, R10, #1
1392D0:  LDR             R0, [R6,#4]
1392D2:  CMP.W           R9, #1
1392D6:  BHI             loc_1392DE
1392D8:  AND.W           R0, R0, R12
1392DC:  B               loc_1392EE
1392DE:  CMP             R0, R10
1392E0:  BCC             loc_1392EE
1392E2:  MOV             R1, R10
1392E4:  MOV             R5, R12
1392E6:  BLX             sub_221798
1392EA:  MOV             R12, R5
1392EC:  MOV             R0, R1
1392EE:  CMP             R0, R8
1392F0:  BNE             loc_1392F6
1392F2:  MOV             R11, R6
1392F4:  B               loc_139330
1392F6:  LDR             R1, [R4]
1392F8:  LDR.W           R2, [R1,R0,LSL#2]
1392FC:  CMP             R2, #0
1392FE:  MOV             R2, R6
139300:  BEQ             loc_139328
139302:  MOV             R1, R2
139304:  LDR             R2, [R2]
139306:  CBZ             R2, loc_139310
139308:  LDRB            R3, [R2,#8]
13930A:  LDRB            R5, [R6,#8]
13930C:  CMP             R5, R3
13930E:  BEQ             loc_139302
139310:  STR.W           R2, [R11]
139314:  LDR             R2, [R4]
139316:  LDR.W           R2, [R2,R0,LSL#2]
13931A:  LDR             R2, [R2]
13931C:  STR             R2, [R1]
13931E:  LDR             R1, [R4]
139320:  LDR.W           R0, [R1,R0,LSL#2]
139324:  STR             R6, [R0]
139326:  B               loc_139330
139328:  STR.W           R11, [R1,R0,LSL#2]
13932C:  MOV             R11, R6
13932E:  MOV             R8, R0
139330:  LDR.W           R6, [R11]
139334:  CMP             R6, #0
139336:  BNE             loc_1392D0
139338:  ADD             SP, SP, #4
13933A:  POP.W           {R8-R11}
13933E:  POP             {R4-R7,PC}
139340:  LDR             R0, =(aAllocatorTAllo - 0x139346); "allocator<T>::allocate(size_t n) 'n' ex"... ...
139342:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
139344:  BL              sub_DC8D4
