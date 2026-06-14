; =========================================================
; Game Engine Function: _Z8NvAPKEOFPv
; Address            : 0x271100 - 0x271126
; =========================================================

271100:  PUSH            {R4,R5,R7,LR}
271102:  ADD             R7, SP, #8
271104:  MOV             R4, R0
271106:  BLX             AAsset_getLength
27110A:  MOV             R5, R0
27110C:  MOV             R0, R4; asset
27110E:  BLX             AAsset_getRemainingLength
271112:  SUBS            R5, R5, R0
271114:  MOV             R0, R4; asset
271116:  BLX             AAsset_getLength
27111A:  MOVS            R1, #0
27111C:  CMP             R5, R0
27111E:  IT CS
271120:  MOVCS           R1, #1
271122:  MOV             R0, R1
271124:  POP             {R4,R5,R7,PC}
