; =========================================================
; Game Engine Function: _ZN11CShinyTexts4InitEv
; Address            : 0x5BFB00 - 0x5BFB0C
; =========================================================

5BFB00:  LDR             R0, =(_ZN11CShinyTexts13NumShinyTextsE_ptr - 0x5BFB08)
5BFB02:  MOVS            R1, #0
5BFB04:  ADD             R0, PC; _ZN11CShinyTexts13NumShinyTextsE_ptr
5BFB06:  LDR             R0, [R0]; CShinyTexts::NumShinyTexts ...
5BFB08:  STR             R1, [R0]; CShinyTexts::NumShinyTexts
5BFB0A:  BX              LR
