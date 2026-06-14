; =========================================================
; Game Engine Function: _ZN17InteriorManager_c19PruneVisibleEffectsEP20InteriorEffectInfo_tiif
; Address            : 0x44C40C - 0x44C5C6
; =========================================================

44C40C:  PUSH            {R4-R7,LR}
44C40E:  ADD             R7, SP, #0xC
44C410:  PUSH.W          {R8-R11}
44C414:  SUB             SP, SP, #4
44C416:  VPUSH           {D8-D9}
44C41A:  SUB             SP, SP, #0x68
44C41C:  CMP             R2, #1
44C41E:  BLT.W           loc_44C5B0
44C422:  ADDS            R4, R1, #4
44C424:  MOVS            R0, #0
44C426:  MOV             R5, R2
44C428:  LDR.W           R6, [R4],#0x50
44C42C:  SUBS            R5, #1
44C42E:  ADD             R0, R6
44C430:  BNE             loc_44C428
44C432:  CMP             R0, R3
44C434:  BLE.W           loc_44C5B8
44C438:  CMP             R2, #1
44C43A:  BLT.W           loc_44C5B8
44C43E:  VLDR            S0, [R7,#arg_0]
44C442:  ADD.W           R5, R1, #8
44C446:  LDR             R0, =(TheCamera_ptr - 0x44C454)
44C448:  VMUL.F32        S16, S0, S0
44C44C:  VLDR            S18, =0.0
44C450:  ADD             R0, PC; TheCamera_ptr
44C452:  STR             R1, [SP,#0x98+var_8C]
44C454:  MOVS            R1, #0
44C456:  STR             R3, [SP,#0x98+var_98]
44C458:  LDR.W           R8, [R0]; TheCamera
44C45C:  STR             R2, [SP,#0x98+var_88]
44C45E:  STR             R1, [SP,#0x98+var_84]
44C460:  ADD.W           R0, R1, R1,LSL#2
44C464:  LDR             R1, [SP,#0x98+var_8C]
44C466:  ADD.W           R10, R1, R0,LSL#4
44C46A:  MOV             R0, #0x4CBEBC20
44C472:  MOV             R9, R10
44C474:  STR.W           R0, [R9,#0x48]!
44C478:  MOV             R11, R9
44C47A:  LDR.W           R0, [R11,#-0x44]!
44C47E:  CMP             R0, #1
44C480:  BLT             loc_44C4EA
44C482:  MOVS            R4, #0
44C484:  LDR.W           R6, [R10]
44C488:  LDR             R1, [R6,#0x14]
44C48A:  CBNZ            R1, loc_44C49C
44C48C:  MOV             R0, R6; this
44C48E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
44C492:  LDR             R1, [R6,#0x14]; CMatrix *
44C494:  ADDS            R0, R6, #4; this
44C496:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
44C49A:  LDR             R1, [R6,#0x14]
44C49C:  LDR.W           R2, [R5,R4,LSL#2]
44C4A0:  ADD             R0, SP, #0x98+var_80
44C4A2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
44C4A6:  LDR.W           R0, [R8,#(dword_951FBC - 0x951FA8)]
44C4AA:  ADDS            R4, #1
44C4AC:  VLDR            D16, [SP,#0x98+var_80]
44C4B0:  ADD.W           R1, R0, #0x30 ; '0'
44C4B4:  CMP             R0, #0
44C4B6:  IT EQ
44C4B8:  ADDEQ.W         R1, R8, #4
44C4BC:  VLDR            S2, [R9]
44C4C0:  VLDR            D17, [R1]
44C4C4:  VSUB.F32        D16, D17, D16
44C4C8:  VMUL.F32        D0, D16, D16
44C4CC:  VADD.F32        S0, S0, S1
44C4D0:  VADD.F32        S0, S0, S18
44C4D4:  VCMPE.F32       S0, S2
44C4D8:  VMRS            APSR_nzcv, FPSCR
44C4DC:  IT LT
44C4DE:  VSTRLT          S0, [R9]
44C4E2:  LDR.W           R0, [R11]
44C4E6:  CMP             R4, R0
44C4E8:  BLT             loc_44C484
44C4EA:  LDR             R1, [SP,#0x98+var_84]
44C4EC:  ADDS            R5, #0x50 ; 'P'
44C4EE:  LDR             R2, [SP,#0x98+var_88]
44C4F0:  ADDS            R1, #1
44C4F2:  CMP             R1, R2
44C4F4:  BNE             loc_44C45E
44C4F6:  CMP             R2, #2
44C4F8:  BLT             loc_44C57C
44C4FA:  LDR             R0, [SP,#0x98+var_8C]
44C4FC:  SUB.W           R9, R2, #1
44C500:  ADD             R4, SP, #0x98+var_80
44C502:  MOVS            R1, #0
44C504:  ADDS            R0, #0x98
44C506:  STR             R0, [SP,#0x98+var_84]
44C508:  MOV             R0, R9
44C50A:  STR             R0, [SP,#0x98+var_94]
44C50C:  MOV             R0, R1
44C50E:  ADDS            R1, R0, #1
44C510:  CMP             R1, R2
44C512:  STR             R1, [SP,#0x98+var_90]
44C514:  BGE             loc_44C568
44C516:  ADD.W           R0, R0, R0,LSL#2
44C51A:  LDR             R1, [SP,#0x98+var_8C]
44C51C:  LDR.W           R11, [SP,#0x98+var_84]
44C520:  MOV             R10, R9
44C522:  ADD.W           R6, R1, R0,LSL#4
44C526:  ADD.W           R8, R6, #0x48 ; 'H'
44C52A:  VLDR            S0, [R8]
44C52E:  VLDR            S2, [R11]
44C532:  VCMPE.F32       S2, S0
44C536:  VMRS            APSR_nzcv, FPSCR
44C53A:  BGE             loc_44C55E
44C53C:  MOV             R0, R4; void *
44C53E:  MOV             R1, R6; void *
44C540:  MOVS            R2, #0x50 ; 'P'; size_t
44C542:  BLX             memcpy_0
44C546:  SUB.W           R5, R11, #0x48 ; 'H'
44C54A:  MOV             R0, R6; void *
44C54C:  MOVS            R2, #0x50 ; 'P'; size_t
44C54E:  MOV             R1, R5; void *
44C550:  BLX             memcpy_0
44C554:  MOV             R0, R5; void *
44C556:  MOV             R1, R4; void *
44C558:  MOVS            R2, #0x50 ; 'P'; size_t
44C55A:  BLX             memcpy_0
44C55E:  SUBS.W          R10, R10, #1
44C562:  ADD.W           R11, R11, #0x50 ; 'P'
44C566:  BNE             loc_44C52A
44C568:  LDR             R0, [SP,#0x98+var_84]
44C56A:  SUB.W           R9, R9, #1
44C56E:  ADDS            R0, #0x50 ; 'P'
44C570:  STR             R0, [SP,#0x98+var_84]
44C572:  LDRD.W          R0, R1, [SP,#0x98+var_94]
44C576:  LDR             R2, [SP,#0x98+var_88]
44C578:  CMP             R1, R0
44C57A:  BNE             loc_44C50C
44C57C:  LDR             R6, [SP,#0x98+var_98]
44C57E:  CMP             R2, #1
44C580:  LDR             R0, [SP,#0x98+var_8C]
44C582:  BLT             loc_44C5B8
44C584:  ADDS            R0, #0x4C ; 'L'
44C586:  MOVS            R5, #0
44C588:  MOVS            R1, #1
44C58A:  LDR.W           R3, [R0,#-0x48]
44C58E:  ADD             R3, R5
44C590:  CMP             R3, R6
44C592:  BGT             loc_44C5A2
44C594:  VLDR            S0, [R0,#-4]
44C598:  VCMPE.F32       S0, S16
44C59C:  VMRS            APSR_nzcv, FPSCR
44C5A0:  BLE             loc_44C5A6
44C5A2:  MOV             R3, R5
44C5A4:  STRB            R1, [R0]
44C5A6:  ADDS            R0, #0x50 ; 'P'
44C5A8:  SUBS            R2, #1
44C5AA:  MOV             R5, R3
44C5AC:  BNE             loc_44C58A
44C5AE:  B               loc_44C5B8
44C5B0:  MOVS            R0, #0
44C5B2:  CMP             R0, R3
44C5B4:  BGT.W           loc_44C438
44C5B8:  ADD             SP, SP, #0x68 ; 'h'
44C5BA:  VPOP            {D8-D9}
44C5BE:  ADD             SP, SP, #4
44C5C0:  POP.W           {R8-R11}
44C5C4:  POP             {R4-R7,PC}
