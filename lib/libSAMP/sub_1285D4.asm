; =========================================================
; Game Engine Function: sub_1285D4
; Address            : 0x1285D4 - 0x1285F4
; =========================================================

1285D4:  PUSH            {R4,R6,R7,LR}
1285D6:  ADD             R7, SP, #8
1285D8:  SUB             SP, SP, #0x10
1285DA:  MOV             R4, R0
1285DC:  MOVS            R0, #0
1285DE:  STR             R0, [R4,#0x10]
1285E0:  STR             R2, [SP,#0x18+var_C]
1285E2:  STRD.W          R3, R1, [SP,#0x18+var_14]
1285E6:  ADD             R1, SP, #0x18+var_14
1285E8:  MOV             R0, R4
1285EA:  BL              sub_1289F8
1285EE:  MOV             R0, R4
1285F0:  ADD             SP, SP, #0x10
1285F2:  POP             {R4,R6,R7,PC}
