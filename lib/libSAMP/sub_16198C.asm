; =========================================================
; Game Engine Function: sub_16198C
; Address            : 0x16198C - 0x1619A2
; =========================================================

16198C:  PUSH            {R4,R6,R7,LR}
16198E:  ADD             R7, SP, #8
161990:  MOV             R4, R0
161992:  LDR             R0, [R0,#4]
161994:  CBZ             R0, loc_16199E
161996:  BL              sub_161A78
16199A:  BLX             j__ZdlPv; operator delete(void *)
16199E:  MOV             R0, R4
1619A0:  POP             {R4,R6,R7,PC}
