; =========================================================
; Game Engine Function: sub_158770
; Address            : 0x158770 - 0x158784
; =========================================================

158770:  LDR             R2, =(aZl17makeshared - 0x15877A); "ZL17MakeSharedHStreamjE3$_2" ...
158772:  LDR             R3, [R1,#4]
158774:  MOVS            R1, #0
158776:  ADD             R2, PC; "ZL17MakeSharedHStreamjE3$_2"
158778:  CMP             R3, R2
15877A:  IT EQ
15877C:  ADDEQ.W         R1, R0, #0xC
158780:  MOV             R0, R1
158782:  BX              LR
