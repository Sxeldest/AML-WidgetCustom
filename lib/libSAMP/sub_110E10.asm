; =========================================================
; Game Engine Function: sub_110E10
; Address            : 0x110E10 - 0x110E26
; =========================================================

110E10:  PUSH            {R4,R6,R7,LR}
110E12:  ADD             R7, SP, #8
110E14:  MOV             R4, R0
110E16:  LDR             R0, [R0,#4]
110E18:  CBZ             R0, loc_110E22
110E1A:  BL              sub_1111A8
110E1E:  BLX             j__ZdlPv; operator delete(void *)
110E22:  MOV             R0, R4
110E24:  POP             {R4,R6,R7,PC}
