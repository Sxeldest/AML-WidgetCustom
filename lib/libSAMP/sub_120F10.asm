; =========================================================
; Game Engine Function: sub_120F10
; Address            : 0x120F10 - 0x120F26
; =========================================================

120F10:  PUSH            {R4,R6,R7,LR}
120F12:  ADD             R7, SP, #8
120F14:  MOV             R4, R0
120F16:  LDR             R0, [R0,#4]
120F18:  CBZ             R0, loc_120F22
120F1A:  BL              sub_121054
120F1E:  BLX             j__ZdlPv; operator delete(void *)
120F22:  MOV             R0, R4
120F24:  POP             {R4,R6,R7,PC}
