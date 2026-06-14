; =========================================================
; Game Engine Function: _Z18NvUtilGetParameterPciPKc
; Address            : 0x27A3B0 - 0x27A3BE
; =========================================================

27A3B0:  MOV             R3, R2
27A3B2:  MOV             R2, R1
27A3B4:  MOV             R1, R0
27A3B6:  LDR             R0, =(dword_6DF174 - 0x27A3BC)
27A3B8:  ADD             R0, PC; dword_6DF174
27A3BA:  LDR             R0, [R0]
27A3BC:  B               sub_27A294
