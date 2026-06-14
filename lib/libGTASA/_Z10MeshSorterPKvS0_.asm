; =========================================================
; Game Engine Function: _Z10MeshSorterPKvS0_
; Address            : 0x21835A - 0x2183DA
; =========================================================

21835A:  LDR             R0, [R0,#8]
21835C:  CBZ             R0, loc_21837C
21835E:  LDR             R2, [R0]
218360:  CBZ             R2, loc_218380
218362:  LDR             R2, [R2]
218364:  LDRB.W          R3, [R2,#0x22]
218368:  LDRB            R2, [R0,#7]
21836A:  AND.W           R0, R3, #0xF
21836E:  CMP             R0, #6
218370:  BNE             loc_21838C
218372:  MOVS            R0, #3
218374:  CMP             R2, #0xFF
218376:  IT EQ
218378:  MOVEQ           R0, #1
21837A:  B               loc_218394
21837C:  MOVS            R0, #0
21837E:  B               loc_218394
218380:  LDRB            R2, [R0,#7]
218382:  MOVS            R0, #4
218384:  CMP             R2, #0xFF
218386:  IT EQ
218388:  MOVEQ           R0, #2
21838A:  B               loc_218394
21838C:  MOVS            R0, #6
21838E:  CMP             R2, #0xFF
218390:  IT EQ
218392:  MOVEQ           R0, #5
218394:  LDR             R1, [R1,#8]
218396:  CMP             R1, #0
218398:  ITTT EQ
21839A:  MOVEQ           R1, #0
21839C:  SUBEQ           R0, R0, R1
21839E:  BXEQ            LR
2183A0:  LDR             R2, [R1]
2183A2:  CBZ             R2, loc_2183C0
2183A4:  LDR             R2, [R2]
2183A6:  LDRB.W          R3, [R2,#0x22]
2183AA:  LDRB            R2, [R1,#7]
2183AC:  AND.W           R1, R3, #0xF
2183B0:  CMP             R1, #6
2183B2:  BNE             loc_2183CE
2183B4:  MOVS            R1, #3
2183B6:  CMP             R2, #0xFF
2183B8:  IT EQ
2183BA:  MOVEQ           R1, #1
2183BC:  SUBS            R0, R0, R1
2183BE:  BX              LR
2183C0:  LDRB            R2, [R1,#7]
2183C2:  MOVS            R1, #4
2183C4:  CMP             R2, #0xFF
2183C6:  IT EQ
2183C8:  MOVEQ           R1, #2
2183CA:  SUBS            R0, R0, R1
2183CC:  BX              LR
2183CE:  MOVS            R1, #6
2183D0:  CMP             R2, #0xFF
2183D2:  IT EQ
2183D4:  MOVEQ           R1, #5
2183D6:  SUBS            R0, R0, R1
2183D8:  BX              LR
