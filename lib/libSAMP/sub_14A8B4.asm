; =========================================================
; Game Engine Function: sub_14A8B4
; Address            : 0x14A8B4 - 0x14A8E6
; =========================================================

14A8B4:  PUSH            {R4,R6,R7,LR}
14A8B6:  ADD             R7, SP, #8
14A8B8:  SUB             SP, SP, #0x40
14A8BA:  MOV             R4, R0
14A8BC:  LDR.W           R0, [R0,#0x128]
14A8C0:  CBZ             R0, loc_14A8E2
14A8C2:  BL              sub_104108
14A8C6:  CBZ             R0, loc_14A8E2
14A8C8:  LDR.W           R0, [R4,#0x128]
14A8CC:  MOV             R1, SP
14A8CE:  BL              sub_F8910
14A8D2:  ADD             R3, SP, #0x48+var_18
14A8D4:  LDR.W           R0, [R4,#0x128]
14A8D8:  LDM             R3, {R1-R3}
14A8DA:  BL              sub_104098
14A8DE:  MOVS            R0, #0
14A8E0:  STR             R0, [R4,#4]
14A8E2:  ADD             SP, SP, #0x40 ; '@'
14A8E4:  POP             {R4,R6,R7,PC}
