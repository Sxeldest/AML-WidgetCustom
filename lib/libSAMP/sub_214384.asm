; =========================================================
; Game Engine Function: sub_214384
; Address            : 0x214384 - 0x2143D0
; =========================================================

214384:  PUSH            {R4-R7,LR}
214386:  ADD             R7, SP, #0xC
214388:  PUSH.W          {R8}
21438C:  MOV             R5, R0
21438E:  MOVW            R0, #0x270F
214392:  MOV             R4, R1
214394:  CMP             R1, R0
214396:  BHI             loc_2143A8
214398:  MOV             R0, R5
21439A:  MOV             R1, R4
21439C:  POP.W           {R8}
2143A0:  POP.W           {R4-R7,LR}
2143A4:  B.W             sub_21451C
2143A8:  MOV             R0, R4
2143AA:  MOVW            R1, #0x2710
2143AE:  MOVW            R8, #0x2710
2143B2:  BLX             sub_220A6C
2143B6:  MOV             R6, R0
2143B8:  MOV             R0, R5
2143BA:  MOV             R1, R6
2143BC:  BL              sub_21451C
2143C0:  MLS.W           R1, R6, R8, R4
2143C4:  POP.W           {R8}
2143C8:  POP.W           {R4-R7,LR}
2143CC:  B.W             sub_2143E0
