; =========================================================
; Game Engine Function: sub_182102
; Address            : 0x182102 - 0x182170
; =========================================================

182102:  PUSH            {R4-R7,LR}
182104:  ADD             R7, SP, #0xC
182106:  PUSH.W          {R8,R9,R11}
18210A:  MOV             R4, R0
18210C:  LDRD.W          R5, R0, [R0,#4]
182110:  MOV             R8, R1
182112:  CMP             R5, R0
182114:  BNE             loc_182160
182116:  MOVW            R1, #0xFFFE
18211A:  LSLS            R0, R5, #1
18211C:  MOVT            R1, #0x3FFF
182120:  CMP             R5, #0
182122:  IT EQ
182124:  MOVEQ           R0, #0x10
182126:  ANDS            R1, R0
182128:  STR             R0, [R4,#8]
18212A:  SUBS            R1, R0, R1
18212C:  MOV.W           R0, R0,LSL#2
182130:  IT NE
182132:  MOVNE           R1, #1
182134:  CMP             R1, #0
182136:  IT NE
182138:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18213C:  BLX             j__Znaj; operator new[](uint)
182140:  LDR.W           R9, [R4]
182144:  LSLS            R2, R5, #2; n
182146:  MOV             R6, R0
182148:  MOV             R1, R9; src
18214A:  BLX             j_memcpy
18214E:  CMP.W           R9, #0
182152:  BEQ             loc_18215C
182154:  MOV             R0, R9; void *
182156:  BLX             j__ZdaPv; operator delete[](void *)
18215A:  LDR             R5, [R4,#4]
18215C:  STR             R6, [R4]
18215E:  B               loc_182162
182160:  LDR             R6, [R4]
182162:  ADDS            R0, R5, #1
182164:  STR.W           R8, [R6,R5,LSL#2]
182168:  STR             R0, [R4,#4]
18216A:  POP.W           {R8,R9,R11}
18216E:  POP             {R4-R7,PC}
