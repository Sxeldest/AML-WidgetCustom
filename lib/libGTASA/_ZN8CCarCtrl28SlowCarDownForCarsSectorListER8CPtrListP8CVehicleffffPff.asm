; =========================================================
; Game Engine Function: _ZN8CCarCtrl28SlowCarDownForCarsSectorListER8CPtrListP8CVehicleffffPff
; Address            : 0x2EDA4C - 0x2EDB88
; =========================================================

2EDA4C:  PUSH            {R4-R7,LR}
2EDA4E:  ADD             R7, SP, #0xC
2EDA50:  PUSH.W          {R8-R11}
2EDA54:  SUB             SP, SP, #4
2EDA56:  VPUSH           {D8-D14}
2EDA5A:  SUB             SP, SP, #0x18; float
2EDA5C:  LDR             R6, [R0]
2EDA5E:  MOV             R4, R1
2EDA60:  CMP             R6, #0
2EDA62:  BEQ.W           loc_2EDB7A
2EDA66:  VLDR            S0, [R7,#arg_C]
2EDA6A:  VMOV.F32        S24, #10.0
2EDA6E:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EDA80)
2EDA70:  VMOV.F32        S28, #3.0
2EDA74:  VMOV            R9, S0
2EDA78:  VLDR            S16, [R7,#arg_4]
2EDA7C:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EDA7E:  VLDR            S18, [R7,#arg_0]
2EDA82:  VMOV            S20, R3
2EDA86:  ADD.W           R11, R4, #4
2EDA8A:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
2EDA8E:  VMOV            S22, R2
2EDA92:  ADD.W           R10, SP, #0x70+var_64
2EDA96:  VLDR            S26, =0.0
2EDA9A:  LDRD.W          R5, R6, [R6]
2EDA9E:  CMP             R5, R4
2EDAA0:  BEQ             loc_2EDAB4
2EDAA2:  LDRH            R1, [R5,#0x30]
2EDAA4:  LDRH.W          R0, [R8]; CWorld::ms_nCurrentScanCode
2EDAA8:  CMP             R1, R0
2EDAAA:  ITT NE
2EDAAC:  LDRBNE          R1, [R5,#0x1C]
2EDAAE:  MOVSNE.W        R1, R1,LSL#31
2EDAB2:  BNE             loc_2EDABA
2EDAB4:  CMP             R6, #0
2EDAB6:  BNE             loc_2EDA9A
2EDAB8:  B               loc_2EDB7A
2EDABA:  STRH            R0, [R5,#0x30]
2EDABC:  MOV             R0, R10; this
2EDABE:  MOV             R1, R5
2EDAC0:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
2EDAC4:  VLDR            S0, [SP,#0x70+var_64]
2EDAC8:  VCMPE.F32       S0, S22
2EDACC:  VMRS            APSR_nzcv, FPSCR
2EDAD0:  BLE             loc_2EDAB4
2EDAD2:  VCMPE.F32       S0, S18
2EDAD6:  VMRS            APSR_nzcv, FPSCR
2EDADA:  BGE             loc_2EDAB4
2EDADC:  VLDR            S2, [SP,#0x70+var_60]
2EDAE0:  VCMPE.F32       S2, S20
2EDAE4:  VMRS            APSR_nzcv, FPSCR
2EDAE8:  BLE             loc_2EDAB4
2EDAEA:  VCMPE.F32       S2, S16
2EDAEE:  VMRS            APSR_nzcv, FPSCR
2EDAF2:  BGE             loc_2EDAB4
2EDAF4:  LDR             R0, [R4,#0x14]
2EDAF6:  MOV             R1, R11
2EDAF8:  VLDR            S4, [SP,#0x70+var_5C]
2EDAFC:  CMP             R0, #0
2EDAFE:  IT NE
2EDB00:  ADDNE.W         R1, R0, #0x30 ; '0'
2EDB04:  VLDR            S6, [R1,#8]
2EDB08:  VSUB.F32        S4, S4, S6
2EDB0C:  VABS.F32        S4, S4
2EDB10:  VCMPE.F32       S4, S24
2EDB14:  VMRS            APSR_nzcv, FPSCR
2EDB18:  BGE             loc_2EDAB4
2EDB1A:  LDRD.W          R2, R3, [R0,#0x10]; float
2EDB1E:  LDRD.W          R0, R1, [R1]; float
2EDB22:  VSTR            S0, [SP,#0x70+var_70]
2EDB26:  VSTR            S2, [SP,#0x70+var_6C]
2EDB2A:  BLX             j__ZN10CCollision15DistAlongLine2DEffffff; CCollision::DistAlongLine2D(float,float,float,float,float,float)
2EDB2E:  LDR             R1, [R4,#0x14]
2EDB30:  VMOV            S0, R0
2EDB34:  MOV             R0, R11
2EDB36:  VMOV.F32        S4, S26
2EDB3A:  CMP             R1, #0
2EDB3C:  IT NE
2EDB3E:  ADDNE.W         R0, R1, #0x30 ; '0'
2EDB42:  VLDR            S2, [R0,#8]
2EDB46:  IT NE
2EDB48:  VLDRNE          S4, [R1,#0x18]
2EDB4C:  VMUL.F32        S0, S0, S4
2EDB50:  VADD.F32        S0, S2, S0
2EDB54:  VLDR            S2, [SP,#0x70+var_5C]
2EDB58:  VSUB.F32        S0, S2, S0
2EDB5C:  VABS.F32        S0, S0
2EDB60:  VCMPE.F32       S0, S28
2EDB64:  VMRS            APSR_nzcv, FPSCR
2EDB68:  BGE             loc_2EDAB4
2EDB6A:  LDR             R2, [R7,#arg_8]; CVehicle *
2EDB6C:  MOV             R0, R5; this
2EDB6E:  MOV             R1, R4; CEntity *
2EDB70:  MOV             R3, R9; float *
2EDB72:  BLX             j__ZN8CCarCtrl22SlowCarDownForOtherCarEP7CEntityP8CVehiclePff; CCarCtrl::SlowCarDownForOtherCar(CEntity *,CVehicle *,float *,float)
2EDB76:  CMP             R6, #0
2EDB78:  BNE             loc_2EDA9A
2EDB7A:  ADD             SP, SP, #0x18
2EDB7C:  VPOP            {D8-D14}
2EDB80:  ADD             SP, SP, #4
2EDB82:  POP.W           {R8-R11}
2EDB86:  POP             {R4-R7,PC}
