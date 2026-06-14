; =========================================================
; Game Engine Function: _Z14RpGeometryLockP10RpGeometryi
; Address            : 0x21585E - 0x215888
; =========================================================

21585E:  PUSH            {R4,R6,R7,LR}
215860:  ADD             R7, SP, #8
215862:  MOV             R4, R0
215864:  TST.W           R1, #1
215868:  LDRH            R0, [R4,#0xC]
21586A:  ORR.W           R0, R0, R1
21586E:  STRH            R0, [R4,#0xC]
215870:  ITT NE
215872:  LDRNE           R0, [R4,#0x58]
215874:  CMPNE           R0, #0
215876:  BNE             loc_21587C
215878:  MOV             R0, R4
21587A:  POP             {R4,R6,R7,PC}
21587C:  BLX             j__Z14_rpMeshDestroyP12RpMeshHeader; _rpMeshDestroy(RpMeshHeader *)
215880:  MOVS            R0, #0
215882:  STR             R0, [R4,#0x58]
215884:  MOV             R0, R4
215886:  POP             {R4,R6,R7,PC}
