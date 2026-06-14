; =========================================================
; Game Engine Function: sub_21DFC8
; Address            : 0x21DFC8 - 0x21DFDC
; =========================================================

21DFC8:  PUSH            {R4,R6,R7,LR}
21DFCA:  ADD             R7, SP, #8
21DFCC:  MOV             R1, R2
21DFCE:  MOV             R4, R0
21DFD0:  BLX             j__Z21_rpGeometryNativeReadP8RwStreamP10RpGeometry; _rpGeometryNativeRead(RwStream *,RpGeometry *)
21DFD4:  CMP             R0, #0
21DFD6:  IT NE
21DFD8:  MOVNE           R0, R4
21DFDA:  POP             {R4,R6,R7,PC}
