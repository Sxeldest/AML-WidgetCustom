; =========================================================
; Game Engine Function: sub_11E564
; Address            : 0x11E564 - 0x11E586
; =========================================================

11E564:  PUSH            {R4,R6,R7,LR}
11E566:  ADD             R7, SP, #8
11E568:  LDR             R4, =(unk_2637FC - 0x11E570)
11E56A:  MOVS            R1, #0
11E56C:  ADD             R4, PC; unk_2637FC
11E56E:  MOV             R0, R4
11E570:  BL              sub_11E000
11E574:  LDR             R0, =(sub_11E028+1 - 0x11E57E)
11E576:  MOV             R1, R4
11E578:  LDR             R2, =(off_22A540 - 0x11E580)
11E57A:  ADD             R0, PC; sub_11E028
11E57C:  ADD             R2, PC; off_22A540
11E57E:  POP.W           {R4,R6,R7,LR}
11E582:  B.W             sub_224250
