; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains31SwitchAllObjectBrainsWithThisIDEab
; Address            : 0x32F5EC - 0x32F616
; =========================================================

32F5EC:  PUSH            {R7,LR}
32F5EE:  MOV             R7, SP
32F5F0:  CMP             R1, #0
32F5F2:  IT LT
32F5F4:  POPLT           {R7,PC}
32F5F6:  MOVS            R3, #0
32F5F8:  UXTB.W          R12, R1
32F5FC:  ADD.W           LR, R0, R3
32F600:  ADDS            R3, #0x14
32F602:  LDRB.W          R1, [LR,#3]
32F606:  CMP             R1, R12
32F608:  IT EQ
32F60A:  STRBEQ.W        R2, [LR,#4]
32F60E:  CMP.W           R3, #0x578
32F612:  BNE             loc_32F5FC
32F614:  POP             {R7,PC}
