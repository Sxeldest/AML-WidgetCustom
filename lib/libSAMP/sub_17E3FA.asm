; =========================================================
; Game Engine Function: sub_17E3FA
; Address            : 0x17E3FA - 0x17E430
; =========================================================

17E3FA:  PUSH            {R4,R5,R7,LR}
17E3FC:  ADD             R7, SP, #8
17E3FE:  MOV             R5, R0
17E400:  LDR             R0, [R0]; void *
17E402:  MOV             R4, R1
17E404:  CBZ             R0, loc_17E40A
17E406:  BLX             j__ZdaPv; operator delete[](void *)
17E40A:  BIC.W           R0, R4, #0xC0000000
17E40E:  SUBS            R1, R4, R0
17E410:  MOV.W           R0, R4,LSL#2
17E414:  IT NE
17E416:  MOVNE           R1, #1
17E418:  CMP             R1, #0
17E41A:  IT NE
17E41C:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
17E420:  BLX             j__Znaj; operator new[](uint)
17E424:  MOVS            R1, #0
17E426:  STRD.W          R0, R1, [R5]
17E42A:  STRD.W          R1, R4, [R5,#8]
17E42E:  POP             {R4,R5,R7,PC}
