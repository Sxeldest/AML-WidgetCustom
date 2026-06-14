; =========================================================
; Game Engine Function: _ZN6CWorld25ProcessVerticalLineSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly
; Address            : 0x4262D0 - 0x4263B4
; =========================================================

4262D0:  PUSH            {R4-R7,LR}
4262D2:  ADD             R7, SP, #0xC
4262D4:  PUSH.W          {R8-R11}
4262D8:  SUB             SP, SP, #0x14
4262DA:  MOV             R8, R0
4262DC:  MOV.W           R0, #0x3F800000
4262E0:  STR             R0, [SP,#0x30+var_20]
4262E2:  MOV             R4, R3
4262E4:  LDR             R0, [R7,#arg_4]
4262E6:  MOV             R5, R2
4262E8:  LDR.W           R9, [R7,#arg_8]
4262EC:  MOV             R6, R1
4262EE:  LDR.W           R11, [R7,#arg_0]
4262F2:  CMP             R0, #1
4262F4:  BNE             loc_42630E
4262F6:  LDR             R0, [R7,#arg_18]
4262F8:  ADD             R3, SP, #0x30+var_20
4262FA:  STR.W           R11, [SP,#0x30+var_30]
4262FE:  MOV             R1, R5
426300:  STR             R0, [SP,#0x30+var_2C]
426302:  MOV             R2, R4
426304:  LDR             R0, [R7,#arg_1C]
426306:  STR             R0, [SP,#0x30+var_28]
426308:  MOV             R0, R8
42630A:  BLX             j__ZN6CWorld29ProcessVerticalLineSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,CStoredCollPoly *)
42630E:  LDR.W           R10, [R7,#arg_C]
426312:  CMP.W           R9, #1
426316:  BNE             loc_426330
426318:  LDR             R0, [R7,#arg_18]
42631A:  ADD             R3, SP, #0x30+var_20
42631C:  STR.W           R11, [SP,#0x30+var_30]
426320:  MOV             R1, R5
426322:  STR             R0, [SP,#0x30+var_2C]
426324:  MOV             R2, R4
426326:  LDR             R0, [R7,#arg_1C]
426328:  STR             R0, [SP,#0x30+var_28]
42632A:  MOV             R0, R6
42632C:  BLX             j__ZN6CWorld29ProcessVerticalLineSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,CStoredCollPoly *)
426330:  LDR.W           R9, [R7,#arg_10]
426334:  CMP.W           R10, #1
426338:  BNE             loc_426352
42633A:  LDR             R0, [R7,#arg_18]
42633C:  ADD             R3, SP, #0x30+var_20
42633E:  STR.W           R11, [SP,#0x30+var_30]
426342:  MOV             R1, R5
426344:  STR             R0, [SP,#0x30+var_2C]
426346:  MOV             R2, R4
426348:  LDR             R0, [R7,#arg_1C]
42634A:  STR             R0, [SP,#0x30+var_28]
42634C:  ADDS            R0, R6, #4
42634E:  BLX             j__ZN6CWorld29ProcessVerticalLineSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,CStoredCollPoly *)
426352:  LDR.W           R10, [R7,#arg_14]
426356:  CMP.W           R9, #1
42635A:  BNE             loc_426376
42635C:  LDR             R0, [R7,#arg_18]
42635E:  ADD             R3, SP, #0x30+var_20
426360:  STR.W           R11, [SP,#0x30+var_30]
426364:  MOV             R1, R5
426366:  STR             R0, [SP,#0x30+var_2C]
426368:  MOV             R2, R4
42636A:  LDR             R0, [R7,#arg_1C]
42636C:  STR             R0, [SP,#0x30+var_28]
42636E:  ADD.W           R0, R6, #8
426372:  BLX             j__ZN6CWorld29ProcessVerticalLineSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,CStoredCollPoly *)
426376:  CMP.W           R10, #1
42637A:  BNE             loc_426396
42637C:  LDR             R0, [R7,#arg_18]
42637E:  ADD             R3, SP, #0x30+var_20
426380:  STR.W           R11, [SP,#0x30+var_30]
426384:  MOV             R1, R5
426386:  STR             R0, [SP,#0x30+var_2C]
426388:  MOV             R2, R4
42638A:  LDR             R0, [R7,#arg_1C]
42638C:  STR             R0, [SP,#0x30+var_28]
42638E:  ADD.W           R0, R8, #4
426392:  BLX             j__ZN6CWorld29ProcessVerticalLineSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList(CPtrList &,CColLine const&,CColPoint &,float &,CEntity *&,bool,CStoredCollPoly *)
426396:  VMOV.F32        S0, #1.0
42639A:  VLDR            S2, [SP,#0x30+var_20]
42639E:  MOVS            R0, #0
4263A0:  VCMPE.F32       S2, S0
4263A4:  VMRS            APSR_nzcv, FPSCR
4263A8:  IT LT
4263AA:  MOVLT           R0, #1
4263AC:  ADD             SP, SP, #0x14
4263AE:  POP.W           {R8-R11}
4263B2:  POP             {R4-R7,PC}
