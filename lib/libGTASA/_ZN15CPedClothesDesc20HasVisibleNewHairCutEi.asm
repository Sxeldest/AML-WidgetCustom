; =========================================================
; Game Engine Function: _ZN15CPedClothesDesc20HasVisibleNewHairCutEi
; Address            : 0x457460 - 0x4574AC
; =========================================================

457460:  PUSH            {R4-R7,LR}
457462:  ADD             R7, SP, #0xC
457464:  PUSH.W          {R11}
457468:  MOV             R4, R0
45746A:  LDR             R0, =(aBalaclava - 0x457474); "balaclava"
45746C:  MOV             R5, R1
45746E:  LDR             R6, [R4,#0x24]
457470:  ADD             R0, PC; "balaclava"
457472:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457476:  CMP             R6, R0
457478:  BEQ             loc_45748C
45747A:  LDR             R0, =(aShead+1 - 0x457482); "head"
45747C:  LDR             R6, [R4,#4]
45747E:  ADD             R0, PC; this
457480:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457484:  CMP             R6, R0
457486:  BEQ             loc_45748C
457488:  LDR             R0, [R4,#0x20]
45748A:  CBZ             R0, loc_457494
45748C:  MOVS            R0, #0
45748E:  POP.W           {R11}
457492:  POP             {R4-R7,PC}
457494:  CMP             R5, #1
457496:  BNE             loc_4574A4
457498:  ADR             R0, aAfro; "afro"
45749A:  LDR             R4, [R4,#4]
45749C:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4574A0:  CMP             R4, R0
4574A2:  BNE             loc_45748C
4574A4:  MOVS            R0, #1
4574A6:  POP.W           {R11}
4574AA:  POP             {R4-R7,PC}
