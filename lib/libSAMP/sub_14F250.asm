; =========================================================
; Game Engine Function: sub_14F250
; Address            : 0x14F250 - 0x14F278
; =========================================================

14F250:  PUSH            {R4,R5,R7,LR}
14F252:  ADD             R7, SP, #8
14F254:  MOV             R4, R1
14F256:  MOV             R5, R0
14F258:  CBZ             R2, loc_14F262
14F25A:  MOV             R0, R5
14F25C:  MOV             R1, R4
14F25E:  BL              sub_14F404
14F262:  LDR.W           R0, [R5,R4,LSL#2]
14F266:  CBZ             R0, loc_14F270
14F268:  BL              sub_107E64
14F26C:  BLX             j__ZdlPv; operator delete(void *)
14F270:  MOVS            R0, #0
14F272:  STR.W           R0, [R5,R4,LSL#2]
14F276:  POP             {R4,R5,R7,PC}
