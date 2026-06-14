; =========================================================
; Game Engine Function: sub_18D30C
; Address            : 0x18D30C - 0x18D328
; =========================================================

18D30C:  PUSH            {R4,R6,R7,LR}
18D30E:  ADD             R7, SP, #8
18D310:  MOVS            R1, #0
18D312:  MOV             R4, R0
18D314:  BL              sub_18D390
18D318:  LDR             R0, [R4,#8]
18D31A:  CBZ             R0, loc_18D324
18D31C:  LDR             R0, [R4]; void *
18D31E:  CBZ             R0, loc_18D324
18D320:  BLX             j__ZdaPv; operator delete[](void *)
18D324:  MOV             R0, R4
18D326:  POP             {R4,R6,R7,PC}
