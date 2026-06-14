; =========================================================
; Game Engine Function: _ZN7CGarage20IsAnyCarBlockingDoorEv
; Address            : 0x312454 - 0x3125A4
; =========================================================

312454:  PUSH            {R4-R7,LR}
312456:  ADD             R7, SP, #0xC
312458:  PUSH.W          {R8-R11}
31245C:  SUB             SP, SP, #0xC
31245E:  MOV             R4, R0
312460:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x312466)
312462:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
312464:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
312466:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool
31246A:  LDR.W           R5, [R9,#8]
31246E:  CMP             R5, #0
312470:  BEQ.W           loc_312596
312474:  LDR.W           R0, [R9,#4]
312478:  SUBS            R5, #1
31247A:  LDRSB           R0, [R0,R5]
31247C:  CMP             R0, #0
31247E:  BLT.W           loc_312590
312482:  MOVW            R1, #0xA2C
312486:  LDR.W           R0, [R9]
31248A:  MLA.W           R6, R5, R1, R0
31248E:  CMP             R6, #0
312490:  BEQ             loc_312590
312492:  MOV             R0, R4; this
312494:  MOV             R1, R6; CEntity *
312496:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
31249A:  CMP             R0, #0
31249C:  BEQ             loc_312590
31249E:  MOV             R0, R6; this
3124A0:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3124A4:  LDR.W           R11, [R0,#0x2C]
3124A8:  LDRSH.W         R0, [R11]
3124AC:  CMP             R0, #1
3124AE:  BLT             loc_312590
3124B0:  LDR.W           R0, [R11,#8]
3124B4:  ADDS            R6, #0x14
3124B6:  MOV.W           R10, #0
3124BA:  MOV.W           R8, #0
3124BE:  LDR             R1, [R6]
3124C0:  ADD.W           R2, R0, R10
3124C4:  MOV             R0, SP
3124C6:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3124CA:  LDR.W           R0, [R11,#8]
3124CE:  VLDR            S4, [R4,#8]
3124D2:  ADD.W           R1, R0, R10
3124D6:  VLDR            S2, [SP,#0x28+var_20]
3124DA:  VLDR            S0, [R1,#0xC]
3124DE:  VSUB.F32        S4, S4, S0
3124E2:  VCMPE.F32       S4, S2
3124E6:  VMRS            APSR_nzcv, FPSCR
3124EA:  BGT             loc_31259A
3124EC:  VLDR            S4, [R4,#0x1C]
3124F0:  VADD.F32        S4, S0, S4
3124F4:  VCMPE.F32       S4, S2
3124F8:  VMRS            APSR_nzcv, FPSCR
3124FC:  ITTTT GE
3124FE:  VLDRGE          S2, [SP,#0x28+var_28]
312502:  VLDRGE          S4, [SP,#0x28+var_24]
312506:  VLDRGE          S6, [R4]
31250A:  VLDRGE          S8, [R4,#4]
31250E:  ITTTT GE
312510:  VLDRGE          S10, [R4,#0xC]
312514:  VLDRGE          S12, [R4,#0x10]
312518:  VSUBGE.F32      S4, S4, S8
31251C:  VSUBGE.F32      S2, S2, S6
312520:  ITTTT GE
312522:  VMULGE.F32      S8, S4, S12
312526:  VMULGE.F32      S10, S2, S10
31252A:  VNEGGE.F32      S6, S0
31252E:  VADDGE.F32      S8, S10, S8
312532:  ITT GE
312534:  VCMPEGE.F32     S8, S6
312538:  VMRSGE          APSR_nzcv, FPSCR
31253C:  BLT             loc_31259A
31253E:  VLDR            S10, [R4,#0x20]
312542:  VADD.F32        S10, S0, S10
312546:  VCMPE.F32       S8, S10
31254A:  VMRS            APSR_nzcv, FPSCR
31254E:  BGT             loc_31259A
312550:  VLDR            S8, [R4,#0x14]
312554:  VLDR            S10, [R4,#0x18]
312558:  VMUL.F32        S2, S2, S8
31255C:  VMUL.F32        S4, S4, S10
312560:  VADD.F32        S2, S2, S4
312564:  VCMPE.F32       S2, S6
312568:  VMRS            APSR_nzcv, FPSCR
31256C:  BLT             loc_31259A
31256E:  VLDR            S4, [R4,#0x24]
312572:  VADD.F32        S0, S0, S4
312576:  VCMPE.F32       S2, S0
31257A:  VMRS            APSR_nzcv, FPSCR
31257E:  BGT             loc_31259A
312580:  LDRSH.W         R1, [R11]
312584:  ADD.W           R8, R8, #1
312588:  ADD.W           R10, R10, #0x14
31258C:  CMP             R8, R1
31258E:  BLT             loc_3124BE
312590:  CMP             R5, #0
312592:  BNE.W           loc_312474
312596:  MOVS            R0, #0
312598:  B               loc_31259C
31259A:  MOVS            R0, #1
31259C:  ADD             SP, SP, #0xC
31259E:  POP.W           {R8-R11}
3125A2:  POP             {R4-R7,PC}
