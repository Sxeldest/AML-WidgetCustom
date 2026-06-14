; =========================================================
; Game Engine Function: sub_1EEE4C
; Address            : 0x1EEE4C - 0x1EEE78
; =========================================================

1EEE4C:  PUSH            {R4-R7,LR}
1EEE4E:  ADD             R7, SP, #0xC
1EEE50:  PUSH.W          {R11}
1EEE54:  MOV             R4, R0
1EEE56:  BL              sub_1EEE78
1EEE5A:  LDRD.W          R5, R6, [R4,#4]
1EEE5E:  CMP             R5, R6
1EEE60:  BEQ             loc_1EEE6A
1EEE62:  LDM             R5!, {R0}; void *
1EEE64:  BLX             j__ZdlPv; operator delete(void *)
1EEE68:  B               loc_1EEE5E
1EEE6A:  MOV             R0, R4
1EEE6C:  POP.W           {R11}
1EEE70:  POP.W           {R4-R7,LR}
1EEE74:  B.W             sub_1EEE22
