; =========================================================
; Game Engine Function: sub_FF248
; Address            : 0xFF248 - 0xFF274
; =========================================================

FF248:  PUSH            {R4,R6,R7,LR}
FF24A:  ADD             R7, SP, #8
FF24C:  LDR             R1, [R0]
FF24E:  LDR.W           R4, [R1],#4
FF252:  STR             R1, [R0]
FF254:  MOVS            R0, #1
FF256:  ADD.W           R1, R4, #8
FF25A:  BLX             glDeleteBuffers
FF25E:  LDR             R0, [R4]
FF260:  MOVS            R1, #0
FF262:  STR             R1, [R4,#8]
FF264:  CBZ             R0, loc_FF270
FF266:  LDR             R1, [R0,#4]
FF268:  MOV             R0, R4
FF26A:  POP.W           {R4,R6,R7,LR}
FF26E:  BX              R1
FF270:  MOVS            R0, #0
FF272:  POP             {R4,R6,R7,PC}
