; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes16LoadEventIndicesEv
; Address            : 0x4BDDD4 - 0x4BDDE0
; =========================================================

4BDDD4:  MOVW            R1, #0xC034
4BDDD8:  ADR             R2, aPedeventTxt; "PedEvent.txt"
4BDDDA:  ADD             R1, R0; int *
4BDDDC:  B.W             sub_18ABC0
