; =========================================================
; Game Engine Function: sub_20D174
; Address            : 0x20D174 - 0x20D1FA
; =========================================================

20D174:  PUSH            {R4,R5,R7,LR}
20D176:  ADD             R7, SP, #8
20D178:  MOV             R4, R0
20D17A:  CBZ             R4, loc_20D19E
20D17C:  LDR             R0, [R4,#0x50]; p
20D17E:  CMP             R0, #0
20D180:  IT NE
20D182:  BLXNE           free
20D186:  LDR             R0, [R4,#0x1C]
20D188:  CBZ             R0, loc_20D1A6
20D18A:  LDRB.W          R0, [R4,#0x5C]
20D18E:  CMP             R0, #0x72 ; 'r'
20D190:  BEQ             loc_20D1AA
20D192:  CMP             R0, #0x77 ; 'w'
20D194:  BNE             loc_20D1A6
20D196:  MOV             R0, R4
20D198:  BLX             j_deflateEnd
20D19C:  B               loc_20D1B0
20D19E:  MOV             R5, #0xFFFFFFFE
20D1A2:  MOV             R0, R5
20D1A4:  POP             {R4,R5,R7,PC}
20D1A6:  MOVS            R5, #0
20D1A8:  B               loc_20D1B2
20D1AA:  MOV             R0, R4
20D1AC:  BLX             j_inflateEnd
20D1B0:  MOV             R5, R0
20D1B2:  LDR             R0, [R4,#0x40]; stream
20D1B4:  CBZ             R0, loc_20D1CA
20D1B6:  BLX             fclose
20D1BA:  CBZ             R0, loc_20D1CA
20D1BC:  BLX             __errno
20D1C0:  LDR             R0, [R0]
20D1C2:  CMP             R0, #0x1D
20D1C4:  IT NE
20D1C6:  MOVNE.W         R5, #0xFFFFFFFF
20D1CA:  LDR             R1, [R4,#0x38]
20D1CC:  LDR             R0, [R4,#0x44]; p
20D1CE:  CMP             R1, #0
20D1D0:  IT LT
20D1D2:  MOVLT           R5, R1
20D1D4:  CMP             R0, #0
20D1D6:  IT NE
20D1D8:  BLXNE           free
20D1DC:  LDR             R0, [R4,#0x48]; p
20D1DE:  CMP             R0, #0
20D1E0:  IT NE
20D1E2:  BLXNE           free
20D1E6:  LDR             R0, [R4,#0x54]; p
20D1E8:  CMP             R0, #0
20D1EA:  IT NE
20D1EC:  BLXNE           free
20D1F0:  MOV             R0, R4; p
20D1F2:  BLX             free
20D1F6:  MOV             R0, R5
20D1F8:  POP             {R4,R5,R7,PC}
