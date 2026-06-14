; =========================================================
; Game Engine Function: _Z43RpGeometryReplaceOldMaterialWithNewMaterialP10RpGeometryP10RpMaterialS2_
; Address            : 0x5D1610 - 0x5D166E
; =========================================================

5D1610:  PUSH            {R4-R7,LR}
5D1612:  ADD             R7, SP, #0xC
5D1614:  PUSH.W          {R8-R10}
5D1618:  MOV             R9, R1
5D161A:  LDR             R1, [R0,#0x58]
5D161C:  MOV             R10, R2
5D161E:  LDRH            R5, [R1,#4]
5D1620:  CBZ             R5, loc_5D1664
5D1622:  ADD.W           R8, R0, #0x20 ; ' '
5D1626:  ADD.W           R4, R1, #0x1C
5D162A:  MOVS            R0, #0
5D162C:  LDR             R1, [R4]
5D162E:  CMP             R1, R9
5D1630:  BNE             loc_5D165A
5D1632:  MOV             R0, R8
5D1634:  MOV             R1, R9
5D1636:  BLX.W           j__Z32_rpMaterialListFindMaterialIndexPK14RpMaterialListPK10RpMaterial; _rpMaterialListFindMaterialIndex(RpMaterialList const*,RpMaterial const*)
5D163A:  MOV             R6, R0
5D163C:  LDR             R0, [R4]
5D163E:  BLX.W           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
5D1642:  LDR.W           R0, [R8]
5D1646:  STR.W           R10, [R0,R6,LSL#2]
5D164A:  STR.W           R10, [R4]
5D164E:  LDRH.W          R0, [R10,#0x18]
5D1652:  ADDS            R0, #1
5D1654:  STRH.W          R0, [R10,#0x18]
5D1658:  MOVS            R0, #1
5D165A:  SUBS            R5, #1
5D165C:  ADD.W           R4, R4, #0x10
5D1660:  BNE             loc_5D162C
5D1662:  B               loc_5D1666
5D1664:  MOVS            R0, #0
5D1666:  UXTB            R0, R0
5D1668:  POP.W           {R8-R10}
5D166C:  POP             {R4-R7,PC}
