; =========================================================
; Game Engine Function: sub_10C850
; Address            : 0x10C850 - 0x10C860
; =========================================================

10C850:  LDR             R0, =(sub_10B8EC+1 - 0x10C85A)
10C852:  LDR             R1, =(dword_2631B0 - 0x10C85C)
10C854:  LDR             R2, =(off_22A540 - 0x10C85E)
10C856:  ADD             R0, PC; sub_10B8EC
10C858:  ADD             R1, PC; dword_2631B0
10C85A:  ADD             R2, PC; off_22A540
10C85C:  B.W             sub_224250
