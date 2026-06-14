; =========================================================
; Game Engine Function: sub_84DBC
; Address            : 0x84DBC - 0x84DD6
; =========================================================

84DBC:  PUSH            {R4,R6,R7,LR}
84DBE:  ADD             R7, SP, #8
84DC0:  MOV             R4, R0
84DC2:  LDR             R0, [R0]
84DC4:  MOVS            R1, #0
84DC6:  STR             R1, [R4]
84DC8:  CBZ             R0, loc_84DD2
84DCA:  BL              sub_7DACC
84DCE:  BLX             j__ZdlPv; operator delete(void *)
84DD2:  MOV             R0, R4
84DD4:  POP             {R4,R6,R7,PC}
