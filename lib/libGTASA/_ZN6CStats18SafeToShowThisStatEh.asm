; =========================================================
; Game Engine Function: _ZN6CStats18SafeToShowThisStatEh
; Address            : 0x419B0C - 0x419B42
; =========================================================

419B0C:  PUSH            {R4,R6,R7,LR}
419B0E:  ADD             R7, SP, #8
419B10:  MOV             R4, R0
419B12:  BLX             j__ZN13CLocalisation10GermanGameEv; CLocalisation::GermanGame(void)
419B16:  CBZ             R0, loc_419B3E
419B18:  SUB.W           R1, R4, #0xCD
419B1C:  MOVS            R0, #0
419B1E:  CMP             R1, #5
419B20:  IT CC
419B22:  POPCC           {R4,R6,R7,PC}
419B24:  SUB.W           R1, R4, #0xA7
419B28:  CMP             R1, #0xA
419B2A:  BHI             loc_419B3E
419B2C:  MOVS            R2, #1
419B2E:  LSL.W           R1, R2, R1
419B32:  MOVW            R2, #0x403
419B36:  TST             R1, R2
419B38:  IT EQ
419B3A:  MOVEQ           R0, #1
419B3C:  POP             {R4,R6,R7,PC}
419B3E:  MOVS            R0, #1
419B40:  POP             {R4,R6,R7,PC}
