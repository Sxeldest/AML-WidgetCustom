; =========================================================
; Game Engine Function: _ZN8CPedList24BuildListOfPedsOfPedTypeEi
; Address            : 0x54844C - 0x5484CE
; =========================================================

54844C:  PUSH            {R4,R5,R7,LR}
54844E:  ADD             R7, SP, #8
548450:  LDR             R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x54845E)
548452:  MOV.W           R12, #0
548456:  STR.W           R12, [R0]
54845A:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
54845C:  LDR             R2, [R2]; CPools::ms_pPedPool ...
54845E:  LDR.W           LR, [R2]; CPools::ms_pPedPool
548462:  LDR.W           R3, [LR,#8]
548466:  CBZ             R3, loc_5484BC
548468:  MOVW            R2, #0x7CC
54846C:  MOV.W           R12, #0
548470:  MULS            R2, R3
548472:  SUBS            R3, #1
548474:  SUBW            R2, R2, #0x7CC
548478:  LDR.W           R4, [LR,#4]
54847C:  LDRSB           R4, [R4,R3]
54847E:  CMP             R4, #0
548480:  BLT             loc_5484AA
548482:  LDR.W           R4, [LR]
548486:  ADDS            R4, R4, R2
548488:  BEQ             loc_5484AA
54848A:  LDR.W           R5, [R4,#0x59C]
54848E:  CMP             R5, R1
548490:  BNE             loc_5484AA
548492:  CMP.W           R12, #0x1E
548496:  ITTTT LT
548498:  ADDLT.W         R5, R0, R12,LSL#2
54849C:  STRLT           R4, [R5,#4]
54849E:  LDRLT           R5, [R0]
5484A0:  ADDLT.W         R12, R5, #1
5484A4:  IT LT
5484A6:  STRLT.W         R12, [R0]
5484AA:  SUBS            R3, #1
5484AC:  SUBW            R2, R2, #0x7CC
5484B0:  ADDS            R4, R3, #1
5484B2:  BNE             loc_548478
5484B4:  CMP.W           R12, #0x1D
5484B8:  IT GT
5484BA:  POPGT           {R4,R5,R7,PC}
5484BC:  ADD.W           R0, R0, R12,LSL#2
5484C0:  RSB.W           R1, R12, #0x1E
5484C4:  ADDS            R0, #4
5484C6:  LSLS            R1, R1, #2
5484C8:  BLX             j___aeabi_memclr8_0
5484CC:  POP             {R4,R5,R7,PC}
