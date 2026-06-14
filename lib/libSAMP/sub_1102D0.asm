; =========================================================
; Game Engine Function: sub_1102D0
; Address            : 0x1102D0 - 0x11033E
; =========================================================

1102D0:  PUSH            {R4-R7,LR}
1102D2:  ADD             R7, SP, #0xC
1102D4:  PUSH.W          {R8}
1102D8:  SUB             SP, SP, #8
1102DA:  LDR             R6, [R7,#arg_8]
1102DC:  MOV             R4, R3
1102DE:  MOV             R8, R1
1102E0:  LDR             R5, [R0]
1102E2:  LDRD.W          R3, R1, [R7,#arg_0]
1102E6:  MOV             R0, R8
1102E8:  STRD.W          R1, R6, [SP,#0x18+var_18]
1102EC:  MOV             R1, R2
1102EE:  MOV             R2, R4
1102F0:  BLX             R5
1102F2:  LDR             R1, =(asc_B4514 - 0x1102FA); "\n>" ...
1102F4:  MOVS            R0, #0
1102F6:  ADD             R1, PC; "\n>"
1102F8:  LDR             R2, [R1,R0]
1102FA:  CMP             R2, R6
1102FC:  BEQ             loc_110306
1102FE:  ADDS            R0, #4
110300:  CMP             R0, #0xC
110302:  BNE             loc_1102F8
110304:  B               loc_110336
110306:  CMP             R0, #0xC
110308:  BEQ             loc_110336
11030A:  LDR             R0, =(aMobile - 0x110310); "mobile" ...
11030C:  ADD             R0, PC; "mobile"
11030E:  BL              sub_163A6C
110312:  MOV             R4, R0
110314:  BL              sub_16398C
110318:  MOV             R0, R8
11031A:  BL              sub_163BFE
11031E:  LDR             R1, =(aHudSkate - 0x110324); "hud_skate" ...
110320:  ADD             R1, PC; "hud_skate"
110322:  BL              sub_1630D8
110326:  MOV             R0, R4
110328:  ADD             SP, SP, #8
11032A:  POP.W           {R8}
11032E:  POP.W           {R4-R7,LR}
110332:  B.W             sub_1639BC
110336:  ADD             SP, SP, #8
110338:  POP.W           {R8}
11033C:  POP             {R4-R7,PC}
