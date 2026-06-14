; =========================================================
; Game Engine Function: _ZN9CPathFind23ReturnInteriorNodeIndexEji
; Address            : 0x31B33C - 0x31B3BA
; =========================================================

31B33C:  MOVW            R3, #0x3588
31B340:  LDR             R3, [R0,R3]
31B342:  CMP             R3, R1
31B344:  BNE             loc_31B34A
31B346:  MOVS            R0, #0x40 ; '@'
31B348:  B               loc_31B3B4
31B34A:  MOVW            R3, #0x358C
31B34E:  LDR             R3, [R0,R3]
31B350:  CMP             R3, R1
31B352:  BNE             loc_31B358
31B354:  MOVS            R0, #0x41 ; 'A'
31B356:  B               loc_31B3B4
31B358:  MOVW            R3, #0x3590
31B35C:  LDR             R3, [R0,R3]
31B35E:  CMP             R3, R1
31B360:  BNE             loc_31B366
31B362:  MOVS            R0, #0x42 ; 'B'
31B364:  B               loc_31B3B4
31B366:  MOVW            R3, #0x3594
31B36A:  LDR             R3, [R0,R3]
31B36C:  CMP             R3, R1
31B36E:  BNE             loc_31B374
31B370:  MOVS            R0, #0x43 ; 'C'
31B372:  B               loc_31B3B4
31B374:  MOVW            R3, #0x3598
31B378:  LDR             R3, [R0,R3]
31B37A:  CMP             R3, R1
31B37C:  BNE             loc_31B382
31B37E:  MOVS            R0, #0x44 ; 'D'
31B380:  B               loc_31B3B4
31B382:  MOVW            R3, #0x359C
31B386:  LDR             R3, [R0,R3]
31B388:  CMP             R3, R1
31B38A:  BNE             loc_31B390
31B38C:  MOVS            R0, #0x45 ; 'E'
31B38E:  B               loc_31B3B4
31B390:  MOVW            R3, #0x35A0
31B394:  LDR             R3, [R0,R3]
31B396:  CMP             R3, R1
31B398:  BNE             loc_31B39E
31B39A:  MOVS            R0, #0x46 ; 'F'
31B39C:  B               loc_31B3B4
31B39E:  MOVW            R3, #0x35A4
31B3A2:  LDR             R0, [R0,R3]
31B3A4:  CMP             R0, R1
31B3A6:  ITTTT NE
31B3A8:  MOVWNE          R0, #0xFFFF
31B3AC:  MOVNE           R1, #0
31B3AE:  ORRNE           R0, R1
31B3B0:  BXNE            LR
31B3B2:  MOVS            R0, #0x47 ; 'G'
31B3B4:  LSLS            R1, R2, #0x10
31B3B6:  ORRS            R0, R1
31B3B8:  BX              LR
