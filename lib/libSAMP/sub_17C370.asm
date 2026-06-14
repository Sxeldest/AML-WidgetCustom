; =========================================================
; Game Engine Function: sub_17C370
; Address            : 0x17C370 - 0x17C440
; =========================================================

17C370:  PUSH            {R4-R7,LR}
17C372:  ADD             R7, SP, #0xC
17C374:  PUSH.W          {R8-R10}
17C378:  SUB             SP, SP, #0x10
17C37A:  MOV             R5, R2
17C37C:  MOV             R8, R1
17C37E:  MOV             R10, R0
17C380:  BL              sub_17C080
17C384:  CMP             R0, #0
17C386:  BEQ             loc_17C428
17C388:  MOV             R4, R0
17C38A:  LDRB            R0, [R5]
17C38C:  ADD.W           R9, SP, #0x28+var_24
17C390:  LDRD.W          R2, R1, [R5,#4]
17C394:  ANDS.W          R3, R0, #1
17C398:  ITT EQ
17C39A:  ADDEQ           R1, R5, #1
17C39C:  LSREQ           R2, R0, #1
17C39E:  MOV             R0, R9
17C3A0:  BL              sub_164D04
17C3A4:  LDR             R0, [R4]
17C3A6:  LDRB.W          R2, [SP,#0x28+var_24]
17C3AA:  LDR             R1, [SP,#0x28+var_20]
17C3AC:  LDR.W           R3, [R0,#0x2C0]
17C3B0:  LSLS            R0, R2, #0x1F
17C3B2:  IT EQ
17C3B4:  LSREQ           R1, R2, #1
17C3B6:  MOV             R0, R4
17C3B8:  BLX             R3
17C3BA:  LDR             R1, [R4]
17C3BC:  MOV             R5, R0
17C3BE:  LDRB.W          R2, [SP,#0x28+var_24]
17C3C2:  LDRD.W          R3, R0, [SP,#0x28+var_20]
17C3C6:  LDR.W           R6, [R1,#0x340]
17C3CA:  ANDS.W          R1, R2, #1
17C3CE:  IT EQ
17C3D0:  ADDEQ.W         R0, R9, #1
17C3D4:  STR             R0, [SP,#0x28+var_28]
17C3D6:  CMP             R1, #0
17C3D8:  IT EQ
17C3DA:  LSREQ           R3, R2, #1
17C3DC:  MOV             R0, R4
17C3DE:  MOV             R1, R5
17C3E0:  MOVS            R2, #0
17C3E2:  BLX             R6
17C3E4:  LDR.W           R1, [R10]
17C3E8:  LDR.W           R2, [R10,#0xC]
17C3EC:  MOV             R0, R4
17C3EE:  MOV             R3, R8
17C3F0:  STR             R5, [SP,#0x28+var_28]
17C3F2:  BL              sub_17C1B8
17C3F6:  LDR             R0, [R4]
17C3F8:  LDR.W           R1, [R0,#0x390]
17C3FC:  MOV             R0, R4
17C3FE:  BLX             R1
17C400:  CBZ             R0, loc_17C412
17C402:  LDR             R0, [R4]
17C404:  LDR             R1, [R0,#0x40]
17C406:  MOV             R0, R4
17C408:  BLX             R1
17C40A:  LDR             R0, [R4]
17C40C:  LDR             R1, [R0,#0x44]
17C40E:  MOV             R0, R4
17C410:  BLX             R1
17C412:  LDRB.W          R0, [SP,#0x28+var_24]
17C416:  LSLS            R0, R0, #0x1F
17C418:  ITT NE
17C41A:  LDRNE           R0, [SP,#0x28+var_1C]; void *
17C41C:  BLXNE           j__ZdlPv; operator delete(void *)
17C420:  ADD             SP, SP, #0x10
17C422:  POP.W           {R8-R10}
17C426:  POP             {R4-R7,PC}
17C428:  LDR             R1, =(aAxl - 0x17C432); "AXL" ...
17C42A:  MOVS            R0, #4
17C42C:  LDR             R2, =(aEnvNotLoadedSe_1 - 0x17C434); "Env not loaded. (SetBinderName)" ...
17C42E:  ADD             R1, PC; "AXL"
17C430:  ADD             R2, PC; "Env not loaded. (SetBinderName)"
17C432:  ADD             SP, SP, #0x10
17C434:  POP.W           {R8-R10}
17C438:  POP.W           {R4-R7,LR}
17C43C:  B.W             sub_2242C8
