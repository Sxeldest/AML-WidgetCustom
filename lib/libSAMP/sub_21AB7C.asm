; =========================================================
; Game Engine Function: sub_21AB7C
; Address            : 0x21AB7C - 0x21AB8A
; =========================================================

21AB7C:  MOV             R0, R1
21AB7E:  LDR             R1, =(aTypename - 0x21AB84); "typename " ...
21AB80:  ADD             R1, PC; "typename "
21AB82:  ADD.W           R2, R1, #9
21AB86:  B.W             sub_216F98
