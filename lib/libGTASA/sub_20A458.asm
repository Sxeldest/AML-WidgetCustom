; =========================================================
; Game Engine Function: sub_20A458
; Address            : 0x20A458 - 0x20A472
; =========================================================

20A458:  LDR.W           R3, [R0,#0x120]
20A45C:  CMP             R3, #0
20A45E:  ITT NE
20A460:  MOVNE           R0, R3; int
20A462:  BNE.W           j_j__Z13RwStreamWriteP8RwStreamPKvj; j_RwStreamWrite(RwStream *,void const*,uint)
20A466:  PUSH            {R7,LR}
20A468:  MOV             R7, SP
20A46A:  MOVS            R1, #0
20A46C:  BLX             j_png_error
20A470:  BX              LR
