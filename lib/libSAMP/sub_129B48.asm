; =========================================================
; Game Engine Function: sub_129B48
; Address            : 0x129B48 - 0x129B5E
; =========================================================

129B48:  PUSH            {R4,R6,R7,LR}
129B4A:  ADD             R7, SP, #8
129B4C:  MOV             R4, R0
129B4E:  LDR             R0, [R0,#4]
129B50:  CBZ             R0, loc_129B5A
129B52:  BL              sub_129BEC
129B56:  BLX             j__ZdlPv; operator delete(void *)
129B5A:  MOV             R0, R4
129B5C:  POP             {R4,R6,R7,PC}
