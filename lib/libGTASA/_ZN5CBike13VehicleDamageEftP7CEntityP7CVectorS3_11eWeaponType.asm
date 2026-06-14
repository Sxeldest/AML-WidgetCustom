; =========================================================
; Game Engine Function: _ZN5CBike13VehicleDamageEftP7CEntityP7CVectorS3_11eWeaponType
; Address            : 0x561148 - 0x5614A8
; =========================================================

561148:  PUSH            {R4-R7,LR}
56114A:  ADD             R7, SP, #0xC
56114C:  PUSH.W          {R11}
561150:  VPUSH           {D8-D11}
561154:  SUB             SP, SP, #0x10; CEntity *
561156:  VMOV            S0, R1
56115A:  MOV             R4, R0
56115C:  STR             R1, [SP,#0x40+var_34]
56115E:  VCMPE.F32       S0, #0.0
561162:  VMRS            APSR_nzcv, FPSCR
561166:  BGT.W           loc_561496
56116A:  VMOV.F32        S16, #1.0
56116E:  VLDR            S0, [R4,#0xDC]
561172:  VCMPE.F32       S0, S16
561176:  VMRS            APSR_nzcv, FPSCR
56117A:  BLT.W           loc_561496
56117E:  LDRB.W          R0, [R4,#0x42E]
561182:  LSLS            R0, R0, #0x1A
561184:  BPL.W           loc_561496
561188:  ADD             R1, SP, #0x40+var_34; float *
56118A:  MOV             R0, R4; this
56118C:  VSTR            S0, [SP,#0x40+var_34]
561190:  BLX             j__ZN8CVehicle19ReduceVehicleDamageERf; CVehicle::ReduceVehicleDamage(float &)
561194:  LDRB.W          R0, [R4,#0x628]
561198:  TST.W           R0, #0x10
56119C:  BEQ             loc_5611B8
56119E:  VMOV.F32        S2, #20.0
5611A2:  VLDR            S0, [SP,#0x40+var_34]
5611A6:  VCMPE.F32       S0, S2
5611AA:  VMRS            APSR_nzcv, FPSCR
5611AE:  ITT GT
5611B0:  ANDGT.W         R0, R0, #0xEF
5611B4:  STRBGT.W        R0, [R4,#0x628]
5611B8:  LDR.W           R1, [R4,#0xDC]; CVehicle *
5611BC:  ADD.W           R0, R4, #0xE4
5611C0:  STR             R0, [SP,#0x40+var_3C]; unsigned __int8
5611C2:  MOV             R0, R4; this
5611C4:  MOVS            R2, #0; float
5611C6:  BLX             j__ZN5CBike19DamageKnockOffRiderEP8CVehicleftP7CEntityR7CVectorS5_; CBike::DamageKnockOffRider(CVehicle *,float,ushort,CEntity *,CVector &,CVector &)
5611CA:  LDR.W           R0, [R4,#0xE0]; this
5611CE:  CBZ             R0, loc_5611EE
5611D0:  LDRB.W          R1, [R0,#0x3A]
5611D4:  AND.W           R1, R1, #7
5611D8:  CMP             R1, #2
5611DA:  BNE             loc_5611EE
5611DC:  MOVS            R1, #0x31 ; '1'
5611DE:  STR.W           R0, [R4,#0x51C]
5611E2:  STRB.W          R1, [R4,#0x518]
5611E6:  ADDW            R1, R4, #0x51C; CEntity **
5611EA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5611EE:  LDRB.W          R0, [R4,#0x46]
5611F2:  LSLS            R0, R0, #0x1B
5611F4:  BMI.W           loc_561496
5611F8:  LDR.W           R0, [R4,#0xE0]
5611FC:  CBZ             R0, loc_561248
5611FE:  LDRB.W          R0, [R0,#0x3A]
561202:  AND.W           R0, R0, #7
561206:  CMP             R0, #1
561208:  BNE             loc_561248
56120A:  LDR             R0, [R4,#0x14]
56120C:  VLDR            S0, [R4,#0xE4]
561210:  VLDR            S2, [R4,#0xE8]
561214:  VLDR            S6, [R0,#0x20]
561218:  VLDR            S8, [R0,#0x24]
56121C:  VMUL.F32        S0, S0, S6
561220:  VLDR            S4, [R4,#0xEC]
561224:  VMUL.F32        S2, S2, S8
561228:  VLDR            S10, [R0,#0x28]
56122C:  VMUL.F32        S4, S4, S10
561230:  VADD.F32        S0, S0, S2
561234:  VLDR            S2, =0.6
561238:  VADD.F32        S0, S0, S4
56123C:  VCMPE.F32       S0, S2
561240:  VMRS            APSR_nzcv, FPSCR
561244:  BGT.W           loc_561496
561248:  VMOV.F32        S0, #25.0
56124C:  VLDR            S2, [SP,#0x40+var_34]
561250:  VCMPE.F32       S2, S0
561254:  VMRS            APSR_nzcv, FPSCR
561258:  BLE.W           loc_561454
56125C:  LDRB.W          R0, [R4,#0x3A]
561260:  AND.W           R0, R0, #0xF8
561264:  CMP             R0, #0x28 ; '('
561266:  BEQ.W           loc_561454
56126A:  ADDW            R5, R4, #0x42C
56126E:  LDRB            R0, [R5]
561270:  LSLS            R0, R0, #0x1F
561272:  BEQ             loc_561346
561274:  MOV.W           R0, #0xFFFFFFFF; int
561278:  MOVS            R1, #0; bool
56127A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
56127E:  CMP             R0, #0
561280:  BEQ             loc_561346
561282:  MOV.W           R0, #0xFFFFFFFF; int
561286:  MOVS            R1, #0; bool
561288:  LDR.W           R6, [R4,#0xE0]
56128C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
561290:  CMP             R6, R0
561292:  BNE             loc_561346
561294:  LDRB.W          R0, [R4,#0x3A]
561298:  AND.W           R0, R0, #0xF8
56129C:  CMP             R0, #0x20 ; ' '
56129E:  BEQ             loc_561346
5612A0:  MOV.W           R0, #0xFFFFFFFF; int
5612A4:  MOVS            R1, #0; bool
5612A6:  VLDR            S18, [R4,#0x48]
5612AA:  VLDR            S20, [R4,#0x4C]
5612AE:  VLDR            S22, [R4,#0x50]
5612B2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5612B6:  VLDR            S4, [R0,#0x48]
5612BA:  VMUL.F32        S0, S20, S20
5612BE:  VLDR            S6, [R0,#0x4C]
5612C2:  VMUL.F32        S2, S18, S18
5612C6:  VMUL.F32        S4, S4, S4
5612CA:  VLDR            S8, [R0,#0x50]
5612CE:  VMUL.F32        S6, S6, S6
5612D2:  VMUL.F32        S10, S22, S22
5612D6:  VADD.F32        S0, S2, S0
5612DA:  VMUL.F32        S2, S8, S8
5612DE:  VADD.F32        S4, S4, S6
5612E2:  VADD.F32        S0, S0, S10
5612E6:  VADD.F32        S2, S4, S2
5612EA:  VSQRT.F32       S0, S0
5612EE:  VSQRT.F32       S2, S2
5612F2:  VCMPE.F32       S0, S2
5612F6:  VMRS            APSR_nzcv, FPSCR
5612FA:  BGT             loc_561346
5612FC:  MOV.W           R0, #0xFFFFFFFF; int
561300:  MOVS            R1, #0; bool
561302:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
561306:  VLDR            S0, [R0,#0x48]
56130A:  VLDR            S2, [R0,#0x4C]
56130E:  VMUL.F32        S0, S0, S0
561312:  VLDR            S4, [R0,#0x50]
561316:  VMUL.F32        S2, S2, S2
56131A:  VMUL.F32        S4, S4, S4
56131E:  VADD.F32        S0, S0, S2
561322:  VLDR            S2, =0.1
561326:  VADD.F32        S0, S0, S4
56132A:  VSQRT.F32       S0, S0
56132E:  VCMPE.F32       S0, S2
561332:  VMRS            APSR_nzcv, FPSCR
561336:  BLE             loc_561346
561338:  MOV.W           R0, #0xFFFFFFFF; int
56133C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
561340:  MOVS            R1, #1; int
561342:  BLX             j__ZN10CPlayerPed20SetWantedLevelNoDropEi; CPlayerPed::SetWantedLevelNoDrop(int)
561346:  VMOV.F32        S0, #-25.0
56134A:  VLDR            S2, [SP,#0x40+var_34]
56134E:  LDR.W           R0, [R4,#0x388]
561352:  VADD.F32        S0, S2, S0
561356:  VLDR            S2, [R0,#0xC8]
56135A:  VMUL.F32        S0, S0, S2
56135E:  VCMPE.F32       S0, #0.0
561362:  VSTR            S0, [SP,#0x40+var_34]
561366:  VMRS            APSR_nzcv, FPSCR
56136A:  BLE             loc_561454
56136C:  VMOV.F32        S2, #5.0
561370:  VCMPE.F32       S0, S2
561374:  VMRS            APSR_nzcv, FPSCR
561378:  BLE             loc_5613CA
56137A:  LDR.W           R0, [R4,#0x464]
56137E:  CMP             R0, #0
561380:  ITT NE
561382:  LDRNE.W         R6, [R4,#0xE0]
561386:  CMPNE           R6, #0
561388:  BEQ             loc_5613CA
56138A:  LDRB.W          R0, [R6,#0x3A]
56138E:  AND.W           R0, R0, #7
561392:  CMP             R0, #2
561394:  BNE             loc_5613CA
561396:  MOV.W           R0, #0xFFFFFFFF; int
56139A:  MOVS            R1, #0; bool
56139C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5613A0:  CMP             R0, R4
5613A2:  ITT EQ
5613A4:  LDRBEQ.W        R0, [R6,#0x4A8]
5613A8:  CMPEQ           R0, #2
5613AA:  BEQ             loc_5613CA
5613AC:  LDR.W           R0, [R6,#0x464]
5613B0:  CBZ             R0, loc_5613CA
5613B2:  LDR.W           R0, [R4,#0x464]; this
5613B6:  MOVS            R1, #0
5613B8:  STRD.W          R1, R1, [SP,#0x40+var_40]; unsigned __int8
5613BC:  MOVS            R2, #0; unsigned int
5613BE:  STR             R1, [SP,#0x40+var_38]; unsigned __int8
5613C0:  MOVS            R1, #0x42 ; 'B'; unsigned __int16
5613C2:  MOV.W           R3, #0x3F800000; float
5613C6:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5613CA:  ADDW            R6, R4, #0x4CC
5613CE:  MOV.W           R0, #0xFFFFFFFF; int
5613D2:  MOVS            R1, #0; bool
5613D4:  VLDR            S18, [R6]
5613D8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5613DC:  LDR             R1, [R5]
5613DE:  CMP             R4, R0
5613E0:  AND.W           R1, R1, #0x8000
5613E4:  BEQ             loc_5613EE
5613E6:  CBZ             R1, loc_561408
5613E8:  VMOV.F32        S0, #12.0
5613EC:  B               loc_5613FE
5613EE:  VMOV.F32        S2, #6.0
5613F2:  CMP             R1, #0
5613F4:  VMOV.F32        S0, #2.0
5613F8:  IT NE
5613FA:  VMOVNE.F32      S0, S2
5613FE:  VLDR            S2, [SP,#0x40+var_34]
561402:  VDIV.F32        S0, S2, S0
561406:  B               loc_561428
561408:  LDR.W           R5, [R4,#0xE0]
56140C:  CBZ             R5, loc_56141C
56140E:  MOV.W           R0, #0xFFFFFFFF; int
561412:  MOVS            R1, #0; bool
561414:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
561418:  CMP             R5, R0
56141A:  BEQ             loc_5614A2
56141C:  VMOV.F32        S0, #0.25
561420:  VLDR            S2, [SP,#0x40+var_34]
561424:  VMUL.F32        S0, S2, S0
561428:  VLDR            S2, [R6]
56142C:  VSUB.F32        S0, S2, S0
561430:  VCMPE.F32       S0, S16
561434:  VMRS            APSR_nzcv, FPSCR
561438:  VMOV.F32        S2, S0
56143C:  VCMPE.F32       S18, S16
561440:  IT LE
561442:  VMOVLE.F32      S2, S16
561446:  VMRS            APSR_nzcv, FPSCR
56144A:  IT GT
56144C:  VMOVGT.F32      S0, S2
561450:  VSTR            S0, [R6]
561454:  ADDW            R0, R4, #0x4CC
561458:  VLDR            S0, =250.0
56145C:  VLDR            S2, [R0]
561460:  VCMPE.F32       S2, S0
561464:  VMRS            APSR_nzcv, FPSCR
561468:  BGE             loc_561496
56146A:  LDRB.W          R0, [R4,#0x628]
56146E:  TST.W           R0, #0x40
561472:  BNE             loc_561496
561474:  MOVS            R1, #0
561476:  ORR.W           R0, R0, #0x40 ; '@'
56147A:  STR.W           R1, [R4,#0x7D0]
56147E:  STRB.W          R0, [R4,#0x628]
561482:  LDR.W           R0, [R4,#0xE0]; this
561486:  STR.W           R0, [R4,#0x814]
56148A:  CMP             R0, #0
56148C:  ITT NE
56148E:  ADDWNE          R1, R4, #0x814; CEntity **
561492:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
561496:  ADD             SP, SP, #0x10
561498:  VPOP            {D8-D11}
56149C:  POP.W           {R11}
5614A0:  POP             {R4-R7,PC}
5614A2:  VMOV.F32        S0, #1.5
5614A6:  B               loc_5613FE
