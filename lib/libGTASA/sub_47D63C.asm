; =========================================================
; Game Engine Function: sub_47D63C
; Address            : 0x47D63C - 0x47D66C
; =========================================================

47D63C:  PUSH            {R4,R5,R7,LR}
47D63E:  ADD             R7, SP, #8
47D640:  MOV             R4, R0
47D642:  LDR             R1, =(sub_47D404+1 - 0x47D64E)
47D644:  LDR.W           R0, [R4,#0x190]
47D648:  MOVS            R5, #0
47D64A:  ADD             R1, PC; sub_47D404
47D64C:  STR             R1, [R0]
47D64E:  MOVS            R1, #1
47D650:  STRH            R5, [R0,#0x10]
47D652:  STRB            R1, [R0,#0x14]
47D654:  LDR             R0, [R4]
47D656:  LDR             R1, [R0,#0x10]
47D658:  MOV             R0, R4
47D65A:  BLX             R1
47D65C:  LDR.W           R0, [R4,#0x194]
47D660:  LDR             R1, [R0]
47D662:  MOV             R0, R4
47D664:  BLX             R1
47D666:  STR.W           R5, [R4,#0x8C]
47D66A:  POP             {R4,R5,R7,PC}
