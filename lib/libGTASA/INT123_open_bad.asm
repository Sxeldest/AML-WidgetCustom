; =========================================================
; Game Engine Function: INT123_open_bad
; Address            : 0x2347C0 - 0x234806
; =========================================================

2347C0:  PUSH            {R4,R5,R7,LR}
2347C2:  ADD             R7, SP, #8
2347C4:  MOV             R4, R0
2347C6:  MOVW            R1, #0xB530
2347CA:  LDR             R0, [R4,R1]; p
2347CC:  ADDS            R5, R4, R1
2347CE:  CMP             R0, #0
2347D0:  IT NE
2347D2:  BLXNE           free
2347D6:  LDR             R0, =(off_685300 - 0x2347E6)
2347D8:  MOVS            R1, #0
2347DA:  MOVW            R2, #0xB2F4
2347DE:  STR             R1, [R5]
2347E0:  STR             R1, [R4,R2]
2347E2:  ADD             R0, PC; off_685300
2347E4:  MOVW            R2, #0xB2E0
2347E8:  STR             R0, [R4,R2]
2347EA:  MOVW            R0, #0xB330
2347EE:  VMOV.I32        Q8, #0
2347F2:  STR             R1, [R4,R0]
2347F4:  MOVW            R0, #0xB334
2347F8:  STR             R1, [R4,R0]
2347FA:  MOVW            R0, #0xB320
2347FE:  ADD             R0, R4
234800:  VST1.32         {D16-D17}, [R0]
234804:  POP             {R4,R5,R7,PC}
