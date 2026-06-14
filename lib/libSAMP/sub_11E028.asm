; =========================================================
; Game Engine Function: sub_11E028
; Address            : 0x11E028 - 0x11E03E
; =========================================================

11E028:  PUSH            {R4,R6,R7,LR}
11E02A:  ADD             R7, SP, #8
11E02C:  MOV             R4, R0
11E02E:  LDR             R0, [R0,#4]
11E030:  CBZ             R0, loc_11E03A
11E032:  BL              sub_11E1B0
11E036:  BLX             j__ZdlPv; operator delete(void *)
11E03A:  MOV             R0, R4
11E03C:  POP             {R4,R6,R7,PC}
