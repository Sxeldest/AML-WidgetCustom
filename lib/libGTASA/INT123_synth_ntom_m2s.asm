; =========================================================
; Game Engine Function: INT123_synth_ntom_m2s
; Address            : 0x23634E - 0x23639C
; =========================================================

23634E:  PUSH            {R4-R7,LR}
236350:  ADD             R7, SP, #0xC
236352:  PUSH.W          {R8}
236356:  MOV             R4, R1
236358:  MOVW            R1, #0xB2A0
23635C:  LDR.W           R8, [R4,R1]
236360:  MOVW            R6, #0xB2A8
236364:  MOVS            R1, #0
236366:  MOV             R2, R4
236368:  MOVS            R3, #1
23636A:  LDR             R5, [R4,R6]
23636C:  BLX             j_INT123_synth_ntom
236370:  LDR             R1, [R4,R6]
236372:  SUBS            R1, R1, R5
236374:  CMP             R1, #4
236376:  BCC             loc_236396
236378:  ADDS            R1, R4, R6
23637A:  ADD.W           R2, R8, R5
23637E:  MOVS            R3, #0
236380:  ADD.W           R4, R2, R3,LSL#2
236384:  LDRH.W          R6, [R2,R3,LSL#2]
236388:  ADDS            R3, #1
23638A:  STRH            R6, [R4,#2]
23638C:  LDR             R6, [R1]
23638E:  SUBS            R6, R6, R5
236390:  CMP.W           R3, R6,LSR#2
236394:  BCC             loc_236380
236396:  POP.W           {R8}
23639A:  POP             {R4-R7,PC}
