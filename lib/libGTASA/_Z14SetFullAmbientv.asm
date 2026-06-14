; =========================================================
; Game Engine Function: _Z14SetFullAmbientv
; Address            : 0x5D1FFC - 0x5D200E
; =========================================================

5D1FFC:  LDR             R0, =(pAmbient_ptr - 0x5D2004)
5D1FFE:  LDR             R1, =(FullLight_ptr - 0x5D2006)
5D2000:  ADD             R0, PC; pAmbient_ptr
5D2002:  ADD             R1, PC; FullLight_ptr
5D2004:  LDR             R0, [R0]; pAmbient
5D2006:  LDR             R1, [R1]; FullLight
5D2008:  LDR             R0, [R0]
5D200A:  B.W             sub_193254
