; =========================================================
; Game Engine Function: sub_102390
; Address            : 0x102390 - 0x1023FE
; =========================================================

102390:  CMP             R2, #0xF
102392:  IT GT
102394:  BXGT            LR
102396:  PUSH            {R4-R7,LR}
102398:  ADD             R7, SP, #0x14+var_8
10239A:  PUSH.W          {R8-R10}
10239E:  ADD.W           R9, R0, R2,LSL#2
1023A2:  MOV             R8, R0
1023A4:  MOV             R5, R3
1023A6:  MOV             R6, R1
1023A8:  MOV             R4, R9
1023AA:  LDR.W           R0, [R4,#0x2C]!
1023AE:  CBZ             R0, loc_1023B8
1023B0:  BL              sub_108CB8
1023B4:  MOVS            R0, #0
1023B6:  STR             R0, [R4]
1023B8:  LDR.W           R10, [R7,#0xC]
1023BC:  CMP             R6, #1
1023BE:  BLT             loc_1023CC
1023C0:  LDR             R1, [R7,#8]
1023C2:  MOV             R0, R5
1023C4:  BL              sub_1085C0
1023C8:  STR             R0, [R4]
1023CA:  B               loc_1023CE
1023CC:  CBZ             R6, loc_1023E6
1023CE:  MOVS            R0, #1
1023D0:  STR.W           R10, [R9,#0x6C]
1023D4:  STRB.W          R0, [R8,#0xEC]
1023D8:  STR.W           R0, [R9,#0xAC]
1023DC:  POP.W           {R8-R10}
1023E0:  POP.W           {R4-R7,LR}
1023E4:  BX              LR
1023E6:  LDR             R5, =(dword_25B204 - 0x1023EC)
1023E8:  ADD             R5, PC; dword_25B204
1023EA:  LDR             R0, [R5]
1023EC:  CMP             R0, #0
1023EE:  BNE             loc_1023C8
1023F0:  LDR             R0, =(aBlanktex - 0x1023F6); "blanktex" ...
1023F2:  ADD             R0, PC; "blanktex"
1023F4:  MOV             R1, R0
1023F6:  BL              sub_1085C0
1023FA:  STR             R0, [R5]
1023FC:  B               loc_1023C8
