; =========================================================
; Game Engine Function: _Z9NvAPKGetsPciPv
; Address            : 0x271086 - 0x271100
; =========================================================

271086:  PUSH            {R4-R7,LR}
271088:  ADD             R7, SP, #0xC
27108A:  PUSH.W          {R8-R10}
27108E:  MOV             R8, R0
271090:  MOV             R4, R1
271092:  MOV             R6, R2
271094:  CMP             R4, #2
271096:  MOV             R5, R8
271098:  BLT             loc_2710F4
27109A:  MOV             R5, R8
27109C:  MOV             R0, R6; asset
27109E:  BLX             AAsset_getLength
2710A2:  MOV             R9, R0
2710A4:  MOV             R0, R6; asset
2710A6:  BLX             AAsset_getRemainingLength
2710AA:  SUB.W           R9, R9, R0
2710AE:  MOV             R0, R6; asset
2710B0:  BLX             AAsset_getLength
2710B4:  CMP             R9, R0
2710B6:  BCS             loc_2710F4
2710B8:  MOV             R0, R6; asset
2710BA:  BLX             AAsset_getLength
2710BE:  MOV             R9, R0
2710C0:  MOV             R0, R6; asset
2710C2:  BLX             AAsset_getLength
2710C6:  MOV             R10, R0
2710C8:  MOV             R0, R6; asset
2710CA:  BLX             AAsset_getRemainingLength
2710CE:  SUB.W           R0, R0, R10
2710D2:  MOV             R1, R5; buf
2710D4:  ADD.W           R2, R0, R9
2710D8:  MOV             R0, R6; asset
2710DA:  CMP             R2, #1
2710DC:  IT GE
2710DE:  MOVGE           R2, #1; count
2710E0:  BLX             AAsset_read
2710E4:  LDRB.W          R0, [R5],#1
2710E8:  SUBS            R4, #1
2710EA:  CMP             R0, #0xA
2710EC:  IT EQ
2710EE:  MOVEQ           R4, #0
2710F0:  CMP             R4, #1
2710F2:  BGT             loc_27109C
2710F4:  MOVS            R0, #0
2710F6:  STRB            R0, [R5]
2710F8:  MOV             R0, R8
2710FA:  POP.W           {R8-R10}
2710FE:  POP             {R4-R7,PC}
