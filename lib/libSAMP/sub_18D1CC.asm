; =========================================================
; Game Engine Function: sub_18D1CC
; Address            : 0x18D1CC - 0x18D246
; =========================================================

18D1CC:  PUSH            {R4-R7,LR}
18D1CE:  ADD             R7, SP, #0xC
18D1D0:  PUSH.W          {R8-R10}
18D1D4:  MOV             R4, R0
18D1D6:  LDRD.W          R6, R0, [R0,#4]
18D1DA:  MOV             R8, R2
18D1DC:  MOV             R9, R1
18D1DE:  CMP             R6, R0
18D1E0:  BNE             loc_18D22C
18D1E2:  MOVW            R1, #0xFFFE
18D1E6:  LSLS            R0, R6, #1
18D1E8:  MOVT            R1, #0x1FFF
18D1EC:  CMP             R6, #0
18D1EE:  IT EQ
18D1F0:  MOVEQ           R0, #0x10
18D1F2:  ANDS            R1, R0
18D1F4:  STR             R0, [R4,#8]
18D1F6:  SUBS            R1, R0, R1
18D1F8:  MOV.W           R0, R0,LSL#3
18D1FC:  IT NE
18D1FE:  MOVNE           R1, #1
18D200:  CMP             R1, #0
18D202:  IT NE
18D204:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18D208:  BLX             j__Znaj; operator new[](uint)
18D20C:  LDR.W           R10, [R4]
18D210:  LSLS            R2, R6, #3; n
18D212:  MOV             R5, R0
18D214:  MOV             R1, R10; src
18D216:  BLX             j_memcpy
18D21A:  CMP.W           R10, #0
18D21E:  BEQ             loc_18D228
18D220:  MOV             R0, R10; void *
18D222:  BLX             j__ZdaPv; operator delete[](void *)
18D226:  LDR             R6, [R4,#4]
18D228:  STR             R5, [R4]
18D22A:  B               loc_18D22E
18D22C:  LDR             R5, [R4]
18D22E:  ADD.W           R0, R5, R6,LSL#3
18D232:  STR.W           R9, [R5,R6,LSL#3]
18D236:  STR.W           R8, [R0,#4]
18D23A:  LDR             R0, [R4,#4]
18D23C:  ADDS            R0, #1
18D23E:  STR             R0, [R4,#4]
18D240:  POP.W           {R8-R10}
18D244:  POP             {R4-R7,PC}
