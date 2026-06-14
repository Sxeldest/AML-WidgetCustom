; =========================================================
; Game Engine Function: sub_FB398
; Address            : 0xFB398 - 0xFB46A
; =========================================================

FB398:  PUSH            {R4-R7,LR}
FB39A:  ADD             R7, SP, #0xC
FB39C:  PUSH.W          {R8-R11}
FB3A0:  SUB             SP, SP, #0xC
FB3A2:  MOVS            R6, #0
FB3A4:  CMP             R0, #0
FB3A6:  BEQ             loc_FB45E
FB3A8:  LDR.W           R9, [R7,#arg_0]
FB3AC:  MOV             R4, R0
FB3AE:  MOV             R10, R2
FB3B0:  SUBS            R2, R3, R1
FB3B2:  SUB.W           R5, R10, R1
FB3B6:  MOV             R8, R3
FB3B8:  LDR.W           R0, [R9,#0xC]
FB3BC:  SUBS            R0, R0, R2
FB3BE:  IT GT
FB3C0:  MOVGT           R6, R0
FB3C2:  CMP             R5, #1
FB3C4:  BLT             loc_FB3D4
FB3C6:  LDR             R0, [R4]
FB3C8:  MOV             R2, R5
FB3CA:  LDR             R3, [R0,#0x30]
FB3CC:  MOV             R0, R4
FB3CE:  BLX             R3
FB3D0:  CMP             R0, R5
FB3D2:  BNE             loc_FB45E
FB3D4:  CBZ             R6, loc_FB43E
FB3D6:  LDR             R2, [R7,#arg_4]
FB3D8:  CMP             R6, #0xB
FB3DA:  BCS             loc_FB3E8
FB3DC:  LSLS            R0, R6, #1
FB3DE:  STRB.W          R0, [SP,#0x28+var_28]
FB3E2:  MOV             R0, SP
FB3E4:  ADDS            R5, R0, #1
FB3E6:  B               loc_FB406
FB3E8:  ADD.W           R0, R6, #0x10
FB3EC:  MOV             R5, R2
FB3EE:  BIC.W           R11, R0, #0xF
FB3F2:  MOV             R0, R11; unsigned int
FB3F4:  BLX             j__Znwj; operator new(uint)
FB3F8:  MOV             R2, R5; c
FB3FA:  MOV             R5, R0
FB3FC:  STRD.W          R6, R0, [SP,#0x28+var_24]
FB400:  ADD.W           R0, R11, #1
FB404:  STR             R0, [SP,#0x28+var_28]
FB406:  MOV             R0, R5; int
FB408:  MOV             R1, R6; n
FB40A:  BLX             sub_22177C
FB40E:  MOVS            R1, #0
FB410:  LDR             R0, [R4]
FB412:  STRB            R1, [R5,R6]
FB414:  MOV             R3, SP
FB416:  LDRB.W          R2, [SP,#0x28+var_28]
FB41A:  LDR             R5, [R0,#0x30]
FB41C:  LDR             R1, [SP,#0x28+var_20]
FB41E:  LSLS            R0, R2, #0x1F
FB420:  IT EQ
FB422:  ADDEQ           R1, R3, #1
FB424:  MOV             R0, R4
FB426:  MOV             R2, R6
FB428:  BLX             R5
FB42A:  MOV             R5, R0
FB42C:  LDRB.W          R0, [SP,#0x28+var_28]
FB430:  LSLS            R0, R0, #0x1F
FB432:  ITT NE
FB434:  LDRNE           R0, [SP,#0x28+var_20]; void *
FB436:  BLXNE           j__ZdlPv; operator delete(void *)
FB43A:  CMP             R5, R6
FB43C:  BNE             loc_FB45E
FB43E:  SUB.W           R5, R8, R10
FB442:  CMP             R5, #1
FB444:  BLT             loc_FB456
FB446:  LDR             R0, [R4]
FB448:  MOV             R1, R10
FB44A:  MOV             R2, R5
FB44C:  LDR             R3, [R0,#0x30]
FB44E:  MOV             R0, R4
FB450:  BLX             R3
FB452:  CMP             R0, R5
FB454:  BNE             loc_FB45E
FB456:  MOVS            R0, #0
FB458:  STR.W           R0, [R9,#0xC]
FB45C:  B               loc_FB460
FB45E:  MOVS            R4, #0
FB460:  MOV             R0, R4
FB462:  ADD             SP, SP, #0xC
FB464:  POP.W           {R8-R11}
FB468:  POP             {R4-R7,PC}
