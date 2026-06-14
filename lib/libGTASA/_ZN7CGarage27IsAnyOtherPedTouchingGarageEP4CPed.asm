; =========================================================
; Game Engine Function: _ZN7CGarage27IsAnyOtherPedTouchingGarageEP4CPed
; Address            : 0x313344 - 0x313496
; =========================================================

313344:  PUSH            {R4-R7,LR}
313346:  ADD             R7, SP, #0xC
313348:  PUSH.W          {R8-R11}
31334C:  SUB             SP, SP, #0x14
31334E:  MOV             R5, R0
313350:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x313358)
313352:  STR             R1, [SP,#0x30+var_2C]
313354:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
313356:  LDR             R0, [R0]; CPools::ms_pPedPool ...
313358:  LDR.W           R10, [R0]; CPools::ms_pPedPool
31335C:  LDR.W           R6, [R10,#8]
313360:  CMP             R6, #0
313362:  BEQ.W           loc_313488
313366:  LDR.W           R0, [R10,#4]
31336A:  SUBS            R6, #1
31336C:  LDRSB           R0, [R0,R6]
31336E:  CMP             R0, #0
313370:  BLT.W           loc_313482
313374:  MOVW            R1, #0x7CC
313378:  LDR.W           R0, [R10]
31337C:  MLA.W           R4, R6, R1, R0
313380:  CMP             R4, #0
313382:  ITT NE
313384:  LDRNE           R0, [SP,#0x30+var_2C]
313386:  CMPNE           R4, R0
313388:  BEQ             loc_313482
31338A:  MOV             R0, R5; this
31338C:  MOV             R1, R4; CEntity *
31338E:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
313392:  CMP             R0, #0
313394:  BEQ             loc_313482
313396:  MOV             R0, R4; this
313398:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
31339C:  LDR.W           R11, [R0,#0x2C]
3133A0:  LDRSH.W         R0, [R11]
3133A4:  CMP             R0, #1
3133A6:  BLT             loc_313482
3133A8:  LDR.W           R0, [R11,#8]
3133AC:  ADDS            R4, #0x14
3133AE:  MOV.W           R8, #0
3133B2:  MOV.W           R9, #0
3133B6:  LDR             R1, [R4]
3133B8:  ADD.W           R2, R0, R8
3133BC:  ADD             R0, SP, #0x30+var_28
3133BE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3133C2:  LDR.W           R0, [R11,#8]
3133C6:  VLDR            S4, [R5,#8]
3133CA:  ADD.W           R1, R0, R8
3133CE:  VLDR            S2, [SP,#0x30+var_20]
3133D2:  VLDR            S0, [R1,#0xC]
3133D6:  VSUB.F32        S4, S4, S0
3133DA:  VCMPE.F32       S4, S2
3133DE:  VMRS            APSR_nzcv, FPSCR
3133E2:  BGT             loc_313472
3133E4:  VLDR            S4, [R5,#0x1C]
3133E8:  VADD.F32        S4, S0, S4
3133EC:  VCMPE.F32       S4, S2
3133F0:  VMRS            APSR_nzcv, FPSCR
3133F4:  BLT             loc_313472
3133F6:  VLDR            S2, [SP,#0x30+var_28]
3133FA:  VLDR            S6, [R5]
3133FE:  VLDR            S4, [SP,#0x30+var_24]
313402:  VLDR            S8, [R5,#4]
313406:  VSUB.F32        S2, S2, S6
31340A:  VLDR            S10, [R5,#0xC]
31340E:  VNEG.F32        S6, S0
313412:  VSUB.F32        S4, S4, S8
313416:  VLDR            S12, [R5,#0x10]
31341A:  VMUL.F32        S10, S2, S10
31341E:  VMUL.F32        S8, S4, S12
313422:  VADD.F32        S8, S10, S8
313426:  VCMPE.F32       S8, S6
31342A:  VMRS            APSR_nzcv, FPSCR
31342E:  BLT             loc_313472
313430:  VLDR            S10, [R5,#0x20]
313434:  VADD.F32        S10, S0, S10
313438:  VCMPE.F32       S8, S10
31343C:  VMRS            APSR_nzcv, FPSCR
313440:  BGT             loc_313472
313442:  VLDR            S8, [R5,#0x14]
313446:  VLDR            S10, [R5,#0x18]
31344A:  VMUL.F32        S2, S2, S8
31344E:  VMUL.F32        S4, S4, S10
313452:  VADD.F32        S2, S2, S4
313456:  VCMPE.F32       S2, S6
31345A:  VMRS            APSR_nzcv, FPSCR
31345E:  BLT             loc_313472
313460:  VLDR            S4, [R5,#0x24]
313464:  VADD.F32        S0, S0, S4
313468:  VCMPE.F32       S2, S0
31346C:  VMRS            APSR_nzcv, FPSCR
313470:  BLE             loc_313492
313472:  LDRSH.W         R1, [R11]
313476:  ADD.W           R9, R9, #1
31347A:  ADD.W           R8, R8, #0x14
31347E:  CMP             R9, R1
313480:  BLT             loc_3133B6
313482:  CMP             R6, #0
313484:  BNE.W           loc_313366
313488:  MOVS            R0, #0
31348A:  ADD             SP, SP, #0x14
31348C:  POP.W           {R8-R11}
313490:  POP             {R4-R7,PC}
313492:  MOVS            R0, #1
313494:  B               loc_31348A
