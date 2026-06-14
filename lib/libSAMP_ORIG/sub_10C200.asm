; =========================================================
; Game Engine Function: sub_10C200
; Address            : 0x10C200 - 0x10C20C
; =========================================================

10C200:  MOV             R12, #(j_opus_fft_impl - 0x10C20C)
10C208:  ADD             R12, PC; j_opus_fft_impl
10C20A:  BX              R12; j_opus_fft_impl
