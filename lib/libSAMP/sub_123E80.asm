; =========================================================
; Game Engine Function: sub_123E80
; Address            : 0x123E80 - 0x123E96
; =========================================================

123E80:  PUSH            {R4,R6,R7,LR}
123E82:  ADD             R7, SP, #8
123E84:  MOV             R4, R0
123E86:  LDR             R0, [R0,#4]
123E88:  CBZ             R0, loc_123E92
123E8A:  BL              sub_1240F4
123E8E:  BLX             j__ZdlPv; operator delete(void *)
123E92:  MOV             R0, R4
123E94:  POP             {R4,R6,R7,PC}
