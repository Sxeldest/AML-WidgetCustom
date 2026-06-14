; =========================================================
; Game Engine Function: sub_187380
; Address            : 0x187380 - 0x187396
; =========================================================

187380:  PUSH            {R4,R6,R7,LR}
187382:  ADD             R7, SP, #8
187384:  MOV             R4, R0
187386:  LDR             R0, [R0,#0xC]
187388:  CBZ             R0, loc_187392
18738A:  LDR             R0, [R4]; void *
18738C:  CBZ             R0, loc_187392
18738E:  BLX             j__ZdaPv; operator delete[](void *)
187392:  MOV             R0, R4
187394:  POP             {R4,R6,R7,PC}
