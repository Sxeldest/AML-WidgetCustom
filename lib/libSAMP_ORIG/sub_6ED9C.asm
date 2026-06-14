; =========================================================
; Game Engine Function: sub_6ED9C
; Address            : 0x6ED9C - 0x6EDC8
; =========================================================

6ED9C:  PUSH            {R4,R6,R7,LR}
6ED9E:  ADD             R7, SP, #8
6EDA0:  MOV             R4, R0
6EDA2:  LDR             R0, [R0,#0x14]
6EDA4:  CBZ             R0, loc_6EDAE
6EDA6:  VMOV.I32        Q8, #0
6EDAA:  VST1.64         {D16-D17}, [R4]
6EDAE:  MOV             R0, R4
6EDB0:  BL              sub_6EDE2
6EDB4:  LDR             R0, [R4,#0x20]; ptr
6EDB6:  BLX             free
6EDBA:  LDR             R0, [R4,#0x1C]; void *
6EDBC:  CMP             R0, #0
6EDBE:  IT NE
6EDC0:  BLXNE           j__ZdlPv; operator delete(void *)
6EDC4:  MOV             R0, R4
6EDC6:  POP             {R4,R6,R7,PC}
