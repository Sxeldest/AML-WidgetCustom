; =========================================================
; Game Engine Function: _ZN7CObject22TryToFreeUpTempObjectsEi
; Address            : 0x453574 - 0x4535F8
; =========================================================

453574:  PUSH            {R4-R7,LR}
453576:  ADD             R7, SP, #0xC
453578:  PUSH.W          {R8-R11}
45357C:  SUB             SP, SP, #4
45357E:  MOV             R8, R0
453580:  CMP.W           R8, #1
453584:  BLT             loc_4535F0
453586:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x45358C)
453588:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
45358A:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
45358C:  LDR.W           R10, [R0]; CPools::ms_pObjectPool
453590:  LDR.W           R4, [R10,#8]
453594:  CBZ             R4, loc_4535F0
453596:  MOV.W           R9, #0x1A4
45359A:  MUL.W           R0, R4, R9
45359E:  SUBS            R4, #1
4535A0:  SUB.W           R6, R0, #0x1A4
4535A4:  LDR.W           R0, [R10,#4]
4535A8:  LDRSB           R0, [R0,R4]
4535AA:  CMP             R0, #0
4535AC:  BLT             loc_4535C8
4535AE:  LDR.W           R5, [R10]
4535B2:  ADDS.W          R11, R5, R6
4535B6:  BEQ             loc_4535C8
4535B8:  LDRB.W          R0, [R11,#0x140]
4535BC:  CMP             R0, #3
4535BE:  BNE             loc_4535C8
4535C0:  MOV             R0, R11; this
4535C2:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
4535C6:  CBZ             R0, loc_4535D4
4535C8:  SUBS            R4, #1
4535CA:  SUB.W           R6, R6, #0x1A4
4535CE:  ADDS            R0, R4, #1
4535D0:  BNE             loc_4535A4
4535D2:  B               loc_4535F0
4535D4:  MOV             R0, R11; this
4535D6:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4535DA:  LDR             R0, [R5,R6]
4535DC:  LDR             R1, [R0,#4]
4535DE:  MOV             R0, R11
4535E0:  BLX             R1
4535E2:  CMP.W           R8, #2
4535E6:  BLT             loc_4535F0
4535E8:  SUB.W           R8, R8, #1
4535EC:  CMP             R4, #0
4535EE:  BNE             loc_45359A
4535F0:  ADD             SP, SP, #4
4535F2:  POP.W           {R8-R11}
4535F6:  POP             {R4-R7,PC}
