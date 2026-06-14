; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware15SetChannelFlagsEsts
; Address            : 0x39326C - 0x393288
; =========================================================

39326C:  CMP             R1, #0
39326E:  IT LT
393270:  BXLT            LR
393272:  ADD.W           R12, R0, R1,LSL#1
393276:  LDRH.W          R12, [R12,#0x4C]
39327A:  CMP             R12, R2
39327C:  ITTT HI
39327E:  ADDHI           R1, R2
393280:  ADDHI.W         R0, R0, R1,LSL#1
393284:  STRHHI          R3, [R0,#6]
393286:  BX              LR
