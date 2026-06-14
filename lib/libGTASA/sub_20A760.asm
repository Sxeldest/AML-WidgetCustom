; =========================================================
; Game Engine Function: sub_20A760
; Address            : 0x20A760 - 0x20A778
; =========================================================

20A760:  LDR.W           R3, [R0,#0x120]
20A764:  CMP             R3, #0
20A766:  ITT NE
20A768:  MOVNE           R0, R3; int
20A76A:  BNE.W           j_j__Z12RwStreamReadP8RwStreamPvj; j_RwStreamRead(RwStream *,void *,uint)
20A76E:  PUSH            {R7,LR}
20A770:  MOV             R7, SP
20A772:  MOVS            R1, #0
20A774:  BLX             j_png_error
