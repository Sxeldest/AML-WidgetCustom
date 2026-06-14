; =========================================================
; Game Engine Function: sub_152F10
; Address            : 0x152F10 - 0x152F2C
; =========================================================

152F10:  PUSH            {R4,R6,R7,LR}
152F12:  ADD             R7, SP, #8
152F14:  LDR             R1, [R0,#8]
152F16:  MOV             R4, R0
152F18:  BL              sub_152F2C
152F1C:  LDR             R0, [R4]; void *
152F1E:  MOVS            R1, #0
152F20:  STR             R1, [R4]
152F22:  CBZ             R0, loc_152F28
152F24:  BLX             j__ZdlPv; operator delete(void *)
152F28:  MOV             R0, R4
152F2A:  POP             {R4,R6,R7,PC}
