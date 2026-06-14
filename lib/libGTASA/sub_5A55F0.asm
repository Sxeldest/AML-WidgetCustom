; =========================================================
; Game Engine Function: sub_5A55F0
; Address            : 0x5A55F0 - 0x5A5686
; =========================================================

5A55F0:  PUSH            {R4-R7,LR}
5A55F2:  ADD             R7, SP, #0xC
5A55F4:  PUSH.W          {R11}
5A55F8:  MOV             R4, R0
5A55FA:  MOV             R5, R1
5A55FC:  LDR             R1, [R4]
5A55FE:  CBZ             R1, loc_5A567E
5A5600:  LDR             R0, =(aCarplate - 0x5A560A); "carplate"
5A5602:  ADD.W           R6, R1, #0x10
5A5606:  ADD             R0, PC; "carplate"
5A5608:  MOV             R1, R6; char *
5A560A:  BLX.W           strcasecmp
5A560E:  CBZ             R0, loc_5A5644
5A5610:  LDR             R0, =(aCarpback - 0x5A5618); "carpback"
5A5612:  MOV             R1, R6; char *
5A5614:  ADD             R0, PC; "carpback"
5A5616:  BLX.W           strcasecmp
5A561A:  CBNZ            R0, loc_5A567E
5A561C:  LDR             R0, =(byte_A26A70 - 0x5A5622)
5A561E:  ADD             R0, PC; byte_A26A70
5A5620:  LDRB            R0, [R0]
5A5622:  CMP             R0, #0xFF
5A5624:  BNE             loc_5A566C
5A5626:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5A562C)
5A5628:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
5A562A:  LDR             R0, [R0]; CWeather::WeatherRegion ...
5A562C:  LDRSH.W         R0, [R0]; CWeather::WeatherRegion
5A5630:  SUBS            R0, #1
5A5632:  CMP             R0, #3
5A5634:  BHI             loc_5A566A
5A5636:  MOVS            R1, #2
5A5638:  LSLS            R0, R0, #3
5A563A:  MOVT            R1, #0x101
5A563E:  LSR.W           R0, R1, R0
5A5642:  B               loc_5A566C
5A5644:  LDR             R0, =(byte_A26A70 - 0x5A564C)
5A5646:  LDR             R2, =(dword_A26A74 - 0x5A564E)
5A5648:  ADD             R0, PC; byte_A26A70
5A564A:  ADD             R2, PC; dword_A26A74 ; unsigned __int8
5A564C:  LDRB            R1, [R0]; char *
5A564E:  MOV             R0, R5; this
5A5650:  STR             R4, [R2]
5A5652:  BLX.W           j__ZN18CCustomCarPlateMgr18CreatePlateTextureEPch; CCustomCarPlateMgr::CreatePlateTexture(char *,uchar)
5A5656:  MOV             R5, R0
5A5658:  CBZ             R5, loc_5A567E
5A565A:  MOV             R0, R4
5A565C:  MOV             R1, R5
5A565E:  BLX.W           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
5A5662:  MOV             R0, R5
5A5664:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A5668:  B               loc_5A567E
5A566A:  MOVS            R0, #0
5A566C:  LDR             R1, =(_ZN18CCustomCarPlateMgr16pPlatebackTexTabE_ptr - 0x5A5674)
5A566E:  UXTB            R0, R0
5A5670:  ADD             R1, PC; _ZN18CCustomCarPlateMgr16pPlatebackTexTabE_ptr
5A5672:  LDR             R1, [R1]; CCustomCarPlateMgr::pPlatebackTexTab ...
5A5674:  LDR.W           R1, [R1,R0,LSL#2]
5A5678:  MOV             R0, R4
5A567A:  BLX.W           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
5A567E:  MOV             R0, R4
5A5680:  POP.W           {R11}
5A5684:  POP             {R4-R7,PC}
