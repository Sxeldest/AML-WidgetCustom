; =========================================================
; Game Engine Function: sub_265DD0
; Address            : 0x265DD0 - 0x265DE2
; =========================================================

265DD0:  PUSH            {R4,R6,R7,LR}
265DD2:  ADD             R7, SP, #8
265DD4:  MOV             R4, R0
265DD6:  MOV             R0, R1; char *
265DD8:  BLX             j_strdup
265DDC:  STR             R0, [R4,#0x24]
265DDE:  MOVS            R0, #0
265DE0:  POP             {R4,R6,R7,PC}
