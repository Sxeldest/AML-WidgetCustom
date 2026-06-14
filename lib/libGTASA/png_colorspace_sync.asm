; =========================================================
; Game Engine Function: png_colorspace_sync
; Address            : 0x1EE656 - 0x1EE6C6
; =========================================================

1EE656:  PUSH            {R4,R5,R7,LR}
1EE658:  ADD             R7, SP, #8
1EE65A:  MOV             R4, R1
1EE65C:  MOV             R5, R0
1EE65E:  CMP             R4, #0
1EE660:  IT EQ
1EE662:  POPEQ           {R4,R5,R7,PC}
1EE664:  ADD.W           R0, R4, #0x28 ; '('; void *
1EE668:  ADD.W           R1, R5, #0x380; void *
1EE66C:  MOVS            R2, #0x4C ; 'L'; size_t
1EE66E:  BLX             memcpy_0
1EE672:  LDRH.W          R0, [R4,#0x72]
1EE676:  TST.W           R0, #0x8000
1EE67A:  BNE             loc_1EE6AA
1EE67C:  LDR             R1, [R4,#8]
1EE67E:  LSLS            R3, R0, #0x18
1EE680:  BIC.W           R2, R1, #0x800
1EE684:  IT MI
1EE686:  ORRMI.W         R2, R1, #0x800
1EE68A:  TST.W           R0, #2
1EE68E:  BIC.W           R1, R2, #4
1EE692:  IT NE
1EE694:  ORRNE.W         R1, R2, #4
1EE698:  TST.W           R0, #1
1EE69C:  BIC.W           R2, R1, #1
1EE6A0:  IT NE
1EE6A2:  ORRNE.W         R2, R1, #1
1EE6A6:  STR             R2, [R4,#8]
1EE6A8:  POP             {R4,R5,R7,PC}
1EE6AA:  LDR             R0, [R4,#8]
1EE6AC:  MOVW            R1, #0x1805
1EE6B0:  MOVS            R2, #0x10
1EE6B2:  MOV.W           R3, #0xFFFFFFFF
1EE6B6:  BICS            R0, R1
1EE6B8:  STR             R0, [R4,#8]
1EE6BA:  MOV             R0, R5; int
1EE6BC:  MOV             R1, R4
1EE6BE:  POP.W           {R4,R5,R7,LR}
1EE6C2:  B.W             png_free_data
