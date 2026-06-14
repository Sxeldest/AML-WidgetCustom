; =========================================================
; Game Engine Function: sub_18A206
; Address            : 0x18A206 - 0x18A274
; =========================================================

18A206:  PUSH            {R4-R7,LR}
18A208:  ADD             R7, SP, #0xC
18A20A:  PUSH.W          {R8,R9,R11}
18A20E:  MOV             R4, R0
18A210:  LDRD.W          R5, R0, [R0,#4]
18A214:  MOV             R8, R1
18A216:  CMP             R5, R0
18A218:  BNE             loc_18A264
18A21A:  MOVW            R1, #0xFFFE
18A21E:  LSLS            R0, R5, #1
18A220:  MOVT            R1, #0x3FFF
18A224:  CMP             R5, #0
18A226:  IT EQ
18A228:  MOVEQ           R0, #0x10
18A22A:  ANDS            R1, R0
18A22C:  STR             R0, [R4,#8]
18A22E:  SUBS            R1, R0, R1
18A230:  MOV.W           R0, R0,LSL#2
18A234:  IT NE
18A236:  MOVNE           R1, #1
18A238:  CMP             R1, #0
18A23A:  IT NE
18A23C:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18A240:  BLX             j__Znaj; operator new[](uint)
18A244:  LDR.W           R9, [R4]
18A248:  LSLS            R2, R5, #2; n
18A24A:  MOV             R6, R0
18A24C:  MOV             R1, R9; src
18A24E:  BLX             j_memcpy
18A252:  CMP.W           R9, #0
18A256:  BEQ             loc_18A260
18A258:  MOV             R0, R9; void *
18A25A:  BLX             j__ZdaPv; operator delete[](void *)
18A25E:  LDR             R5, [R4,#4]
18A260:  STR             R6, [R4]
18A262:  B               loc_18A266
18A264:  LDR             R6, [R4]
18A266:  ADDS            R0, R5, #1
18A268:  STR.W           R8, [R6,R5,LSL#2]
18A26C:  STR             R0, [R4,#4]
18A26E:  POP.W           {R8,R9,R11}
18A272:  POP             {R4-R7,PC}
