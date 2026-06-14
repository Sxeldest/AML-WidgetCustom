; =========================================================
; Game Engine Function: _ZN6CWorld16RemoveFallenCarsEv
; Address            : 0x4281EC - 0x4283B0
; =========================================================

4281EC:  PUSH            {R4-R7,LR}
4281EE:  ADD             R7, SP, #0xC
4281F0:  PUSH.W          {R8-R11}
4281F4:  SUB             SP, SP, #4
4281F6:  VPUSH           {D8-D10}
4281FA:  SUB             SP, SP, #0x28
4281FC:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x428202)
4281FE:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
428200:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
428202:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool
428206:  LDR.W           R0, [R9,#8]
42820A:  CMP             R0, #0
42820C:  BEQ.W           loc_4283A2
428210:  MOVW            R1, #0xA2C
428214:  SUBS            R6, R0, #1
428216:  MULS            R1, R0
428218:  LDR             R0, =(ThePaths_ptr - 0x428222)
42821A:  VMOV.F32        S18, #0.125
42821E:  ADD             R0, PC; ThePaths_ptr
428220:  VMOV.F32        S20, #3.0
428224:  VLDR            S16, =-100.0
428228:  MOV.W           R10, #0
42822C:  LDR             R0, [R0]; ThePaths
42822E:  STR             R0, [SP,#0x60+var_3C]
428230:  SUBW            R4, R1, #0xA2C
428234:  LDR             R0, =(ThePaths_ptr - 0x42823A)
428236:  ADD             R0, PC; ThePaths_ptr
428238:  LDR             R0, [R0]; ThePaths
42823A:  STR             R0, [SP,#0x60+var_40]
42823C:  LDR.W           R0, [R9,#4]
428240:  LDRSB           R0, [R0,R6]
428242:  CMP             R0, #0
428244:  BLT.W           loc_428396
428248:  LDR.W           R11, [R9]
42824C:  ADDS.W          R5, R11, R4
428250:  BEQ.W           loc_428396
428254:  LDR             R0, [R5,#0x14]
428256:  ADD.W           R8, R5, #4
42825A:  CMP             R0, #0
42825C:  MOV             R1, R8
42825E:  IT NE
428260:  ADDNE.W         R1, R0, #0x30 ; '0'
428264:  VLDR            S0, [R1,#8]
428268:  VCMPE.F32       S0, S16
42826C:  VMRS            APSR_nzcv, FPSCR
428270:  BGE.W           loc_428396
428274:  LDRB.W          R0, [R5,#0x4A8]
428278:  CMP             R0, #2
42827A:  BNE             loc_428284
42827C:  LDRB.W          R0, [R5,#0x47]
428280:  LSLS            R0, R0, #0x1A
428282:  BPL             loc_4282A2
428284:  MOV.W           R0, #0xFFFFFFFF; int
428288:  MOVS            R1, #0; bool
42828A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
42828E:  CMP             R5, R0
428290:  BEQ             loc_4282A2
428292:  LDR.W           R0, [R5,#0x464]; this
428296:  CMP             R0, #0
428298:  BEQ             loc_42833E
42829A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
42829E:  CMP             R0, #1
4282A0:  BNE             loc_42833E
4282A2:  LDR             R0, [R5,#0x14]
4282A4:  MOV             R3, R8
4282A6:  CMP             R0, #0
4282A8:  IT NE
4282AA:  ADDNE.W         R3, R0, #0x30 ; '0'
4282AE:  MOV             R0, #0x497423FE
4282B6:  LDM             R3, {R1-R3}
4282B8:  STR.W           R10, [SP,#0x60+var_60]
4282BC:  STRD.W          R0, R10, [SP,#0x60+var_5C]
4282C0:  STRD.W          R10, R10, [SP,#0x60+var_54]
4282C4:  STRD.W          R10, R10, [SP,#0x60+var_4C]
4282C8:  LDR             R0, [SP,#0x60+var_3C]
4282CA:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
4282CE:  LDR.W           R2, [R11,R4]
4282D2:  UXTH            R1, R0
4282D4:  LDR.W           R12, [R2,#0x3C]
4282D8:  MOVW            R2, #0xFFFF
4282DC:  CMP             R1, R2
4282DE:  BEQ             loc_428376
4282E0:  LDR             R2, [SP,#0x60+var_40]
4282E2:  ADD.W           R1, R2, R1,LSL#2
4282E6:  LSRS            R2, R0, #0x10
4282E8:  LSLS            R2, R2, #3
4282EA:  SUB.W           R0, R2, R0,LSR#16
4282EE:  LDR.W           R1, [R1,#0x804]
4282F2:  ADD.W           R0, R1, R0,LSL#2
4282F6:  LDRSH.W         R1, [R0,#8]
4282FA:  LDRSH.W         R2, [R0,#0xA]
4282FE:  LDRSH.W         R0, [R0,#0xC]
428302:  VMOV            S2, R1
428306:  VMOV            S4, R2
42830A:  VMOV            S0, R0
42830E:  MOVS            R0, #1
428310:  VCVT.F32.S32    S0, S0
428314:  VCVT.F32.S32    S2, S2
428318:  VCVT.F32.S32    S4, S4
42831C:  STR             R0, [SP,#0x60+var_60]
42831E:  MOV             R0, R5
428320:  VMUL.F32        S0, S0, S18
428324:  VMUL.F32        S2, S2, S18
428328:  VMUL.F32        S4, S4, S18
42832C:  VADD.F32        S0, S0, S20
428330:  VMOV            R1, S2
428334:  VMOV            R2, S4
428338:  VMOV            R3, S0
42833C:  B               loc_42838C
42833E:  LDRB.W          R0, [R5,#0x4A8]
428342:  ORR.W           R0, R0, #2
428346:  CMP             R0, #3
428348:  BNE             loc_428396
42834A:  LDR.W           R0, [R11,R4]
42834E:  LDR             R1, [R0,#0x10]
428350:  MOV             R0, R5
428352:  BLX             R1
428354:  LDRB.W          R0, [R5,#0x3A]
428358:  AND.W           R0, R0, #7
42835C:  SUBS            R0, #2
42835E:  UXTB            R0, R0
428360:  CMP             R0, #2
428362:  ITT LS
428364:  MOVLS           R0, R5; this
428366:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
42836A:  LDR.W           R0, [R11,R4]
42836E:  LDR             R1, [R0,#4]
428370:  MOV             R0, R5
428372:  BLX             R1
428374:  B               loc_428396
428376:  LDR             R0, [R5,#0x14]
428378:  MOVS            R3, #0
42837A:  CMP             R0, #0
42837C:  IT NE
42837E:  ADDNE.W         R8, R0, #0x30 ; '0'
428382:  MOVS            R0, #1
428384:  LDRD.W          R1, R2, [R8]
428388:  STR             R0, [SP,#0x60+var_60]
42838A:  MOV             R0, R5
42838C:  BLX             R12
42838E:  STRD.W          R10, R10, [R5,#0x48]
428392:  STR.W           R10, [R5,#0x50]
428396:  SUBS            R6, #1
428398:  SUBW            R4, R4, #0xA2C
42839C:  ADDS            R0, R6, #1
42839E:  BNE.W           loc_42823C
4283A2:  ADD             SP, SP, #0x28 ; '('
4283A4:  VPOP            {D8-D10}
4283A8:  ADD             SP, SP, #4
4283AA:  POP.W           {R8-R11}
4283AE:  POP             {R4-R7,PC}
