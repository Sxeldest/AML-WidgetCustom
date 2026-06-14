; =========================================================
; Game Engine Function: mpg123_getstate
; Address            : 0x22F520 - 0x22F55A
; =========================================================

22F520:  CMP             R0, #0
22F522:  ITT EQ
22F524:  MOVEQ.W         R0, #0xFFFFFFFF
22F528:  BXEQ            LR
22F52A:  CMP             R1, #1
22F52C:  BNE             loc_22F538
22F52E:  MOVW            R1, #0x9320
22F532:  LDRB            R1, [R0,R1]
22F534:  MOVS            R0, #0
22F536:  B               loc_22F548
22F538:  MOVW            R12, #0xB468
22F53C:  MOVS            R1, #0x22 ; '"'
22F53E:  STR.W           R1, [R0,R12]
22F542:  MOVS            R1, #0
22F544:  MOV.W           R0, #0xFFFFFFFF
22F548:  CMP             R2, #0
22F54A:  IT NE
22F54C:  STRNE           R1, [R2]
22F54E:  CMP             R3, #0
22F550:  ITT NE
22F552:  MOVNE           R1, #0
22F554:  STRDNE.W        R1, R1, [R3]
22F558:  BX              LR
