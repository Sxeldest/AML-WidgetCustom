; =========================================================
; Game Engine Function: _ZN8CCarCtrl18CreateCarForScriptEi7CVectorh
; Address            : 0x2EBD94 - 0x2EC020
; =========================================================

2EBD94:  PUSH            {R4-R7,LR}
2EBD96:  ADD             R7, SP, #0xC
2EBD98:  PUSH.W          {R8,R9,R11}
2EBD9C:  VPUSH           {D8}
2EBDA0:  SUB             SP, SP, #0x10
2EBDA2:  MOV             R4, R3
2EBDA4:  MOV             R8, R2
2EBDA6:  MOV             R6, R1
2EBDA8:  MOV             R5, R0
2EBDAA:  STRD.W          R6, R8, [SP,#0x30+var_2C]
2EBDAE:  STR             R4, [SP,#0x30+var_24]
2EBDB0:  BLX             j__ZN10CModelInfo11IsBoatModelEi; CModelInfo::IsBoatModel(int)
2EBDB4:  LDR.W           R9, [R7,#arg_0]
2EBDB8:  VMOV            S16, R4
2EBDBC:  CBZ             R0, loc_2EBE10
2EBDBE:  MOVW            R0, #(elf_hash_bucket+0x700); this
2EBDC2:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2EBDC6:  MOV             R1, R5; int
2EBDC8:  MOVS            R2, #2; unsigned __int8
2EBDCA:  MOV             R4, R0
2EBDCC:  BLX             j__ZN5CBoatC2Eih; CBoat::CBoat(int,uchar)
2EBDD0:  VLDR            S0, =-100.0
2EBDD4:  VCMPE.F32       S16, S0
2EBDD8:  VMRS            APSR_nzcv, FPSCR
2EBDDC:  BGT             loc_2EBDEC
2EBDDE:  MOV             R0, R6; this
2EBDE0:  MOV             R1, R8; float
2EBDE2:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
2EBDE6:  VMOV            S16, R0
2EBDEA:  STR             R0, [SP,#0x30+var_24]
2EBDEC:  MOV             R0, R4; this
2EBDEE:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
2EBDF2:  VMOV            S0, R0
2EBDF6:  VADD.F32        S0, S0, S16
2EBDFA:  VSTR            S0, [SP,#0x30+var_24]
2EBDFE:  LDR             R0, [R4,#0x14]
2EBE00:  CBZ             R0, loc_2EBE5C
2EBE02:  STR             R6, [R0,#0x30]
2EBE04:  LDR             R0, [R4,#0x14]
2EBE06:  STR.W           R8, [R0,#0x34]
2EBE0A:  LDR             R0, [R4,#0x14]
2EBE0C:  ADDS            R0, #0x38 ; '8'
2EBE0E:  B               loc_2EBE64
2EBE10:  MOV             R0, R5; this
2EBE12:  MOVS            R1, #2; int
2EBE14:  BLX             j__ZN8CCarCtrl32GetNewVehicleDependingOnCarModelEih; CCarCtrl::GetNewVehicleDependingOnCarModel(int,uchar)
2EBE18:  VLDR            S0, =-100.0
2EBE1C:  MOV             R4, R0
2EBE1E:  VCMPE.F32       S16, S0
2EBE22:  VMRS            APSR_nzcv, FPSCR
2EBE26:  BGT             loc_2EBE36
2EBE28:  MOV             R0, R6; this
2EBE2A:  MOV             R1, R8; float
2EBE2C:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
2EBE30:  VMOV            S16, R0
2EBE34:  STR             R0, [SP,#0x30+var_24]
2EBE36:  MOV             R0, R4; this
2EBE38:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
2EBE3C:  VMOV            S0, R0
2EBE40:  VADD.F32        S0, S0, S16
2EBE44:  VSTR            S0, [SP,#0x30+var_24]
2EBE48:  LDR             R0, [R4,#0x14]
2EBE4A:  CMP             R0, #0
2EBE4C:  BEQ             loc_2EBF0E
2EBE4E:  STR             R6, [R0,#0x30]
2EBE50:  LDR             R0, [R4,#0x14]
2EBE52:  STR.W           R8, [R0,#0x34]
2EBE56:  LDR             R0, [R4,#0x14]
2EBE58:  ADDS            R0, #0x38 ; '8'
2EBE5A:  B               loc_2EBF16
2EBE5C:  ADD.W           R0, R4, #0xC
2EBE60:  STRD.W          R6, R8, [R4,#4]
2EBE64:  VSTR            S0, [R0]
2EBE68:  ADD             R0, SP, #0x30+var_2C; this
2EBE6A:  MOV             R1, R4; CVector *
2EBE6C:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
2EBE70:  LDR.W           R0, [R4,#0x42C]
2EBE74:  MOVS            R1, #(stderr+1); CVehicle *
2EBE76:  LDRB.W          R2, [R4,#0x3A]
2EBE7A:  BFI.W           R0, R1, #3, #2
2EBE7E:  STR.W           R0, [R4,#0x42C]
2EBE82:  MOVS            R0, #4
2EBE84:  BFI.W           R2, R0, #3, #0x1D
2EBE88:  MOV             R0, R4; this
2EBE8A:  STRB.W          R2, [R4,#0x3A]
2EBE8E:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
2EBE92:  MOVS            R0, #0
2EBE94:  CMP.W           R9, #0
2EBE98:  MOVT            R0, #0x41A0
2EBE9C:  STR.W           R0, [R4,#0x3CC]
2EBEA0:  MOV.W           R0, #0
2EBEA4:  STRH.W          R0, [R4,#0x3BE]
2EBEA8:  MOV.W           R0, #0x14
2EBEAC:  STRB.W          R0, [R4,#0x3D4]
2EBEB0:  BEQ             loc_2EBEFA
2EBEB2:  LDRH.W          R0, [R4,#0x3DF]
2EBEB6:  LDR             R1, [R4,#0x1C]; CEntity *
2EBEB8:  ORR.W           R0, R0, #0x100
2EBEBC:  STRH.W          R0, [R4,#0x3DF]
2EBEC0:  ORR.W           R0, R1, #0x40000
2EBEC4:  STR             R0, [R4,#0x1C]
2EBEC6:  MOV             R0, R4; this
2EBEC8:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2EBECC:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2EBEDA)
2EBECE:  MOV             R2, #0xBFE6D523
2EBED6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2EBED8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
2EBEDA:  LDR             R0, [R0]; CPools::ms_pVehiclePool
2EBEDC:  LDRD.W          R1, R0, [R0]
2EBEE0:  SUBS            R1, R4, R1
2EBEE2:  ASRS            R1, R1, #2
2EBEE4:  MULS            R1, R2
2EBEE6:  LDR             R2, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x2EBEEC)
2EBEE8:  ADD             R2, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
2EBEEA:  LDRB            R3, [R0,R1]
2EBEEC:  LDR             R0, [R2]; this
2EBEEE:  ORR.W           R1, R3, R1,LSL#8; int
2EBEF2:  MOVS            R2, #1; unsigned __int8
2EBEF4:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
2EBEF8:  B               loc_2EC00A
2EBEFA:  LDRH.W          R0, [R4,#0x3DF]
2EBEFE:  ORR.W           R0, R0, #0x100
2EBF02:  STRH.W          R0, [R4,#0x3DF]
2EBF06:  MOV             R0, R4; this
2EBF08:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2EBF0C:  B               loc_2EC00A
2EBF0E:  ADD.W           R0, R4, #0xC
2EBF12:  STRD.W          R6, R8, [R4,#4]
2EBF16:  CMP.W           R9, #0
2EBF1A:  VSTR            S0, [R0]
2EBF1E:  BEQ             loc_2EBFD0
2EBF20:  LDR.W           R0, [R4,#0x5A0]
2EBF24:  CMP             R0, #6
2EBF26:  MOV             R1, R4; CVector *
2EBF28:  ITTT EQ
2EBF2A:  LDRHEQ.W        R0, [R4,#0x5CC]
2EBF2E:  ORREQ.W         R0, R0, #0x100
2EBF32:  STRHEQ.W        R0, [R4,#0x5CC]
2EBF36:  ADD             R0, SP, #0x30+var_2C; this
2EBF38:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
2EBF3C:  LDR.W           R0, [R4,#0x42C]
2EBF40:  LDRB.W          R1, [R4,#0x3A]
2EBF44:  ORR.W           R0, R0, #8
2EBF48:  STR.W           R0, [R4,#0x42C]
2EBF4C:  MOVS            R0, #4
2EBF4E:  BFI.W           R1, R0, #3, #0x1D; CVehicle *
2EBF52:  MOV             R0, R4; this
2EBF54:  STRB.W          R1, [R4,#0x3A]
2EBF58:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
2EBF5C:  MOVS            R1, #0
2EBF5E:  MOVS            R0, #0
2EBF60:  MOVT            R1, #0x4150
2EBF64:  STRB.W          R0, [R4,#0x3BF]
2EBF68:  STR.W           R1, [R4,#0x3CC]
2EBF6C:  MOVS            R1, #0xD
2EBF6E:  STRB.W          R1, [R4,#0x3D4]
2EBF72:  CMP.W           R9, #0
2EBF76:  LDR.W           R1, [R4,#0x42C]; CEntity *
2EBF7A:  STR.W           R0, [R4,#0x3BB]
2EBF7E:  MOV             R0, #0xFFFDFFEF
2EBF86:  AND.W           R0, R0, R1
2EBF8A:  ORR.W           R0, R0, #0x20000
2EBF8E:  STR.W           R0, [R4,#0x42C]
2EBF92:  BEQ             loc_2EBFE4
2EBF94:  LDR             R0, [R4,#0x1C]
2EBF96:  ORR.W           R0, R0, #0x40000
2EBF9A:  STR             R0, [R4,#0x1C]
2EBF9C:  MOV             R0, R4; this
2EBF9E:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2EBFA2:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2EBFB0)
2EBFA4:  MOV             R2, #0xBFE6D523
2EBFAC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2EBFAE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
2EBFB0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
2EBFB2:  LDRD.W          R1, R0, [R0]
2EBFB6:  SUBS            R1, R4, R1
2EBFB8:  ASRS            R1, R1, #2
2EBFBA:  MULS            R1, R2
2EBFBC:  LDR             R2, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x2EBFC2)
2EBFBE:  ADD             R2, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
2EBFC0:  LDRB            R3, [R0,R1]
2EBFC2:  LDR             R0, [R2]; this
2EBFC4:  ORR.W           R1, R3, R1,LSL#8; int
2EBFC8:  MOVS            R2, #1; unsigned __int8
2EBFCA:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
2EBFCE:  B               loc_2EBFEA
2EBFD0:  LDR.W           R0, [R4,#0x5A0]
2EBFD4:  CMP             R0, #9
2EBFD6:  BEQ             loc_2EC018
2EBFD8:  CMP             R0, #0
2EBFDA:  BNE             loc_2EBF24
2EBFDC:  MOV             R0, R4; this
2EBFDE:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
2EBFE2:  B               loc_2EBF20
2EBFE4:  MOV             R0, R4; this
2EBFE6:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2EBFEA:  LDR.W           R0, [R4,#0x5A4]
2EBFEE:  CMP             R0, #6
2EBFF0:  BHI             loc_2EBFFE
2EBFF2:  MOVS            R1, #1
2EBFF4:  LSL.W           R0, R1, R0
2EBFF8:  TST.W           R0, #0x58
2EBFFC:  BNE             loc_2EC00A
2EBFFE:  LDRH.W          R0, [R4,#0x3DF]
2EC002:  ORR.W           R0, R0, #0x100
2EC006:  STRH.W          R0, [R4,#0x3DF]
2EC00A:  MOV             R0, R4
2EC00C:  ADD             SP, SP, #0x10
2EC00E:  VPOP            {D8}
2EC012:  POP.W           {R8,R9,R11}
2EC016:  POP             {R4-R7,PC}
2EC018:  MOV             R0, R4; this
2EC01A:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
2EC01E:  B               loc_2EBF20
