; =========================================================
; Game Engine Function: _ZN17CBugstarInterface8SendDataEPvj
; Address            : 0x3BE668 - 0x3BE6AE
; =========================================================

3BE668:  PUSH            {R4-R7,LR}
3BE66A:  ADD             R7, SP, #0xC
3BE66C:  PUSH.W          {R11}
3BE670:  SUB             SP, SP, #8
3BE672:  MOV             R5, R0
3BE674:  STR             R2, [SP,#0x18+var_14]
3BE676:  LDR             R0, [R5,#4]
3BE678:  MOV             R6, R1
3BE67A:  LDR             R1, [R5,#0xC]
3BE67C:  MOVS            R3, #4
3BE67E:  LDR             R2, [R0]
3BE680:  LDR             R4, [R2,#0x10]
3BE682:  ADD             R2, SP, #0x18+var_14
3BE684:  BLX             R4
3BE686:  LDR             R0, [R5,#4]
3BE688:  LDR             R1, [R5,#0xC]
3BE68A:  LDR             R3, [SP,#0x18+var_14]
3BE68C:  LDR             R2, [R0]
3BE68E:  LDR             R4, [R2,#0x10]
3BE690:  MOV             R2, R6
3BE692:  BLX             R4
3BE694:  MOVS            R0, #0
3BE696:  MOVS            R3, #4
3BE698:  STR             R0, [SP,#0x18+var_18]
3BE69A:  LDR             R0, [R5,#4]
3BE69C:  LDR             R1, [R5,#0xC]
3BE69E:  LDR             R2, [R0]
3BE6A0:  LDR             R6, [R2,#0x10]
3BE6A2:  MOV             R2, SP
3BE6A4:  BLX             R6
3BE6A6:  ADD             SP, SP, #8
3BE6A8:  POP.W           {R11}
3BE6AC:  POP             {R4-R7,PC}
