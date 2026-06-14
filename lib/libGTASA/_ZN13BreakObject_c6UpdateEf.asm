; =========================================================
; Game Engine Function: _ZN13BreakObject_c6UpdateEf
; Address            : 0x4521C8 - 0x452452
; =========================================================

4521C8:  PUSH            {R4-R7,LR}
4521CA:  ADD             R7, SP, #0xC
4521CC:  PUSH.W          {R8-R11}
4521D0:  SUB             SP, SP, #4
4521D2:  VPUSH           {D8-D15}
4521D6:  SUB             SP, SP, #0x20; float
4521D8:  MOV             R4, R0
4521DA:  MOV             R11, R1
4521DC:  LDR             R1, [R4,#4]
4521DE:  CMP             R1, #1
4521E0:  BLT.W           loc_4523F0
4521E4:  VMOV            S16, R11
4521E8:  VLDR            S0, =0.008
4521EC:  ADD.W           R6, R4, #0x14
4521F0:  VLDR            S20, =0.01
4521F4:  VMUL.F32        S18, S16, S0
4521F8:  VLDR            S22, =180.0
4521FC:  VLDR            S24, =3.1416
452200:  MOV.W           R10, #1
452204:  VLDR            S26, =0.05
452208:  MOVS            R5, #0x70 ; 'p'
45220A:  MOV.W           R8, #0
45220E:  LDR             R0, [R4,#8]
452210:  ADDS            R1, R0, R5
452212:  LDRB.W          R2, [R1,#-0x24]
452216:  CMP             R2, #0
452218:  BNE.W           loc_4523C4
45221C:  VLDR            S0, [R1,#-0x28]
452220:  VSUB.F32        S0, S0, S18
452224:  VSTR            S0, [R1,#-0x28]
452228:  LDR             R0, [R4,#8]
45222A:  ADD             R0, R5
45222C:  VLDR            S0, [R0,#-0x30]
452230:  VLDR            S2, [R0,#-0x40]
452234:  VMUL.F32        S0, S0, S16
452238:  VADD.F32        S0, S2, S0
45223C:  VSTR            S0, [R0,#-0x40]
452240:  LDR             R0, [R4,#8]
452242:  ADD             R0, R5
452244:  VLDR            S0, [R0,#-0x2C]
452248:  VLDR            S2, [R0,#-0x3C]
45224C:  VMUL.F32        S0, S0, S16
452250:  VADD.F32        S0, S2, S0
452254:  VSTR            S0, [R0,#-0x3C]
452258:  LDR             R0, [R4,#8]
45225A:  ADD             R0, R5
45225C:  VLDR            S0, [R0,#-0x28]
452260:  VLDR            S2, [R0,#-0x38]
452264:  VMUL.F32        S0, S0, S16
452268:  VADD.F32        S0, S2, S0
45226C:  VSTR            S0, [R0,#-0x38]
452270:  LDRD.W          R0, R1, [R4,#8]
452274:  CMP             R1, #4
452276:  BGT             loc_452294
452278:  ADDS            R1, R0, R5
45227A:  MOVS            R3, #1
45227C:  SUB.W           R0, R1, #0x70 ; 'p'
452280:  VLDR            S0, [R1,#-0x10]
452284:  SUBS            R1, #0xC
452286:  VMUL.F32        S0, S0, S16
45228A:  VMOV            R2, S0
45228E:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
452292:  B               loc_452394
452294:  ADDS            R2, R0, R5
452296:  LDRB.W          R1, [R2,#-0x18]
45229A:  CMP             R1, #2
45229C:  BEQ             loc_4522AC
45229E:  CMP             R1, #1
4522A0:  BEQ             loc_4522B2
4522A2:  CBNZ            R1, loc_4522BE
4522A4:  MOVS            R1, #0x74 ; 't'
4522A6:  MLA.W           R9, R8, R1, R0
4522AA:  B               loc_4522C2
4522AC:  SUB.W           R9, R2, #0x50 ; 'P'
4522B0:  B               loc_4522C2
4522B2:  MOVS            R1, #0x74 ; 't'
4522B4:  MLA.W           R0, R8, R1, R0
4522B8:  ADD.W           R9, R0, #0x10
4522BC:  B               loc_4522C2
4522BE:  MOV.W           R9, #0
4522C2:  VLDR            S0, [R9]
4522C6:  VLDR            S28, [R4,#0x14]
4522CA:  VLDR            S23, [R9,#4]
4522CE:  VLDR            S30, [R4,#0x18]
4522D2:  VMUL.F32        S0, S28, S0
4522D6:  VLDR            S17, [R9,#8]
4522DA:  VMUL.F32        S2, S30, S23
4522DE:  VLDR            S21, [R4,#0x1C]
4522E2:  VMUL.F32        S4, S21, S17
4522E6:  VADD.F32        S0, S0, S2
4522EA:  VADD.F32        S0, S0, S4
4522EE:  VMOV            R0, S0; x
4522F2:  BLX             acosf
4522F6:  VMOV            S19, R0
4522FA:  VABS.F32        S0, S19
4522FE:  VCMPE.F32       S0, S20
452302:  VMRS            APSR_nzcv, FPSCR
452306:  BLE             loc_452394
452308:  VMUL.F32        S0, S30, S17
45230C:  VMUL.F32        S2, S21, S23
452310:  VSUB.F32        S0, S2, S0
452314:  VMUL.F32        S2, S28, S17
452318:  VSTR            S0, [SP,#0x80+var_6C]
45231C:  VLDR            S0, [R9]
452320:  VMUL.F32        S0, S21, S0
452324:  VSUB.F32        S0, S2, S0
452328:  VSTR            S0, [SP,#0x80+var_68]
45232C:  VLDR            S0, [R9]
452330:  VLDR            S2, [R9,#4]
452334:  MOV             R9, R6
452336:  VMUL.F32        S0, S30, S0
45233A:  ADD             R6, SP, #0x80+var_6C
45233C:  VMUL.F32        S2, S28, S2
452340:  MOV             R0, R6
452342:  MOV             R1, R6
452344:  VSUB.F32        S0, S0, S2
452348:  VSTR            S0, [SP,#0x80+var_64]
45234C:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
452350:  VMUL.F32        S0, S19, S22
452354:  LDR             R0, [R4,#8]
452356:  MOVS            R3, #2
452358:  ADD             R0, R5
45235A:  VLDR            D16, [R0,#-0x40]
45235E:  LDR.W           R1, [R0,#-0x38]
452362:  SUBS            R0, #0x70 ; 'p'
452364:  STR             R1, [SP,#0x80+var_70]
452366:  MOV             R1, R6
452368:  VDIV.F32        S0, S0, S24
45236C:  MOV             R6, R9
45236E:  VMUL.F32        S0, S0, S26
452372:  VSTR            D16, [SP,#0x80+var_78]
452376:  VMUL.F32        S0, S0, S16
45237A:  VMOV            R2, S0
45237E:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
452382:  LDR             R0, [R4,#8]
452384:  VLDR            D16, [SP,#0x80+var_78]
452388:  ADD             R0, R5
45238A:  LDR             R1, [SP,#0x80+var_70]
45238C:  STR.W           R1, [R0,#-0x38]
452390:  VSTR            D16, [R0,#-0x40]
452394:  LDR             R0, [R4,#8]
452396:  ADDS            R1, R0, R5
452398:  VLDR            S0, [R1,#-0x14]
45239C:  VLDR            S2, [R1,#-0x38]
4523A0:  VSUB.F32        S2, S2, S0
4523A4:  VLDR            S0, [R4,#0x10]
4523A8:  VCMPE.F32       S2, S0
4523AC:  VMRS            APSR_nzcv, FPSCR
4523B0:  BGE             loc_4523C4
4523B2:  SUBS            R1, #0x70 ; 'p'; int
4523B4:  MOV             R0, R4; int
4523B6:  MOV             R2, R11; int
4523B8:  MOV             R3, R6; int
4523BA:  VSTR            S0, [SP,#0x80+var_80]
4523BE:  BLX             j__ZN13BreakObject_c19DoCollisionResponseEP12BreakGroup_tfP5RwV3df; BreakObject_c::DoCollisionResponse(BreakGroup_t *,float,RwV3d *,float)
4523C2:  LDR             R0, [R4,#8]
4523C4:  LDR             R1, [R0,R5]
4523C6:  SUBS            R1, #1
4523C8:  STR             R1, [R0,R5]
4523CA:  LDR             R0, [R4,#8]
4523CC:  LDR             R1, [R0,R5]
4523CE:  CMP             R1, #0
4523D0:  BLE             loc_4523D8
4523D2:  MOV.W           R10, #0
4523D6:  B               loc_4523DC
4523D8:  MOVS            R1, #0
4523DA:  STR             R1, [R0,R5]
4523DC:  LDR             R1, [R4,#4]
4523DE:  ADD.W           R8, R8, #1
4523E2:  ADDS            R5, #0x74 ; 't'
4523E4:  CMP             R8, R1
4523E6:  BLT.W           loc_45220E
4523EA:  MOVS.W          R0, R10,LSL#24
4523EE:  BEQ             loc_45243E
4523F0:  LDR             R0, [R4,#8]; void *
4523F2:  CBZ             R0, loc_45243A
4523F4:  CMP             R1, #1
4523F6:  BLT             loc_452436
4523F8:  MOV.W           R8, #0
4523FC:  MOVS            R6, #0x54 ; 'T'
4523FE:  MOVS            R5, #0
452400:  LDR             R1, [R0,R6]
452402:  CBZ             R1, loc_452412
452404:  MOV             R0, R1
452406:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
45240A:  LDR             R0, [R4,#8]
45240C:  STR.W           R8, [R0,R6]
452410:  LDR             R0, [R4,#8]
452412:  ADDS            R1, R0, R6
452414:  LDR.W           R1, [R1,#-4]
452418:  CBZ             R1, loc_452422
45241A:  MOV             R0, R1; void *
45241C:  BLX             _ZdaPv; operator delete[](void *)
452420:  LDR             R0, [R4,#8]; void *
452422:  LDR             R1, [R4,#4]
452424:  ADDS            R5, #1
452426:  ADDS            R6, #0x74 ; 't'
452428:  CMP             R5, R1
45242A:  BLT             loc_452400
45242C:  CMP             R0, #0
45242E:  IT NE
452430:  BLXNE           _ZdaPv; operator delete[](void *)
452434:  B               loc_45243A
452436:  BLX             _ZdaPv; operator delete[](void *)
45243A:  MOVS            R0, #0
45243C:  STRB            R0, [R4,#1]
45243E:  LDR             R0, [R4,#0xC]
452440:  ADDS            R0, #1
452442:  STR             R0, [R4,#0xC]
452444:  ADD             SP, SP, #0x20 ; ' '
452446:  VPOP            {D8-D15}
45244A:  ADD             SP, SP, #4
45244C:  POP.W           {R8-R11}
452450:  POP             {R4-R7,PC}
