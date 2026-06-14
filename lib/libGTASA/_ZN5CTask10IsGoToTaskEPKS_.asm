; =========================================================
; Game Engine Function: _ZN5CTask10IsGoToTaskEPKS_
; Address            : 0x4D69D0 - 0x4D6A00
; =========================================================

4D69D0:  PUSH            {R4,R6,R7,LR}
4D69D2:  ADD             R7, SP, #8
4D69D4:  MOV             R4, R0
4D69D6:  LDR             R0, [R4]
4D69D8:  LDR             R1, [R0,#0x14]
4D69DA:  MOV             R0, R4
4D69DC:  BLX             R1
4D69DE:  CMP.W           R0, #0x384
4D69E2:  ITT EQ
4D69E4:  MOVEQ           R0, #1
4D69E6:  POPEQ           {R4,R6,R7,PC}
4D69E8:  LDR             R0, [R4]
4D69EA:  LDR             R1, [R0,#0x14]
4D69EC:  MOV             R0, R4
4D69EE:  BLX             R1
4D69F0:  MOVW            R2, #0x39E
4D69F4:  MOVS            R1, #0
4D69F6:  CMP             R0, R2
4D69F8:  IT EQ
4D69FA:  MOVEQ           R1, #1
4D69FC:  MOV             R0, R1
4D69FE:  POP             {R4,R6,R7,PC}
