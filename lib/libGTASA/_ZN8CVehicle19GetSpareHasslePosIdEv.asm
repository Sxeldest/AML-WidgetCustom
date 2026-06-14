; =========================================================
; Game Engine Function: _ZN8CVehicle19GetSpareHasslePosIdEv
; Address            : 0x58D46E - 0x58D4A6
; =========================================================

58D46E:  LDR.W           R1, [R0,#0x5A4]
58D472:  SUB.W           R2, R1, #9
58D476:  CMP             R2, #2
58D478:  BCC             loc_58D480
58D47A:  CBZ             R1, loc_58D484
58D47C:  CMP             R1, #2
58D47E:  BNE             loc_58D4A0
58D480:  MOVS            R1, #2
58D482:  B               loc_58D486
58D484:  MOVS            R1, #6
58D486:  LDRB.W          R2, [R0,#0x52B]
58D48A:  MOVS            R0, #0
58D48C:  MOV.W           R12, #1
58D490:  LSL.W           R3, R12, R0
58D494:  TST             R3, R2
58D496:  IT EQ
58D498:  BXEQ            LR
58D49A:  ADDS            R0, #1
58D49C:  CMP             R0, R1
58D49E:  BLT             loc_58D490
58D4A0:  MOV.W           R0, #0xFFFFFFFF
58D4A4:  BX              LR
