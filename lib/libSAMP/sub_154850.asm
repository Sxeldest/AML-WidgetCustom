; =========================================================
; Game Engine Function: sub_154850
; Address            : 0x154850 - 0x15488C
; =========================================================

154850:  PUSH            {R4,R6,R7,LR}
154852:  ADD             R7, SP, #8
154854:  SUB             SP, SP, #8
154856:  MOV             R4, R0
154858:  LDR             R0, [R0,#0x10]
15485A:  CBZ             R0, loc_154888
15485C:  LDR             R1, =(aShuttingDown - 0x154864); "Shutting down..." ...
15485E:  MOVS            R0, #1; int
154860:  ADD             R1, PC; "Shutting down..."
154862:  BL              sub_159B70
154866:  LDR             R0, [R4,#0x10]
154868:  LDR             R1, [R0]
15486A:  LDR.W           R2, [R1,#0x84]
15486E:  MOV             R1, R4
154870:  BLX             R2
154872:  LDR             R0, [R4,#0x10]
154874:  LDR             R1, [R0]
154876:  LDR             R2, [R1,#0x64]
154878:  MOVS            R1, #0xFC
15487A:  STR             R1, [SP,#0x10+var_C]
15487C:  ADD             R1, SP, #0x10+var_C
15487E:  BLX             R2
154880:  MOVS            R0, #0
154882:  STRB.W          R0, [R4,#0x7D]
154886:  STR             R0, [R4,#0x10]
154888:  ADD             SP, SP, #8
15488A:  POP             {R4,R6,R7,PC}
