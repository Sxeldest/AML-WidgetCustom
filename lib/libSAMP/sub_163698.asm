; =========================================================
; Game Engine Function: sub_163698
; Address            : 0x163698 - 0x1636F0
; =========================================================

163698:  PUSH            {R4-R7,LR}
16369A:  ADD             R7, SP, #0xC
16369C:  PUSH.W          {R11}
1636A0:  LDR             R2, [R0,#0x40]
1636A2:  MOVS            R3, #8
1636A4:  LDR             R1, [R0,#0x38]
1636A6:  LDR             R4, [R0,#0x5C]
1636A8:  CMP             R2, #0
1636AA:  MOV             R0, R2
1636AC:  IT NE
1636AE:  MOVNE           R0, #1
1636B0:  CMP             R2, #1
1636B2:  IT LT
1636B4:  LSLLT           R3, R0, #2
1636B6:  MOVS            R0, #2
1636B8:  AND.W           R0, R0, R4,LSR#2
1636BC:  UBFX.W          R2, R4, #7, #1
1636C0:  ADD             R0, R3
1636C2:  ADDS            R5, R0, R2
1636C4:  MOV             R0, R1
1636C6:  LSLS            R6, R5, #0xA
1636C8:  BLX             sub_220C40
1636CC:  MOV.W           R2, #0x200
1636D0:  AND.W           R3, R4, #2
1636D4:  AND.W           R2, R2, R4,LSL#3
1636D8:  ORR.W           R1, R1, R6,LSR#31
1636DC:  ORR.W           R2, R2, R5,LSL#10
1636E0:  ORR.W           R2, R2, R3,LSL#7
1636E4:  EOR.W           R2, R2, #0x800
1636E8:  ORRS            R0, R2
1636EA:  POP.W           {R11}
1636EE:  POP             {R4-R7,PC}
