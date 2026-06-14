; =========================================================
; Game Engine Function: sub_140978
; Address            : 0x140978 - 0x1409B8
; =========================================================

140978:  PUSH            {R4-R7,LR}
14097A:  ADD             R7, SP, #0xC
14097C:  PUSH.W          {R8}
140980:  MOV             R8, R3
140982:  MOV             R6, R2
140984:  MOV             R5, R1
140986:  MOV             R4, R0
140988:  BL              sub_F0B30
14098C:  LDR.W           R1, [R4,#0x1C4]
140990:  SUBS            R0, R0, R1
140992:  CMP.W           R0, #0x1F4
140996:  BHI             loc_1409A4
140998:  MOV             R0, R5; s1
14099A:  MOV             R1, R6; s2
14099C:  MOV             R2, R8; n
14099E:  BLX             memcmp
1409A2:  CBZ             R0, loc_1409B0
1409A4:  BL              sub_F0B30
1409A8:  STR.W           R0, [R4,#0x1C4]
1409AC:  MOVS            R0, #1
1409AE:  B               loc_1409B2
1409B0:  MOVS            R0, #0
1409B2:  POP.W           {R8}
1409B6:  POP             {R4-R7,PC}
