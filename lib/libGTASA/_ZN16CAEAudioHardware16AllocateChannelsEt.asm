; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware16AllocateChannelsEt
; Address            : 0x46CEC4 - 0x46CF02
; =========================================================

46CEC4:  SUBS            R3, R1, #1
46CEC6:  LDRH.W          R2, [R0,#0x48]
46CECA:  UXTH            R3, R3
46CECC:  CMP             R3, R2
46CECE:  BCS             loc_46CEE6
46CED0:  MOV.W           R12, #0
46CED4:  ADD.W           R3, R0, R12,LSL#1
46CED8:  LDRH.W          R2, [R3,#0x4C]!
46CEDC:  CBZ             R2, loc_46CEF0
46CEDE:  ADD             R12, R2
46CEE0:  CMP.W           R12, #0x1D
46CEE4:  BLE             loc_46CED4
46CEE6:  MOVW            R12, #0xFFFF
46CEEA:  SXTH.W          R0, R12
46CEEE:  BX              LR
46CEF0:  STRH            R1, [R3]
46CEF2:  LDRH.W          R2, [R0,#0x48]
46CEF6:  SUBS            R1, R2, R1
46CEF8:  STRH.W          R1, [R0,#0x48]
46CEFC:  SXTH.W          R0, R12
46CF00:  BX              LR
