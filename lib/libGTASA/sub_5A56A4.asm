; =========================================================
; Game Engine Function: sub_5A56A4
; Address            : 0x5A56A4 - 0x5A5724
; =========================================================

5A56A4:  PUSH            {R4-R7,LR}
5A56A6:  ADD             R7, SP, #0xC
5A56A8:  PUSH.W          {R11}
5A56AC:  MOV             R4, R0
5A56AE:  MOV             R5, R1
5A56B0:  LDR             R1, [R4]
5A56B2:  CBZ             R1, loc_5A571C
5A56B4:  LDR             R0, =(aCarplate - 0x5A56BE); "carplate"
5A56B6:  ADD.W           R6, R1, #0x10
5A56BA:  ADD             R0, PC; "carplate"
5A56BC:  MOV             R1, R6; char *
5A56BE:  BLX.W           strcasecmp
5A56C2:  CBZ             R0, loc_5A56F8
5A56C4:  LDR             R0, =(aCarpback - 0x5A56CC); "carpback"
5A56C6:  MOV             R1, R6; char *
5A56C8:  ADD             R0, PC; "carpback"
5A56CA:  BLX.W           strcasecmp
5A56CE:  CBNZ            R0, loc_5A571C
5A56D0:  LDR             R0, =(byte_A26A70 - 0x5A56D6)
5A56D2:  ADD             R0, PC; byte_A26A70
5A56D4:  LDRB            R0, [R0]
5A56D6:  CMP             R0, #0xFF
5A56D8:  BNE             loc_5A570A
5A56DA:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5A56E0)
5A56DC:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
5A56DE:  LDR             R0, [R0]; CWeather::WeatherRegion ...
5A56E0:  LDRSH.W         R0, [R0]; CWeather::WeatherRegion
5A56E4:  SUBS            R0, #1
5A56E6:  CMP             R0, #3
5A56E8:  BHI             loc_5A5708
5A56EA:  MOVS            R1, #2
5A56EC:  LSLS            R0, R0, #3
5A56EE:  MOVT            R1, #0x101
5A56F2:  LSR.W           R0, R1, R0
5A56F6:  B               loc_5A570A
5A56F8:  LDR             R0, =(dword_A26A74 - 0x5A5700)
5A56FA:  MOV             R1, R4
5A56FC:  ADD             R0, PC; dword_A26A74
5A56FE:  LDR             R2, [R0]
5A5700:  MOV             R0, R5
5A5702:  BLX.W           j__Z43RpGeometryReplaceOldMaterialWithNewMaterialP10RpGeometryP10RpMaterialS2_; RpGeometryReplaceOldMaterialWithNewMaterial(RpGeometry *,RpMaterial *,RpMaterial *)
5A5706:  B               loc_5A571C
5A5708:  MOVS            R0, #0
5A570A:  LDR             R1, =(_ZN18CCustomCarPlateMgr16pPlatebackTexTabE_ptr - 0x5A5712)
5A570C:  UXTB            R0, R0
5A570E:  ADD             R1, PC; _ZN18CCustomCarPlateMgr16pPlatebackTexTabE_ptr
5A5710:  LDR             R1, [R1]; CCustomCarPlateMgr::pPlatebackTexTab ...
5A5712:  LDR.W           R1, [R1,R0,LSL#2]
5A5716:  MOV             R0, R4
5A5718:  BLX.W           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
5A571C:  MOV             R0, R4
5A571E:  POP.W           {R11}
5A5722:  POP             {R4-R7,PC}
