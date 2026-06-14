; =========================================================
; Game Engine Function: sub_FA318
; Address            : 0xFA318 - 0xFA324
; =========================================================

FA318:  LDR             R0, =(unk_B2E58 - 0xFA322)
FA31A:  MOV             R2, R1
FA31C:  MOVS            R1, #0
FA31E:  ADD             R0, PC; unk_B2E58
FA320:  B.W             sub_107188
