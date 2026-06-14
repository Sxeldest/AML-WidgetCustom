; =========================================================
; Game Engine Function: sub_E4ED8
; Address            : 0xE4ED8 - 0xE4EF8
; =========================================================

E4ED8:  PUSH            {R4,R5,R7,LR}
E4EDA:  ADD             R7, SP, #8
E4EDC:  MOV             R4, R0
E4EDE:  MOV             R0, R1
E4EE0:  BL              sub_EC880
E4EE4:  MOV             R5, R0
E4EE6:  BLX             strlen
E4EEA:  MOV             R2, R0
E4EEC:  MOV             R0, R4
E4EEE:  MOV             R1, R5
E4EF0:  POP.W           {R4,R5,R7,LR}
E4EF4:  B.W             sub_224280
