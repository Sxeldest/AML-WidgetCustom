; =========================================================
; Game Engine Function: sub_63478
; Address            : 0x63478 - 0x634AE
; =========================================================

63478:  PUSH            {R4,R5,R7,LR}
6347A:  ADD             R7, SP, #8
6347C:  LDR             R0, =(off_114B10 - 0x63482)
6347E:  ADD             R0, PC; off_114B10
63480:  LDR             R0, [R0]; dword_1A442C
63482:  LDR             R0, [R0]
63484:  CBZ             R0, locret_634AC
63486:  LDR.W           R2, [R0,#0x84]
6348A:  LDR             R5, =(aHidden - 0x63492); "hidden" ...
6348C:  LDRB            R3, [R2,#0xC]
6348E:  ADD             R5, PC; "hidden"
63490:  LDR             R1, =(aVisible - 0x6349C); "visible" ...
63492:  LDR             R0, =(aDeathwindowS - 0x634A2); "DeathWindow: %s" ...
63494:  EOR.W           R4, R3, #1
63498:  ADD             R1, PC; "visible"
6349A:  STRB            R4, [R2,#0xC]
6349C:  CMP             R3, #0
6349E:  ADD             R0, PC; "DeathWindow: %s"
634A0:  IT NE
634A2:  MOVNE           R1, R5
634A4:  POP.W           {R4,R5,R7,LR}
634A8:  B.W             sub_6C95C
634AC:  POP             {R4,R5,R7,PC}
