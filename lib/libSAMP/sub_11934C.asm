; =========================================================
; Game Engine Function: sub_11934C
; Address            : 0x11934C - 0x11937C
; =========================================================

11934C:  PUSH            {R4,R6,R7,LR}
11934E:  ADD             R7, SP, #8
119350:  LDR             R0, [R1]
119352:  MOV             R4, R3
119354:  CBZ             R0, loc_11935E
119356:  LDR             R0, [R0]
119358:  CBZ             R0, loc_11935E
11935A:  MOVS            R0, #1
11935C:  POP             {R4,R6,R7,PC}
11935E:  MOV             R0, R1
119360:  MOV             R1, R2
119362:  MOV             R2, R4
119364:  BL              sub_163144
119368:  LDR             R1, =(aAxl - 0x119374); "AXL" ...
11936A:  MOVS            R0, #5; prio
11936C:  LDR             R2, =(aCtransparentsp - 0x119376); "CTransparentSpd: Lost texture %s" ...
11936E:  MOV             R3, R4
119370:  ADD             R1, PC; "AXL"
119372:  ADD             R2, PC; "CTransparentSpd: Lost texture %s"
119374:  BLX             __android_log_print
119378:  MOVS            R0, #0
11937A:  POP             {R4,R6,R7,PC}
