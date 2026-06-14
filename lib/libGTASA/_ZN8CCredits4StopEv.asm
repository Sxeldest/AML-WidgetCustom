; =========================================================
; Game Engine Function: _ZN8CCredits4StopEv
; Address            : 0x5A4E74 - 0x5A4E80
; =========================================================

5A4E74:  LDR             R0, =(_ZN8CCredits13bCreditsGoingE_ptr - 0x5A4E7C)
5A4E76:  MOVS            R1, #0
5A4E78:  ADD             R0, PC; _ZN8CCredits13bCreditsGoingE_ptr
5A4E7A:  LDR             R0, [R0]; CCredits::bCreditsGoing ...
5A4E7C:  STRB            R1, [R0]; CCredits::bCreditsGoing
5A4E7E:  BX              LR
