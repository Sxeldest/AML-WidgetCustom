; =========================================================
; Game Engine Function: sub_1869CA
; Address            : 0x1869CA - 0x186A4E
; =========================================================

1869CA:  PUSH            {R4-R7,LR}
1869CC:  ADD             R7, SP, #0xC
1869CE:  PUSH.W          {R8-R11}
1869D2:  SUB             SP, SP, #4
1869D4:  MOV             R6, R0
1869D6:  LDRD.W          R4, R0, [R0,#4]
1869DA:  MOV             R9, R3
1869DC:  MOV             R8, R2
1869DE:  MOV             R10, R1
1869E0:  CMP             R4, R0
1869E2:  BNE             loc_186A2C
1869E4:  LSLS            R1, R4, #1
1869E6:  MOVS            R0, #0xC
1869E8:  CMP             R4, #0
1869EA:  IT EQ
1869EC:  MOVEQ           R1, #0x10
1869EE:  UMULL.W         R0, R2, R1, R0
1869F2:  STR             R1, [R6,#8]
1869F4:  CMP             R2, #0
1869F6:  IT NE
1869F8:  MOVNE           R2, #1
1869FA:  CMP             R2, #0
1869FC:  IT NE
1869FE:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
186A02:  BLX             j__Znaj; operator new[](uint)
186A06:  LDR.W           R11, [R6]
186A0A:  MOV             R5, R0
186A0C:  ADD.W           R0, R4, R4,LSL#1
186A10:  LSLS            R2, R0, #2; n
186A12:  MOV             R0, R5; dest
186A14:  MOV             R1, R11; src
186A16:  BLX             j_memcpy
186A1A:  CMP.W           R11, #0
186A1E:  BEQ             loc_186A28
186A20:  MOV             R0, R11; void *
186A22:  BLX             j__ZdaPv; operator delete[](void *)
186A26:  LDR             R4, [R6,#4]
186A28:  STR             R5, [R6]
186A2A:  B               loc_186A2E
186A2C:  LDR             R5, [R6]
186A2E:  ADD.W           R0, R4, R4,LSL#1
186A32:  ADDS            R1, R4, #1
186A34:  STR             R1, [R6,#4]
186A36:  STR.W           R10, [R5,R0,LSL#2]
186A3A:  ADD.W           R0, R5, R0,LSL#2
186A3E:  STR.W           R9, [R0,#8]
186A42:  STRH.W          R8, [R0,#4]
186A46:  ADD             SP, SP, #4
186A48:  POP.W           {R8-R11}
186A4C:  POP             {R4-R7,PC}
