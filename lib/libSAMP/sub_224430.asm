; =========================================================
; Game Engine Function: sub_224430
; Address            : 0x224430 - 0x22443C
; =========================================================

224430:  MOV             R12, #(j_opus_fft_impl - 0x22443C)
224438:  ADD             R12, PC; j_opus_fft_impl
22443A:  BX              R12; j_opus_fft_impl
