; =========================================================
; Game Engine Function: _ZN9CIplStore11FindIplSlotEPKc
; Address            : 0x280890 - 0x2808E2
; =========================================================

280890:  PUSH            {R4-R7,LR}
280892:  ADD             R7, SP, #0xC
280894:  PUSH.W          {R8-R10}
280898:  MOV             R8, R0
28089A:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2808A0)
28089C:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28089E:  LDR             R0, [R0]; CIplStore::ms_pPool ...
2808A0:  LDR.W           R9, [R0]; CIplStore::ms_pPool
2808A4:  LDR.W           R10, [R9,#8]
2808A8:  CMP.W           R10, #1
2808AC:  BLT             loc_2808D6
2808AE:  LDR.W           R6, [R9,#4]
2808B2:  MOVS            R4, #0
2808B4:  MOVS            R5, #0x10
2808B6:  LDRSB           R0, [R6,R4]
2808B8:  CMP             R0, #0
2808BA:  BLT             loc_2808CE
2808BC:  LDR.W           R0, [R9]
2808C0:  ADDS            R1, R0, R5; char *
2808C2:  CMP             R1, #0x10
2808C4:  BEQ             loc_2808CE
2808C6:  MOV             R0, R8; char *
2808C8:  BLX             strcasecmp
2808CC:  CBZ             R0, loc_2808DA
2808CE:  ADDS            R4, #1
2808D0:  ADDS            R5, #0x34 ; '4'
2808D2:  CMP             R4, R10
2808D4:  BLT             loc_2808B6
2808D6:  MOV.W           R4, #0xFFFFFFFF
2808DA:  MOV             R0, R4
2808DC:  POP.W           {R8-R10}
2808E0:  POP             {R4-R7,PC}
