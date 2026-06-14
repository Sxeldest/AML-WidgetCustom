; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16LoadSurfaceInfosEv
; Address            : 0x41C4F8 - 0x41C968
; =========================================================

41C4F8:  PUSH            {R4-R7,LR}
41C4FA:  ADD             R7, SP, #0xC
41C4FC:  PUSH.W          {R8-R11}
41C500:  SUB             SP, SP, #4
41C502:  VPUSH           {D8-D9}
41C506:  SUB             SP, SP, #0x1F8
41C508:  MOV             R8, R0
41C50A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x41C516)
41C50E:  ADR.W           R1, aR_14; "r"
41C512:  ADD             R0, PC; __stack_chk_guard_ptr
41C514:  LDR             R0, [R0]; __stack_chk_guard
41C516:  LDR             R0, [R0]
41C518:  STR             R0, [SP,#0x228+var_34]
41C51A:  ADR.W           R0, aDataSurfinfoDa; "data\\surfinfo.dat"
41C51E:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
41C522:  MOV             R9, R0
41C524:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41C528:  CMP             R0, #0
41C52A:  BEQ.W           loc_41C940
41C52E:  VMOV.F32        S16, #10.0
41C532:  LDR.W           R5, =(aSSFFSSDDDDDDDD - 0x41C540); "%s %s %f %f %s %s %d %d %d %d %d %d %d "...
41C536:  ADD             R6, SP, #0x228+var_F4
41C538:  ADD.W           R11, SP, #0x228+var_170
41C53C:  ADD             R5, PC; "%s %s %f %f %s %s %d %d %d %d %d %d %d "...
41C53E:  ADD.W           R10, SP, #0x228+var_16C
41C542:  ADD             R4, SP, #0x228+var_168
41C544:  VLDR            S18, =100.0
41C548:  LDRB            R1, [R0]; unsigned int
41C54A:  CMP             R1, #0x23 ; '#'
41C54C:  IT NE
41C54E:  CMPNE           R1, #0
41C550:  BNE             loc_41C55E
41C552:  MOV             R0, R9; this
41C554:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41C558:  CMP             R0, #0
41C55A:  BNE             loc_41C548
41C55C:  B               loc_41C940
41C55E:  ADD             R1, SP, #0x228+var_150
41C560:  STRD.W          R11, R6, [SP,#0x228+var_1A8]
41C564:  STR             R1, [SP,#0x228+var_1C8]
41C566:  ADD             R1, SP, #0x228+var_154
41C568:  STR             R1, [SP,#0x228+var_1C4]
41C56A:  ADD             R1, SP, #0x228+var_158
41C56C:  STR             R1, [SP,#0x228+var_1C0]
41C56E:  ADD             R1, SP, #0x228+var_15C
41C570:  STR             R1, [SP,#0x228+var_1BC]
41C572:  ADD             R1, SP, #0x228+var_160
41C574:  STR             R1, [SP,#0x228+var_1B8]
41C576:  ADD             R1, SP, #0x228+var_164
41C578:  ADD             R2, SP, #0x228+var_1B4
41C57A:  STM.W           R2, {R1,R4,R10}
41C57E:  ADD             R1, SP, #0x228+var_130
41C580:  ADD.W           R10, SP, #0x228+var_B4
41C584:  STR             R1, [SP,#0x228+var_1E8]
41C586:  ADD             R1, SP, #0x228+var_134
41C588:  STR             R1, [SP,#0x228+var_1E4]
41C58A:  ADD             R1, SP, #0x228+var_138
41C58C:  STR             R1, [SP,#0x228+var_1E0]
41C58E:  ADD             R1, SP, #0x228+var_13C
41C590:  STR             R1, [SP,#0x228+var_1DC]
41C592:  ADD             R1, SP, #0x228+var_140
41C594:  STR             R1, [SP,#0x228+var_1D8]
41C596:  ADD             R1, SP, #0x228+var_144
41C598:  STR             R1, [SP,#0x228+var_1D4]
41C59A:  ADD             R1, SP, #0x228+var_148
41C59C:  STR             R1, [SP,#0x228+var_1D0]
41C59E:  ADD             R1, SP, #0x228+var_14C
41C5A0:  STR             R1, [SP,#0x228+var_1CC]
41C5A2:  ADD             R1, SP, #0x228+var_110
41C5A4:  STR             R1, [SP,#0x228+var_208]
41C5A6:  ADD             R1, SP, #0x228+var_114
41C5A8:  STR             R1, [SP,#0x228+var_204]
41C5AA:  ADD             R1, SP, #0x228+var_118
41C5AC:  STR             R1, [SP,#0x228+var_200]
41C5AE:  ADD             R1, SP, #0x228+var_11C
41C5B0:  STR             R1, [SP,#0x228+var_1FC]
41C5B2:  ADD             R1, SP, #0x228+var_120
41C5B4:  STR             R1, [SP,#0x228+var_1F8]
41C5B6:  ADD             R1, SP, #0x228+var_124
41C5B8:  STR             R1, [SP,#0x228+var_1F4]
41C5BA:  ADD             R1, SP, #0x228+var_128
41C5BC:  STR             R1, [SP,#0x228+var_1F0]
41C5BE:  ADD             R1, SP, #0x228+var_12C
41C5C0:  STR             R1, [SP,#0x228+var_1EC]
41C5C2:  ADD             R1, SP, #0x228+var_F8
41C5C4:  STR             R1, [SP,#0x228+var_228]
41C5C6:  ADD             R1, SP, #0x228+var_FC
41C5C8:  STR             R1, [SP,#0x228+var_224]
41C5CA:  ADD             R1, SP, #0x228+var_100
41C5CC:  STR.W           R10, [SP,#0x228+var_220]
41C5D0:  ADD             R4, SP, #0x228+var_D4
41C5D2:  STR             R4, [SP,#0x228+var_21C]
41C5D4:  ADD             R4, SP, #0x228+var_74
41C5D6:  STR             R1, [SP,#0x228+var_218]
41C5D8:  ADD             R1, SP, #0x228+var_104
41C5DA:  STR             R1, [SP,#0x228+var_214]
41C5DC:  ADD             R1, SP, #0x228+var_108
41C5DE:  STR             R1, [SP,#0x228+var_210]
41C5E0:  ADD             R1, SP, #0x228+var_10C
41C5E2:  STR             R1, [SP,#0x228+var_20C]
41C5E4:  MOV             R1, R5; format
41C5E6:  ADD             R5, SP, #0x228+var_94
41C5E8:  MOV             R2, R4
41C5EA:  MOV             R3, R5
41C5EC:  BLX             sscanf
41C5F0:  MOV             R1, R4; char *
41C5F2:  BLX             j__ZN14SurfaceInfos_c20GetSurfaceIdFromNameEPc; SurfaceInfos_c::GetSurfaceIdFromName(char *)
41C5F6:  LDR.W           R1, =(aRubber - 0x41C602); "RUBBER"
41C5FA:  MOV             R11, R0
41C5FC:  MOV             R0, R5; char *
41C5FE:  ADD             R1, PC; "RUBBER"
41C600:  BLX             strcmp
41C604:  CBZ             R0, loc_41C640
41C606:  ADR             R1, aHard; "HARD"
41C608:  MOV             R0, R5; char *
41C60A:  BLX             strcmp
41C60E:  CBZ             R0, loc_41C652
41C610:  ADR             R1, aRoad; "ROAD"
41C612:  MOV             R0, R5; char *
41C614:  BLX             strcmp
41C618:  CBZ             R0, loc_41C65A
41C61A:  ADR             R1, aLoose; "LOOSE"
41C61C:  MOV             R0, R5; char *
41C61E:  BLX             strcmp
41C622:  CBZ             R0, loc_41C662
41C624:  ADR             R1, aSand; "SAND"
41C626:  MOV             R0, R5; char *
41C628:  BLX             strcmp
41C62C:  CBZ             R0, loc_41C66A
41C62E:  ADR             R1, aWet; "WET"
41C630:  MOV             R0, R5; char *
41C632:  BLX             strcmp
41C636:  CBNZ            R0, loc_41C680
41C638:  ADD.W           R0, R11, R11,LSL#1
41C63C:  MOVS            R2, #5
41C63E:  B               loc_41C670
41C640:  ADD.W           R0, R11, R11,LSL#1
41C644:  ADD.W           R0, R8, R0,LSL#2
41C648:  LDR.W           R1, [R0,#0x92]
41C64C:  BIC.W           R1, R1, #7
41C650:  B               loc_41C67C
41C652:  ADD.W           R0, R11, R11,LSL#1
41C656:  MOVS            R2, #1
41C658:  B               loc_41C670
41C65A:  ADD.W           R0, R11, R11,LSL#1
41C65E:  MOVS            R2, #2
41C660:  B               loc_41C670
41C662:  ADD.W           R0, R11, R11,LSL#1
41C666:  MOVS            R2, #3
41C668:  B               loc_41C670
41C66A:  ADD.W           R0, R11, R11,LSL#1
41C66E:  MOVS            R2, #4
41C670:  ADD.W           R0, R8, R0,LSL#2
41C674:  LDR.W           R1, [R0,#0x92]
41C678:  BFI.W           R1, R2, #0, #3
41C67C:  STR.W           R1, [R0,#0x92]
41C680:  VLDR            S0, [SP,#0x228+var_F8]
41C684:  ADD.W           R0, R11, R11,LSL#1
41C688:  LDR             R1, =(aDefault_2 - 0x41C696); "DEFAULT"
41C68A:  VMUL.F32        S0, S0, S16
41C68E:  ADD.W           R5, R8, R0,LSL#2
41C692:  ADD             R1, PC; "DEFAULT"
41C694:  VCVT.S32.F32    S0, S0
41C698:  VMOV            R0, S0
41C69C:  STRB.W          R0, [R5,#0x90]
41C6A0:  VLDR            S0, [SP,#0x228+var_FC]
41C6A4:  VMUL.F32        S0, S0, S18
41C6A8:  VCVT.S32.F32    S0, S0
41C6AC:  VMOV            R0, S0
41C6B0:  STRB.W          R0, [R5,#0x91]
41C6B4:  MOV             R0, R10; char *
41C6B6:  BLX             strcmp
41C6BA:  ADR.W           R11, aNone_1; "NONE"
41C6BE:  CBZ             R0, loc_41C6DE
41C6C0:  ADR             R1, aSandy; "SANDY"
41C6C2:  MOV             R0, R10; char *
41C6C4:  BLX             strcmp
41C6C8:  ADD             R4, SP, #0x228+var_D4
41C6CA:  CBZ             R0, loc_41C6EA
41C6CC:  ADR             R1, aMuddy; "MUDDY"
41C6CE:  MOV             R0, R10; char *
41C6D0:  BLX             strcmp
41C6D4:  CBNZ            R0, loc_41C6F8
41C6D6:  LDR.W           R0, [R5,#0x92]
41C6DA:  MOVS            R1, #1
41C6DC:  B               loc_41C6F0
41C6DE:  LDR.W           R0, [R5,#0x92]
41C6E2:  ADD             R4, SP, #0x228+var_D4
41C6E4:  BIC.W           R0, R0, #0x18
41C6E8:  B               loc_41C6F4
41C6EA:  LDR.W           R0, [R5,#0x92]
41C6EE:  MOVS            R1, #2
41C6F0:  BFI.W           R0, R1, #3, #2
41C6F4:  STR.W           R0, [R5,#0x92]
41C6F8:  MOV             R0, R4; char *
41C6FA:  MOV             R1, R11; char *
41C6FC:  BLX             strcmp
41C700:  CBZ             R0, loc_41C718
41C702:  ADR             R1, aSparks; "SPARKS"
41C704:  MOV             R0, R4; char *
41C706:  BLX             strcmp
41C70A:  CBNZ            R0, loc_41C724
41C70C:  LDR.W           R0, [R5,#0x92]
41C710:  MOVS            R1, #1
41C712:  BFI.W           R0, R1, #5, #3
41C716:  B               loc_41C720
41C718:  LDR.W           R0, [R5,#0x92]
41C71C:  BIC.W           R0, R0, #0xE0
41C720:  STR.W           R0, [R5,#0x92]
41C724:  MOV             R0, R6; char *
41C726:  MOV             R1, R11; char *
41C728:  BLX             strcmp
41C72C:  CMP             R0, #0
41C72E:  STR.W           R8, [SP,#0x228+var_174]
41C732:  BEQ             loc_41C772
41C734:  ADR             R1, aSparks; "SPARKS"
41C736:  MOV             R0, R6; char *
41C738:  BLX             strcmp
41C73C:  CBZ             R0, loc_41C77E
41C73E:  ADR             R1, aSand; "SAND"
41C740:  MOV             R0, R6; char *
41C742:  BLX             strcmp
41C746:  CBZ             R0, loc_41C786
41C748:  ADR             R1, aWood; "WOOD"
41C74A:  MOV             R0, R6; char *
41C74C:  BLX             strcmp
41C750:  CBZ             R0, loc_41C794
41C752:  ADR             R1, aDust; "DUST"
41C754:  MOV             R0, R6; char *
41C756:  BLX             strcmp
41C75A:  LDR.W           R11, [R5,#0x92]!
41C75E:  CMP             R0, #0
41C760:  LDR             R4, [R5,#4]
41C762:  BNE             loc_41C7A4
41C764:  MOVS            R0, #4
41C766:  BFI.W           R11, R0, #8, #3
41C76A:  STR.W           R11, [R5]
41C76E:  STR             R4, [R5,#4]
41C770:  B               loc_41C7A4
41C772:  LDR.W           R0, [R5,#0x92]!
41C776:  LDR             R4, [R5,#4]
41C778:  BIC.W           R11, R0, #0x700
41C77C:  B               loc_41C7A0
41C77E:  LDR.W           R11, [R5,#0x92]!
41C782:  MOVS            R0, #1
41C784:  B               loc_41C79A
41C786:  LDR.W           R11, [R5,#0x92]!
41C78A:  MOVS            R0, #2
41C78C:  B               loc_41C79A
41C78E:  ALIGN 0x10
41C790:  DCFS 100.0
41C794:  LDR.W           R11, [R5,#0x92]!
41C798:  MOVS            R0, #3
41C79A:  LDR             R4, [R5,#4]
41C79C:  BFI.W           R11, R0, #8, #3
41C7A0:  STR.W           R11, [R5]
41C7A4:  LDR             R1, [SP,#0x228+var_148]
41C7A6:  ADD.W           R10, SP, #0x228+var_118
41C7AA:  LDR             R0, [SP,#0x228+var_150]
41C7AC:  ADD.W           LR, SP, #0x228+var_10C
41C7B0:  LDR             R2, [SP,#0x228+var_14C]
41C7B2:  BFC.W           R11, #0xB, #0x14
41C7B6:  STR             R1, [SP,#0x228+var_178]
41C7B8:  AND.W           R0, R0, #1
41C7BC:  LDR             R1, [SP,#0x228+var_144]
41C7BE:  AND.W           R2, R2, #1
41C7C2:  STR             R1, [SP,#0x228+var_17C]
41C7C4:  LDR             R1, [SP,#0x228+var_140]
41C7C6:  STR             R1, [SP,#0x228+var_180]
41C7C8:  MOVW            R1, #0x3FF
41C7CC:  BIC.W           R3, R4, R1
41C7D0:  LDR             R4, [SP,#0x228+var_154]
41C7D2:  ORRS            R2, R3
41C7D4:  LDR             R3, [SP,#0x228+var_158]
41C7D6:  ORR.W           R0, R2, R0,LSL#1
41C7DA:  AND.W           R2, R4, #1
41C7DE:  LDR             R4, [SP,#0x228+var_15C]
41C7E0:  ORR.W           R0, R0, R2,LSL#2
41C7E4:  AND.W           R2, R3, #1
41C7E8:  LDR             R3, [SP,#0x228+var_160]
41C7EA:  ORR.W           R0, R0, R2,LSL#3
41C7EE:  AND.W           R2, R4, #1
41C7F2:  LDR             R4, [SP,#0x228+var_164]
41C7F4:  ORR.W           R0, R0, R2,LSL#4
41C7F8:  AND.W           R2, R3, #1
41C7FC:  LDR             R3, [SP,#0x228+var_168]
41C7FE:  ORR.W           R0, R0, R2,LSL#5
41C802:  AND.W           R2, R4, #1
41C806:  LDR             R4, [SP,#0x228+var_16C]
41C808:  ORR.W           R0, R0, R2,LSL#6
41C80C:  AND.W           R2, R3, #1
41C810:  LDR             R3, [SP,#0x228+var_170]
41C812:  ORR.W           R0, R0, R2,LSL#7
41C816:  AND.W           R2, R4, #1
41C81A:  LDR             R1, [SP,#0x228+var_13C]
41C81C:  ORR.W           R0, R0, R2,LSL#8
41C820:  AND.W           R2, R3, #1
41C824:  STR             R1, [SP,#0x228+var_184]
41C826:  ORR.W           R6, R0, R2,LSL#9
41C82A:  LDR             R0, [SP,#0x228+var_134]
41C82C:  STR             R0, [SP,#0x228+var_18C]
41C82E:  LDR             R0, [SP,#0x228+var_130]
41C830:  STR             R0, [SP,#0x228+var_190]
41C832:  LDR             R0, [SP,#0x228+var_12C]
41C834:  STR             R0, [SP,#0x228+var_198]
41C836:  LDR             R0, [SP,#0x228+var_128]
41C838:  LDR             R1, [SP,#0x228+var_138]
41C83A:  STR             R0, [SP,#0x228+var_19C]
41C83C:  LDR             R0, [SP,#0x228+var_124]
41C83E:  STR             R5, [SP,#0x228+var_194]
41C840:  STR             R1, [SP,#0x228+var_188]
41C842:  STR             R0, [SP,#0x228+var_1A0]
41C844:  LDRD.W          R4, R3, [SP,#0x228+var_120]
41C848:  LDM.W           R10, {R2,R8,R10}
41C84C:  LDM.W           LR, {R0,R1,R12,LR}
41C850:  STR             R6, [R5,#4]
41C852:  MOV.W           R5, #0x1000
41C856:  AND.W           R6, R5, R12,LSL#12
41C85A:  MOV.W           R5, #0x800
41C85E:  AND.W           R5, R5, LR,LSL#11
41C862:  ORR.W           R5, R5, R11
41C866:  ORRS            R6, R5
41C868:  MOV.W           R5, #0x2000
41C86C:  AND.W           R1, R5, R1,LSL#13
41C870:  ORRS            R1, R6
41C872:  MOV.W           R6, #0x4000
41C876:  AND.W           R0, R6, R0,LSL#14
41C87A:  ORRS            R0, R1
41C87C:  MOV.W           R1, R10,LSL#15
41C880:  UXTH            R1, R1
41C882:  ORRS            R0, R1
41C884:  MOV.W           R1, #0x10000
41C888:  AND.W           R1, R1, R8,LSL#16
41C88C:  ORRS            R0, R1
41C88E:  MOV.W           R1, #0x20000
41C892:  AND.W           R1, R1, R2,LSL#17
41C896:  LDR             R2, [SP,#0x228+var_1A0]
41C898:  ORRS            R0, R1
41C89A:  MOV.W           R1, #0x40000
41C89E:  AND.W           R1, R1, R3,LSL#18
41C8A2:  ORRS            R0, R1
41C8A4:  MOV.W           R1, #0x80000
41C8A8:  AND.W           R1, R1, R4,LSL#19
41C8AC:  ORRS            R0, R1
41C8AE:  MOV.W           R1, #0x100000
41C8B2:  AND.W           R1, R1, R2,LSL#20
41C8B6:  LDR             R2, [SP,#0x228+var_19C]
41C8B8:  ORRS            R0, R1
41C8BA:  MOV.W           R1, #0x200000
41C8BE:  AND.W           R1, R1, R2,LSL#21
41C8C2:  LDR             R2, [SP,#0x228+var_198]
41C8C4:  ORRS            R0, R1
41C8C6:  MOV.W           R1, #0x400000
41C8CA:  AND.W           R1, R1, R2,LSL#22
41C8CE:  LDR             R2, [SP,#0x228+var_190]
41C8D0:  ORRS            R0, R1
41C8D2:  MOV.W           R1, #0x1800000
41C8D6:  AND.W           R1, R1, R2,LSL#23
41C8DA:  LDR             R2, [SP,#0x228+var_18C]
41C8DC:  ORRS            R0, R1
41C8DE:  MOV.W           R1, #0x6000000
41C8E2:  AND.W           R1, R1, R2,LSL#25
41C8E6:  LDR             R2, [SP,#0x228+var_188]
41C8E8:  ORRS            R0, R1
41C8EA:  MOV.W           R1, #0x8000000
41C8EE:  AND.W           R1, R1, R2,LSL#27
41C8F2:  LDR             R2, [SP,#0x228+var_184]
41C8F4:  ORRS            R0, R1
41C8F6:  MOV.W           R1, #0x10000000
41C8FA:  AND.W           R1, R1, R2,LSL#28
41C8FE:  LDR             R2, [SP,#0x228+var_180]
41C900:  ORRS            R0, R1
41C902:  MOV.W           R1, #0x20000000
41C906:  AND.W           R1, R1, R2,LSL#29
41C90A:  ORRS            R0, R1
41C90C:  LDR             R1, [SP,#0x228+var_17C]
41C90E:  ORR.W           R0, R0, R1,LSL#30
41C912:  LDR             R1, [SP,#0x228+var_178]
41C914:  BIC.W           R0, R0, #0x80000000
41C918:  ORR.W           R0, R0, R1,LSL#31
41C91C:  LDR             R1, [SP,#0x228+var_194]; unsigned int
41C91E:  STR             R0, [R1]
41C920:  MOV             R0, R9; this
41C922:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41C926:  LDR             R5, =(aSSFFSSDDDDDDDD - 0x41C936); "%s %s %f %f %s %s %d %d %d %d %d %d %d "...
41C928:  ADD             R4, SP, #0x228+var_170
41C92A:  LDR.W           R8, [SP,#0x228+var_174]
41C92E:  ADD             R6, SP, #0x228+var_F4
41C930:  MOV             R11, R4
41C932:  ADD             R5, PC; "%s %s %f %f %s %s %d %d %d %d %d %d %d "...
41C934:  ADD.W           R10, SP, #0x228+var_16C
41C938:  ADD             R4, SP, #0x228+var_168
41C93A:  CMP             R0, #0
41C93C:  BNE.W           loc_41C548
41C940:  MOV             R0, R9; this
41C942:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
41C946:  LDR             R0, =(__stack_chk_guard_ptr - 0x41C94E)
41C948:  LDR             R1, [SP,#0x228+var_34]
41C94A:  ADD             R0, PC; __stack_chk_guard_ptr
41C94C:  LDR             R0, [R0]; __stack_chk_guard
41C94E:  LDR             R0, [R0]
41C950:  SUBS            R0, R0, R1
41C952:  ITTTT EQ
41C954:  ADDEQ           SP, SP, #0x1F8
41C956:  VPOPEQ          {D8-D9}
41C95A:  ADDEQ           SP, SP, #4
41C95C:  POPEQ.W         {R8-R11}
41C960:  IT EQ
41C962:  POPEQ           {R4-R7,PC}
41C964:  BLX             __stack_chk_fail
