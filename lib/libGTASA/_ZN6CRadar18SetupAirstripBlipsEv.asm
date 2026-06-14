; =========================================================
; Game Engine Function: _ZN6CRadar18SetupAirstripBlipsEv
; Address            : 0x43F260 - 0x43F58E
; =========================================================

43F260:  PUSH            {R4-R7,LR}
43F262:  ADD             R7, SP, #0xC
43F264:  PUSH.W          {R11}
43F268:  VPUSH           {D8-D14}
43F26C:  SUB             SP, SP, #0x10
43F26E:  MOV.W           R0, #0xFFFFFFFF; int
43F272:  MOVS            R1, #0; bool
43F274:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F278:  CBZ             R0, loc_43F2A0
43F27A:  MOV.W           R0, #0xFFFFFFFF; int
43F27E:  MOVS            R1, #0; bool
43F280:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F284:  LDR.W           R0, [R0,#0x5A4]
43F288:  CMP             R0, #4
43F28A:  BNE             loc_43F2A0
43F28C:  MOV.W           R0, #0xFFFFFFFF; int
43F290:  MOVS            R1, #0; bool
43F292:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F296:  LDRH            R0, [R0,#0x26]
43F298:  MOVW            R1, #0x21B
43F29C:  CMP             R0, R1
43F29E:  BNE             loc_43F320
43F2A0:  LDR             R0, =(_ZN6CRadar13airstrip_blipE_ptr - 0x43F2A6)
43F2A2:  ADD             R0, PC; _ZN6CRadar13airstrip_blipE_ptr
43F2A4:  LDR             R0, [R0]; CRadar::airstrip_blip ...
43F2A6:  LDR             R0, [R0]; CRadar::airstrip_blip
43F2A8:  ADDS            R1, R0, #1
43F2AA:  BEQ             loc_43F30A
43F2AC:  CBZ             R0, loc_43F314
43F2AE:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43F2B8)
43F2B0:  UXTH            R1, R0
43F2B2:  LSLS            R3, R1, #2
43F2B4:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43F2B6:  UXTAH.W         R3, R3, R0
43F2BA:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
43F2BC:  ADD.W           R2, R2, R3,LSL#3
43F2C0:  LDRH            R2, [R2,#0x14]
43F2C2:  CMP.W           R2, R0,LSR#16
43F2C6:  BNE             loc_43F30A
43F2C8:  CMP             R1, #0xF9
43F2CA:  BHI             loc_43F30A
43F2CC:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43F2D6)
43F2CE:  ADD.W           R2, R1, R1,LSL#2
43F2D2:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43F2D4:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43F2D6:  ADD.W           R0, R0, R2,LSL#3
43F2DA:  LDRH.W          R1, [R0,#0x25]!
43F2DE:  ANDS.W          R3, R1, #2
43F2E2:  BEQ             loc_43F30A
43F2E4:  LDR             R3, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43F2F2)
43F2E6:  AND.W           R1, R1, #0xC000
43F2EA:  ORR.W           R1, R1, #1
43F2EE:  ADD             R3, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43F2F0:  LDR             R3, [R3]; CRadar::ms_RadarTrace ...
43F2F2:  ADD.W           R2, R3, R2,LSL#3
43F2F6:  MOVS            R3, #1
43F2F8:  STRH            R3, [R2,#0x1C]
43F2FA:  MOV.W           R3, #0x3F800000
43F2FE:  STR             R3, [R2,#0x18]
43F300:  MOVS            R3, #0
43F302:  STR             R3, [R2,#0x20]
43F304:  STRB.W          R3, [R2,#0x24]
43F308:  STRH            R1, [R0]
43F30A:  LDR             R0, =(_ZN6CRadar13airstrip_blipE_ptr - 0x43F312)
43F30C:  MOVS            R1, #0
43F30E:  ADD             R0, PC; _ZN6CRadar13airstrip_blipE_ptr
43F310:  LDR             R0, [R0]; CRadar::airstrip_blip ...
43F312:  STR             R1, [R0]; CRadar::airstrip_blip
43F314:  ADD             SP, SP, #0x10
43F316:  VPOP            {D8-D14}
43F31A:  POP.W           {R11}
43F31E:  POP             {R4-R7,PC}
43F320:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x43F326)
43F322:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
43F324:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
43F326:  LDRB            R0, [R0]; CTimer::m_FrameCounter
43F328:  LSLS            R0, R0, #0x1D
43F32A:  BMI             loc_43F33A
43F32C:  LDR             R0, =(_ZN6CRadar13airstrip_blipE_ptr - 0x43F332)
43F32E:  ADD             R0, PC; _ZN6CRadar13airstrip_blipE_ptr
43F330:  LDR             R0, [R0]; CRadar::airstrip_blip ...
43F332:  LDR             R1, [R0]; CRadar::airstrip_blip
43F334:  CMP             R1, #0
43F336:  BNE             loc_43F314
43F338:  B               loc_43F502
43F33A:  LDR             R0, =(airstrip_table_ptr - 0x43F344)
43F33C:  MOVS            R5, #0
43F33E:  MOV             R6, SP
43F340:  ADD             R0, PC; airstrip_table_ptr
43F342:  LDR             R0, [R0]; airstrip_table
43F344:  ADDS            R4, R0, #4
43F346:  MOV.W           R0, #0xFFFFFFFF; int
43F34A:  MOVS            R1, #0; bool
43F34C:  VLDR            S16, [R4,#-4]
43F350:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F354:  LDR             R1, [R0,#0x14]
43F356:  VLDR            S18, [R4,#-4]
43F35A:  ADD.W           R2, R1, #0x30 ; '0'
43F35E:  CMP             R1, #0
43F360:  IT EQ
43F362:  ADDEQ           R2, R0, #4
43F364:  MOV.W           R0, #0xFFFFFFFF; int
43F368:  MOVS            R1, #0; bool
43F36A:  VLDR            S20, [R2]
43F36E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F372:  LDR             R1, [R0,#0x14]
43F374:  VLDR            S22, [R4]
43F378:  ADD.W           R2, R1, #0x30 ; '0'
43F37C:  CMP             R1, #0
43F37E:  IT EQ
43F380:  ADDEQ           R2, R0, #4
43F382:  MOV.W           R0, #0xFFFFFFFF; int
43F386:  MOVS            R1, #0; bool
43F388:  VLDR            S24, [R2]
43F38C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F390:  LDR             R1, [R0,#0x14]
43F392:  VLDR            S26, [R4]
43F396:  ADD.W           R2, R1, #0x30 ; '0'
43F39A:  CMP             R1, #0
43F39C:  IT EQ
43F39E:  ADDEQ           R2, R0, #4
43F3A0:  MOV.W           R0, #0xFFFFFFFF; int
43F3A4:  MOVS            R1, #0; bool
43F3A6:  VLDR            S28, [R2,#4]
43F3AA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F3AE:  LDR             R1, [R0,#0x14]
43F3B0:  VSUB.F32        S0, S16, S20
43F3B4:  VSUB.F32        S4, S18, S24
43F3B8:  ADDS            R4, #0x10
43F3BA:  ADD.W           R2, R1, #0x30 ; '0'
43F3BE:  CMP             R1, #0
43F3C0:  IT EQ
43F3C2:  ADDEQ           R2, R0, #4
43F3C4:  VSUB.F32        S6, S22, S28
43F3C8:  VLDR            S2, [R2,#4]
43F3CC:  ADDS            R0, R6, R5
43F3CE:  ADDS            R5, #4
43F3D0:  VSUB.F32        S2, S26, S2
43F3D4:  CMP             R5, #0x10
43F3D6:  VMUL.F32        S0, S0, S4
43F3DA:  VMUL.F32        S2, S6, S2
43F3DE:  VADD.F32        S0, S0, S2
43F3E2:  VSQRT.F32       S0, S0
43F3E6:  VSTR            S0, [R0]
43F3EA:  BNE             loc_43F346
43F3EC:  VLDR            S2, [SP,#0x58+var_58]
43F3F0:  VLDR            S0, [SP,#0x58+var_54]
43F3F4:  VCMPE.F32       S2, S0
43F3F8:  VMRS            APSR_nzcv, FPSCR
43F3FC:  BGE             loc_43F41E
43F3FE:  VLDR            S4, [SP,#0x58+var_50]
43F402:  VCMPE.F32       S2, S4
43F406:  VMRS            APSR_nzcv, FPSCR
43F40A:  BGE             loc_43F41E
43F40C:  VLDR            S4, [SP,#0x58+var_4C]
43F410:  VCMPE.F32       S2, S4
43F414:  VMRS            APSR_nzcv, FPSCR
43F418:  BGE             loc_43F41E
43F41A:  MOVS            R0, #0
43F41C:  B               loc_43F470
43F41E:  VCMPE.F32       S0, S2
43F422:  VLDR            S4, [SP,#0x58+var_50]
43F426:  VMRS            APSR_nzcv, FPSCR
43F42A:  BGE             loc_43F444
43F42C:  VCMPE.F32       S0, S4
43F430:  VMRS            APSR_nzcv, FPSCR
43F434:  ITTT LT
43F436:  VLDRLT          S6, [SP,#0x58+var_4C]
43F43A:  VCMPELT.F32     S0, S6
43F43E:  VMRSLT          APSR_nzcv, FPSCR
43F442:  BLT             loc_43F46A
43F444:  VCMPE.F32       S4, S2
43F448:  VMRS            APSR_nzcv, FPSCR
43F44C:  BGE             loc_43F466
43F44E:  VCMPE.F32       S4, S0
43F452:  VMRS            APSR_nzcv, FPSCR
43F456:  ITTT LT
43F458:  VLDRLT          S0, [SP,#0x58+var_4C]
43F45C:  VCMPELT.F32     S4, S0
43F460:  VMRSLT          APSR_nzcv, FPSCR
43F464:  BLT             loc_43F46E
43F466:  MOVS            R0, #3
43F468:  B               loc_43F470
43F46A:  MOVS            R0, #1
43F46C:  B               loc_43F470
43F46E:  MOVS            R0, #2
43F470:  LDR             R2, =(_ZN6CRadar17airstrip_locationE_ptr - 0x43F47A)
43F472:  UXTB            R3, R0
43F474:  LDR             R1, =(_ZN6CRadar13airstrip_blipE_ptr - 0x43F47C)
43F476:  ADD             R2, PC; _ZN6CRadar17airstrip_locationE_ptr
43F478:  ADD             R1, PC; _ZN6CRadar13airstrip_blipE_ptr
43F47A:  LDR             R2, [R2]; CRadar::airstrip_location ...
43F47C:  LDR             R1, [R1]; CRadar::airstrip_blip ...
43F47E:  LDRB            R2, [R2]; CRadar::airstrip_location
43F480:  LDR             R1, [R1]; CRadar::airstrip_blip
43F482:  CMP             R2, R3
43F484:  IT NE
43F486:  CMPNE           R1, #0
43F488:  BEQ             loc_43F4FC
43F48A:  ADDS            R2, R1, #1
43F48C:  BEQ             loc_43F4EA
43F48E:  LDR             R3, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43F498)
43F490:  UXTH            R2, R1
43F492:  LSLS            R6, R2, #2
43F494:  ADD             R3, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43F496:  UXTAH.W         R6, R6, R1
43F49A:  LDR             R3, [R3]; CRadar::ms_RadarTrace ...
43F49C:  ADD.W           R3, R3, R6,LSL#3
43F4A0:  LDRH            R3, [R3,#0x14]
43F4A2:  CMP.W           R3, R1,LSR#16
43F4A6:  BNE             loc_43F4EA
43F4A8:  CMP             R2, #0xF9
43F4AA:  BHI             loc_43F4EA
43F4AC:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43F4B6)
43F4AE:  ADD.W           R3, R2, R2,LSL#2
43F4B2:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43F4B4:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
43F4B6:  ADD.W           R1, R1, R3,LSL#3
43F4BA:  LDRH.W          R2, [R1,#0x25]!
43F4BE:  ANDS.W          R6, R2, #2
43F4C2:  BEQ             loc_43F4EA
43F4C4:  LDR             R6, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43F4D2)
43F4C6:  AND.W           R2, R2, #0xC000
43F4CA:  ORR.W           R2, R2, #1
43F4CE:  ADD             R6, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43F4D0:  LDR             R6, [R6]; CRadar::ms_RadarTrace ...
43F4D2:  ADD.W           R3, R6, R3,LSL#3
43F4D6:  MOVS            R6, #1
43F4D8:  STRH            R6, [R3,#0x1C]
43F4DA:  MOV.W           R6, #0x3F800000
43F4DE:  STR             R6, [R3,#0x18]
43F4E0:  MOVS            R6, #0
43F4E2:  STR             R6, [R3,#0x20]
43F4E4:  STRB.W          R6, [R3,#0x24]
43F4E8:  STRH            R2, [R1]
43F4EA:  LDR             R1, =(_ZN6CRadar17airstrip_locationE_ptr - 0x43F4F2)
43F4EC:  LDR             R2, =(_ZN6CRadar13airstrip_blipE_ptr - 0x43F4F4)
43F4EE:  ADD             R1, PC; _ZN6CRadar17airstrip_locationE_ptr
43F4F0:  ADD             R2, PC; _ZN6CRadar13airstrip_blipE_ptr
43F4F2:  LDR             R1, [R1]; CRadar::airstrip_location ...
43F4F4:  LDR             R2, [R2]; CRadar::airstrip_blip ...
43F4F6:  STRB            R0, [R1]; CRadar::airstrip_location
43F4F8:  MOVS            R1, #0
43F4FA:  STR             R1, [R2]; CRadar::airstrip_blip
43F4FC:  CMP             R1, #0
43F4FE:  BNE.W           loc_43F314
43F502:  LDR             R0, =(_ZN6CRadar17airstrip_locationE_ptr - 0x43F50A)
43F504:  LDR             R1, =(airstrip_table_ptr - 0x43F50E)
43F506:  ADD             R0, PC; _ZN6CRadar17airstrip_locationE_ptr
43F508:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43F512)
43F50A:  ADD             R1, PC; airstrip_table_ptr
43F50C:  LDR             R0, [R0]; CRadar::airstrip_location ...
43F50E:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43F510:  LDR             R1, [R1]; airstrip_table
43F512:  LDR             R3, [R2]; CRadar::ms_RadarTrace ...
43F514:  LDRB            R0, [R0]; CRadar::airstrip_location
43F516:  LSLS            R2, R0, #4
43F518:  LDR             R2, [R1,R2]
43F51A:  ADD.W           R1, R1, R0,LSL#4
43F51E:  SUB.W           R0, R3, #0x28 ; '('
43F522:  LDR             R3, [R1,#4]
43F524:  MOV.W           R1, #0xFFFFFFFF
43F528:  LDRH.W          R6, [R0,#0x4D]
43F52C:  ADDS            R1, #1
43F52E:  ADDS            R0, #0x28 ; '('
43F530:  CMP             R1, #0xF9
43F532:  BHI             loc_43F53A
43F534:  ANDS.W          R5, R6, #2
43F538:  BNE             loc_43F528
43F53A:  CMP             R1, #0xF9
43F53C:  BHI             loc_43F580
43F53E:  MOV.W           R5, #0x3F800000
43F542:  MOVS            R4, #0
43F544:  STR             R5, [R0,#0x18]
43F546:  MOVS            R5, #8
43F548:  ADD.W           R12, R0, #8
43F54C:  STRD.W          R5, R4, [R0]
43F550:  STM.W           R12, {R2-R4}
43F554:  MOVS            R2, #1
43F556:  AND.W           R6, R6, #0xC000
43F55A:  STRH            R2, [R0,#0x1C]
43F55C:  MOVW            R5, #0x2203
43F560:  STRB.W          R4, [R0,#0x24]
43F564:  ORRS            R6, R5
43F566:  STR             R4, [R0,#0x20]
43F568:  LDRH            R3, [R0,#0x14]
43F56A:  STRH.W          R6, [R0,#0x25]
43F56E:  MOVW            R6, #0xFFFE
43F572:  CMP             R3, R6
43F574:  IT CC
43F576:  ADDCC           R2, R3, #1
43F578:  STRH            R2, [R0,#0x14]
43F57A:  ORR.W           R0, R1, R2,LSL#16
43F57E:  B               loc_43F584
43F580:  MOV.W           R0, #0xFFFFFFFF
43F584:  LDR             R1, =(_ZN6CRadar13airstrip_blipE_ptr - 0x43F58A)
43F586:  ADD             R1, PC; _ZN6CRadar13airstrip_blipE_ptr
43F588:  LDR             R1, [R1]; CRadar::airstrip_blip ...
43F58A:  STR             R0, [R1]; CRadar::airstrip_blip
43F58C:  B               loc_43F314
