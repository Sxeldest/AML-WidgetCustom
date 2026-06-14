; =========================================================
; Game Engine Function: _ZN7CClouds16MovingFog_DeleteEi
; Address            : 0x5A1874 - 0x5A188C
; =========================================================

5A1874:  LDR             R1, =(_ZN7CClouds5ms_mfE_ptr - 0x5A187E)
5A1876:  MOVS            R2, #0
5A1878:  CMP             R0, #0
5A187A:  ADD             R1, PC; _ZN7CClouds5ms_mfE_ptr
5A187C:  IT LE
5A187E:  MOVLE           R0, R2
5A1880:  CMP             R0, #0x31 ; '1'
5A1882:  LDR             R1, [R1]; CClouds::ms_mf ...
5A1884:  IT GE
5A1886:  MOVGE           R0, #(word_A25500+1 - 0xA254D0)
5A1888:  STRB            R2, [R1,R0]
5A188A:  BX              LR
