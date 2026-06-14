; =========================================================
; Game Engine Function: sub_18D246
; Address            : 0x18D246 - 0x18D2DA
; =========================================================

18D246:  PUSH            {R4-R7,LR}
18D248:  ADD             R7, SP, #0xC
18D24A:  PUSH.W          {R8-R11}
18D24E:  SUB             SP, SP, #4
18D250:  MOV             R4, R0
18D252:  LDRD.W          R5, R0, [R0,#4]
18D256:  MOV             R11, R3
18D258:  MOV             R8, R2
18D25A:  MOV             R9, R1
18D25C:  CMP             R5, R0
18D25E:  BNE             loc_18D2AA
18D260:  MOVW            R1, #0xFFFE
18D264:  LSLS            R0, R5, #1
18D266:  MOVT            R1, #0x1FFF
18D26A:  CMP             R5, #0
18D26C:  IT EQ
18D26E:  MOVEQ           R0, #0x10
18D270:  ANDS            R1, R0
18D272:  STR             R0, [R4,#8]
18D274:  SUBS            R1, R0, R1
18D276:  MOV.W           R0, R0,LSL#3
18D27A:  IT NE
18D27C:  MOVNE           R1, #1
18D27E:  CMP             R1, #0
18D280:  IT NE
18D282:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18D286:  BLX             j__Znaj; operator new[](uint)
18D28A:  LDR.W           R10, [R4]
18D28E:  LSLS            R2, R5, #3; n
18D290:  MOV             R6, R0
18D292:  MOV             R1, R10; src
18D294:  BLX             j_memcpy
18D298:  CMP.W           R10, #0
18D29C:  BEQ             loc_18D2A6
18D29E:  MOV             R0, R10; void *
18D2A0:  BLX             j__ZdaPv; operator delete[](void *)
18D2A4:  LDR             R5, [R4,#4]
18D2A6:  STR             R6, [R4]
18D2A8:  B               loc_18D2AC
18D2AA:  LDR             R6, [R4]
18D2AC:  SUB.W           R2, R5, R11
18D2B0:  ADD.W           R1, R6, R11,LSL#3; src
18D2B4:  ADD.W           R0, R1, #8; dest
18D2B8:  LSLS            R2, R2, #3; n
18D2BA:  BLX             j_memmove
18D2BE:  LDR             R0, [R4]
18D2C0:  STR.W           R9, [R0,R11,LSL#3]
18D2C4:  ADD.W           R0, R0, R11,LSL#3
18D2C8:  STR.W           R8, [R0,#4]
18D2CC:  LDR             R0, [R4,#4]
18D2CE:  ADDS            R0, #1
18D2D0:  STR             R0, [R4,#4]
18D2D2:  ADD             SP, SP, #4
18D2D4:  POP.W           {R8-R11}
18D2D8:  POP             {R4-R7,PC}
