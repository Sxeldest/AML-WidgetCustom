; =========================================================
; Game Engine Function: sub_20E3FE
; Address            : 0x20E3FE - 0x20E41A
; =========================================================

20E3FE:  PUSH            {R4,R5,R7,LR}
20E400:  ADD             R7, SP, #8
20E402:  SUBS            R5, R2, R1
20E404:  CMP             R5, #1
20E406:  BLT             locret_20E418
20E408:  LDR             R0, [R3]; dest
20E40A:  MOV             R2, R5; n
20E40C:  MOV             R4, R3
20E40E:  BLX             j_memcpy
20E412:  LDR             R0, [R4]
20E414:  ADD             R0, R5
20E416:  STR             R0, [R4]
20E418:  POP             {R4,R5,R7,PC}
