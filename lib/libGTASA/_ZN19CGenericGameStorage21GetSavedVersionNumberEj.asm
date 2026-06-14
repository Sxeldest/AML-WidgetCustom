; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage21GetSavedVersionNumberEj
; Address            : 0x483510 - 0x4835E6
; =========================================================

483510:  PUSH            {R4-R7,LR}
483512:  ADD             R7, SP, #0xC
483514:  PUSH.W          {R11}
483518:  SUB             SP, SP, #0x30
48351A:  MOV             R4, R0
48351C:  LDR             R0, =(__stack_chk_guard_ptr - 0x483526)
48351E:  LDR             R1, =(aGtasaD - 0x48352A); "GTASA%d"
483520:  ADD             R6, SP, #0x40+var_3C
483522:  ADD             R0, PC; __stack_chk_guard_ptr
483524:  MOVS            R2, #0
483526:  ADD             R1, PC; "GTASA%d"
483528:  MOVS            R5, #0
48352A:  LDR             R0, [R0]; __stack_chk_guard
48352C:  LDR             R0, [R0]
48352E:  STR             R0, [SP,#0x40+var_14]
483530:  MOV             R0, R6
483532:  BL              sub_5E6BC0
483536:  MOV             R0, R6; this
483538:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
48353C:  MOV             R0, R6; this
48353E:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
483542:  CMP             R0, R4
483544:  BEQ             loc_4835CA
483546:  LDR             R1, =(aGtasaD - 0x483550); "GTASA%d"
483548:  ADD             R6, SP, #0x40+var_3C
48354A:  MOVS            R2, #1
48354C:  ADD             R1, PC; "GTASA%d"
48354E:  MOV             R0, R6
483550:  BL              sub_5E6BC0
483554:  MOV             R0, R6; this
483556:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
48355A:  MOV             R0, R6; this
48355C:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
483560:  CMP             R0, R4
483562:  IT EQ
483564:  MOVEQ           R5, #1
483566:  BEQ             loc_4835CA
483568:  LDR             R1, =(aGtasaD - 0x483574); "GTASA%d"
48356A:  ADD             R6, SP, #0x40+var_3C
48356C:  MOVS            R2, #2
48356E:  MOVS            R5, #2
483570:  ADD             R1, PC; "GTASA%d"
483572:  MOV             R0, R6
483574:  BL              sub_5E6BC0
483578:  MOV             R0, R6; this
48357A:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
48357E:  MOV             R0, R6; this
483580:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
483584:  CMP             R0, R4
483586:  BEQ             loc_4835CA
483588:  LDR             R1, =(aGtasaD - 0x483594); "GTASA%d"
48358A:  ADD             R6, SP, #0x40+var_3C
48358C:  MOVS            R2, #3
48358E:  MOVS            R5, #3
483590:  ADD             R1, PC; "GTASA%d"
483592:  MOV             R0, R6
483594:  BL              sub_5E6BC0
483598:  MOV             R0, R6; this
48359A:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
48359E:  MOV             R0, R6; this
4835A0:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
4835A4:  CMP             R0, R4
4835A6:  BEQ             loc_4835CA
4835A8:  LDR             R1, =(aGtasaD - 0x4835B2); "GTASA%d"
4835AA:  ADD             R5, SP, #0x40+var_3C
4835AC:  MOVS            R2, #4
4835AE:  ADD             R1, PC; "GTASA%d"
4835B0:  MOV             R0, R5
4835B2:  BL              sub_5E6BC0
4835B6:  MOV             R0, R5; this
4835B8:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
4835BC:  MOV             R0, R5; this
4835BE:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
4835C2:  MOVS            R5, #0
4835C4:  CMP             R0, R4
4835C6:  IT EQ
4835C8:  MOVEQ           R5, #4
4835CA:  LDR             R0, =(__stack_chk_guard_ptr - 0x4835D2)
4835CC:  LDR             R1, [SP,#0x40+var_14]
4835CE:  ADD             R0, PC; __stack_chk_guard_ptr
4835D0:  LDR             R0, [R0]; __stack_chk_guard
4835D2:  LDR             R0, [R0]
4835D4:  SUBS            R0, R0, R1
4835D6:  ITTTT EQ
4835D8:  MOVEQ           R0, R5
4835DA:  ADDEQ           SP, SP, #0x30 ; '0'
4835DC:  POPEQ.W         {R11}
4835E0:  POPEQ           {R4-R7,PC}
4835E2:  BLX             __stack_chk_fail
