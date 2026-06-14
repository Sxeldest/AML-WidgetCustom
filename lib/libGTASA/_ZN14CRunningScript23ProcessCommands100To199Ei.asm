; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands100To199Ei
; Address            : 0x32C398 - 0x32D754
; =========================================================

32C398:  PUSH            {R4-R7,LR}
32C39A:  ADD             R7, SP, #0xC
32C39C:  PUSH.W          {R8-R11}
32C3A0:  SUB             SP, SP, #4
32C3A2:  VPUSH           {D8-D10}
32C3A6:  SUB             SP, SP, #0x30; float
32C3A8:  MOV             R4, R0
32C3AA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x32C3B2)
32C3AE:  ADD             R0, PC; __stack_chk_guard_ptr
32C3B0:  LDR             R0, [R0]; __stack_chk_guard
32C3B2:  LDR             R0, [R0]
32C3B4:  STR             R0, [SP,#0x68+var_3C]
32C3B6:  SUB.W           R0, R1, #0x64 ; 'd'; switch 97 cases
32C3BA:  CMP             R0, #0x60 ; '`'
32C3BC:  BHI.W           def_32C3C2; jumptable 0032C3C2 default case, cases 156-159,162,172,178-185,189
32C3C0:  MOVS            R6, #0
32C3C2:  TBH.W           [PC,R0,LSL#1]; switch jump
32C3C6:  DCW 0xDD; jump table for switch statement
32C3C8:  DCW 0xED
32C3CA:  DCW 0xDD
32C3CC:  DCW 0xED
32C3CE:  DCW 0x6F
32C3D0:  DCW 0x7F
32C3D2:  DCW 0x6F
32C3D4:  DCW 0x7F
32C3D6:  DCW 0x6F
32C3D8:  DCW 0x7F
32C3DA:  DCW 0x6F
32C3DC:  DCW 0x7F
32C3DE:  DCW 0xCB
32C3E0:  DCW 0x93
32C3E2:  DCW 0x1F5
32C3E4:  DCW 0x93
32C3E6:  DCW 0xCB
32C3E8:  DCW 0x93
32C3EA:  DCW 0xCB
32C3EC:  DCW 0x93
32C3EE:  DCW 0x209
32C3F0:  DCW 0x21A
32C3F2:  DCW 0x233
32C3F4:  DCW 0x241
32C3F6:  DCW 0x24F
32C3F8:  DCW 0x25D
32C3FA:  DCW 0x279
32C3FC:  DCW 0x28A
32C3FE:  DCW 0x2A3
32C400:  DCW 0x2B1
32C402:  DCW 0x113
32C404:  DCW 0x2BF
32C406:  DCW 0x61
32C408:  DCW 0x61
32C40A:  DCW 0x61
32C40C:  DCW 0x61
32C40E:  DCW 0x61
32C410:  DCW 0x61
32C412:  DCW 0x61
32C414:  DCW 0x61
32C416:  DCW 0xA7
32C418:  DCW 0xB9
32C41A:  DCW 0xA7
32C41C:  DCW 0xB9
32C41E:  DCW 0xA7
32C420:  DCW 0xB9
32C422:  DCW 0xA7
32C424:  DCW 0xB9
32C426:  DCW 0xFA
32C428:  DCW 0xFA
32C42A:  DCW 0x106
32C42C:  DCW 0x106
32C42E:  DCW 0x2DB
32C430:  DCW 0x2F5
32C432:  DCW 0x121
32C434:  DCW 0x300
32C436:  DCW 0x31E
32C438:  DCW 0x31E
32C43A:  DCW 0x31E
32C43C:  DCW 0x31E
32C43E:  DCW 0x321
32C440:  DCW 0x346
32C442:  DCW 0x31E
32C444:  DCW 0x364
32C446:  DCW 0x39E
32C448:  DCW 0x3E1
32C44A:  DCW 0x423
32C44C:  DCW 0x4A2
32C44E:  DCW 0x4C3
32C450:  DCW 0x140
32C452:  DCW 0x4E1
32C454:  DCW 0x4FF
32C456:  DCW 0x31E
32C458:  DCW 0x51E
32C45A:  DCW 0x53C
32C45C:  DCW 0x555
32C45E:  DCW 0x160
32C460:  DCW 0x58D
32C462:  DCW 0x31E
32C464:  DCW 0x31E
32C466:  DCW 0x31E
32C468:  DCW 0x31E
32C46A:  DCW 0x31E
32C46C:  DCW 0x31E
32C46E:  DCW 0x31E
32C470:  DCW 0x31E
32C472:  DCW 0x5AB
32C474:  DCW 0x17F
32C476:  DCW 0x5E9
32C478:  DCW 0x31E
32C47A:  DCW 0x1D2
32C47C:  DCW 0x623
32C47E:  DCW 0x1D8
32C480:  DCW 0x1E8
32C482:  DCW 0x636
32C484:  DCW 0x834
32C486:  DCW 0x834
32C488:  MOV             R0, R4; jumptable 0032C3C2 cases 132-139
32C48A:  MOVS            R1, #0; unsigned __int8
32C48C:  MOVS            R6, #0
32C48E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C492:  MOV             R5, R0
32C494:  MOV             R0, R4; this
32C496:  MOVS            R1, #0; unsigned __int8
32C498:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C49C:  LDR             R0, [R0]
32C49E:  STR             R0, [R5]
32C4A0:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C4A4:  MOV             R0, R4; jumptable 0032C3C2 cases 104,106,108,110
32C4A6:  MOVS            R1, #0; unsigned __int8
32C4A8:  MOVS            R6, #0
32C4AA:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C4AE:  MOV             R5, R0
32C4B0:  MOV             R0, R4; this
32C4B2:  MOVS            R1, #0; unsigned __int8
32C4B4:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C4B8:  LDR             R0, [R0]
32C4BA:  LDR             R1, [R5]
32C4BC:  MULS            R0, R1
32C4BE:  STR             R0, [R5]
32C4C0:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C4C4:  MOV             R0, R4; jumptable 0032C3C2 cases 105,107,109,111
32C4C6:  MOVS            R1, #0; unsigned __int8
32C4C8:  MOVS            R6, #0
32C4CA:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C4CE:  MOV             R5, R0
32C4D0:  MOV             R0, R4; this
32C4D2:  MOVS            R1, #0; unsigned __int8
32C4D4:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C4D8:  VLDR            S0, [R5]
32C4DC:  VLDR            S2, [R0]
32C4E0:  VMUL.F32        S0, S2, S0
32C4E4:  VSTR            S0, [R5]
32C4E8:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C4EC:  MOV             R0, R4; jumptable 0032C3C2 cases 113,115,117,119
32C4EE:  MOVS            R1, #0; unsigned __int8
32C4F0:  MOVS            R6, #0
32C4F2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C4F6:  MOV             R5, R0
32C4F8:  MOV             R0, R4; this
32C4FA:  MOVS            R1, #0; unsigned __int8
32C4FC:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C500:  VLDR            S0, [R0]
32C504:  VLDR            S2, [R5]
32C508:  VDIV.F32        S0, S2, S0
32C50C:  VSTR            S0, [R5]
32C510:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C514:  MOV             R0, R4; jumptable 0032C3C2 cases 140,142,144,146
32C516:  MOVS            R1, #0; unsigned __int8
32C518:  MOVS            R6, #0
32C51A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C51E:  MOV             R5, R0
32C520:  MOV             R0, R4; this
32C522:  MOVS            R1, #0; unsigned __int8
32C524:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C528:  VLDR            S0, [R0]
32C52C:  VCVT.S32.F32    S0, S0
32C530:  VSTR            S0, [R5]
32C534:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C538:  MOV             R0, R4; jumptable 0032C3C2 cases 141,143,145,147
32C53A:  MOVS            R1, #0; unsigned __int8
32C53C:  MOVS            R6, #0
32C53E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C542:  MOV             R5, R0
32C544:  MOV             R0, R4; this
32C546:  MOVS            R1, #0; unsigned __int8
32C548:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C54C:  VLDR            S0, [R0]
32C550:  VCVT.F32.S32    S0, S0
32C554:  VSTR            S0, [R5]
32C558:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C55C:  MOV             R0, R4; jumptable 0032C3C2 cases 112,116,118
32C55E:  MOVS            R1, #0; unsigned __int8
32C560:  MOVS            R6, #0
32C562:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C566:  MOV             R5, R0
32C568:  MOV             R0, R4; this
32C56A:  MOVS            R1, #0; unsigned __int8
32C56C:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C570:  LDR             R2, [R5]
32C572:  LDR             R1, [R0]
32C574:  MOV             R0, R2
32C576:  BLX             __aeabi_idiv
32C57A:  STR             R0, [R5]
32C57C:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C580:  MOV             R0, R4; jumptable 0032C3C2 cases 100,102
32C582:  MOVS            R1, #0; unsigned __int8
32C584:  MOVS            R6, #0
32C586:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C58A:  MOV             R5, R0
32C58C:  MOV             R0, R4; this
32C58E:  MOVS            R1, #0; unsigned __int8
32C590:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C594:  LDR             R0, [R0]
32C596:  LDR             R1, [R5]
32C598:  SUBS            R0, R1, R0
32C59A:  STR             R0, [R5]
32C59C:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C5A0:  MOV             R0, R4; jumptable 0032C3C2 cases 101,103
32C5A2:  MOVS            R1, #0; unsigned __int8
32C5A4:  MOVS            R6, #0
32C5A6:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C5AA:  MOV             R5, R0
32C5AC:  MOV             R0, R4; this
32C5AE:  MOVS            R1, #0; unsigned __int8
32C5B0:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C5B4:  VLDR            S0, [R0]
32C5B8:  B               loc_32C96C
32C5BA:  MOV             R0, R4; jumptable 0032C3C2 cases 148,149
32C5BC:  MOVS            R1, #0; unsigned __int8
32C5BE:  MOVS            R6, #0
32C5C0:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C5C4:  LDR             R1, [R0]
32C5C6:  CMP             R1, #0
32C5C8:  IT MI
32C5CA:  NEGMI           R1, R1
32C5CC:  STR             R1, [R0]
32C5CE:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C5D2:  MOV             R0, R4; jumptable 0032C3C2 cases 150,151
32C5D4:  MOVS            R1, #0; unsigned __int8
32C5D6:  MOVS            R6, #0
32C5D8:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C5DC:  VLDR            S0, [R0]
32C5E0:  VABS.F32        S0, S0
32C5E4:  VSTR            S0, [R0]
32C5E8:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C5EC:  MOV             R0, R4; jumptable 0032C3C2 case 130
32C5EE:  MOVS            R1, #0; unsigned __int8
32C5F0:  MOVS            R6, #0
32C5F2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C5F6:  MOV             R5, R0
32C5F8:  MOV             R0, R4; this
32C5FA:  MOVS            R1, #0; unsigned __int8
32C5FC:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C600:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C608)
32C604:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C606:  B               loc_32C95E
32C608:  MOV             R0, R4; jumptable 0032C3C2 case 154
32C60A:  MOVS            R1, #5; __int16
32C60C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C610:  LDR.W           R0, =(ScriptParams_ptr - 0x32C618)
32C614:  ADD             R0, PC; ScriptParams_ptr
32C616:  LDR             R1, [R0]; ScriptParams
32C618:  LDRD.W          R0, R1, [R1]
32C61C:  SUB.W           R1, R1, #0x118; switch 8 cases
32C620:  CMP             R1, #7
32C622:  BHI.W           def_32C626; jumptable 0032C626 default case
32C626:  TBH.W           [PC,R1,LSL#1]; switch jump
32C62A:  DCW 8; jump table for switch statement
32C62C:  DCW 8
32C62E:  DCW 8
32C630:  DCW 0x78C
32C632:  DCW 8
32C634:  DCW 0x790
32C636:  DCW 0x794
32C638:  DCW 0x798
32C63A:  CMP             R0, #6; jumptable 0032C626 cases 280-282,284
32C63C:  BNE.W           loc_32D586
32C640:  MOVS            R0, #0
32C642:  B.W             loc_32D560
32C646:  MOV             R0, R4; jumptable 0032C3C2 case 169
32C648:  MOVS            R1, #1; __int16
32C64A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C64E:  LDR.W           R0, =(ScriptParams_ptr - 0x32C660)
32C652:  MOVW            R2, #0xA2C
32C656:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32C662)
32C65A:  MOVS            R6, #0
32C65C:  ADD             R0, PC; ScriptParams_ptr
32C65E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32C660:  LDR             R0, [R0]; ScriptParams
32C662:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
32C664:  LDR             R0, [R0]
32C666:  LDR             R1, [R1]; CPools::ms_pVehiclePool
32C668:  LSRS            R0, R0, #8
32C66A:  LDR             R1, [R1]
32C66C:  MLA.W           R0, R0, R2, R1
32C670:  LDRB.W          R1, [R0,#0x3BE]
32C674:  SUBS            R1, #0x39 ; '9'
32C676:  UXTB            R1, R1
32C678:  CMP             R1, #2
32C67A:  ITT CS
32C67C:  ADDWCS          R0, R0, #0x3BE
32C680:  STRBCS          R6, [R0]
32C682:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C686:  MOV             R0, R4; jumptable 0032C3C2 case 176
32C688:  MOVS            R1, #6; __int16
32C68A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C68E:  LDR.W           R0, =(ScriptParams_ptr - 0x32C696)
32C692:  ADD             R0, PC; ScriptParams_ptr
32C694:  LDR             R0, [R0]; ScriptParams
32C696:  LDR             R1, [R0]
32C698:  CMP             R1, #0
32C69A:  BLT.W           loc_32D09A
32C69E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32C6AA)
32C6A2:  UXTB            R3, R1
32C6A4:  LSRS            R1, R1, #8
32C6A6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32C6A8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32C6AA:  LDR             R0, [R0]; CPools::ms_pVehiclePool
32C6AC:  LDR             R2, [R0,#4]
32C6AE:  LDRB            R2, [R2,R1]
32C6B0:  CMP             R2, R3
32C6B2:  BNE.W           loc_32D09A
32C6B6:  MOVW            R2, #0xA2C
32C6BA:  LDR             R0, [R0]
32C6BC:  MLA.W           R0, R1, R2, R0
32C6C0:  B.W             loc_32D09C
32C6C4:  SUB.W           R6, R7, #-var_46; jumptable 0032C3C2 case 187
32C6C8:  MOV             R0, R4; this
32C6CA:  MOVS            R2, #8; unsigned __int8
32C6CC:  MOV             R1, R6; char *
32C6CE:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
32C6D2:  LDR.W           R0, =(TheText_ptr - 0x32C6DC)
32C6D6:  MOV             R1, R6; CKeyGen *
32C6D8:  ADD             R0, PC; TheText_ptr
32C6DA:  LDR             R0, [R0]; TheText ; this
32C6DC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
32C6E0:  MOV             R5, R0
32C6E2:  MOV             R0, R4; this
32C6E4:  MOVS            R1, #2; __int16
32C6E6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C6EA:  ADR.W           R1, aDes942; "DES9_42"
32C6EE:  MOV             R0, R6; char *
32C6F0:  BLX             strcmp
32C6F4:  CMP             R0, #0
32C6F6:  BEQ.W           loc_32D454
32C6FA:  SUB.W           R0, R7, #-var_46; char *
32C6FE:  ADR.W           R1, aWuz1Da; "WUZ1_DA"
32C702:  BLX             strcmp
32C706:  CBZ             R0, loc_32C716
32C708:  SUB.W           R0, R7, #-var_46; char *
32C70C:  ADR.W           R1, aGar210; "GAR2_10"
32C710:  BLX             strcmp
32C714:  CBNZ            R0, loc_32C722
32C716:  MOVS            R0, #0; this
32C718:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
32C71C:  MOVS            R1, #1
32C71E:  STRB.W          R1, [R0,#0x124]
32C722:  CBZ             R5, loc_32C738
32C724:  LDRH            R0, [R5]
32C726:  CMP             R0, #0x7E ; '~'
32C728:  BNE             loc_32C738
32C72A:  LDRH            R0, [R5,#2]
32C72C:  CMP             R0, #0x7A ; 'z'
32C72E:  ITT EQ
32C730:  LDRHEQ          R0, [R5,#4]
32C732:  CMPEQ           R0, #0x7E ; '~'
32C734:  BEQ.W           loc_32D51C
32C738:  LDR.W           R0, =(ScriptParams_ptr - 0x32C744)
32C73C:  LDR.W           R1, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x32C746)
32C740:  ADD             R0, PC; ScriptParams_ptr
32C742:  ADD             R1, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
32C744:  LDR             R0, [R0]; ScriptParams
32C746:  LDR             R1, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs ...
32C748:  LDRH            R3, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
32C74A:  LDR             R2, [R0]; unsigned __int16 *
32C74C:  LDRB            R0, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs
32C74E:  MOV             R1, R5; char *
32C750:  CMP             R0, #0
32C752:  IT NE
32C754:  MOVNE           R0, #1
32C756:  STR             R0, [SP,#0x68+var_68]; unsigned __int16
32C758:  SUB.W           R0, R7, #-var_46; this
32C75C:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
32C760:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x32C768)
32C764:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
32C766:  B.W             loc_32D002
32C76A:  MOVS            R0, #0; jumptable 0032C3C2 case 190
32C76C:  MOVS            R6, #0
32C76E:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
32C772:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C776:  MOV             R0, R4; jumptable 0032C3C2 case 192
32C778:  MOVS            R1, #2; __int16
32C77A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C77E:  LDR.W           R0, =(ScriptParams_ptr - 0x32C78A)
32C782:  MOVS            R2, #0; unsigned __int8
32C784:  MOVS            R6, #0
32C786:  ADD             R0, PC; ScriptParams_ptr
32C788:  LDR             R1, [R0]; ScriptParams
32C78A:  LDRB            R0, [R1]; this
32C78C:  LDRB            R1, [R1,#(dword_81A90C - 0x81A908)]; unsigned __int8
32C78E:  BLX             j__ZN6CClock12SetGameClockEhhh; CClock::SetGameClock(uchar,uchar,uchar)
32C792:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C796:  MOV             R0, R4; jumptable 0032C3C2 case 193
32C798:  MOVS            R1, #2; __int16
32C79A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C79E:  LDR.W           R0, =(ScriptParams_ptr - 0x32C7A6)
32C7A2:  ADD             R0, PC; ScriptParams_ptr
32C7A4:  LDR             R5, [R0]; ScriptParams
32C7A6:  LDRB            R0, [R5]; this
32C7A8:  LDRB            R1, [R5,#(dword_81A90C - 0x81A908)]; unsigned __int8
32C7AA:  BLX             j__ZN6CClock24GetGameClockMinutesUntilEhh; CClock::GetGameClockMinutesUntil(uchar,uchar)
32C7AE:  B               loc_32CC02
32C7B0:  MOV             R0, R4; jumptable 0032C3C2 case 114
32C7B2:  MOVS            R1, #0; unsigned __int8
32C7B4:  MOVS            R6, #0
32C7B6:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C7BA:  MOV             R5, R0
32C7BC:  MOV             R0, R4; this
32C7BE:  MOVS            R1, #0; unsigned __int8
32C7C0:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C7C4:  LDR             R1, [R0]
32C7C6:  CMP             R1, #0
32C7C8:  BEQ.W           loc_32D42E; jumptable 0032C3C2 cases 195,196
32C7CC:  LDR             R0, [R5]
32C7CE:  BLX             __aeabi_idiv
32C7D2:  STR             R0, [R5]
32C7D4:  B.W             loc_32D42C
32C7D8:  MOV             R0, R4; jumptable 0032C3C2 case 120
32C7DA:  MOVS            R1, #0; unsigned __int8
32C7DC:  MOVS            R6, #0
32C7DE:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C7E2:  MOV             R5, R0
32C7E4:  MOV             R0, R4; this
32C7E6:  MOVS            R1, #1; __int16
32C7E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C7EC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C7F8)
32C7F0:  LDR.W           R1, =(ScriptParams_ptr - 0x32C7FA)
32C7F4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C7F6:  ADD             R1, PC; ScriptParams_ptr
32C7F8:  B               loc_32C81A
32C7FA:  MOV             R0, R4; jumptable 0032C3C2 case 121
32C7FC:  MOVS            R1, #0; unsigned __int8
32C7FE:  MOVS            R6, #0
32C800:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C804:  MOV             R5, R0
32C806:  MOV             R0, R4; this
32C808:  MOVS            R1, #1; __int16
32C80A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C80E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C81A)
32C812:  LDR.W           R1, =(ScriptParams_ptr - 0x32C81C)
32C816:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C818:  ADD             R1, PC; ScriptParams_ptr
32C81A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
32C81C:  LDR             R1, [R1]; ScriptParams
32C81E:  VLDR            S0, [R0]
32C822:  VLDR            S2, [R1]
32C826:  VMUL.F32        S0, S2, S0
32C82A:  B               loc_32C8A8
32C82C:  MOV             R0, R4; jumptable 0032C3C2 case 122
32C82E:  MOVS            R1, #0; unsigned __int8
32C830:  MOVS            R6, #0
32C832:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C836:  MOV             R5, R0
32C838:  MOV             R0, R4; this
32C83A:  MOVS            R1, #0; unsigned __int8
32C83C:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C840:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C848)
32C844:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C846:  B               loc_32C89A
32C848:  MOV             R0, R4; jumptable 0032C3C2 case 123
32C84A:  MOVS            R1, #0; unsigned __int8
32C84C:  MOVS            R6, #0
32C84E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C852:  MOV             R5, R0
32C854:  MOV             R0, R4; this
32C856:  MOVS            R1, #0; unsigned __int8
32C858:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C85C:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C864)
32C860:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C862:  B               loc_32C89A
32C864:  MOV             R0, R4; jumptable 0032C3C2 case 124
32C866:  MOVS            R1, #0; unsigned __int8
32C868:  MOVS            R6, #0
32C86A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C86E:  MOV             R5, R0
32C870:  MOV             R0, R4; this
32C872:  MOVS            R1, #0; unsigned __int8
32C874:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C878:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C880)
32C87C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C87E:  B               loc_32C89A
32C880:  MOV             R0, R4; jumptable 0032C3C2 case 125
32C882:  MOVS            R1, #0; unsigned __int8
32C884:  MOVS            R6, #0
32C886:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C88A:  MOV             R5, R0
32C88C:  MOV             R0, R4; this
32C88E:  MOVS            R1, #0; unsigned __int8
32C890:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C894:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C89C)
32C898:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C89A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
32C89C:  VLDR            S0, [R0]
32C8A0:  VLDR            S2, [R1]
32C8A4:  VMUL.F32        S0, S0, S2
32C8A8:  VLDR            S2, [R5]
32C8AC:  VADD.F32        S0, S2, S0
32C8B0:  VSTR            S0, [R5]
32C8B4:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C8B8:  MOV             R0, R4; jumptable 0032C3C2 case 126
32C8BA:  MOVS            R1, #0; unsigned __int8
32C8BC:  MOVS            R6, #0
32C8BE:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C8C2:  MOV             R5, R0
32C8C4:  MOV             R0, R4; this
32C8C6:  MOVS            R1, #1; __int16
32C8C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C8CC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C8D8)
32C8D0:  LDR.W           R1, =(ScriptParams_ptr - 0x32C8DA)
32C8D4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C8D6:  ADD             R1, PC; ScriptParams_ptr
32C8D8:  B               loc_32C8FA
32C8DA:  MOV             R0, R4; jumptable 0032C3C2 case 127
32C8DC:  MOVS            R1, #0; unsigned __int8
32C8DE:  MOVS            R6, #0
32C8E0:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C8E4:  MOV             R5, R0
32C8E6:  MOV             R0, R4; this
32C8E8:  MOVS            R1, #1; __int16
32C8EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C8EE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C8FA)
32C8F2:  LDR.W           R1, =(ScriptParams_ptr - 0x32C8FC)
32C8F6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C8F8:  ADD             R1, PC; ScriptParams_ptr
32C8FA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
32C8FC:  LDR             R1, [R1]; ScriptParams
32C8FE:  VLDR            S0, [R0]
32C902:  VLDR            S2, [R1]
32C906:  VMUL.F32        S0, S2, S0
32C90A:  B               loc_32C96C
32C90C:  MOV             R0, R4; jumptable 0032C3C2 case 128
32C90E:  MOVS            R1, #0; unsigned __int8
32C910:  MOVS            R6, #0
32C912:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C916:  MOV             R5, R0
32C918:  MOV             R0, R4; this
32C91A:  MOVS            R1, #0; unsigned __int8
32C91C:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C920:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C928)
32C924:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C926:  B               loc_32C95E
32C928:  MOV             R0, R4; jumptable 0032C3C2 case 129
32C92A:  MOVS            R1, #0; unsigned __int8
32C92C:  MOVS            R6, #0
32C92E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C932:  MOV             R5, R0
32C934:  MOV             R0, R4; this
32C936:  MOVS            R1, #0; unsigned __int8
32C938:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C93C:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C944)
32C940:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C942:  B               loc_32C95E
32C944:  MOV             R0, R4; jumptable 0032C3C2 case 131
32C946:  MOVS            R1, #0; unsigned __int8
32C948:  MOVS            R6, #0
32C94A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C94E:  MOV             R5, R0
32C950:  MOV             R0, R4; this
32C952:  MOVS            R1, #0; unsigned __int8
32C954:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C958:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x32C960)
32C95C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
32C95E:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
32C960:  VLDR            S0, [R0]
32C964:  VLDR            S2, [R1]
32C968:  VMUL.F32        S0, S0, S2
32C96C:  VLDR            S2, [R5]
32C970:  VSUB.F32        S0, S2, S0
32C974:  VSTR            S0, [R5]
32C978:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C97C:  MOV             R0, R4; jumptable 0032C3C2 case 152
32C97E:  MOVS            R1, #0; unsigned __int8
32C980:  MOVS            R6, #0
32C982:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C986:  MOV             R4, R0
32C988:  BLX             rand
32C98C:  BLX             rand
32C990:  BLX             rand
32C994:  BLX             rand
32C998:  VMOV            S0, R0
32C99C:  VLDR            S2, =0.000015259
32C9A0:  VCVT.F32.S32    S0, S0
32C9A4:  VMUL.F32        S0, S0, S2
32C9A8:  VSTR            S0, [R4]
32C9AC:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C9B0:  MOV             R0, R4; jumptable 0032C3C2 case 153
32C9B2:  MOVS            R1, #0; unsigned __int8
32C9B4:  MOVS            R6, #0
32C9B6:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32C9BA:  MOV             R4, R0
32C9BC:  BLX             rand
32C9C0:  STR             R0, [R4]
32C9C2:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32C9C6:  MOV             R0, R4; jumptable 0032C3C2 case 155
32C9C8:  MOVS            R1, #1; __int16
32C9CA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C9CE:  LDR.W           R0, =(ScriptParams_ptr - 0x32C9D6)
32C9D2:  ADD             R0, PC; ScriptParams_ptr
32C9D4:  LDR             R0, [R0]; ScriptParams
32C9D6:  LDR             R1, [R0]; CPed *
32C9D8:  CMP             R1, #0
32C9DA:  BLT.W           loc_32D0EA
32C9DE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32C9EA)
32C9E2:  UXTB            R3, R1
32C9E4:  LSRS            R1, R1, #8
32C9E6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
32C9E8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
32C9EA:  LDR             R0, [R0]; CPools::ms_pPedPool
32C9EC:  LDR             R2, [R0,#4]
32C9EE:  LDRB            R2, [R2,R1]
32C9F0:  CMP             R2, R3
32C9F2:  BNE.W           loc_32D0EA
32C9F6:  MOVW            R2, #0x7CC
32C9FA:  LDR             R0, [R0]
32C9FC:  MLA.W           R0, R1, R2, R0
32CA00:  B               loc_32D0EC
32CA02:  MOVS            R6, #0xFF; jumptable 0032C3C2 default case, cases 156-159,162,172,178-185,189
32CA04:  B.W             loc_32D42E; jumptable 0032C3C2 cases 195,196
32CA08:  MOV             R0, R4; jumptable 0032C3C2 case 160
32CA0A:  MOVS            R1, #1; __int16
32CA0C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CA10:  LDR.W           R0, =(ScriptParams_ptr - 0x32CA20)
32CA14:  MOVW            R2, #0x7CC
32CA18:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32CA22)
32CA1C:  ADD             R0, PC; ScriptParams_ptr
32CA1E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
32CA20:  LDR             R0, [R0]; ScriptParams
32CA22:  LDR             R1, [R1]; CPools::ms_pPedPool ...
32CA24:  LDR             R0, [R0]
32CA26:  LDR             R1, [R1]; CPools::ms_pPedPool
32CA28:  LSRS            R0, R0, #8
32CA2A:  LDR             R1, [R1]
32CA2C:  MLA.W           R0, R0, R2, R1
32CA30:  LDRB.W          R1, [R0,#0x485]
32CA34:  LSLS            R1, R1, #0x1F
32CA36:  ITT NE
32CA38:  LDRNE.W         R1, [R0,#0x590]
32CA3C:  CMPNE           R1, #0
32CA3E:  BNE.W           loc_32D3FE
32CA42:  LDR             R1, [R0,#0x14]
32CA44:  ADD.W           R2, R1, #0x30 ; '0'
32CA48:  CMP             R1, #0
32CA4A:  IT EQ
32CA4C:  ADDEQ           R2, R0, #4
32CA4E:  B.W             loc_32D40A
32CA52:  MOV             R0, R4; jumptable 0032C3C2 case 161
32CA54:  MOVS            R1, #4; __int16
32CA56:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CA5A:  LDR.W           R0, =(ScriptParams_ptr - 0x32CA62)
32CA5E:  ADD             R0, PC; ScriptParams_ptr
32CA60:  LDR             R0, [R0]; ScriptParams
32CA62:  LDR             R1, [R0]
32CA64:  CMP             R1, #0
32CA66:  BLT.W           loc_32D1A2
32CA6A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32CA76)
32CA6E:  UXTB            R3, R1
32CA70:  LSRS            R1, R1, #8
32CA72:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
32CA74:  LDR             R0, [R0]; CPools::ms_pPedPool ...
32CA76:  LDR             R0, [R0]; CPools::ms_pPedPool
32CA78:  LDR             R2, [R0,#4]
32CA7A:  LDRB            R2, [R2,R1]
32CA7C:  CMP             R2, R3
32CA7E:  BNE.W           loc_32D1A2
32CA82:  MOVW            R2, #0x7CC
32CA86:  LDR             R0, [R0]
32CA88:  MLA.W           R1, R1, R2, R0
32CA8C:  B               loc_32D1A4
32CA8E:  MOV             R0, R4; jumptable 0032C3C2 case 163
32CA90:  MOVS            R1, #6; __int16
32CA92:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CA96:  LDR.W           R0, =(ScriptParams_ptr - 0x32CAA6)
32CA9A:  MOVW            R2, #0x7CC
32CA9E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32CAA8)
32CAA2:  ADD             R0, PC; ScriptParams_ptr
32CAA4:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
32CAA6:  LDR             R0, [R0]; ScriptParams
32CAA8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
32CAAA:  LDR             R0, [R0]
32CAAC:  LDR             R1, [R1]; CPools::ms_pPedPool
32CAAE:  LSRS            R0, R0, #8
32CAB0:  LDR             R1, [R1]
32CAB2:  MLA.W           R0, R0, R2, R1
32CAB6:  LDRB.W          R1, [R0,#0x485]
32CABA:  LSLS            R1, R1, #0x1F
32CABC:  LDR.W           R1, =(ScriptParams_ptr - 0x32CACC)
32CAC0:  ITE NE
32CAC2:  LDRNE.W         R6, [R0,#0x590]
32CAC6:  MOVEQ           R6, #0
32CAC8:  ADD             R1, PC; ScriptParams_ptr
32CACA:  CMP             R6, #0
32CACC:  LDR             R5, [R1]; ScriptParams
32CACE:  ADD.W           R3, R5, #4
32CAD2:  LDM             R3, {R1-R3}; float
32CAD4:  VLDR            S0, [R5,#0x10]
32CAD8:  VSTR            S0, [SP,#0x68+var_68]
32CADC:  IT NE
32CADE:  MOVNE           R0, R6; this
32CAE0:  BLX             j__ZNK10CPlaceable12IsWithinAreaEffff; CPlaceable::IsWithinArea(float,float,float,float)
32CAE4:  MOV             R1, R0
32CAE6:  CMP             R1, #0
32CAE8:  IT NE
32CAEA:  MOVNE           R1, #1; unsigned __int8
32CAEC:  MOV             R0, R4; this
32CAEE:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
32CAF2:  LDR             R0, [R5,#(dword_81A91C - 0x81A908)]
32CAF4:  CMP             R0, #0
32CAF6:  BEQ.W           loc_32D42C
32CAFA:  LDR.W           R0, =(ScriptParams_ptr - 0x32CB02)
32CAFE:  ADD             R0, PC; ScriptParams_ptr
32CB00:  B               loc_32D0D0
32CB02:  MOV             R0, R4; jumptable 0032C3C2 case 164
32CB04:  MOVS            R1, #8; __int16
32CB06:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CB0A:  LDR.W           R0, =(ScriptParams_ptr - 0x32CB1A)
32CB0E:  MOVW            R2, #0x7CC
32CB12:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32CB1C)
32CB16:  ADD             R0, PC; ScriptParams_ptr
32CB18:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
32CB1A:  LDR             R0, [R0]; ScriptParams
32CB1C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
32CB1E:  LDR             R0, [R0]
32CB20:  LDR             R1, [R1]; CPools::ms_pPedPool
32CB22:  LSRS            R0, R0, #8
32CB24:  LDR             R1, [R1]
32CB26:  MLA.W           R0, R0, R2, R1
32CB2A:  LDRB.W          R1, [R0,#0x485]
32CB2E:  LSLS            R1, R1, #0x1F
32CB30:  LDR.W           R1, =(ScriptParams_ptr - 0x32CB40)
32CB34:  ITE NE
32CB36:  LDRNE.W         R6, [R0,#0x590]
32CB3A:  MOVEQ           R6, #0
32CB3C:  ADD             R1, PC; ScriptParams_ptr
32CB3E:  CMP             R6, #0
32CB40:  LDR             R5, [R1]; ScriptParams
32CB42:  ADD.W           R3, R5, #4
32CB46:  VLDR            S0, [R5,#0x10]
32CB4A:  VLDR            S2, [R5,#0x14]
32CB4E:  VLDR            S4, [R5,#0x18]
32CB52:  LDM             R3, {R1-R3}; float
32CB54:  VSTR            S0, [SP,#0x68+var_68]
32CB58:  VSTR            S2, [SP,#0x68+var_64]
32CB5C:  VSTR            S4, [SP,#0x68+var_60]
32CB60:  IT NE
32CB62:  MOVNE           R0, R6; this
32CB64:  BLX             j__ZNK10CPlaceable12IsWithinAreaEffffff; CPlaceable::IsWithinArea(float,float,float,float,float,float)
32CB68:  MOV             R1, R0
32CB6A:  CMP             R1, #0
32CB6C:  IT NE
32CB6E:  MOVNE           R1, #1; unsigned __int8
32CB70:  MOV             R0, R4; this
32CB72:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
32CB76:  LDR             R0, [R5,#(dword_81A924 - 0x81A908)]
32CB78:  CMP             R0, #0
32CB7A:  BEQ.W           loc_32D42C
32CB7E:  LDR.W           R0, =(ScriptParams_ptr - 0x32CB86)
32CB82:  ADD             R0, PC; ScriptParams_ptr
32CB84:  B.W             loc_32D3CC
32CB88:  MOV             R0, R4; jumptable 0032C3C2 case 165
32CB8A:  MOVS            R1, #4; __int16
32CB8C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CB90:  LDR.W           R0, =(SaveGameStateType_ptr - 0x32CB98)
32CB94:  ADD             R0, PC; SaveGameStateType_ptr
32CB96:  LDR             R0, [R0]; SaveGameStateType
32CB98:  LDR             R0, [R0]
32CB9A:  CMP             R0, #5
32CB9C:  BNE             loc_32CBCA
32CB9E:  LDR.W           R0, =(ScriptParams_ptr - 0x32CBAA)
32CBA2:  LDR.W           R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x32CBAC)
32CBA6:  ADD             R0, PC; ScriptParams_ptr
32CBA8:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
32CBAA:  LDR             R0, [R0]; ScriptParams
32CBAC:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
32CBAE:  LDR             R0, [R0]; this
32CBB0:  ADD.W           R2, R0, R0,LSL#2; int
32CBB4:  ADD.W           R1, R1, R2,LSL#2
32CBB8:  LDRB            R1, [R1,#0x10]
32CBBA:  CMP             R1, #1
32CBBC:  BEQ             loc_32CBCA
32CBBE:  MOVS            R1, #8; int
32CBC0:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
32CBC4:  MOVS            R0, #0; this
32CBC6:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
32CBCA:  LDR.W           R0, =(ScriptParams_ptr - 0x32CBD6)
32CBCE:  LDRB.W          R6, [R4,#0xE6]
32CBD2:  ADD             R0, PC; ScriptParams_ptr
32CBD4:  LDR             R5, [R0]; ScriptParams
32CBD6:  LDM.W           R5, {R0-R3}
32CBDA:  STR             R6, [SP,#0x68+var_68]
32CBDC:  BLX             j__ZN8CCarCtrl18CreateCarForScriptEi7CVectorh; CCarCtrl::CreateCarForScript(int,CVector,uchar)
32CBE0:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CBE8)
32CBE4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CBE6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
32CBE8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
32CBEA:  LDRD.W          R2, R1, [R1]
32CBEE:  SUBS            R0, R0, R2
32CBF0:  MOV             R2, #0xBFE6D523
32CBF8:  ASRS            R0, R0, #2
32CBFA:  MULS            R0, R2
32CBFC:  LDRB            R1, [R1,R0]
32CBFE:  ORR.W           R0, R1, R0,LSL#8
32CC02:  STR             R0, [R5]
32CC04:  MOV             R0, R4
32CC06:  MOVS            R1, #1
32CC08:  B.W             loc_32D428
32CC0C:  MOV             R0, R4; jumptable 0032C3C2 case 166
32CC0E:  MOVS            R1, #1; __int16
32CC10:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CC14:  LDR.W           R0, =(ScriptParams_ptr - 0x32CC1C)
32CC18:  ADD             R0, PC; ScriptParams_ptr
32CC1A:  LDR             R0, [R0]; ScriptParams
32CC1C:  LDR             R0, [R0]
32CC1E:  CMP             R0, #0
32CC20:  BLT             loc_32CC58
32CC22:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CC2E)
32CC26:  LSRS            R2, R0, #8
32CC28:  UXTB            R0, R0
32CC2A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CC2C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
32CC2E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
32CC30:  LDR             R3, [R1,#4]
32CC32:  LDRB            R3, [R3,R2]
32CC34:  CMP             R3, R0
32CC36:  BNE             loc_32CC58
32CC38:  MOVW            R0, #0xA2C
32CC3C:  LDR             R1, [R1]; CEntity *
32CC3E:  MLA.W           R5, R2, R0, R1
32CC42:  CBZ             R5, loc_32CC58
32CC44:  MOV             R0, R5; this
32CC46:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
32CC4A:  MOV             R0, R5; this
32CC4C:  BLX             j__ZN6CWorld31RemoveReferencesToDeletedObjectEP7CEntity; CWorld::RemoveReferencesToDeletedObject(CEntity *)
32CC50:  LDR             R0, [R5]
32CC52:  LDR             R1, [R0,#4]
32CC54:  MOV             R0, R5
32CC56:  BLX             R1
32CC58:  LDRB.W          R0, [R4,#0xE6]
32CC5C:  MOV.W           R8, #0
32CC60:  CMP             R0, #0
32CC62:  BEQ.W           loc_32D42C
32CC66:  LDR.W           R0, =(ScriptParams_ptr - 0x32CC76)
32CC6A:  MOV.W           R10, #0
32CC6E:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32CC78)
32CC72:  ADD             R0, PC; ScriptParams_ptr
32CC74:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
32CC76:  LDR             R0, [R0]; ScriptParams
32CC78:  LDR             R1, [R1]; CTheScripts::MissionCleanUp ...
32CC7A:  LDR             R5, [R0]
32CC7C:  ADDS            R4, R1, #4
32CC7E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CC86)
32CC82:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CC84:  MOV.W           R9, R5,LSR#8
32CC88:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32CC8A:  STR             R0, [SP,#0x68+var_5C]
32CC8C:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32CC94)
32CC90:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
32CC92:  LDR.W           R11, [R0]; CTheScripts::MissionCleanUp ...
32CC96:  LDRB.W          R0, [R4,#-4]; CTheScripts::MissionCleanUp
32CC9A:  CMP             R0, #1
32CC9C:  ITT EQ
32CC9E:  LDREQ           R0, [R4]
32CCA0:  CMPEQ           R0, R5
32CCA2:  BNE             loc_32CCF8
32CCA4:  CMP             R5, #0
32CCA6:  BLT             loc_32CCE6
32CCA8:  LDR             R0, [SP,#0x68+var_5C]
32CCAA:  UXTB            R2, R5
32CCAC:  LDR             R0, [R0]
32CCAE:  LDR             R1, [R0,#4]
32CCB0:  LDRB.W          R1, [R1,R9]
32CCB4:  CMP             R1, R2
32CCB6:  BNE             loc_32CCE6
32CCB8:  LDR             R0, [R0]
32CCBA:  MOVW            R1, #0xA2C
32CCBE:  MLA.W           R0, R9, R1, R0; this
32CCC2:  CMP             R0, #0
32CCC4:  ITTT NE
32CCC6:  MOVNE           R1, R0
32CCC8:  LDRNE.W         R2, [R1,#0x1C]!
32CCCC:  TSTNE.W         R2, #0x40000
32CCD0:  BEQ             loc_32CCE6
32CCD2:  LDR             R3, [R1,#4]
32CCD4:  TST.W           R2, #4
32CCD8:  BIC.W           R6, R2, #0x40000
32CCDC:  STRD.W          R6, R3, [R1]
32CCE0:  IT EQ
32CCE2:  BLXEQ           j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
32CCE6:  STRB.W          R8, [R4,#-4]; CTheScripts::MissionCleanUp
32CCEA:  STR.W           R8, [R4]
32CCEE:  LDRB.W          R0, [R11,#(byte_811624 - 0x8113CC)]
32CCF2:  SUBS            R0, #1
32CCF4:  STRB.W          R0, [R11,#(byte_811624 - 0x8113CC)]
32CCF8:  ADD.W           R10, R10, #1
32CCFC:  ADDS            R4, #8
32CCFE:  MOVS            R6, #0
32CD00:  UXTH.W          R0, R10
32CD04:  CMP             R0, #0x4B ; 'K'
32CD06:  BCC             loc_32CC96
32CD08:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32CD0A:  MOV             R0, R4; jumptable 0032C3C2 case 167
32CD0C:  MOVS            R1, #4; __int16
32CD0E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CD12:  LDR.W           R0, =(ScriptParams_ptr - 0x32CD1A)
32CD16:  ADD             R0, PC; ScriptParams_ptr
32CD18:  LDR             R0, [R0]; ScriptParams
32CD1A:  LDR             R1, [R0]
32CD1C:  CMP             R1, #0
32CD1E:  BLT.W           loc_32D1C4
32CD22:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CD2E)
32CD26:  UXTB            R3, R1
32CD28:  LSRS            R1, R1, #8
32CD2A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CD2C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32CD2E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
32CD30:  LDR             R2, [R0,#4]
32CD32:  LDRB            R2, [R2,R1]
32CD34:  CMP             R2, R3
32CD36:  BNE.W           loc_32D1C4
32CD3A:  MOVW            R2, #0xA2C
32CD3E:  LDR             R0, [R0]
32CD40:  MLA.W           R4, R1, R2, R0
32CD44:  B               loc_32D1C6
32CD46:  ALIGN 4
32CD48:  DCFS 0.000015259
32CD4C:  MOV             R0, R4; jumptable 0032C3C2 case 168
32CD4E:  MOVS            R1, #1; __int16
32CD50:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CD54:  LDR.W           R0, =(ScriptParams_ptr - 0x32CD5C)
32CD58:  ADD             R0, PC; ScriptParams_ptr
32CD5A:  LDR             R0, [R0]; ScriptParams
32CD5C:  LDR             R1, [R0]; CVehicle *
32CD5E:  CMP             R1, #0
32CD60:  BLT.W           loc_32D2C8
32CD64:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CD70)
32CD68:  UXTB            R3, R1
32CD6A:  LSRS            R1, R1, #8
32CD6C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CD6E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32CD70:  LDR             R0, [R0]; CPools::ms_pVehiclePool
32CD72:  LDR             R2, [R0,#4]
32CD74:  LDRB            R2, [R2,R1]
32CD76:  CMP             R2, R3
32CD78:  BNE.W           loc_32D2C8
32CD7C:  MOVW            R2, #0xA2C
32CD80:  LDR             R0, [R0]
32CD82:  MLA.W           R4, R1, R2, R0
32CD86:  B               loc_32D2CA
32CD88:  MOV             R0, R4; jumptable 0032C3C2 case 170
32CD8A:  MOVS            R1, #1; __int16
32CD8C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CD90:  LDR.W           R0, =(ScriptParams_ptr - 0x32CD98)
32CD94:  ADD             R0, PC; ScriptParams_ptr
32CD96:  LDR             R0, [R0]; ScriptParams
32CD98:  LDR             R1, [R0]
32CD9A:  CMP             R1, #0
32CD9C:  BLT.W           loc_32D300
32CDA0:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CDAC)
32CDA4:  UXTB            R3, R1
32CDA6:  LSRS            R1, R1, #8
32CDA8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CDAA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32CDAC:  LDR             R0, [R0]; CPools::ms_pVehiclePool
32CDAE:  LDR             R2, [R0,#4]
32CDB0:  LDRB            R2, [R2,R1]
32CDB2:  CMP             R2, R3
32CDB4:  BNE.W           loc_32D300
32CDB8:  MOVW            R2, #0xA2C
32CDBC:  LDR             R0, [R0]
32CDBE:  MLA.W           R0, R1, R2, R0
32CDC2:  B               loc_32D302
32CDC4:  MOV             R0, R4; jumptable 0032C3C2 case 171
32CDC6:  MOVS            R1, #4; __int16
32CDC8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CDCC:  LDR.W           R0, =(ScriptParams_ptr - 0x32CDD6)
32CDD0:  MOVS            R6, #0
32CDD2:  ADD             R0, PC; ScriptParams_ptr
32CDD4:  LDR             R0, [R0]; ScriptParams
32CDD6:  LDR             R0, [R0]
32CDD8:  CMP             R0, #0
32CDDA:  BLT.W           loc_32D32E
32CDDE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CDEA)
32CDE2:  UXTB            R3, R0
32CDE4:  LSRS            R0, R0, #8
32CDE6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CDE8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
32CDEA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
32CDEC:  LDR             R2, [R1,#4]
32CDEE:  LDRB            R2, [R2,R0]
32CDF0:  CMP             R2, R3
32CDF2:  BNE.W           loc_32D32E
32CDF6:  MOVW            R2, #0xA2C
32CDFA:  LDR             R1, [R1]
32CDFC:  MLA.W           R0, R0, R2, R1
32CE00:  B               loc_32D330
32CE02:  MOV             R0, R4; jumptable 0032C3C2 case 173
32CE04:  MOVS            R1, #2; __int16
32CE06:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CE0A:  LDR.W           R0, =(ScriptParams_ptr - 0x32CE12)
32CE0E:  ADD             R0, PC; ScriptParams_ptr
32CE10:  LDR             R0, [R0]; ScriptParams
32CE12:  LDR             R1, [R0]
32CE14:  CMP             R1, #0
32CE16:  BLT.W           loc_32D348
32CE1A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CE26)
32CE1E:  UXTB            R3, R1
32CE20:  LSRS            R1, R1, #8
32CE22:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CE24:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32CE26:  LDR             R0, [R0]; CPools::ms_pVehiclePool
32CE28:  LDR             R2, [R0,#4]
32CE2A:  LDRB            R2, [R2,R1]
32CE2C:  CMP             R2, R3
32CE2E:  BNE.W           loc_32D348
32CE32:  MOVW            R2, #0xA2C
32CE36:  LDR             R0, [R0]
32CE38:  MLA.W           R0, R1, R2, R0
32CE3C:  B               loc_32D34A
32CE3E:  MOV             R0, R4; jumptable 0032C3C2 case 174
32CE40:  MOVS            R1, #2; __int16
32CE42:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CE46:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CE58)
32CE4A:  MOVW            R3, #0xA2C
32CE4E:  LDR.W           R0, =(ScriptParams_ptr - 0x32CE5A)
32CE52:  MOVS            R6, #0
32CE54:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CE56:  ADD             R0, PC; ScriptParams_ptr
32CE58:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
32CE5A:  LDR             R0, [R0]; ScriptParams
32CE5C:  LDRD.W          R2, R0, [R0]
32CE60:  LDR             R1, [R1]; CPools::ms_pVehiclePool
32CE62:  LSRS            R2, R2, #8
32CE64:  LDR             R1, [R1]
32CE66:  MLA.W           R1, R2, R3, R1
32CE6A:  STRB.W          R0, [R1,#0x3BD]
32CE6E:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32CE70:  MOV             R0, R4; jumptable 0032C3C2 case 175
32CE72:  MOVS            R1, #2; __int16
32CE74:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CE78:  LDR.W           R0, =(ScriptParams_ptr - 0x32CE88)
32CE7C:  MOVW            R2, #0xA2C
32CE80:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CE8A)
32CE84:  ADD             R0, PC; ScriptParams_ptr
32CE86:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CE88:  LDR             R0, [R0]; ScriptParams
32CE8A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
32CE8C:  LDR             R0, [R0]
32CE8E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
32CE90:  LSRS            R0, R0, #8
32CE92:  LDR             R1, [R1]
32CE94:  MLA.W           R0, R0, R2, R1
32CE98:  LDRB.W          R1, [R0,#0x3BE]
32CE9C:  SUBS            R1, #0x39 ; '9'
32CE9E:  UXTB            R1, R1
32CEA0:  CMP             R1, #2
32CEA2:  BCC             loc_32CEB4
32CEA4:  LDR.W           R2, =(ScriptParams_ptr - 0x32CEB0)
32CEA8:  ADDW            R1, R0, #0x3BE
32CEAC:  ADD             R2, PC; ScriptParams_ptr
32CEAE:  LDR             R2, [R2]; ScriptParams
32CEB0:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
32CEB2:  STRB            R2, [R1]
32CEB4:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32CEC2)
32CEB8:  MOVS            R6, #0
32CEBA:  LDR.W           R3, [R0,#0x430]
32CEBE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
32CEC0:  LDR.W           R2, [R0,#0x42C]
32CEC4:  TST.W           R3, #0x200
32CEC8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
32CECA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
32CECC:  STR.W           R1, [R0,#0x3B0]
32CED0:  BIC.W           R1, R2, #0x10
32CED4:  IT EQ
32CED6:  ORREQ.W         R1, R2, #0x10
32CEDA:  STR.W           R1, [R0,#0x42C]
32CEDE:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32CEE0:  MOV             R0, R4; jumptable 0032C3C2 case 177
32CEE2:  MOVS            R1, #8; __int16
32CEE4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CEE8:  LDR.W           R0, =(ScriptParams_ptr - 0x32CEF0)
32CEEC:  ADD             R0, PC; ScriptParams_ptr
32CEEE:  LDR             R0, [R0]; ScriptParams
32CEF0:  LDR             R1, [R0]
32CEF2:  CMP             R1, #0
32CEF4:  BLT.W           loc_32D38A
32CEF8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32CF04)
32CEFC:  UXTB            R3, R1
32CEFE:  LSRS            R1, R1, #8
32CF00:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32CF02:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32CF04:  LDR             R0, [R0]; CPools::ms_pVehiclePool
32CF06:  LDR             R2, [R0,#4]
32CF08:  LDRB            R2, [R2,R1]
32CF0A:  CMP             R2, R3
32CF0C:  BNE.W           loc_32D38A
32CF10:  MOVW            R2, #0xA2C
32CF14:  LDR             R0, [R0]
32CF16:  MLA.W           R0, R1, R2, R0
32CF1A:  B               loc_32D38C
32CF1C:  SUB.W           R6, R7, #-var_46; jumptable 0032C3C2 case 186
32CF20:  MOV             R0, R4; this
32CF22:  MOVS            R2, #8; unsigned __int8
32CF24:  MOV             R1, R6; char *
32CF26:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
32CF2A:  LDR.W           R0, =(TheText_ptr - 0x32CF34)
32CF2E:  MOV             R1, R6; CKeyGen *
32CF30:  ADD             R0, PC; TheText_ptr
32CF32:  LDR             R0, [R0]; TheText ; this
32CF34:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
32CF38:  ADR.W           R1, aMFail; "M_FAIL"
32CF3C:  MOV             R5, R0
32CF3E:  MOV             R0, R6; char *
32CF40:  BLX             strcmp
32CF44:  ADD.W           R6, R4, #8
32CF48:  CMP             R0, #0
32CF4A:  BEQ.W           loc_32D490
32CF4E:  ADR.W           R1, aMtbiker; "mtbiker"
32CF52:  MOV             R0, R6; char *
32CF54:  BLX             strcmp
32CF58:  CBNZ            R0, loc_32CF74
32CF5A:  SUB.W           R0, R7, #-var_46; char *
32CF5E:  ADR.W           R1, aRaces8; "RACES_8"
32CF62:  BLX             strcmp
32CF66:  CBNZ            R0, loc_32CF74
32CF68:  LDR.W           R0, =(AllowMissionReplay_ptr - 0x32CF72)
32CF6C:  MOVS            R1, #2
32CF6E:  ADD             R0, PC; AllowMissionReplay_ptr
32CF70:  LDR             R0, [R0]; AllowMissionReplay
32CF72:  STR             R1, [R0]
32CF74:  MOV             R0, R4; this
32CF76:  MOVS            R1, #2; __int16
32CF78:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CF7C:  LDR.W           R0, =(ScriptParams_ptr - 0x32CF88)
32CF80:  MOVW            R2, #0xFFFF
32CF84:  ADD             R0, PC; ScriptParams_ptr
32CF86:  LDR             R0, [R0]; ScriptParams
32CF88:  LDRD.W          R1, R0, [R0]; unsigned __int16 *
32CF8C:  ADD             R0, R2
32CF8E:  UXTH            R2, R0; unsigned int
32CF90:  MOV             R0, R5; this
32CF92:  BLX             j__ZN9CMessages13AddBigMessageEPtjt; CMessages::AddBigMessage(ushort *,uint,ushort)
32CF96:  B               loc_32D42C
32CF98:  SUB.W           R5, R7, #-var_46; jumptable 0032C3C2 case 188
32CF9C:  MOV             R0, R4; this
32CF9E:  MOVS            R2, #8; unsigned __int8
32CFA0:  MOV             R1, R5; char *
32CFA2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
32CFA6:  LDR.W           R0, =(TheText_ptr - 0x32CFB0)
32CFAA:  MOV             R1, R5; CKeyGen *
32CFAC:  ADD             R0, PC; TheText_ptr
32CFAE:  LDR             R0, [R0]; TheText ; this
32CFB0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
32CFB4:  MOV             R5, R0
32CFB6:  MOV             R0, R4; this
32CFB8:  MOVS            R1, #2; __int16
32CFBA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32CFBE:  CBZ             R5, loc_32CFD4
32CFC0:  LDRH            R0, [R5]
32CFC2:  CMP             R0, #0x7E ; '~'
32CFC4:  BNE             loc_32CFD4
32CFC6:  LDRH            R0, [R5,#2]
32CFC8:  CMP             R0, #0x7A ; 'z'
32CFCA:  ITT EQ
32CFCC:  LDRHEQ          R0, [R5,#4]
32CFCE:  CMPEQ           R0, #0x7E ; '~'
32CFD0:  BEQ.W           loc_32D530
32CFD4:  LDR.W           R0, =(ScriptParams_ptr - 0x32CFE0)
32CFD8:  LDR.W           R1, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x32CFE2)
32CFDC:  ADD             R0, PC; ScriptParams_ptr
32CFDE:  ADD             R1, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
32CFE0:  LDR             R0, [R0]; ScriptParams
32CFE2:  LDR             R1, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs ...
32CFE4:  LDRH            R3, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
32CFE6:  LDR             R2, [R0]; unsigned __int16 *
32CFE8:  LDRB            R0, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs
32CFEA:  MOV             R1, R5; char *
32CFEC:  CMP             R0, #0
32CFEE:  IT NE
32CFF0:  MOVNE           R0, #1
32CFF2:  STR             R0, [SP,#0x68+var_68]; unsigned __int16
32CFF4:  SUB.W           R0, R7, #-var_46; this
32CFF8:  BLX             j__ZN9CMessages15AddMessageJumpQEPKcPtjtb; CMessages::AddMessageJumpQ(char const*,ushort *,uint,ushort,bool)
32CFFC:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x32D004)
32D000:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
32D002:  LDR             R0, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
32D004:  MOVS            R1, #1
32D006:  MOVS            R6, #0
32D008:  STRB            R1, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs
32D00A:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32D00C:  LDR.W           R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x32D018); jumptable 0032C3C2 case 191
32D010:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x32D01E)
32D014:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
32D016:  LDR.W           R2, =(ScriptParams_ptr - 0x32D022)
32D01A:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
32D01C:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
32D01E:  ADD             R2, PC; ScriptParams_ptr
32D020:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
32D022:  LDR             R2, [R2]; ScriptParams
32D024:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
32D026:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
32D028:  STRD.W          R0, R1, [R2]
32D02C:  MOV             R0, R4
32D02E:  MOVS            R1, #2
32D030:  B               loc_32D428
32D032:  MOV             R0, R4; jumptable 0032C3C2 case 194
32D034:  MOVS            R1, #4; __int16
32D036:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32D03A:  LDR.W           R0, =(ScriptParams_ptr - 0x32D046)
32D03E:  VLDR            S2, =-100.0
32D042:  ADD             R0, PC; ScriptParams_ptr
32D044:  LDR             R0, [R0]; ScriptParams
32D046:  VLDR            S0, [R0,#8]
32D04A:  VLDR            S16, [R0]
32D04E:  VCMPE.F32       S0, S2
32D052:  VLDR            S18, [R0,#4]
32D056:  VMRS            APSR_nzcv, FPSCR
32D05A:  BGT             loc_32D06C
32D05C:  VMOV            R0, S16; this
32D060:  VMOV            R1, S18; float
32D064:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
32D068:  VMOV            S0, R0
32D06C:  LDR.W           R0, =(ScriptParams_ptr - 0x32D078)
32D070:  LDR.W           R1, =(TheCamera_ptr - 0x32D07E)
32D074:  ADD             R0, PC; ScriptParams_ptr
32D076:  VSTR            S18, [SP,#0x68+var_58+4]
32D07A:  ADD             R1, PC; TheCamera_ptr
32D07C:  VSTR            S16, [SP,#0x68+var_58]
32D080:  LDR             R0, [R0]; ScriptParams
32D082:  VSTR            S0, [SP,#0x68+var_50]
32D086:  LDR             R2, [R0,#(dword_81A914 - 0x81A908)]; float
32D088:  LDR             R0, [R1]; TheCamera ; this
32D08A:  ADD             R1, SP, #0x68+var_58; CVector *
32D08C:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
32D090:  MOV             R1, R0; unsigned __int8
32D092:  MOV             R0, R4; this
32D094:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
32D098:  B               loc_32D42C
32D09A:  MOVS            R0, #0; this
32D09C:  LDR.W           R1, =(ScriptParams_ptr - 0x32D0A4)
32D0A0:  ADD             R1, PC; ScriptParams_ptr
32D0A2:  LDR             R5, [R1]; ScriptParams
32D0A4:  ADDS            R3, R5, #4
32D0A6:  LDM             R3, {R1-R3}; float
32D0A8:  VLDR            S0, [R5,#0x10]
32D0AC:  VSTR            S0, [SP,#0x68+var_68]
32D0B0:  BLX             j__ZNK10CPlaceable12IsWithinAreaEffff; CPlaceable::IsWithinArea(float,float,float,float)
32D0B4:  MOV             R1, R0
32D0B6:  CMP             R1, #0
32D0B8:  IT NE
32D0BA:  MOVNE           R1, #1; unsigned __int8
32D0BC:  MOV             R0, R4; this
32D0BE:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
32D0C2:  LDR             R0, [R5,#(dword_81A91C - 0x81A908)]
32D0C4:  CMP             R0, #0
32D0C6:  BEQ.W           loc_32D42C
32D0CA:  LDR.W           R0, =(ScriptParams_ptr - 0x32D0D2)
32D0CE:  ADD             R0, PC; ScriptParams_ptr
32D0D0:  LDR             R0, [R0]; ScriptParams
32D0D2:  LDR             R6, [R4,#0x14]
32D0D4:  ADDS            R3, R0, #4
32D0D6:  LDM             R3, {R1-R3}
32D0D8:  VLDR            S0, [R0,#0x10]
32D0DC:  MOVS            R0, #0xC2C80000
32D0E2:  STR             R0, [SP,#0x68+var_64]
32D0E4:  VSTR            S0, [SP,#0x68+var_68]
32D0E8:  B               loc_32D3F6
32D0EA:  MOVS            R0, #0; this
32D0EC:  BLX             j__ZN11CTheScripts13RemoveThisPedEP4CPed; CTheScripts::RemoveThisPed(CPed *)
32D0F0:  LDRB.W          R0, [R4,#0xE6]
32D0F4:  MOV.W           R8, #0
32D0F8:  CMP             R0, #0
32D0FA:  BEQ.W           loc_32D42C
32D0FE:  LDR.W           R0, =(ScriptParams_ptr - 0x32D10E)
32D102:  MOV.W           R10, #0
32D106:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32D110)
32D10A:  ADD             R0, PC; ScriptParams_ptr
32D10C:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
32D10E:  LDR             R0, [R0]; ScriptParams
32D110:  LDR             R1, [R1]; CTheScripts::MissionCleanUp ...
32D112:  LDR             R5, [R0]
32D114:  ADDS            R4, R1, #4
32D116:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32D11E)
32D11A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
32D11C:  MOV.W           R9, R5,LSR#8
32D120:  LDR             R0, [R0]; CPools::ms_pPedPool ...
32D122:  STR             R0, [SP,#0x68+var_5C]
32D124:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32D12C)
32D128:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
32D12A:  LDR.W           R11, [R0]; CTheScripts::MissionCleanUp ...
32D12E:  LDRB.W          R0, [R4,#-4]; CTheScripts::MissionCleanUp
32D132:  CMP             R0, #2
32D134:  ITT EQ
32D136:  LDREQ           R0, [R4]
32D138:  CMPEQ           R0, R5
32D13A:  BNE             loc_32D190
32D13C:  CMP             R5, #0
32D13E:  BLT             loc_32D17E
32D140:  LDR             R0, [SP,#0x68+var_5C]
32D142:  UXTB            R2, R5
32D144:  LDR             R0, [R0]
32D146:  LDR             R1, [R0,#4]
32D148:  LDRB.W          R1, [R1,R9]
32D14C:  CMP             R1, R2
32D14E:  BNE             loc_32D17E
32D150:  LDR             R0, [R0]
32D152:  MOVW            R1, #0x7CC
32D156:  MLA.W           R0, R9, R1, R0; this
32D15A:  CMP             R0, #0
32D15C:  ITTT NE
32D15E:  MOVNE           R1, R0
32D160:  LDRNE.W         R2, [R1,#0x1C]!
32D164:  TSTNE.W         R2, #0x40000
32D168:  BEQ             loc_32D17E
32D16A:  LDR             R3, [R1,#4]
32D16C:  TST.W           R2, #4
32D170:  BIC.W           R6, R2, #0x40000
32D174:  STRD.W          R6, R3, [R1]
32D178:  IT EQ
32D17A:  BLXEQ           j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
32D17E:  STRB.W          R8, [R4,#-4]; CTheScripts::MissionCleanUp
32D182:  STR.W           R8, [R4]
32D186:  LDRB.W          R0, [R11,#(byte_811624 - 0x8113CC)]
32D18A:  SUBS            R0, #1
32D18C:  STRB.W          R0, [R11,#(byte_811624 - 0x8113CC)]
32D190:  ADD.W           R10, R10, #1
32D194:  ADDS            R4, #8
32D196:  MOVS            R6, #0
32D198:  UXTH.W          R0, R10
32D19C:  CMP             R0, #0x4B ; 'K'
32D19E:  BCC             loc_32D12E
32D1A0:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32D1A2:  MOVS            R1, #0; CPed *
32D1A4:  LDR.W           R0, =(ScriptParams_ptr - 0x32D1AC)
32D1A8:  ADD             R0, PC; ScriptParams_ptr
32D1AA:  LDR             R0, [R0]; ScriptParams
32D1AC:  LDRD.W          R2, R3, [R0,#(dword_81A90C - 0x81A908)]; float
32D1B0:  VLDR            S0, [R0,#0xC]
32D1B4:  MOVS            R0, #(stderr+1); this
32D1B6:  STRD.W          R0, R0, [SP,#0x68+var_64]; bool
32D1BA:  VSTR            S0, [SP,#0x68+var_68]
32D1BE:  BLX             j__ZN14CRunningScript18SetCharCoordinatesEP4CPedfffbb; CRunningScript::SetCharCoordinates(CPed *,float,float,float,bool,bool)
32D1C2:  B               loc_32D42C
32D1C4:  MOVS            R4, #0
32D1C6:  LDR.W           R0, =(ScriptParams_ptr - 0x32D1D2)
32D1CA:  VLDR            S0, =-100.0
32D1CE:  ADD             R0, PC; ScriptParams_ptr
32D1D0:  LDR             R0, [R0]; ScriptParams
32D1D2:  VLDR            S20, [R0,#0xC]
32D1D6:  VLDR            S16, [R0,#4]
32D1DA:  VCMPE.F32       S20, S0
32D1DE:  VLDR            S18, [R0,#8]
32D1E2:  VMRS            APSR_nzcv, FPSCR
32D1E6:  BGT             loc_32D1F8
32D1E8:  VMOV            R0, S16; this
32D1EC:  VMOV            R1, S18; float
32D1F0:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
32D1F4:  VMOV            S20, R0
32D1F8:  MOV             R0, R4; this
32D1FA:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
32D1FE:  VMOV            S0, R0
32D202:  ADD             R1, SP, #0x68+var_58; CVehicle *
32D204:  MOV             R0, R4; this
32D206:  MOVS            R2, #0; CVector *
32D208:  VADD.F32        S0, S20, S0
32D20C:  MOVS            R3, #0; bool
32D20E:  VSTR            S18, [SP,#0x68+var_58+4]
32D212:  VSTR            S16, [SP,#0x68+var_58]
32D216:  VSTR            S0, [SP,#0x68+var_50]
32D21A:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
32D21E:  LDRB.W          R1, [R4,#0x3BE]
32D222:  CMP             R0, #0
32D224:  SUB.W           R1, R1, #0x39 ; '9'
32D228:  BEQ.W           loc_32D4C8
32D22C:  UXTB            R0, R1
32D22E:  CMP             R0, #2
32D230:  BCC.W           loc_32D4D4
32D234:  MOVS            R0, #9
32D236:  B               loc_32D4D0
32D238:  DCD __stack_chk_guard_ptr - 0x32C3B2
32D23C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C608
32D240:  DCD ScriptParams_ptr - 0x32C618
32D244:  DCD ScriptParams_ptr - 0x32C660
32D248:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x32C662
32D24C:  DCD ScriptParams_ptr - 0x32C696
32D250:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x32C6AA
32D254:  DCD TheText_ptr - 0x32C6DC
32D258:  DCB "DES9_42",0
32D260:  DCB "WUZ1_DA",0
32D268:  DCB "GAR2_10",0
32D270:  DCD ScriptParams_ptr - 0x32C744
32D274:  DCD _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x32C746
32D278:  DCD _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x32C768
32D27C:  DCD ScriptParams_ptr - 0x32C78A
32D280:  DCD ScriptParams_ptr - 0x32C7A6
32D284:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C7F8
32D288:  DCD ScriptParams_ptr - 0x32C7FA
32D28C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C81A
32D290:  DCD ScriptParams_ptr - 0x32C81C
32D294:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C848
32D298:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C864
32D29C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C880
32D2A0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C89C
32D2A4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C8D8
32D2A8:  DCD ScriptParams_ptr - 0x32C8DA
32D2AC:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C8FA
32D2B0:  DCD ScriptParams_ptr - 0x32C8FC
32D2B4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C928
32D2B8:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C944
32D2BC:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x32C960
32D2C0:  DCFS -100.0
32D2C4:  DCFS 60.0
32D2C8:  MOVS            R4, #0
32D2CA:  MOV             R0, R4; this
32D2CC:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
32D2D0:  LDRB.W          R0, [R4,#0x3BE]
32D2D4:  SUBS            R0, #0x39 ; '9'
32D2D6:  UXTB            R0, R0
32D2D8:  CMP             R0, #2
32D2DA:  ITT CS
32D2DC:  MOVCS           R0, #1
32D2DE:  STRBCS.W        R0, [R4,#0x3BE]
32D2E2:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32D2F2)
32D2E6:  LDRB.W          R3, [R4,#0x3D4]
32D2EA:  LDR.W           R1, [R4,#0x42C]
32D2EE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
32D2F0:  LDR.W           R2, [R4,#0x430]
32D2F4:  CMP             R3, #1
32D2F6:  IT LS
32D2F8:  MOVLS           R3, #1
32D2FA:  STRB.W          R3, [R4,#0x3D4]
32D2FE:  B               loc_32D4FC
32D300:  MOVS            R0, #0
32D302:  LDR             R1, [R0,#0x14]
32D304:  LDR.W           R2, =(ScriptParams_ptr - 0x32D316)
32D308:  ADD.W           R3, R1, #0x30 ; '0'
32D30C:  CMP             R1, #0
32D30E:  IT EQ
32D310:  ADDEQ           R3, R0, #4
32D312:  ADD             R2, PC; ScriptParams_ptr
32D314:  VLDR            D16, [R3]
32D318:  LDR             R0, [R2]; ScriptParams
32D31A:  LDR             R1, [R3,#8]
32D31C:  VSTR            D16, [SP,#0x68+var_58]
32D320:  LDRD.W          R2, R3, [SP,#0x68+var_58]
32D324:  STRD.W          R2, R3, [R0]
32D328:  STR             R1, [R0,#(dword_81A910 - 0x81A908)]
32D32A:  STR             R1, [SP,#0x68+var_50]
32D32C:  B               loc_32D424
32D32E:  MOVS            R0, #0; this
32D330:  LDR.W           R1, =(ScriptParams_ptr - 0x32D33A)
32D334:  MOVS            R5, #1
32D336:  ADD             R1, PC; ScriptParams_ptr
32D338:  LDR             R3, [R1]; ScriptParams
32D33A:  ADDS            R3, #4
32D33C:  LDM             R3, {R1-R3}; float
32D33E:  STRD.W          R6, R5, [SP,#0x68+var_68]; float
32D342:  BLX             j__ZN8CCarCtrl20SetCoordsOfScriptCarEP8CVehiclefffhh; CCarCtrl::SetCoordsOfScriptCar(CVehicle *,float,float,float,uchar,uchar)
32D346:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32D348:  MOVS            R0, #0
32D34A:  LDR.W           R1, =(ScriptParams_ptr - 0x32D358)
32D34E:  MOVS            R6, #0
32D350:  VLDR            S2, =60.0
32D354:  ADD             R1, PC; ScriptParams_ptr
32D356:  LDR             R1, [R1]; ScriptParams
32D358:  VLDR            S0, [R1,#4]
32D35C:  LDR.W           R1, [R0,#0x388]
32D360:  VCVT.U32.F32    S0, S0
32D364:  VMOV            R2, S0
32D368:  STRB.W          R2, [R0,#0x3D4]
32D36C:  VLDR            S4, [R1,#0x88]
32D370:  VCVT.F32.U32    S0, S0
32D374:  VMUL.F32        S2, S4, S2
32D378:  VMIN.F32        D0, D1, D0
32D37C:  VCVT.U32.F32    S0, S0
32D380:  VMOV            R1, S0
32D384:  STRB.W          R1, [R0,#0x3D4]
32D388:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32D38A:  MOVS            R0, #0; this
32D38C:  LDR.W           R1, =(ScriptParams_ptr - 0x32D394)
32D390:  ADD             R1, PC; ScriptParams_ptr
32D392:  LDR             R5, [R1]; ScriptParams
32D394:  ADDS            R3, R5, #4
32D396:  VLDR            S0, [R5,#0x10]
32D39A:  VLDR            S2, [R5,#0x14]
32D39E:  VLDR            S4, [R5,#0x18]
32D3A2:  LDM             R3, {R1-R3}; float
32D3A4:  VSTR            S0, [SP,#0x68+var_68]
32D3A8:  VSTR            S2, [SP,#0x68+var_64]
32D3AC:  VSTR            S4, [SP,#0x68+var_60]
32D3B0:  BLX             j__ZNK10CPlaceable12IsWithinAreaEffffff; CPlaceable::IsWithinArea(float,float,float,float,float,float)
32D3B4:  MOV             R1, R0
32D3B6:  CMP             R1, #0
32D3B8:  IT NE
32D3BA:  MOVNE           R1, #1; unsigned __int8
32D3BC:  MOV             R0, R4; this
32D3BE:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
32D3C2:  LDR             R0, [R5,#(dword_81A924 - 0x81A908)]
32D3C4:  CBZ             R0, loc_32D42C
32D3C6:  LDR.W           R0, =(ScriptParams_ptr - 0x32D3CE)
32D3CA:  ADD             R0, PC; ScriptParams_ptr
32D3CC:  LDR             R0, [R0]; ScriptParams
32D3CE:  VMOV.F32        S4, #0.5
32D3D2:  LDR             R6, [R4,#0x14]
32D3D4:  VLDR            S0, [R0,#0x18]
32D3D8:  VLDR            S2, [R0,#0xC]
32D3DC:  LDR             R3, [R0,#(dword_81A918 - 0x81A908)]; float
32D3DE:  VADD.F32        S0, S2, S0
32D3E2:  LDRD.W          R1, R2, [R0,#(dword_81A90C - 0x81A908)]; float
32D3E6:  VLDR            S2, [R0,#0x14]
32D3EA:  VSTR            S2, [SP,#0x68+var_68]
32D3EE:  VMUL.F32        S0, S0, S4
32D3F2:  VSTR            S0, [SP,#0x68+var_64]
32D3F6:  ADDS            R0, R6, R4; this
32D3F8:  BLX             j__ZN11CTheScripts22HighlightImportantAreaEjfffff; CTheScripts::HighlightImportantArea(uint,float,float,float,float,float)
32D3FC:  B               loc_32D42C
32D3FE:  LDR             R0, [R1,#0x14]
32D400:  ADD.W           R2, R0, #0x30 ; '0'
32D404:  CMP             R0, #0
32D406:  IT EQ
32D408:  ADDEQ           R2, R1, #4
32D40A:  LDR             R0, [R2,#8]
32D40C:  ADD             R3, SP, #0x68+var_58
32D40E:  VLDR            D16, [R2]
32D412:  STR             R0, [SP,#0x68+var_50]
32D414:  LDR.W           R0, =(ScriptParams_ptr - 0x32D420)
32D418:  VSTR            D16, [SP,#0x68+var_58]
32D41C:  ADD             R0, PC; ScriptParams_ptr
32D41E:  LDM             R3, {R1-R3}
32D420:  LDR             R0, [R0]; ScriptParams
32D422:  STM             R0!, {R1-R3}
32D424:  MOV             R0, R4; this
32D426:  MOVS            R1, #3; __int16
32D428:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
32D42C:  MOVS            R6, #0
32D42E:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x32D438); jumptable 0032C3C2 cases 195,196
32D432:  LDR             R1, [SP,#0x68+var_3C]
32D434:  ADD             R0, PC; __stack_chk_guard_ptr
32D436:  LDR             R0, [R0]; __stack_chk_guard
32D438:  LDR             R0, [R0]
32D43A:  SUBS            R0, R0, R1
32D43C:  ITTTT EQ
32D43E:  SXTBEQ          R0, R6
32D440:  ADDEQ           SP, SP, #0x30 ; '0'
32D442:  VPOPEQ          {D8-D10}
32D446:  ADDEQ           SP, SP, #4
32D448:  ITT EQ
32D44A:  POPEQ.W         {R8-R11}
32D44E:  POPEQ           {R4-R7,PC}
32D450:  BLX             __stack_chk_fail
32D454:  LDR             R1, =(aDesert5_0 - 0x32D45E); "desert5"
32D456:  ADD.W           R0, R4, #8; char *
32D45A:  ADD             R1, PC; "desert5"
32D45C:  BLX             strcmp
32D460:  CMP             R0, #0
32D462:  BEQ.W           loc_32C6FA
32D466:  LDR             R0, =(AllowMissionReplay_ptr - 0x32D46C)
32D468:  ADD             R0, PC; AllowMissionReplay_ptr
32D46A:  LDR             R0, [R0]; AllowMissionReplay
32D46C:  LDR             R0, [R0]
32D46E:  CMP             R0, #0
32D470:  BNE.W           loc_32C6FA
32D474:  LDR             R0, =(missionReplaySetting_ptr - 0x32D47A)
32D476:  ADD             R0, PC; missionReplaySetting_ptr
32D478:  LDR             R0, [R0]; missionReplaySetting
32D47A:  LDR             R0, [R0]
32D47C:  CMP             R0, #0
32D47E:  BEQ.W           loc_32C6FA
32D482:  LDR             R0, =(AllowMissionReplay_ptr - 0x32D48A)
32D484:  MOVS            R1, #2
32D486:  ADD             R0, PC; AllowMissionReplay_ptr
32D488:  LDR             R0, [R0]; AllowMissionReplay
32D48A:  STR             R1, [R0]
32D48C:  B.W             loc_32C6FA
32D490:  LDR             R1, =(aDesert5_0 - 0x32D498); "desert5"
32D492:  MOV             R0, R6; char *
32D494:  ADD             R1, PC; "desert5"
32D496:  BLX             strcmp
32D49A:  CMP             R0, #0
32D49C:  BEQ.W           loc_32CF4E
32D4A0:  LDR             R0, =(AllowMissionReplay_ptr - 0x32D4A6)
32D4A2:  ADD             R0, PC; AllowMissionReplay_ptr
32D4A4:  LDR             R0, [R0]; AllowMissionReplay
32D4A6:  LDR             R0, [R0]
32D4A8:  CMP             R0, #0
32D4AA:  BNE.W           loc_32CF4E
32D4AE:  LDR             R0, =(missionReplaySetting_ptr - 0x32D4B4)
32D4B0:  ADD             R0, PC; missionReplaySetting_ptr
32D4B2:  LDR             R0, [R0]; missionReplaySetting
32D4B4:  LDR             R0, [R0]
32D4B6:  CMP             R0, #0
32D4B8:  BEQ.W           loc_32CF4E
32D4BC:  LDR             R0, =(AllowMissionReplay_ptr - 0x32D4C4)
32D4BE:  MOVS            R1, #2
32D4C0:  ADD             R0, PC; AllowMissionReplay_ptr
32D4C2:  LDR             R0, [R0]; AllowMissionReplay
32D4C4:  STR             R1, [R0]
32D4C6:  B               loc_32CF4E
32D4C8:  UXTB            R0, R1
32D4CA:  CMP             R0, #2
32D4CC:  BCC             loc_32D4D4
32D4CE:  MOVS            R0, #8
32D4D0:  STRB.W          R0, [R4,#0x3BE]
32D4D4:  LDRB.W          R3, [R4,#0x3D4]
32D4D8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32D4E8)
32D4DA:  CMP             R3, #1
32D4DC:  LDR.W           R1, [R4,#0x42C]
32D4E0:  LDR.W           R2, [R4,#0x430]
32D4E4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
32D4E6:  LDRB.W          R6, [R4,#0x3A]
32D4EA:  IT LS
32D4EC:  MOVLS           R3, #1
32D4EE:  STRB.W          R3, [R4,#0x3D4]
32D4F2:  MOVS            R3, #3
32D4F4:  BFI.W           R6, R3, #3, #0x1D
32D4F8:  STRB.W          R6, [R4,#0x3A]
32D4FC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
32D4FE:  BIC.W           R3, R1, #0x10
32D502:  TST.W           R2, #0x200
32D506:  MOV.W           R6, #0
32D50A:  IT EQ
32D50C:  ORREQ.W         R3, R1, #0x10
32D510:  STR.W           R3, [R4,#0x42C]
32D514:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
32D516:  STR.W           R0, [R4,#0x3B0]
32D51A:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32D51C:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x32D522)
32D51E:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
32D520:  LDR             R0, [R0]; MobileSettings::settings ...
32D522:  LDR.W           R0, [R0,#(dword_6E06FC - 0x6E03F4)]
32D526:  CMP             R0, #0
32D528:  BEQ.W           loc_32C760
32D52C:  B.W             loc_32C738
32D530:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x32D536)
32D532:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
32D534:  LDR             R0, [R0]; MobileSettings::settings ...
32D536:  LDR.W           R0, [R0,#(dword_6E06FC - 0x6E03F4)]
32D53A:  CMP             R0, #0
32D53C:  BEQ.W           loc_32CFFC
32D540:  B               loc_32CFD4
32D542:  CMP             R0, #6; jumptable 0032C626 case 283
32D544:  BNE             loc_32D586
32D546:  MOVS            R0, #7
32D548:  B               loc_32D560
32D54A:  CMP             R0, #6; jumptable 0032C626 case 285
32D54C:  BNE             loc_32D586
32D54E:  MOVS            R0, #2
32D550:  B               loc_32D560
32D552:  CMP             R0, #6; jumptable 0032C626 case 286
32D554:  BNE             loc_32D586
32D556:  MOVS            R0, #4
32D558:  B               loc_32D560
32D55A:  CMP             R0, #6; jumptable 0032C626 case 287
32D55C:  BNE             loc_32D586
32D55E:  MOVS            R0, #5
32D560:  LDR             R1, =(ScriptParams_ptr - 0x32D566)
32D562:  ADD             R1, PC; ScriptParams_ptr
32D564:  LDR             R1, [R1]; ScriptParams ; unsigned int
32D566:  STR             R0, [R1,#(dword_81A90C - 0x81A908)]
32D568:  MOVW            R0, #(elf_hash_bucket+0x6D0); this
32D56C:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
32D570:  MOV             R5, R0
32D572:  LDR             R0, =(ScriptParams_ptr - 0x32D578)
32D574:  ADD             R0, PC; ScriptParams_ptr
32D576:  LDR             R0, [R0]; ScriptParams
32D578:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
32D57A:  MOV             R0, R5
32D57C:  BLX             j__ZN7CCopPedC2E8eCopType; CCopPed::CCopPed(eCopType)
32D580:  B               loc_32D5BA
32D582:  CMP             R0, #6; jumptable 0032C626 default case
32D584:  BEQ             loc_32D568
32D586:  ORR.W           R6, R0, #1
32D58A:  MOVW            R0, #(elf_hash_bucket+0x6A8); this
32D58E:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
32D592:  MOV             R5, R0
32D594:  CMP             R6, #0x13
32D596:  BNE             loc_32D5AA
32D598:  LDR             R0, =(ScriptParams_ptr - 0x32D59E)
32D59A:  ADD             R0, PC; ScriptParams_ptr
32D59C:  LDR             R0, [R0]; ScriptParams
32D59E:  LDRD.W          R1, R2, [R0]; unsigned int
32D5A2:  MOV             R0, R5; this
32D5A4:  BLX             j__ZN13CEmergencyPedC2Ejj; CEmergencyPed::CEmergencyPed(uint,uint)
32D5A8:  B               loc_32D5BA
32D5AA:  LDR             R0, =(ScriptParams_ptr - 0x32D5B0)
32D5AC:  ADD             R0, PC; ScriptParams_ptr
32D5AE:  LDR             R0, [R0]; ScriptParams
32D5B0:  LDRD.W          R1, R2, [R0]
32D5B4:  MOV             R0, R5
32D5B6:  BLX             j__ZN12CCivilianPedC2E8ePedTypej; CCivilianPed::CCivilianPed(ePedType,uint)
32D5BA:  MOVS            R0, #dword_20; this
32D5BC:  LDR.W           R8, [R5,#0x440]
32D5C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
32D5C4:  MOVW            R1, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
32D5C8:  MOV             R6, R0
32D5CA:  MOV.W           R0, #0x41000000
32D5CE:  MOVT            R1, #:upper16:(aZn6cworld51fin+0x25); int
32D5D2:  STR             R0, [SP,#0x68+var_68]; float
32D5D4:  MOV             R0, R6; this
32D5D6:  MOVS            R2, #1; bool
32D5D8:  MOVS            R3, #0; bool
32D5DA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
32D5DE:  ADD.W           R0, R8, #4; this
32D5E2:  MOV             R1, R6; CTask *
32D5E4:  MOVS            R2, #4; int
32D5E6:  MOVS            R3, #0; bool
32D5E8:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
32D5EC:  MOV             R0, R5; this
32D5EE:  MOVS            R1, #2; unsigned __int8
32D5F0:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
32D5F4:  LDR             R0, =(ScriptParams_ptr - 0x32D5FE)
32D5F6:  LDR.W           R1, [R5,#0x484]
32D5FA:  ADD             R0, PC; ScriptParams_ptr
32D5FC:  VLDR            S2, =-100.0
32D600:  BIC.W           R1, R1, #0x80000000
32D604:  STR.W           R1, [R5,#0x484]
32D608:  LDR             R0, [R0]; ScriptParams
32D60A:  VLDR            S0, [R0,#0x10]
32D60E:  VLDR            S18, [R0,#8]
32D612:  VCMPE.F32       S0, S2
32D616:  VLDR            S16, [R0,#0xC]
32D61A:  VMRS            APSR_nzcv, FPSCR
32D61E:  BGT             loc_32D630
32D620:  VMOV            R0, S18; this
32D624:  VMOV            R1, S16; float
32D628:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
32D62C:  VMOV            S0, R0
32D630:  VMOV.F32        S2, #1.0
32D634:  VSTR            S16, [SP,#0x68+var_58+4]
32D638:  VSTR            S18, [SP,#0x68+var_58]
32D63C:  VADD.F32        S0, S0, S2
32D640:  VSTR            S0, [SP,#0x68+var_50]
32D644:  LDR             R0, [R5,#0x14]
32D646:  CBZ             R0, loc_32D658
32D648:  VSTR            S18, [R0,#0x30]
32D64C:  LDR             R0, [R5,#0x14]
32D64E:  VSTR            S16, [R0,#0x34]
32D652:  LDR             R0, [R5,#0x14]
32D654:  ADDS            R0, #0x38 ; '8'
32D656:  B               loc_32D664
32D658:  ADD.W           R0, R5, #0xC
32D65C:  VSTR            S18, [R5,#4]
32D660:  VSTR            S16, [R5,#8]
32D664:  VSTR            S0, [R0]
32D668:  LDR             R0, [R5,#0x14]; this
32D66A:  CBZ             R0, loc_32D6AA
32D66C:  MOVS            R1, #0; x
32D66E:  MOVS            R2, #0; float
32D670:  MOVS            R3, #0; float
32D672:  VLDR            S16, [R0,#0x30]
32D676:  VLDR            S18, [R0,#0x34]
32D67A:  VLDR            S20, [R0,#0x38]
32D67E:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
32D682:  LDR             R0, [R5,#0x14]
32D684:  VLDR            S0, [R0,#0x30]
32D688:  VLDR            S2, [R0,#0x34]
32D68C:  VLDR            S4, [R0,#0x38]
32D690:  VADD.F32        S0, S16, S0
32D694:  VADD.F32        S2, S18, S2
32D698:  VADD.F32        S4, S20, S4
32D69C:  VSTR            S0, [R0,#0x30]
32D6A0:  VSTR            S2, [R0,#0x34]
32D6A4:  VSTR            S4, [R0,#0x38]
32D6A8:  B               loc_32D6AE
32D6AA:  MOVS            R0, #0
32D6AC:  STR             R0, [R5,#0x10]
32D6AE:  ADD             R0, SP, #0x68+var_58; this
32D6B0:  MOV             R1, R5; CVector *
32D6B2:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
32D6B6:  LDRB.W          R0, [R4,#0xE6]
32D6BA:  CMP             R0, #0
32D6BC:  ITTT NE
32D6BE:  LDRNE           R0, [R5,#0x1C]
32D6C0:  ORRNE.W         R0, R0, #0x40000
32D6C4:  STRNE           R0, [R5,#0x1C]
32D6C6:  MOV             R0, R5; this
32D6C8:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
32D6CC:  LDR             R1, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x32D6D4)
32D6CE:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32D6D6)
32D6D0:  ADD             R1, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
32D6D2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
32D6D4:  LDR             R1, [R1]; CPopulation::ms_nTotalMissionPeds ...
32D6D6:  LDR             R0, [R0]; CPools::ms_pPedPool ...
32D6D8:  LDR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
32D6DA:  LDR             R0, [R0]; CPools::ms_pPedPool
32D6DC:  ADDS            R2, #1
32D6DE:  STR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
32D6E0:  LDRD.W          R1, R0, [R0]
32D6E4:  MOV             R2, #0xBED87F3B
32D6EC:  SUBS            R1, R5, R1
32D6EE:  ASRS            R1, R1, #2
32D6F0:  MULS            R1, R2
32D6F2:  LDR             R2, =(ScriptParams_ptr - 0x32D6F8)
32D6F4:  ADD             R2, PC; ScriptParams_ptr
32D6F6:  LDR             R2, [R2]; ScriptParams
32D6F8:  LDRB            R0, [R0,R1]
32D6FA:  ORR.W           R0, R0, R1,LSL#8
32D6FE:  STR             R0, [R2]
32D700:  MOV             R0, R4; this
32D702:  MOVS            R1, #1; __int16
32D704:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
32D708:  LDRB.W          R0, [R4,#0xE6]
32D70C:  CMP             R0, #0
32D70E:  BEQ.W           loc_32D42C
32D712:  LDR             R0, =(ScriptParams_ptr - 0x32D71C)
32D714:  MOVS            R6, #0
32D716:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32D71E)
32D718:  ADD             R0, PC; ScriptParams_ptr
32D71A:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
32D71C:  LDR             R2, [R0]; ScriptParams
32D71E:  LDR             R0, [R1]; CTheScripts::MissionCleanUp ...
32D720:  LDR             R1, [R2]
32D722:  ADDS            R0, #4
32D724:  MOVS            R2, #0
32D726:  LDRB.W          R3, [R0,#-4]; CTheScripts::MissionCleanUp
32D72A:  CBZ             R3, loc_32D738
32D72C:  ADDS            R2, #1
32D72E:  ADDS            R0, #8
32D730:  UXTH            R3, R2
32D732:  CMP             R3, #0x4B ; 'K'
32D734:  BCC             loc_32D726
32D736:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
32D738:  LDR             R2, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32D746)
32D73A:  MOVS            R3, #2
32D73C:  STRB.W          R3, [R0,#-4]; CTheScripts::MissionCleanUp
32D740:  MOVS            R6, #0
32D742:  ADD             R2, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
32D744:  STR             R1, [R0]
32D746:  LDR             R2, [R2]; CTheScripts::MissionCleanUp ...
32D748:  LDRB.W          R0, [R2,#(byte_811624 - 0x8113CC)]
32D74C:  ADDS            R0, #1
32D74E:  STRB.W          R0, [R2,#(byte_811624 - 0x8113CC)]
32D752:  B               loc_32D42E; jumptable 0032C3C2 cases 195,196
