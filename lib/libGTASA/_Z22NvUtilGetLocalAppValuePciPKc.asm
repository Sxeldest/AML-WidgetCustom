; =========================================================
; Game Engine Function: _Z22NvUtilGetLocalAppValuePciPKc
; Address            : 0x27A280 - 0x27A28E
; =========================================================

27A280:  MOV             R3, R2
27A282:  MOV             R2, R1
27A284:  MOV             R1, R0
27A286:  LDR             R0, =(dword_6DF16C - 0x27A28C)
27A288:  ADD             R0, PC; dword_6DF16C
27A28A:  LDR             R0, [R0]
27A28C:  B               sub_27A294
