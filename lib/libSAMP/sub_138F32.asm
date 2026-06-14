; =========================================================
; Game Engine Function: sub_138F32
; Address            : 0x138F32 - 0x138F48
; =========================================================

138F32:  PUSH            {R4,R6,R7,LR}
138F34:  ADD             R7, SP, #8
138F36:  MOV             R4, R0
138F38:  BL              sub_138F48
138F3C:  LDR             R0, [R4]; void *
138F3E:  CBZ             R0, loc_138F44
138F40:  BLX             j__ZdlPv; operator delete(void *)
138F44:  MOV             R0, R4
138F46:  POP             {R4,R6,R7,PC}
