; =========================================================
; Game Engine Function: sub_21DFE6
; Address            : 0x21DFE6 - 0x21DFFA
; =========================================================

21DFE6:  PUSH            {R4,R6,R7,LR}
21DFE8:  ADD             R7, SP, #8
21DFEA:  MOV             R1, R2
21DFEC:  MOV             R4, R0
21DFEE:  BLX             j__Z24_rpWorldSectorNativeReadP8RwStreamP13RpWorldSector; _rpWorldSectorNativeRead(RwStream *,RpWorldSector *)
21DFF2:  CMP             R0, #0
21DFF4:  IT NE
21DFF6:  MOVNE           R0, R4
21DFF8:  POP             {R4,R6,R7,PC}
