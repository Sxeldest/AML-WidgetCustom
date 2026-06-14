; =========================================================
; Game Engine Function: sub_1201BC
; Address            : 0x1201BC - 0x1201DE
; =========================================================

1201BC:  PUSH            {R4,R6,R7,LR}
1201BE:  ADD             R7, SP, #8
1201C0:  LDR             R4, =(unk_2638A8 - 0x1201C8)
1201C2:  MOVS            R1, #0
1201C4:  ADD             R4, PC; unk_2638A8
1201C6:  MOV             R0, R4
1201C8:  BL              sub_11FAA0
1201CC:  LDR             R0, =(sub_11FAC8+1 - 0x1201D6)
1201CE:  MOV             R1, R4
1201D0:  LDR             R2, =(off_22A540 - 0x1201D8)
1201D2:  ADD             R0, PC; sub_11FAC8
1201D4:  ADD             R2, PC; off_22A540
1201D6:  POP.W           {R4,R6,R7,LR}
1201DA:  B.W             sub_224250
