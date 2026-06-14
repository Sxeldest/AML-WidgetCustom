; =========================================================
; Game Engine Function: sub_161468
; Address            : 0x161468 - 0x16169A
; =========================================================

161468:  PUSH            {R4-R7,LR}
16146A:  ADD             R7, SP, #0xC
16146C:  PUSH.W          {R8}
161470:  SUB             SP, SP, #8
161472:  CMP             R1, #6
161474:  BNE             loc_16147A
161476:  MOVS            R0, #2
161478:  B               loc_161648
16147A:  MOV             R4, R3
16147C:  MOV             R8, R2
16147E:  MOV             R6, R1
161480:  CMP             R3, #0
161482:  BEQ             loc_16155E
161484:  LDR             R0, =(off_23494C - 0x161494)
161486:  MOVW            R2, #:lower16:unk_2CB33D
16148A:  LDR             R1, [R4,#0x5C]
16148C:  MOVT            R2, #:upper16:unk_2CB33D
161490:  ADD             R0, PC; off_23494C
161492:  LDR             R0, [R0]; dword_23DF24
161494:  LDR             R0, [R0]
161496:  SUBS            R1, R1, R0
161498:  STR             R1, [SP,#0x18+var_14]
16149A:  CMP             R1, R2
16149C:  BLE             loc_1614DC
16149E:  MOV             R2, #0x591EA5
1614A6:  CMP             R1, R2
1614A8:  BLE             loc_16150C
1614AA:  MOV             R2, #0x591EA6
1614B2:  CMP             R1, R2
1614B4:  BEQ.W           loc_1615E4
1614B8:  MOV             R2, #0x5E513E
1614C0:  CMP             R1, R2
1614C2:  BEQ.W           loc_1615FC
1614C6:  MOV             R2, #0x991FC0
1614CE:  CMP             R1, R2
1614D0:  BNE             loc_16155E
1614D2:  MOV             R1, #0x40FA0E
1614DA:  B               loc_16160E
1614DC:  MOV             R2, #0x222DB5
1614E4:  CMP             R1, R2
1614E6:  BGT             loc_16152E
1614E8:  MOV             R2, #0x1AF0EC
1614F0:  CMP             R1, R2
1614F2:  BEQ.W           loc_161606
1614F6:  MOV             R2, #0x1C4456
1614FE:  CMP             R1, R2
161500:  BNE             loc_16155E
161502:  ADD.W           R0, R0, #0x1C4000
161506:  ADD.W           R0, R0, #0x510
16150A:  B               loc_161610
16150C:  MOV             R2, #0x2CB33E
161514:  CMP             R1, R2
161516:  BEQ             loc_161614
161518:  MOV             R2, #0x507DB0
161520:  CMP             R1, R2
161522:  BNE             loc_16155E
161524:  MOV             R1, #0x507DB6
16152C:  B               loc_16160E
16152E:  MOV             R2, #0x222DB6
161536:  CMP             R1, R2
161538:  BEQ             loc_16162C
16153A:  MOV             R2, #0x2CA962
161542:  CMP             R1, R2
161544:  BNE             loc_16155E
161546:  LDR             R1, =(aCcustombuildin - 0x161556); "CCustomBuildingDNPipeline::CustomPipeRe"... ...
161548:  MOV             R2, #unk_2CA97C
161550:  ADD             R0, R2
161552:  ADD             R1, PC; "CCustomBuildingDNPipeline::CustomPipeRe"...
161554:  ADD             R3, SP, #0x18+var_14
161556:  STR             R0, [R4,#0x5C]
161558:  MOVS            R0, #3
16155A:  MOVS            R2, #0x4B ; 'K'
16155C:  B               loc_161642
16155E:  LDR             R0, =(unk_23907C - 0x161564)
161560:  ADD             R0, PC; unk_23907C
161562:  BLX             j___emutls_get_address
161566:  MOV             R5, R0
161568:  LDR             R0, =(unk_23904C - 0x16156E)
16156A:  ADD             R0, PC; unk_23904C
16156C:  BLX             j___emutls_get_address
161570:  LDR             R1, [R5]
161572:  CMP             R1, #9
161574:  BHI             loc_161594
161576:  LDR             R0, [R0]
161578:  CMP             R0, #9
16157A:  BGT             loc_161594
16157C:  LDR             R1, =(aAntiCrasherRes - 0x161586); "anti_crasher: restore saved state" ...
16157E:  MOVS            R0, #3; int
161580:  MOVS            R2, #0x21 ; '!'
161582:  ADD             R1, PC; "anti_crasher: restore saved state"
161584:  BL              sub_ED4F8
161588:  BL              sub_161170
16158C:  MOV             R1, R4
16158E:  BL              sub_1618CC
161592:  B               loc_161646
161594:  CMP.W           R8, #0
161598:  BEQ.W           loc_161476
16159C:  CMP             R6, #0xB
16159E:  ITT EQ
1615A0:  LDREQ.W         R0, [R8,#8]
1615A4:  CMPEQ           R0, #2
1615A6:  BEQ             loc_161650
1615A8:  CMP             R4, #0
1615AA:  BEQ.W           loc_161476
1615AE:  LDR             R1, [R4,#0x5C]
1615B0:  MOVS            R0, #2
1615B2:  CMP             R1, #0
1615B4:  BEQ             loc_161648
1615B6:  ANDS.W          R2, R1, #1
1615BA:  BNE             loc_161648
1615BC:  CMP             R6, #4
1615BE:  ITT EQ
1615C0:  LDREQ.W         R0, [R8,#8]
1615C4:  CMPEQ           R0, #1
1615C6:  BEQ             loc_1615E0
1615C8:  CMP             R6, #0xB
1615CA:  ITT EQ
1615CC:  LDREQ.W         R0, [R8,#8]
1615D0:  CMPEQ           R0, #1
1615D2:  BNE.W           loc_161476
1615D6:  LDR.W           R0, [R8,#0xC]
1615DA:  CMP             R1, R0
1615DC:  BEQ.W           loc_161476
1615E0:  ADDS            R0, R1, #2
1615E2:  B               loc_161610
1615E4:  LDR             R1, =(aCvehicleanimgr - 0x1615F6); "CVehicleAnimGroup::ComputeAnimDoorOffse"... ...
1615E6:  MOV             R2, #0x591EE4
1615EE:  ADD             R0, R2
1615F0:  STR             R0, [R4,#0x5C]
1615F2:  ADD             R1, PC; "CVehicleAnimGroup::ComputeAnimDoorOffse"...
1615F4:  ADD             R3, SP, #0x18+var_14
1615F6:  MOVS            R0, #3
1615F8:  MOVS            R2, #0x47 ; 'G'
1615FA:  B               loc_161642
1615FC:  MOV             R1, #0x5E5144
161604:  B               loc_16160E
161606:  MOV             R1, #0x1AF104
16160E:  ADD             R0, R1
161610:  STR             R0, [R4,#0x5C]
161612:  B               loc_161646
161614:  LDR             R1, =(aCcustombuildin_0 - 0x161626); "CCustomBuildingPipeline::CustomPipeRend"... ...
161616:  MOV             R2, #unk_2CB358
16161E:  ADD             R0, R2
161620:  STR             R0, [R4,#0x5C]
161622:  ADD             R1, PC; "CCustomBuildingPipeline::CustomPipeRend"...
161624:  ADD             R3, SP, #0x18+var_14
161626:  MOVS            R0, #3
161628:  MOVS            R2, #0x49 ; 'I'
16162A:  B               loc_161642
16162C:  LDR             R1, =(aRxopengldefaul - 0x16163E); "_rxOpenGLDefaultAllInOneRenderCB non-nu"... ...
16162E:  MOV             R2, #sub_222DCC
161636:  ADD             R0, R2
161638:  STR             R0, [R4,#0x5C]
16163A:  ADD             R1, PC; "_rxOpenGLDefaultAllInOneRenderCB non-nu"...
16163C:  ADD             R3, SP, #0x18+var_14
16163E:  MOVS            R0, #3
161640:  MOVS            R2, #0x3E ; '>'
161642:  BL              sub_1616F8
161646:  MOVS            R0, #0
161648:  ADD             SP, SP, #8
16164A:  POP.W           {R8}
16164E:  POP             {R4-R7,PC}
161650:  LDR.W           R0, [R8,#0xC]; this
161654:  CMP             R0, #0
161656:  BEQ             loc_1615A8
161658:  MOVS            R1, #(dword_0+1); void *
16165A:  BLX             j__ZN4llmo3mem4prot3getEPvj; llmo::mem::prot::get(void *,uint)
16165E:  MOV             R2, R0; unsigned int
161660:  LSLS            R0, R0, #0x1F
161662:  BNE             loc_16166A
161664:  ORR.W           R2, R2, #1
161668:  B               loc_161686
16166A:  LSLS            R0, R2, #0x1E
16166C:  BMI             loc_161674
16166E:  ORR.W           R2, R2, #2
161672:  B               loc_161686
161674:  LSLS            R0, R2, #0x1D
161676:  BMI             loc_16167E
161678:  ORR.W           R2, R2, #4
16167C:  B               loc_161686
16167E:  CBZ             R4, loc_161686
161680:  LDR             R0, [R4,#0x5C]
161682:  ADDS            R0, #2
161684:  STR             R0, [R4,#0x5C]
161686:  LDR.W           R0, [R8,#0xC]; this
16168A:  MOVS            R1, #(dword_0+1); void *
16168C:  BLX             j__ZN4llmo3mem4prot3setEPvji; llmo::mem::prot::set(void *,uint,int)
161690:  CMP             R0, #0
161692:  BNE             loc_161646
161694:  LDR             R0, [R4,#0x5C]
161696:  ADDS            R0, #2
161698:  B               loc_161610
