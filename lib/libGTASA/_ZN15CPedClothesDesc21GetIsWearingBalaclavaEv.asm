; =========================================================
; Game Engine Function: _ZN15CPedClothesDesc21GetIsWearingBalaclavaEv
; Address            : 0x457440 - 0x45745C
; =========================================================

457440:  PUSH            {R4,R6,R7,LR}
457442:  ADD             R7, SP, #8
457444:  LDR             R1, =(aBalaclava - 0x45744C); "balaclava"
457446:  LDR             R4, [R0,#0x24]
457448:  ADD             R1, PC; "balaclava"
45744A:  MOV             R0, R1; this
45744C:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457450:  MOVS            R1, #0
457452:  CMP             R4, R0
457454:  IT EQ
457456:  MOVEQ           R1, #1
457458:  MOV             R0, R1
45745A:  POP             {R4,R6,R7,PC}
