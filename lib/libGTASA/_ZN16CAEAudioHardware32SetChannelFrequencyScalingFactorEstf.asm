; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf
; Address            : 0x392C58 - 0x392C7A
; =========================================================

392C58:  CMP             R1, #0
392C5A:  IT LT
392C5C:  BXLT            LR
392C5E:  ADD.W           R12, R0, R1,LSL#1
392C62:  LDRH.W          R12, [R12,#0x4C]
392C66:  CMP             R12, R2
392C68:  ITTTT HI
392C6A:  VMOVHI          S0, R3
392C6E:  ADDHI           R1, R2
392C70:  ADDHI.W         R0, R0, R1,LSL#2
392C74:  VSTRHI          S0, [R0,#0x178]
392C78:  BX              LR
