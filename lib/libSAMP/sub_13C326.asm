; =========================================================
; Game Engine Function: sub_13C326
; Address            : 0x13C326 - 0x13C33E
; =========================================================

13C326:  PUSH            {R4,R6,R7,LR}
13C328:  ADD             R7, SP, #8
13C32A:  LDR             R1, [R0,#4]
13C32C:  MOV             R4, R0
13C32E:  BL              sub_13C33E
13C332:  LDR             R0, [R4]; void *
13C334:  CBZ             R0, loc_13C33A
13C336:  BLX             j__ZdlPv; operator delete(void *)
13C33A:  MOV             R0, R4
13C33C:  POP             {R4,R6,R7,PC}
