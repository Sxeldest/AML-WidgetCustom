; =========================================================
; Game Engine Function: _ZN6CWorld44ProcessVerticalLineSector_FillGlobeColPointsER7CSectorR13CRepeatSectorRK8CColLineRP7CEntitybbbbbbP15CStoredCollPoly
; Address            : 0x4264F4 - 0x426584
; =========================================================

4264F4:  PUSH            {R4-R7,LR}
4264F6:  ADD             R7, SP, #0xC
4264F8:  PUSH.W          {R8-R11}
4264FC:  SUB             SP, SP, #4
4264FE:  MOV             R9, R0
426500:  LDRD.W          R0, R10, [R7,#arg_0]
426504:  LDR.W           R8, [R7,#arg_14]
426508:  MOV             R4, R2
42650A:  MOV             R6, R1
42650C:  CMP             R0, #1
42650E:  BNE             loc_42651E
426510:  MOV             R0, R9
426512:  MOV             R1, R4
426514:  MOV             R3, R8
426516:  BLX             j__ZN6CWorld48ProcessVerticalLineSectorList_FillGlobeColPointsER8CPtrListRK8CColLineRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList_FillGlobeColPoints(CPtrList &,CColLine const&,CEntity *&,bool,CStoredCollPoly *)
42651A:  MOV             R5, R0
42651C:  B               loc_426520
42651E:  MOVS            R5, #0
426520:  LDR.W           R11, [R7,#arg_8]
426524:  CMP.W           R10, #1
426528:  BNE             loc_426536
42652A:  MOV             R0, R6
42652C:  MOV             R1, R4
42652E:  MOV             R3, R8
426530:  BLX             j__ZN6CWorld48ProcessVerticalLineSectorList_FillGlobeColPointsER8CPtrListRK8CColLineRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList_FillGlobeColPoints(CPtrList &,CColLine const&,CEntity *&,bool,CStoredCollPoly *)
426534:  ORRS            R5, R0
426536:  LDR.W           R10, [R7,#arg_C]
42653A:  CMP.W           R11, #1
42653E:  BNE             loc_42654C
426540:  ADDS            R0, R6, #4
426542:  MOV             R1, R4
426544:  MOV             R3, R8
426546:  BLX             j__ZN6CWorld48ProcessVerticalLineSectorList_FillGlobeColPointsER8CPtrListRK8CColLineRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList_FillGlobeColPoints(CPtrList &,CColLine const&,CEntity *&,bool,CStoredCollPoly *)
42654A:  ORRS            R5, R0
42654C:  LDR.W           R11, [R7,#arg_10]
426550:  CMP.W           R10, #1
426554:  BNE             loc_426564
426556:  ADD.W           R0, R6, #8
42655A:  MOV             R1, R4
42655C:  MOV             R3, R8
42655E:  BLX             j__ZN6CWorld48ProcessVerticalLineSectorList_FillGlobeColPointsER8CPtrListRK8CColLineRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList_FillGlobeColPoints(CPtrList &,CColLine const&,CEntity *&,bool,CStoredCollPoly *)
426562:  ORRS            R5, R0
426564:  CMP.W           R11, #1
426568:  BNE             loc_42657A
42656A:  ADD.W           R0, R9, #4
42656E:  MOV             R1, R4
426570:  MOV             R3, R8
426572:  BLX             j__ZN6CWorld48ProcessVerticalLineSectorList_FillGlobeColPointsER8CPtrListRK8CColLineRP7CEntitybP15CStoredCollPoly; CWorld::ProcessVerticalLineSectorList_FillGlobeColPoints(CPtrList &,CColLine const&,CEntity *&,bool,CStoredCollPoly *)
426576:  ORRS            R0, R5
426578:  B               loc_42657C
42657A:  MOV             R0, R5
42657C:  ADD             SP, SP, #4
42657E:  POP.W           {R8-R11}
426582:  POP             {R4-R7,PC}
