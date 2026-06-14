; =========================================================
; Game Engine Function: _Z9NvAPKGetcPv
; Address            : 0x271070 - 0x271086
; =========================================================

271070:  PUSH            {R7,LR}
271072:  MOV             R7, SP
271074:  SUB             SP, SP, #8
271076:  SUBS            R1, R7, #1; buf
271078:  MOVS            R2, #1; count
27107A:  BLX             AAsset_read
27107E:  LDRB.W          R0, [R7,#-1]
271082:  ADD             SP, SP, #8
271084:  POP             {R7,PC}
