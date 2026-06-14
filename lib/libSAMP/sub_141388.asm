; =========================================================
; Game Engine Function: sub_141388
; Address            : 0x141388 - 0x1413B6
; =========================================================

141388:  PUSH            {R4,R5,R7,LR}
14138A:  ADD             R7, SP, #8
14138C:  MOV             R5, R1
14138E:  LDR             R1, =(aAxl - 0x14139A); "AXL" ...
141390:  LDR             R2, =(aApplyspecialac - 0x14139C); "ApplySpecialAction type %i" ...
141392:  MOV             R4, R0
141394:  LDRB            R3, [R5]
141396:  ADD             R1, PC; "AXL"
141398:  ADD             R2, PC; "ApplySpecialAction type %i"
14139A:  MOVS            R0, #4; prio
14139C:  BLX             __android_log_print
1413A0:  LDRB            R0, [R5]
1413A2:  STRB            R0, [R4,#0x1A]
1413A4:  LDRB            R0, [R5]
1413A6:  CMP             R0, #2
1413A8:  IT NE
1413AA:  POPNE           {R4,R5,R7,PC}
1413AC:  LDR             R0, [R4,#0x1C]
1413AE:  POP.W           {R4,R5,R7,LR}
1413B2:  B.W             sub_106164
