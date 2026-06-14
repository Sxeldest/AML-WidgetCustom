; =========================================================
; Game Engine Function: _Z6NvFEOFPv
; Address            : 0x267440 - 0x267478
; =========================================================

267440:  PUSH            {R4,R5,R7,LR}
267442:  ADD             R7, SP, #8
267444:  LDRD.W          R1, R4, [R0]
267448:  CMP             R1, #1
26744A:  BNE             loc_267456
26744C:  MOV             R0, R4; stream
26744E:  POP.W           {R4,R5,R7,LR}
267452:  B.W             j_feof
267456:  MOV             R0, R4; asset
267458:  BLX             AAsset_getLength
26745C:  MOV             R5, R0
26745E:  MOV             R0, R4; asset
267460:  BLX             AAsset_getRemainingLength
267464:  SUBS            R5, R5, R0
267466:  MOV             R0, R4; asset
267468:  BLX             AAsset_getLength
26746C:  MOVS            R1, #0
26746E:  CMP             R5, R0
267470:  IT CS
267472:  MOVCS           R1, #1
267474:  MOV             R0, R1
267476:  POP             {R4,R5,R7,PC}
