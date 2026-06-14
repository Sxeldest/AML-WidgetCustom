; =========================================================
; Game Engine Function: sub_17F0A4
; Address            : 0x17F0A4 - 0x17F0C6
; =========================================================

17F0A4:  PUSH            {R7,LR}
17F0A6:  MOV             R7, SP
17F0A8:  SUB             SP, SP, #8
17F0AA:  SUB.W           R0, R0, #0x9D0
17F0AE:  SUBS            R2, R7, #2
17F0B0:  MOVS            R1, #0
17F0B2:  BL              sub_180642
17F0B6:  LDRH.W          R0, [R7,#-2]
17F0BA:  SUBS            R0, #1
17F0BC:  CLZ.W           R0, R0
17F0C0:  LSRS            R0, R0, #5
17F0C2:  ADD             SP, SP, #8
17F0C4:  POP             {R7,PC}
