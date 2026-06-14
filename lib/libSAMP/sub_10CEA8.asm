; =========================================================
; Game Engine Function: sub_10CEA8
; Address            : 0x10CEA8 - 0x10CEBE
; =========================================================

10CEA8:  PUSH            {R4,R6,R7,LR}
10CEAA:  ADD             R7, SP, #8
10CEAC:  MOV             R4, R0
10CEAE:  LDR             R0, [R0,#4]
10CEB0:  CBZ             R0, loc_10CEBA
10CEB2:  BL              sub_10D028
10CEB6:  BLX             j__ZdlPv; operator delete(void *)
10CEBA:  MOV             R0, R4
10CEBC:  POP             {R4,R6,R7,PC}
