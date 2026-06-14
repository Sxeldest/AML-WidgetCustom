; =========================================================
; Game Engine Function: sub_685E0
; Address            : 0x685E0 - 0x685F4
; =========================================================

685E0:  LDR             R1, =(off_114AA8 - 0x685EE)
685E2:  MOV             R2, #0x483D49
685EA:  ADD             R1, PC; off_114AA8
685EC:  LDR             R1, [R1]; dword_1A4404
685EE:  LDR             R1, [R1]
685F0:  ADD             R1, R2
685F2:  BX              R1
