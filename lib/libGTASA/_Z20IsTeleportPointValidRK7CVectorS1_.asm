; =========================================================
; Game Engine Function: _Z20IsTeleportPointValidRK7CVectorS1_
; Address            : 0x30758C - 0x3075E0
; =========================================================

30758C:  PUSH            {R4-R7,LR}
30758E:  ADD             R7, SP, #0xC
307590:  PUSH.W          {R8}
307594:  SUB             SP, SP, #0x20
307596:  MOV             R4, R1
307598:  MOV             R8, R0
30759A:  LDM.W           R4, {R0-R2}
30759E:  MOV             R3, #0x3EB33333
3075A6:  MOVS            R6, #0
3075A8:  MOVS            R5, #1
3075AA:  STRD.W          R6, R5, [SP,#0x30+var_30]
3075AE:  STRD.W          R5, R5, [SP,#0x30+var_28]
3075B2:  STRD.W          R5, R5, [SP,#0x30+var_20]
3075B6:  STR             R6, [SP,#0x30+var_18]
3075B8:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3075BC:  CBZ             R0, loc_3075C2
3075BE:  MOVS            R0, #0
3075C0:  B               loc_3075D8
3075C2:  MOV             R0, R8; this
3075C4:  MOV             R1, R4; CVector *
3075C6:  MOVS            R2, #(stderr+1); CVector *
3075C8:  MOVS            R3, #1; bool
3075CA:  STRD.W          R6, R5, [SP,#0x30+var_30]; bool
3075CE:  STRD.W          R5, R6, [SP,#0x30+var_28]; bool
3075D2:  STR             R6, [SP,#0x30+var_20]; bool
3075D4:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3075D8:  ADD             SP, SP, #0x20 ; ' '
3075DA:  POP.W           {R8}
3075DE:  POP             {R4-R7,PC}
