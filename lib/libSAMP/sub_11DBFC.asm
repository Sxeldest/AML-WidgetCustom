; =========================================================
; Game Engine Function: sub_11DBFC
; Address            : 0x11DBFC - 0x11DC1C
; =========================================================

11DBFC:  PUSH            {R4,R6,R7,LR}
11DBFE:  ADD             R7, SP, #8
11DC00:  SUB             SP, SP, #0x10
11DC02:  MOV             R4, R0
11DC04:  MOVS            R0, #0
11DC06:  STR             R0, [R4,#0x10]
11DC08:  STR             R2, [SP,#0x18+var_C]
11DC0A:  STRD.W          R3, R1, [SP,#0x18+var_14]
11DC0E:  ADD             R1, SP, #0x18+var_14
11DC10:  MOV             R0, R4
11DC12:  BL              sub_11DE38
11DC16:  MOV             R0, R4
11DC18:  ADD             SP, SP, #0x10
11DC1A:  POP             {R4,R6,R7,PC}
