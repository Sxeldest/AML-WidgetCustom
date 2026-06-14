; =========================================================
; Game Engine Function: _ZN8CCarCtrl34SetUpDriverAndPassengersForVehicleEP8CVehicleiibbi
; Address            : 0x2EBC5C - 0x2EBD7A
; =========================================================

2EBC5C:  PUSH            {R4-R7,LR}
2EBC5E:  ADD             R7, SP, #0xC
2EBC60:  PUSH.W          {R8-R11}
2EBC64:  SUB             SP, SP, #4
2EBC66:  VPUSH           {D8-D10}
2EBC6A:  SUB             SP, SP, #8
2EBC6C:  MOV             R9, R3
2EBC6E:  LDR             R3, [R7,#arg_0]; bool
2EBC70:  MOV             R4, R2
2EBC72:  MOV             R2, R9; CPopulation *
2EBC74:  MOV             R10, R1
2EBC76:  MOV             R11, R0
2EBC78:  BLX             j__ZN8CVehicle11SetUpDriverEibb; CVehicle::SetUpDriver(int,bool,bool)
2EBC7C:  LDR             R6, [R7,#arg_4]
2EBC7E:  SUB.W           R8, R10, #0xE
2EBC82:  CMP.W           R8, #9
2EBC86:  BHI             loc_2EBCA4
2EBC88:  BLX             rand
2EBC8C:  TST.W           R0, #1
2EBC90:  BEQ             loc_2EBCA4
2EBC92:  LDR             R0, =(MI_GANG_SMOKE_ptr - 0x2EBC9A)
2EBC94:  MOVS            R2, #1; unsigned __int8
2EBC96:  ADD             R0, PC; MI_GANG_SMOKE_ptr
2EBC98:  LDR             R1, [R0]; MI_GANG_SMOKE
2EBC9A:  LDR.W           R0, [R11,#0x464]; this
2EBC9E:  LDRH            R1, [R1]; int
2EBCA0:  BLX             j__ZN4CPed21GiveObjectToPedToHoldEih; CPed::GiveObjectToPedToHold(int,uchar)
2EBCA4:  LDRB.W          R0, [R11,#0x48C]
2EBCA8:  CMP             R0, R6
2EBCAA:  IT LT
2EBCAC:  MOVLT           R6, R0
2EBCAE:  CMP             R6, R4
2EBCB0:  BLE             loc_2EBCE8
2EBCB2:  VMOV.F32        S20, #0.125
2EBCB6:  VLDR            S16, =4.6566e-10
2EBCBA:  VLDR            S18, =0.0
2EBCBE:  MOV             R5, R4
2EBCC0:  BLX             rand
2EBCC4:  VMOV            S0, R0
2EBCC8:  ADDS            R4, #1
2EBCCA:  VCVT.F32.S32    S0, S0
2EBCCE:  VMUL.F32        S0, S0, S16
2EBCD2:  VADD.F32        S0, S0, S18
2EBCD6:  VCMPE.F32       S0, S20
2EBCDA:  VMRS            APSR_nzcv, FPSCR
2EBCDE:  IT LT
2EBCE0:  ADDLT           R5, #1
2EBCE2:  CMP             R4, R6
2EBCE4:  BLT             loc_2EBCC0
2EBCE6:  B               loc_2EBCEA
2EBCE8:  MOV             R5, R4
2EBCEA:  LDRSH.W         R4, [R11,#0x26]
2EBCEE:  CMP             R5, R6
2EBCF0:  IT LT
2EBCF2:  MOVLT           R6, R5
2EBCF4:  MOV             R0, R4; this
2EBCF6:  BLX             j__ZN10CModelInfo10IsCarModelEi; CModelInfo::IsCarModel(int)
2EBCFA:  CBZ             R0, loc_2EBD22
2EBCFC:  ADR             R0, dword_2EBD88; this
2EBCFE:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
2EBD02:  MOV             R5, R0
2EBD04:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2EBD0A)
2EBD06:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2EBD08:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2EBD0A:  LDR.W           R0, [R0,R4,LSL#2]
2EBD0E:  LDR             R1, [R0]
2EBD10:  LDR             R1, [R1,#0x3C]
2EBD12:  BLX             R1
2EBD14:  CMP             R6, #1
2EBD16:  MOV             R1, R6
2EBD18:  IT GE
2EBD1A:  MOVGE           R1, #1
2EBD1C:  CMP             R0, R5
2EBD1E:  IT EQ
2EBD20:  MOVEQ           R6, R1
2EBD22:  CMP             R6, #1
2EBD24:  BLT             loc_2EBD6C
2EBD26:  LDR             R0, =(MI_GANG_SMOKE_ptr - 0x2EBD2E)
2EBD28:  MOVS            R4, #0
2EBD2A:  ADD             R0, PC; MI_GANG_SMOKE_ptr
2EBD2C:  LDR             R0, [R0]; MI_GANG_SMOKE
2EBD2E:  STR             R0, [SP,#0x40+var_3C]
2EBD30:  LDR             R0, [R7,#arg_0]
2EBD32:  MOV             R1, R4; int
2EBD34:  STR             R0, [SP,#0x40+var_40]; bool
2EBD36:  MOV             R0, R11; this
2EBD38:  MOV             R2, R10; bool
2EBD3A:  MOV             R3, R9; CPopulation *
2EBD3C:  BLX             j__ZN8CVehicle14SetupPassengerEiibb; CVehicle::SetupPassenger(int,int,bool,bool)
2EBD40:  MOV             R5, R0
2EBD42:  CBZ             R5, loc_2EBD66
2EBD44:  MOV             R0, R5; this
2EBD46:  BLX             j__ZN4CPed25UpdateStatEnteringVehicleEv; CPed::UpdateStatEnteringVehicle(void)
2EBD4A:  CMP.W           R8, #9
2EBD4E:  BHI             loc_2EBD66
2EBD50:  BLX             rand
2EBD54:  TST.W           R0, #1
2EBD58:  BEQ             loc_2EBD66
2EBD5A:  LDR             R0, [SP,#0x40+var_3C]
2EBD5C:  MOVS            R2, #1; unsigned __int8
2EBD5E:  LDRH            R1, [R0]; int
2EBD60:  MOV             R0, R5; this
2EBD62:  BLX             j__ZN4CPed21GiveObjectToPedToHoldEih; CPed::GiveObjectToPedToHold(int,uchar)
2EBD66:  ADDS            R4, #1
2EBD68:  CMP             R6, R4
2EBD6A:  BNE             loc_2EBD30
2EBD6C:  ADD             SP, SP, #8
2EBD6E:  VPOP            {D8-D10}
2EBD72:  ADD             SP, SP, #4
2EBD74:  POP.W           {R8-R11}
2EBD78:  POP             {R4-R7,PC}
