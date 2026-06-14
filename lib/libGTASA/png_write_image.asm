; =========================================================
; Game Engine Function: png_write_image
; Address            : 0x204420 - 0x20446E
; =========================================================

204420:  PUSH            {R4-R7,LR}
204422:  ADD             R7, SP, #0xC
204424:  PUSH.W          {R8,R9,R11}
204428:  MOV             R5, R0
20442A:  MOV             R4, R1
20442C:  CBZ             R5, loc_204468
20442E:  MOV             R0, R5
204430:  BLX             j_png_set_interlace_handling
204434:  MOV             R8, R0
204436:  CMP.W           R8, #1
20443A:  BLT             loc_204468
20443C:  LDR.W           R0, [R5,#0x1C4]
204440:  MOV.W           R9, #0
204444:  CBZ             R0, loc_20445E
204446:  MOVS            R6, #0
204448:  LDR.W           R1, [R4,R6,LSL#2]
20444C:  MOV             R0, R5
20444E:  BLX             j_png_write_row
204452:  LDR.W           R0, [R5,#0x1C4]
204456:  ADDS            R6, #1
204458:  CMP             R6, R0
20445A:  BCC             loc_204448
20445C:  B               loc_204460
20445E:  MOVS            R0, #0
204460:  ADD.W           R9, R9, #1
204464:  CMP             R9, R8
204466:  BNE             loc_204444
204468:  POP.W           {R8,R9,R11}
20446C:  POP             {R4-R7,PC}
