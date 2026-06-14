; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware16SetChannelVolumeEstfh
; Address            : 0x392BC8 - 0x392BEA
; =========================================================

392BC8:  CMP             R1, #0
392BCA:  IT LT
392BCC:  BXLT            LR
392BCE:  ADD.W           R12, R0, R1,LSL#1
392BD2:  LDRH.W          R12, [R12,#0x4C]
392BD6:  CMP             R12, R2
392BD8:  ITTTT HI
392BDA:  VMOVHI          S0, R3
392BDE:  ADDHI           R1, R2
392BE0:  ADDHI.W         R0, R0, R1,LSL#2
392BE4:  VSTRHI          S0, [R0,#0x88]
392BE8:  BX              LR
