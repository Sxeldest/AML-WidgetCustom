; =========================================================
; Game Engine Function: _ZN14CAEWaveDecoder13GetSampleRateEv
; Address            : 0x3B9878 - 0x3B9886
; =========================================================

3B9878:  LDRB            R1, [R0,#8]
3B987A:  CMP             R1, #0
3B987C:  ITE NE
3B987E:  LDRNE           R0, [R0,#0x28]
3B9880:  MOVEQ.W         R0, #0xFFFFFFFF
3B9884:  BX              LR
