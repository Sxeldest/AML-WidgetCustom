; =========================================================
; Game Engine Function: sub_F8708
; Address            : 0xF8708 - 0xF8716
; =========================================================

F8708:  LDR             R1, =(unk_B2BCE - 0xF8712)
F870A:  MOVS            R2, #0
F870C:  STR             R2, [R0,#4]
F870E:  ADD             R1, PC; unk_B2BCE
F8710:  MOV             R0, R1
F8712:  B.W             sub_107188
