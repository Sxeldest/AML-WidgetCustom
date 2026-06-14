; =========================================================
; Game Engine Function: _Z9NvAPKTellPv
; Address            : 0x271136 - 0x27114C
; =========================================================

271136:  PUSH            {R4,R5,R7,LR}
271138:  ADD             R7, SP, #8
27113A:  MOV             R4, R0
27113C:  BLX             AAsset_getLength
271140:  MOV             R5, R0
271142:  MOV             R0, R4; asset
271144:  BLX             AAsset_getRemainingLength
271148:  SUBS            R0, R5, R0
27114A:  POP             {R4,R5,R7,PC}
