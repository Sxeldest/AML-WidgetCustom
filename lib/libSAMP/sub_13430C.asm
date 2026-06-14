; =========================================================
; Game Engine Function: sub_13430C
; Address            : 0x13430C - 0x134340
; =========================================================

13430C:  PUSH            {R4,R6,R7,LR}
13430E:  ADD             R7, SP, #8
134310:  MOV             R4, R0
134312:  LDR             R0, =(off_234C0C - 0x134318)
134314:  ADD             R0, PC; off_234C0C
134316:  LDR             R1, [R0]; `vtable for'Button ...
134318:  LDR             R0, [R4,#0x68]
13431A:  ADDS            R1, #8
13431C:  STR             R1, [R4]
13431E:  ADD.W           R1, R4, #0x58 ; 'X'
134322:  CMP             R1, R0
134324:  BEQ             loc_13432C
134326:  CBZ             R0, loc_134336
134328:  MOVS            R1, #5
13432A:  B               loc_13432E
13432C:  MOVS            R1, #4
13432E:  LDR             R2, [R0]
134330:  LDR.W           R1, [R2,R1,LSL#2]
134334:  BLX             R1
134336:  MOV             R0, R4
134338:  POP.W           {R4,R6,R7,LR}
13433C:  B.W             sub_12BCE4
