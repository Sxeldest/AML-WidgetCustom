; =========================================================
; Game Engine Function: sub_17E56C
; Address            : 0x17E56C - 0x17E580
; =========================================================

17E56C:  PUSH            {R7,LR}
17E56E:  MOV             R7, SP
17E570:  SUB             SP, SP, #8
17E572:  STR             R1, [SP,#0x10+var_C]
17E574:  CBZ             R1, loc_17E57C
17E576:  ADD             R1, SP, #0x10+var_C
17E578:  BL              sub_17E430
17E57C:  ADD             SP, SP, #8
17E57E:  POP             {R7,PC}
