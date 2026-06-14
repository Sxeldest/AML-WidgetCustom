; =========================================================
; Game Engine Function: _ZN8CVehicle28CustomCarPlate_TextureCreateEP17CVehicleModelInfo
; Address            : 0x582AC4 - 0x582B12
; =========================================================

582AC4:  PUSH            {R4,R5,R7,LR}
582AC6:  ADD             R7, SP, #8
582AC8:  MOV             R5, R0
582ACA:  MOVS            R0, #0
582ACC:  MOV             R4, R1
582ACE:  STR.W           R0, [R5,#0x598]
582AD2:  LDR             R1, [R4,#0x3C]
582AD4:  CMP             R1, #0
582AD6:  IT EQ
582AD8:  POPEQ           {R4,R5,R7,PC}
582ADA:  MOV             R0, R4; this
582ADC:  BLX             j__ZN17CVehicleModelInfo21GetCustomCarPlateTextEv; CVehicleModelInfo::GetCustomCarPlateText(void)
582AE0:  CBZ             R0, loc_582B00
582AE2:  LDRB.W          R1, [R4,#0x49]; char *
582AE6:  BLX             j__ZN18CCustomCarPlateMgr18CreatePlateTextureEPch; CCustomCarPlateMgr::CreatePlateTexture(char *,uchar)
582AEA:  STR.W           R0, [R5,#0x598]
582AEE:  MOV             R0, R4; this
582AF0:  MOVS            R1, #0; char *
582AF2:  BLX             j__ZN17CVehicleModelInfo21SetCustomCarPlateTextEPc; CVehicleModelInfo::SetCustomCarPlateText(char *)
582AF6:  MOVS            R0, #0xFF
582AF8:  STRB.W          R0, [R4,#0x49]
582AFC:  MOVS            R0, #1
582AFE:  POP             {R4,R5,R7,PC}
582B00:  LDR             R0, [R4,#0x3C]
582B02:  LDR             R0, [R0]
582B04:  LDR             R1, [R0,#0x54]
582B06:  ADDS            R1, #1
582B08:  STR             R1, [R0,#0x54]
582B0A:  STR.W           R0, [R5,#0x598]
582B0E:  MOVS            R0, #1
582B10:  POP             {R4,R5,R7,PC}
