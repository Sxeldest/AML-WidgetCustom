; =========================================================
; Game Engine Function: _ZN7CGarage13IsGarageEmptyEv
; Address            : 0x3123DC - 0x312454
; =========================================================

3123DC:  PUSH            {R4-R7,LR}
3123DE:  ADD             R7, SP, #0xC
3123E0:  PUSH.W          {R11}
3123E4:  SUB             SP, SP, #0x78
3123E6:  MOV             R4, R0
3123E8:  ADD.W           R6, R4, #0x28 ; '('
3123EC:  LDR             R0, [R4,#8]
3123EE:  MOVS            R5, #1
3123F0:  LDM             R6, {R1-R3,R6}
3123F2:  STRD.W          R1, R3, [SP,#0x88+var_60]
3123F6:  ADD             R1, SP, #0x88+var_6C; CVector *
3123F8:  STR             R0, [SP,#0x88+var_58]
3123FA:  MOVS            R3, #word_10; __int16 *
3123FC:  LDR             R0, [R4,#0x1C]
3123FE:  STRD.W          R2, R6, [SP,#0x88+var_6C]
312402:  ADD             R6, SP, #0x88+var_54
312404:  STR             R0, [SP,#0x88+var_64]
312406:  MOVS            R0, #0
312408:  STRD.W          R6, R0, [SP,#0x88+var_88]; __int16
31240C:  SUB.W           R2, R7, #-var_12; CVector *
312410:  STRD.W          R5, R5, [SP,#0x88+var_80]; bool
312414:  STRD.W          R0, R0, [SP,#0x88+var_78]; bool
312418:  ADD             R0, SP, #0x88+var_60; this
31241A:  BLX             j__ZN6CWorld27FindObjectsIntersectingCubeERK7CVectorS2_PssPP7CEntitybbbbb; CWorld::FindObjectsIntersectingCube(CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool,bool,bool)
31241E:  LDRSH.W         R0, [R7,#var_12]
312422:  CMP             R0, #1
312424:  BLT             loc_31244A
312426:  MOVS            R5, #0
312428:  SXTH            R0, R5
31242A:  LDR.W           R1, [R6,R0,LSL#2]; CEntity *
31242E:  MOV             R0, R4; this
312430:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
312434:  CMP             R0, #1
312436:  BEQ             loc_312448
312438:  ADDS            R0, R5, #1
31243A:  SXTH            R5, R0
31243C:  LDRSH.W         R0, [R7,#var_12]
312440:  CMP             R5, R0
312442:  BLT             loc_312428
312444:  MOVS            R5, #1
312446:  B               loc_31244A
312448:  MOVS            R5, #0
31244A:  MOV             R0, R5
31244C:  ADD             SP, SP, #0x78 ; 'x'
31244E:  POP.W           {R11}
312452:  POP             {R4-R7,PC}
