; =========================================================
; Game Engine Function: _ZN8CVehicle13SetModelIndexEj
; Address            : 0x5829CC - 0x582ABC
; =========================================================

5829CC:  PUSH            {R4-R7,LR}
5829CE:  ADD             R7, SP, #0xC
5829D0:  PUSH.W          {R11}
5829D4:  MOV             R5, R1
5829D6:  MOV             R4, R0
5829D8:  BLX             j__ZN7CEntity13SetModelIndexEj; CEntity::SetModelIndex(uint)
5829DC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5829E2)
5829DE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5829E0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5829E2:  LDR.W           R6, [R0,R5,LSL#2]
5829E6:  MOVS            R0, #0
5829E8:  STR.W           R0, [R4,#0x598]
5829EC:  LDR             R0, [R6,#0x3C]
5829EE:  CBZ             R0, loc_582A22
5829F0:  MOV             R0, R6; this
5829F2:  BLX             j__ZN17CVehicleModelInfo21GetCustomCarPlateTextEv; CVehicleModelInfo::GetCustomCarPlateText(void)
5829F6:  CBZ             R0, loc_582A14
5829F8:  LDRB.W          R1, [R6,#0x49]; char *
5829FC:  BLX             j__ZN18CCustomCarPlateMgr18CreatePlateTextureEPch; CCustomCarPlateMgr::CreatePlateTexture(char *,uchar)
582A00:  STR.W           R0, [R4,#0x598]
582A04:  MOV             R0, R6; this
582A06:  MOVS            R1, #0; char *
582A08:  BLX             j__ZN17CVehicleModelInfo21SetCustomCarPlateTextEPc; CVehicleModelInfo::SetCustomCarPlateText(char *)
582A0C:  MOVS            R0, #0xFF
582A0E:  STRB.W          R0, [R6,#0x49]
582A12:  B               loc_582A22
582A14:  LDR             R0, [R6,#0x3C]
582A16:  LDR             R0, [R0]
582A18:  LDR             R1, [R0,#0x54]
582A1A:  ADDS            R1, #1
582A1C:  STR             R1, [R0,#0x54]
582A1E:  STR.W           R0, [R4,#0x598]
582A22:  LDR             R0, =(_ZN17CVehicleModelInfo12ms_compsUsedE_ptr - 0x582A28)
582A24:  ADD             R0, PC; _ZN17CVehicleModelInfo12ms_compsUsedE_ptr
582A26:  LDR             R0, [R0]; CVehicleModelInfo::ms_compsUsed ...
582A28:  LDRB            R1, [R0]; int
582A2A:  STRB.W          R1, [R4,#0x43C]
582A2E:  LDRB            R0, [R0,#(byte_9317E9 - 0x9317E8)]
582A30:  STRB.W          R0, [R4,#0x43D]
582A34:  MOV             R0, R5; this
582A36:  BLX             j__ZN17CVehicleModelInfo45GetMaximumNumberOfPassengersFromNumberOfDoorsEi; CVehicleModelInfo::GetMaximumNumberOfPassengersFromNumberOfDoors(int)
582A3A:  LDRSH.W         R1, [R4,#0x26]
582A3E:  STRB.W          R0, [R4,#0x48C]
582A42:  SUBW            R0, R1, #0x1B9
582A46:  CMP             R0, #0x18
582A48:  BHI             loc_582A5A
582A4A:  MOVS            R2, #1
582A4C:  LSL.W           R0, R2, R0
582A50:  MOVS            R2, #0x1800001
582A56:  TST             R0, R2
582A58:  BNE             loc_582A68
582A5A:  CMP.W           R1, #0x234
582A5E:  ITT NE
582A60:  MOVWNE          R0, #0x1F5
582A64:  CMPNE           R1, R0
582A66:  BNE             loc_582AB2
582A68:  LDR.W           R0, [R4,#0x430]
582A6C:  ORR.W           R0, R0, #0x80
582A70:  CMP.W           R1, #0x200
582A74:  STR.W           R0, [R4,#0x430]
582A78:  BLE             loc_582A90
582A7A:  CMP.W           R1, #0x240
582A7E:  IT NE
582A80:  CMPNE.W         R1, #0x208
582A84:  BEQ             loc_582AA6
582A86:  MOVW            R0, #0x201
582A8A:  CMP             R1, R0
582A8C:  BEQ             loc_582AA2
582A8E:  B               loc_582AAC
582A90:  CMP.W           R1, #0x1DC
582A94:  BEQ             loc_582AA2
582A96:  MOVW            R0, #0x1FF
582A9A:  CMP             R1, R0
582A9C:  BNE             loc_582AAC
582A9E:  MOVS            R0, #2
582AA0:  B               loc_582AA8
582AA2:  MOVS            R0, #1
582AA4:  B               loc_582AA8
582AA6:  MOVS            R0, #3
582AA8:  STRB.W          R0, [R4,#0x523]
582AAC:  POP.W           {R11}
582AB0:  POP             {R4-R7,PC}
582AB2:  LDR.W           R0, [R4,#0x430]
582AB6:  BIC.W           R0, R0, #0x80
582ABA:  B               loc_582A70
