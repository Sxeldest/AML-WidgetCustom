; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware18SetChannelPositionEstP7CVectorh
; Address            : 0x392C30 - 0x392C58
; =========================================================

392C30:  CMP             R1, #0
392C32:  IT LT
392C34:  BXLT            LR
392C36:  ADD.W           R12, R0, R1,LSL#1
392C3A:  LDRH.W          R12, [R12,#0x4C]
392C3E:  CMP             R12, R2
392C40:  BLS             locret_392C56
392C42:  ADD             R1, R2
392C44:  ADD.W           R0, R0, R1,LSL#2
392C48:  LDR.W           R0, [R0,#0xBCC]
392C4C:  CMP             R0, #0
392C4E:  ITT NE
392C50:  MOVNE           R1, R3
392C52:  BNE.W           sub_199E34
392C56:  BX              LR
