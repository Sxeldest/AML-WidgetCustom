; =========================================================
; Game Engine Function: _ZN8CCarCtrl31SlowCarDownForObjectsSectorListER8CPtrListP8CVehicleffffPff
; Address            : 0x2EE184 - 0x2EE2EE
; =========================================================

2EE184:  PUSH            {R4-R7,LR}
2EE186:  ADD             R7, SP, #0xC
2EE188:  PUSH.W          {R8-R11}
2EE18C:  SUB             SP, SP, #4
2EE18E:  VPUSH           {D8-D14}
2EE192:  SUB             SP, SP, #0x20; float
2EE194:  LDR             R6, [R0]
2EE196:  MOV             R4, R1
2EE198:  CMP             R6, #0
2EE19A:  BEQ.W           loc_2EE2E0
2EE19E:  ADDS            R0, R4, #4
2EE1A0:  STR             R0, [SP,#0x78+var_68]
2EE1A2:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EE1B4)
2EE1A4:  VMOV.F32        S24, #10.0
2EE1A8:  VLDR            S0, [R7,#arg_C]
2EE1AC:  VMOV.F32        S28, #3.0
2EE1B0:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EE1B2:  VLDR            S16, [R7,#arg_4]
2EE1B6:  VLDR            S18, [R7,#arg_0]
2EE1BA:  VMOV            S20, R3
2EE1BE:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
2EE1C2:  VMOV            S22, R2
2EE1C6:  LDR             R0, =(MI_ROADWORKBARRIER1_ptr - 0x2EE1D4)
2EE1C8:  ADD.W           R10, SP, #0x78+var_64
2EE1CC:  VLDR            S26, =0.0
2EE1D0:  ADD             R0, PC; MI_ROADWORKBARRIER1_ptr
2EE1D2:  LDR.W           R9, [R0]; MI_ROADWORKBARRIER1
2EE1D6:  VMOV            R0, S0
2EE1DA:  STR             R0, [SP,#0x78+var_70]; float
2EE1DC:  LDR             R0, =(MI_ROADBLOCKFUCKEDCAR1_ptr - 0x2EE1E2)
2EE1DE:  ADD             R0, PC; MI_ROADBLOCKFUCKEDCAR1_ptr
2EE1E0:  LDR.W           R11, [R0]; MI_ROADBLOCKFUCKEDCAR1
2EE1E4:  LDR             R0, =(MI_ROADBLOCKFUCKEDCAR2_ptr - 0x2EE1EA)
2EE1E6:  ADD             R0, PC; MI_ROADBLOCKFUCKEDCAR2_ptr
2EE1E8:  LDR             R0, [R0]; MI_ROADBLOCKFUCKEDCAR2
2EE1EA:  STR             R0, [SP,#0x78+var_6C]
2EE1EC:  B               loc_2EE2CC
2EE1EE:  LDRSH.W         R0, [R5,#0x26]
2EE1F2:  STRH            R1, [R5,#0x30]
2EE1F4:  LDRH.W          R1, [R9]
2EE1F8:  CMP             R0, R1
2EE1FA:  ITT NE
2EE1FC:  LDRHNE.W        R1, [R11]
2EE200:  CMPNE           R0, R1
2EE202:  BNE             loc_2EE2C2
2EE204:  MOV             R0, R10; this
2EE206:  MOV             R1, R5
2EE208:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
2EE20C:  VLDR            S0, [SP,#0x78+var_64]
2EE210:  VCMPE.F32       S0, S22
2EE214:  VMRS            APSR_nzcv, FPSCR
2EE218:  BLE             loc_2EE2DC
2EE21A:  VCMPE.F32       S0, S18
2EE21E:  VMRS            APSR_nzcv, FPSCR
2EE222:  BGE             loc_2EE2DC
2EE224:  VLDR            S2, [SP,#0x78+var_60]
2EE228:  VCMPE.F32       S2, S20
2EE22C:  VMRS            APSR_nzcv, FPSCR
2EE230:  BLE             loc_2EE2DC
2EE232:  VCMPE.F32       S2, S16
2EE236:  VMRS            APSR_nzcv, FPSCR
2EE23A:  BGE             loc_2EE2DC
2EE23C:  LDR             R0, [R4,#0x14]
2EE23E:  LDR             R1, [SP,#0x78+var_68]
2EE240:  CMP             R0, #0
2EE242:  VLDR            S4, [SP,#0x78+var_5C]
2EE246:  IT NE
2EE248:  ADDNE.W         R1, R0, #0x30 ; '0'
2EE24C:  VLDR            S6, [R1,#8]
2EE250:  VSUB.F32        S4, S4, S6
2EE254:  VABS.F32        S4, S4
2EE258:  VCMPE.F32       S4, S24
2EE25C:  VMRS            APSR_nzcv, FPSCR
2EE260:  BGE             loc_2EE2DC
2EE262:  LDRD.W          R2, R3, [R0,#0x10]; float
2EE266:  LDRD.W          R0, R1, [R1]; float
2EE26A:  VSTR            S0, [SP,#0x78+var_78]
2EE26E:  VSTR            S2, [SP,#0x78+var_74]
2EE272:  BLX             j__ZN10CCollision15DistAlongLine2DEffffff; CCollision::DistAlongLine2D(float,float,float,float,float,float)
2EE276:  LDR             R1, [R4,#0x14]
2EE278:  VMOV            S0, R0
2EE27C:  LDR             R0, [SP,#0x78+var_68]
2EE27E:  VMOV.F32        S4, S26
2EE282:  CMP             R1, #0
2EE284:  IT NE
2EE286:  ADDNE.W         R0, R1, #0x30 ; '0'
2EE28A:  VLDR            S2, [R0,#8]
2EE28E:  IT NE
2EE290:  VLDRNE          S4, [R1,#0x18]
2EE294:  VMUL.F32        S0, S0, S4
2EE298:  VADD.F32        S0, S2, S0
2EE29C:  VLDR            S2, [SP,#0x78+var_5C]
2EE2A0:  VSUB.F32        S0, S2, S0
2EE2A4:  VABS.F32        S0, S0
2EE2A8:  VCMPE.F32       S0, S28
2EE2AC:  VMRS            APSR_nzcv, FPSCR
2EE2B0:  BGE             loc_2EE2DC
2EE2B2:  LDR             R2, [R7,#arg_8]; CVehicle *
2EE2B4:  MOV             R0, R5; this
2EE2B6:  LDR             R3, [SP,#0x78+var_70]; float *
2EE2B8:  MOV             R1, R4; CEntity *
2EE2BA:  BLX             j__ZN8CCarCtrl20SlowCarDownForObjectEP7CEntityP8CVehiclePff; CCarCtrl::SlowCarDownForObject(CEntity *,CVehicle *,float *,float)
2EE2BE:  CBNZ            R6, loc_2EE2CC
2EE2C0:  B               loc_2EE2E0
2EE2C2:  LDR             R1, [SP,#0x78+var_6C]
2EE2C4:  LDRH            R1, [R1]
2EE2C6:  CMP             R0, R1
2EE2C8:  BEQ             loc_2EE204
2EE2CA:  B               loc_2EE2DC
2EE2CC:  LDRD.W          R5, R6, [R6]
2EE2D0:  LDRH.W          R1, [R8]; CWorld::ms_nCurrentScanCode
2EE2D4:  LDRH            R0, [R5,#0x30]
2EE2D6:  CMP             R0, R1
2EE2D8:  BNE.W           loc_2EE1EE
2EE2DC:  CMP             R6, #0
2EE2DE:  BNE             loc_2EE2CC
2EE2E0:  ADD             SP, SP, #0x20 ; ' '
2EE2E2:  VPOP            {D8-D14}
2EE2E6:  ADD             SP, SP, #4
2EE2E8:  POP.W           {R8-R11}
2EE2EC:  POP             {R4-R7,PC}
