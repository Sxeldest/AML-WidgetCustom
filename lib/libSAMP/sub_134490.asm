; =========================================================
; Game Engine Function: sub_134490
; Address            : 0x134490 - 0x1344C4
; =========================================================

134490:  PUSH            {R4,R6,R7,LR}
134492:  ADD             R7, SP, #8
134494:  LDR             R4, [R0,#4]
134496:  LDRB.W          R0, [R4,#0x50]
13449A:  CBZ             R0, loc_1344A6
13449C:  LDR             R0, [R4]
13449E:  MOVS            R1, #0
1344A0:  LDR             R2, [R0,#0x24]
1344A2:  MOV             R0, R4
1344A4:  BLX             R2
1344A6:  LDR             R0, =(off_23496C - 0x1344B2)
1344A8:  MOVS            R1, #0
1344AA:  STRB.W          R1, [R4,#0x50]
1344AE:  ADD             R0, PC; off_23496C
1344B0:  LDR             R0, [R0]; dword_23DEF4
1344B2:  LDR             R0, [R0]
1344B4:  CBZ             R0, locret_1344C2
1344B6:  LDR             R1, =(aSettings_0 - 0x1344BC); "/settings" ...
1344B8:  ADD             R1, PC; "/settings"
1344BA:  POP.W           {R4,R6,R7,LR}
1344BE:  B.W             sub_144460
1344C2:  POP             {R4,R6,R7,PC}
