; =========================================================
; Game Engine Function: _ZN18CCustomCarPlateMgr29SetupMaterialPlatebackTextureEP10RpMaterialh
; Address            : 0x5A5238 - 0x5A5276
; =========================================================

5A5238:  PUSH            {R4,R6,R7,LR}
5A523A:  ADD             R7, SP, #8
5A523C:  MOV             R4, R0
5A523E:  CMP             R1, #0xFF
5A5240:  BNE             loc_5A5260
5A5242:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5A5248)
5A5244:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
5A5246:  LDR             R0, [R0]; CWeather::WeatherRegion ...
5A5248:  LDRSH.W         R0, [R0]; CWeather::WeatherRegion
5A524C:  SUBS            R0, #1
5A524E:  CMP             R0, #3
5A5250:  BHI             loc_5A525E
5A5252:  MOVS            R1, #2
5A5254:  LSLS            R0, R0, #3
5A5256:  MOVT            R1, #0x101
5A525A:  LSRS            R1, R0
5A525C:  B               loc_5A5260
5A525E:  MOVS            R1, #0
5A5260:  LDR             R0, =(_ZN18CCustomCarPlateMgr16pPlatebackTexTabE_ptr - 0x5A5268)
5A5262:  UXTB            R1, R1
5A5264:  ADD             R0, PC; _ZN18CCustomCarPlateMgr16pPlatebackTexTabE_ptr
5A5266:  LDR             R0, [R0]; CCustomCarPlateMgr::pPlatebackTexTab ...
5A5268:  LDR.W           R1, [R0,R1,LSL#2]
5A526C:  MOV             R0, R4
5A526E:  BLX.W           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
5A5272:  MOV             R0, R4
5A5274:  POP             {R4,R6,R7,PC}
