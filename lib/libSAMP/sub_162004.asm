; =========================================================
; Game Engine Function: sub_162004
; Address            : 0x162004 - 0x16201A
; =========================================================

162004:  PUSH            {R4,R6,R7,LR}
162006:  ADD             R7, SP, #8
162008:  MOV             R4, R0
16200A:  LDR             R0, [R0,#4]
16200C:  CBZ             R0, loc_162016
16200E:  BL              sub_1622A8
162012:  BLX             j__ZdlPv; operator delete(void *)
162016:  MOV             R0, R4
162018:  POP             {R4,R6,R7,PC}
