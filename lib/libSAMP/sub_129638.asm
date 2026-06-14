; =========================================================
; Game Engine Function: sub_129638
; Address            : 0x129638 - 0x12964E
; =========================================================

129638:  PUSH            {R4,R6,R7,LR}
12963A:  ADD             R7, SP, #8
12963C:  MOV             R4, R0
12963E:  LDR             R0, [R0,#4]
129640:  CBZ             R0, loc_12964A
129642:  BL              sub_129848
129646:  BLX             j__ZdlPv; operator delete(void *)
12964A:  MOV             R0, R4
12964C:  POP             {R4,R6,R7,PC}
