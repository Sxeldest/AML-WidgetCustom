; =========================================================
; Game Engine Function: sub_21DFB0
; Address            : 0x21DFB0 - 0x21DFC8
; =========================================================

21DFB0:  PUSH            {R4,R6,R7,LR}
21DFB2:  ADD             R7, SP, #8
21DFB4:  LDR.W           R4, [R0,#0x80]
21DFB8:  BLX             j__Z21RpWorldSectorGetWorldPK13RpWorldSector; RpWorldSectorGetWorld(RpWorldSector const*)
21DFBC:  MOV             R1, R0
21DFBE:  MOV             R0, R4
21DFC0:  POP.W           {R4,R6,R7,LR}
21DFC4:  B.W             sub_18F48C
