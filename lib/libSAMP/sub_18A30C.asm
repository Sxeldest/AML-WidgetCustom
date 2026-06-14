; =========================================================
; Game Engine Function: sub_18A30C
; Address            : 0x18A30C - 0x18A3C6
; =========================================================

18A30C:  PUSH            {R4-R7,LR}
18A30E:  ADD             R7, SP, #0xC
18A310:  PUSH.W          {R8,R9,R11}
18A314:  SUB             SP, SP, #0x10
18A316:  MOV             R4, R0
18A318:  MOVS            R0, #0x10
18A31A:  STR             R0, [SP,#0x28+var_1C]
18A31C:  MOVS            R0, #0x40 ; '@'; unsigned int
18A31E:  BLX             j__Znaj; operator new[](uint)
18A322:  MOVS            R5, #0
18A324:  STR             R5, [SP,#0x28+var_20]
18A326:  STRD.W          R0, R5, [SP,#0x28+var_28]
18A32A:  ADD.W           R1, R4, #0x10
18A32E:  MOV             R0, SP
18A330:  BL              sub_18A3DA
18A334:  LDRD.W          R1, R2, [SP,#0x28+var_24]
18A338:  LDR             R0, [SP,#0x28+var_1C]
18A33A:  CMP             R2, R1
18A33C:  SUB.W           R2, R2, R1
18A340:  IT CC
18A342:  NEGCC           R5, R0
18A344:  CMP             R2, R5
18A346:  BEQ             loc_18A3B4
18A348:  ADD.W           R8, R4, #4
18A34C:  MOV             R9, SP
18A34E:  ADDS            R1, #1
18A350:  LDR             R2, [SP,#0x28+var_28]
18A352:  SUBS            R3, R1, R0
18A354:  IT NE
18A356:  MOVNE           R3, R1
18A358:  STR             R3, [SP,#0x28+var_24]
18A35A:  CMP             R3, #0
18A35C:  IT EQ
18A35E:  MOVEQ           R3, R0
18A360:  ADD.W           R0, R2, R3,LSL#2
18A364:  LDR.W           R6, [R0,#-4]
18A368:  LDRB            R0, [R6]
18A36A:  CBNZ            R0, loc_18A38C
18A36C:  LDR             R0, [R6,#4]
18A36E:  CMP             R0, #0
18A370:  BMI             loc_18A38C
18A372:  ADD.W           R4, R6, #0xD0
18A376:  MOV.W           R5, #0xFFFFFFFF
18A37A:  MOV             R0, R9
18A37C:  MOV             R1, R4
18A37E:  BL              sub_18A3DA
18A382:  LDR             R0, [R6,#4]
18A384:  ADDS            R5, #1
18A386:  ADDS            R4, #4
18A388:  CMP             R5, R0
18A38A:  BLT             loc_18A37A
18A38C:  MOV             R0, R8
18A38E:  MOV             R1, R6
18A390:  BL              sub_18A206
18A394:  MOV             R0, R6; int
18A396:  MOV.W           R1, #0x154; n
18A39A:  BLX             sub_22178C
18A39E:  LDRD.W          R1, R2, [SP,#0x28+var_24]
18A3A2:  MOVS            R3, #0
18A3A4:  LDR             R0, [SP,#0x28+var_1C]
18A3A6:  CMP             R2, R1
18A3A8:  SUB.W           R2, R2, R1
18A3AC:  IT CC
18A3AE:  NEGCC           R3, R0
18A3B0:  CMP             R2, R3
18A3B2:  BNE             loc_18A34E
18A3B4:  CBZ             R0, loc_18A3BE
18A3B6:  LDR             R0, [SP,#0x28+var_28]; void *
18A3B8:  CBZ             R0, loc_18A3BE
18A3BA:  BLX             j__ZdaPv; operator delete[](void *)
18A3BE:  ADD             SP, SP, #0x10
18A3C0:  POP.W           {R8,R9,R11}
18A3C4:  POP             {R4-R7,PC}
