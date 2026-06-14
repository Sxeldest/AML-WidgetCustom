; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1600To1699Ei
; Address            : 0x358A68 - 0x35AED8
; =========================================================

358A68:  PUSH            {R4-R7,LR}
358A6A:  ADD             R7, SP, #0xC
358A6C:  PUSH.W          {R8-R11}
358A70:  SUB             SP, SP, #4
358A72:  VPUSH           {D8-D9}
358A76:  SUB             SP, SP, #0xB0
358A78:  MOV             R11, R0
358A7A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x358A82)
358A7E:  ADD             R0, PC; __stack_chk_guard_ptr
358A80:  LDR             R0, [R0]; __stack_chk_guard
358A82:  LDR             R0, [R0]
358A84:  STR             R0, [SP,#0xE0+var_34]
358A86:  SUBW            R0, R1, #0x642; switch 98 cases
358A8A:  CMP             R0, #0x61 ; 'a'
358A8C:  BHI.W           def_358A92; jumptable 00358A92 default case, cases 1604,1605,1609,1624,1680-1686
358A90:  MOVS            R6, #0
358A92:  TBH.W           [PC,R0,LSL#1]; switch jump
358A96:  DCW 0x77; jump table for switch statement
358A98:  DCW 0xAD
358A9A:  DCW 0xD0
358A9C:  DCW 0xD0
358A9E:  DCW 0xD3
358AA0:  DCW 0xF2
358AA2:  DCW 0x114
358AA4:  DCW 0xD0
358AA6:  DCW 0x1107
358AA8:  DCW 0x130
358AAA:  DCW 0x199
358AAC:  DCW 0x1107
358AAE:  DCW 0x1B5
358AB0:  DCW 0x1D1
358AB2:  DCW 0x206
358AB4:  DCW 0x1107
358AB6:  DCW 0x23E
358AB8:  DCW 0x251
358ABA:  DCW 0x25F
358ABC:  DCW 0x280
358ABE:  DCW 0x298
358AC0:  DCW 0x2CC
358AC2:  DCW 0xD0
358AC4:  DCW 0x1107
358AC6:  DCW 0x1107
358AC8:  DCW 0x2EB
358ACA:  DCW 0x327
358ACC:  DCW 0x62
358ACE:  DCW 0x62
358AD0:  DCW 0x62
358AD2:  DCW 0x62
358AD4:  DCW 0x65
358AD6:  DCW 0x65
358AD8:  DCW 0x6C
358ADA:  DCW 0x6C
358ADC:  DCW 0x354
358ADE:  DCW 0x1107
358AE0:  DCW 0x36C
358AE2:  DCW 0x394
358AE4:  DCW 0x3E2
358AE6:  DCW 0x40C
358AE8:  DCW 0x436
358AEA:  DCW 0x460
358AEC:  DCW 0x48A
358AEE:  DCW 0x4B4
358AF0:  DCW 0x1107
358AF2:  DCW 0x1107
358AF4:  DCW 0x1107
358AF6:  DCW 0x4DE
358AF8:  DCW 0x4FF
358AFA:  DCW 0x528
358AFC:  DCW 0x1107
358AFE:  DCW 0x59B
358B00:  DCW 0x5BA
358B02:  DCW 0x1107
358B04:  DCW 0x5E5
358B06:  DCW 0x617
358B08:  DCW 0x641
358B0A:  DCW 0x66E
358B0C:  DCW 0x6A1
358B0E:  DCW 0x6CE
358B10:  DCW 0x6FB
358B12:  DCW 0x719
358B14:  DCW 0x86B
358B16:  DCW 0x88A
358B18:  DCW 0x8C7
358B1A:  DCW 0x8E6
358B1C:  DCW 0x937
358B1E:  DCW 0x950
358B20:  DCW 0x971
358B22:  DCW 0x98D
358B24:  DCW 0x9AF
358B26:  DCW 0x9CE
358B28:  DCW 0x9ED
358B2A:  DCW 0xA0C
358B2C:  DCW 0xA27
358B2E:  DCW 0xA3E
358B30:  DCW 0x1107
358B32:  DCW 0xD0
358B34:  DCW 0xD0
358B36:  DCW 0xD0
358B38:  DCW 0xD0
358B3A:  DCW 0xD0
358B3C:  DCW 0xD0
358B3E:  DCW 0xD0
358B40:  DCW 0xA66
358B42:  DCW 0xA85
358B44:  DCW 0xAA4
358B46:  DCW 0xAC3
358B48:  DCW 0xAE2
358B4A:  DCW 0x1107
358B4C:  DCW 0x1107
358B4E:  DCW 0x1107
358B50:  DCW 0x1107
358B52:  DCW 0x1107
358B54:  DCW 0x1107
358B56:  DCW 0xB01
358B58:  DCW 0xB2B
358B5A:  MOV             R0, R11; jumptable 00358A92 cases 1629-1632
358B5C:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
358B60:  ADD             R1, SP, #0xE0+var_7C; jumptable 00358A92 cases 1633,1634
358B62:  MOV             R0, R11; this
358B64:  MOVS            R2, #0x46 ; 'F'; unsigned __int8
358B66:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
358B6A:  B.W             loc_35ACA2
358B6E:  ADD             R1, SP, #0xE0+var_7C; jumptable 00358A92 cases 1635,1636
358B70:  MOV             R0, R11; this
358B72:  MOVS            R2, #0x46 ; 'F'; unsigned __int8
358B74:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
358B78:  MOV             R0, R11; this
358B7A:  MOVS            R1, #1; __int16
358B7C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358B80:  B.W             loc_35ACA2
358B84:  MOV             R0, R11; jumptable 00358A92 case 1602
358B86:  MOVS            R1, #2; __int16
358B88:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358B8C:  LDR.W           R0, =(ScriptParams_ptr - 0x358B96)
358B90:  MOVS            R1, #6; int
358B92:  ADD             R0, PC; ScriptParams_ptr
358B94:  LDR             R0, [R0]; ScriptParams
358B96:  LDRD.W          R4, R0, [R0]; this
358B9A:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358B9E:  CMP             R0, #0x3F ; '?'
358BA0:  BHI.W           loc_359D74
358BA4:  LDR.W           R1, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x358BAC)
358BA8:  ADD             R1, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
358BAA:  LDR             R1, [R1]; CScripted2dEffects::ms_effects ...
358BAC:  ADD.W           R5, R1, R0,LSL#6
358BB0:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
358BB4:  MOV             R1, R5
358BB6:  MOVS            R2, #0
358BB8:  BLX             j__ZN20CPedAttractorManager17GetPedUsingEffectEPK9C2dEffectPK7CEntity; CPedAttractorManager::GetPedUsingEffect(C2dEffect const*,CEntity const*)
358BBC:  ADDS            R1, R4, #1
358BBE:  BEQ.W           loc_35AE92
358BC2:  MOVS            R1, #0
358BC4:  CMP             R4, #0
358BC6:  BLT.W           loc_35AE86
358BCA:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x358BD6)
358BCE:  LSRS            R3, R4, #8
358BD0:  UXTB            R5, R4
358BD2:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
358BD4:  LDR             R2, [R2]; CPools::ms_pPedPool ...
358BD6:  LDR             R2, [R2]; CPools::ms_pPedPool
358BD8:  LDR             R6, [R2,#4]
358BDA:  LDRB            R6, [R6,R3]
358BDC:  CMP             R6, R5
358BDE:  BNE.W           loc_35AE86
358BE2:  MOVW            R6, #0x7CC
358BE6:  LDR             R2, [R2]
358BE8:  MLA.W           R2, R3, R6, R2
358BEC:  B.W             loc_35AE88
358BF0:  MOV             R0, R11; jumptable 00358A92 case 1603
358BF2:  MOVS            R1, #2; __int16
358BF4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358BF8:  LDR.W           R0, =(ScriptParams_ptr - 0x358C02)
358BFC:  MOVS            R1, #4; int
358BFE:  ADD             R0, PC; ScriptParams_ptr
358C00:  LDR             R0, [R0]; ScriptParams
358C02:  LDR             R0, [R0]; this
358C04:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358C08:  CMP             R0, #0x3F ; '?'
358C0A:  BHI.W           loc_35ACA2
358C0E:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x358C1C)
358C12:  MOVS            R6, #0
358C14:  LDR.W           R1, =(ScriptParams_ptr - 0x358C22)
358C18:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
358C1A:  LDR.W           R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x358C26)
358C1E:  ADD             R1, PC; ScriptParams_ptr
358C20:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
358C22:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
358C24:  LDR             R1, [R1]; ScriptParams
358C26:  LDR             R2, [R2]; CTaskSequences::ms_taskSequence ...
358C28:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
358C2A:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
358C2C:  ADD.W           R0, R2, R0,LSL#6
358C30:  STR             R1, [R0,#(dword_9FDC44 - 0x9FDC14)]
358C32:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
358C36:  MOVS            R6, #0xFF; jumptable 00358A92 default case, cases 1604,1605,1609,1624,1680-1686
358C38:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
358C3C:  MOV             R0, R11; jumptable 00358A92 case 1606
358C3E:  MOVS            R1, #1; __int16
358C40:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358C44:  LDR.W           R0, =(ScriptParams_ptr - 0x358C4C)
358C48:  ADD             R0, PC; ScriptParams_ptr
358C4A:  LDR             R0, [R0]; ScriptParams
358C4C:  LDR             R0, [R0]
358C4E:  CMP             R0, #0
358C50:  BLT.W           loc_35A11C
358C54:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x358C60)
358C58:  UXTB            R3, R0
358C5A:  LSRS            R0, R0, #8
358C5C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
358C5E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
358C60:  LDR             R1, [R1]; CPools::ms_pPedPool
358C62:  LDR             R2, [R1,#4]
358C64:  LDRB            R2, [R2,R0]
358C66:  CMP             R2, R3
358C68:  BNE.W           loc_35A11C
358C6C:  MOVW            R2, #0x7CC
358C70:  LDR             R1, [R1]
358C72:  MLA.W           R5, R0, R2, R1
358C76:  B.W             loc_35A11E
358C7A:  MOV             R0, R11; jumptable 00358A92 case 1607
358C7C:  MOVS            R1, #1; __int16
358C7E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358C82:  LDR.W           R0, =(ScriptParams_ptr - 0x358C8A)
358C86:  ADD             R0, PC; ScriptParams_ptr
358C88:  LDR             R0, [R0]; ScriptParams
358C8A:  LDR             R0, [R0]
358C8C:  ADDS            R1, R0, #1; unsigned int
358C8E:  BEQ.W           loc_35ABD8
358C92:  CMP             R0, #0
358C94:  BLT.W           loc_35AB58
358C98:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x358CA4)
358C9C:  UXTB            R3, R0
358C9E:  LSRS            R0, R0, #8
358CA0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
358CA2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
358CA4:  LDR             R1, [R1]; CPools::ms_pPedPool
358CA6:  LDR             R2, [R1,#4]
358CA8:  LDRB            R2, [R2,R0]
358CAA:  CMP             R2, R3
358CAC:  BNE.W           loc_35AB58
358CB0:  MOVW            R2, #0x7CC
358CB4:  LDR             R1, [R1]
358CB6:  MLA.W           R4, R0, R2, R1
358CBA:  B.W             loc_35AB5A
358CBE:  MOV             R0, R11; jumptable 00358A92 case 1608
358CC0:  MOVS            R1, #2; __int16
358CC2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358CC6:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x358CD8)
358CCA:  MOVW            R3, #0x7CC
358CCE:  LDR.W           R0, =(ScriptParams_ptr - 0x358CDA)
358CD2:  MOVS            R6, #0
358CD4:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
358CD6:  ADD             R0, PC; ScriptParams_ptr
358CD8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
358CDA:  LDR             R0, [R0]; ScriptParams
358CDC:  LDRD.W          R2, R0, [R0]
358CE0:  LDR             R1, [R1]; CPools::ms_pPedPool
358CE2:  LSRS            R2, R2, #8
358CE4:  LDR             R1, [R1]
358CE6:  MLA.W           R1, R2, R3, R1
358CEA:  LDR.W           R1, [R1,#0x440]
358CEE:  STR.W           R0, [R1,#0xCC]
358CF2:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
358CF6:  ADD             R1, SP, #0xE0+var_7C; jumptable 00358A92 case 1611
358CF8:  MOV             R0, R11; this
358CFA:  MOVS            R2, #0x20 ; ' '; unsigned __int8
358CFC:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
358D00:  MOV             R0, R11; this
358D02:  MOVS            R1, #4; __int16
358D04:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358D08:  MOV             R0, R11; this
358D0A:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
358D0E:  MOVS            R1, #1; int
358D10:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358D14:  LDR.W           R0, =(ScriptParams_ptr - 0x358D20)
358D18:  VLDR            S2, =-100.0
358D1C:  ADD             R0, PC; ScriptParams_ptr
358D1E:  LDR             R0, [R0]; ScriptParams
358D20:  VLDR            S0, [R0,#8]
358D24:  VLDR            S16, [R0]
358D28:  VCMPE.F32       S0, S2
358D2C:  VLDR            S18, [R0,#4]
358D30:  VMRS            APSR_nzcv, FPSCR
358D34:  BGT             loc_358D46
358D36:  VMOV            R0, S16; this
358D3A:  VMOV            R1, S18; float
358D3E:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
358D42:  VMOV            S0, R0
358D46:  LDR.W           R0, =(ScriptParams_ptr - 0x358D56)
358D4A:  ADD             R1, SP, #0xE0+var_7C; this
358D4C:  LDR.W           R3, =(g_fxMan_ptr - 0x358D5C)
358D50:  ADD             R2, SP, #0xE0+var_9C; int
358D52:  ADD             R0, PC; ScriptParams_ptr
358D54:  VSTR            S18, [SP,#0xE0+var_98]
358D58:  ADD             R3, PC; g_fxMan_ptr
358D5A:  VSTR            S16, [SP,#0xE0+var_9C]
358D5E:  LDR             R0, [R0]; ScriptParams
358D60:  VSTR            S0, [SP,#0xE0+var_94]
358D64:  LDR             R6, [R0,#(dword_81A914 - 0x81A908)]
358D66:  LDR             R0, [R3]; g_fxMan ; int
358D68:  MOVS            R3, #0; int
358D6A:  CMP             R6, #0
358D6C:  IT NE
358D6E:  MOVNE           R6, #1
358D70:  STR             R6, [SP,#0xE0+var_E0]; int
358D72:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
358D76:  CMP             R0, #0
358D78:  BEQ.W           loc_35ABF6
358D7C:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358D84)
358D80:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
358D82:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
358D84:  MOV.W           R1, #0xFFFFFFFF
358D88:  LDRB.W          R3, [R2],#8; unsigned __int8
358D8C:  ADDS            R1, #1
358D8E:  CMP             R1, #0x1F
358D90:  BHI             loc_358D96
358D92:  CMP             R3, #0
358D94:  BNE             loc_358D88
358D96:  STR.W           R0, [R2,#-4]
358D9A:  MOVS            R0, #1
358D9C:  STRB.W          R0, [R2,#-8]
358DA0:  MOV             R0, R1; this
358DA2:  MOVS            R1, #1; int
358DA4:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
358DA8:  MOV             R1, R0
358DAA:  LDR.W           R0, =(ScriptParams_ptr - 0x358DB2)
358DAE:  ADD             R0, PC; ScriptParams_ptr
358DB0:  LDR             R0, [R0]; ScriptParams
358DB2:  STR             R1, [R0]
358DB4:  LDRB.W          R0, [R11,#0xE6]
358DB8:  CMP             R0, #0
358DBA:  BEQ.W           loc_35AC9A
358DBE:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x358DC6)
358DC2:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
358DC4:  B.W             loc_35A6DE
358DC8:  MOV             R0, R11; jumptable 00358A92 case 1612
358DCA:  MOVS            R1, #1; __int16
358DCC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358DD0:  LDR.W           R0, =(ScriptParams_ptr - 0x358DDA)
358DD4:  MOVS            R1, #1; int
358DD6:  ADD             R0, PC; ScriptParams_ptr
358DD8:  LDR             R0, [R0]; ScriptParams
358DDA:  LDR             R0, [R0]; this
358DDC:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358DE0:  CMP             R0, #0
358DE2:  BLT.W           loc_35ACA2
358DE6:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358DEE)
358DEA:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
358DEC:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
358DEE:  ADD.W           R0, R1, R0,LSL#3
358DF2:  LDR             R0, [R0,#4]; this
358DF4:  CMP             R0, #0
358DF6:  IT NE
358DF8:  BLXNE           j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
358DFC:  B.W             loc_35ACA2
358E00:  MOV             R0, R11; jumptable 00358A92 case 1614
358E02:  MOVS            R1, #1; __int16
358E04:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358E08:  LDR.W           R0, =(ScriptParams_ptr - 0x358E12)
358E0C:  MOVS            R1, #1; int
358E0E:  ADD             R0, PC; ScriptParams_ptr
358E10:  LDR             R0, [R0]; ScriptParams
358E12:  LDR             R0, [R0]; this
358E14:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358E18:  CMP             R0, #0
358E1A:  BLT.W           loc_35ACA2
358E1E:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358E26)
358E22:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
358E24:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
358E26:  ADD.W           R0, R1, R0,LSL#3
358E2A:  LDR             R0, [R0,#4]; this
358E2C:  CMP             R0, #0
358E2E:  IT NE
358E30:  BLXNE           j__ZN10FxSystem_c4StopEv; FxSystem_c::Stop(void)
358E34:  B.W             loc_35ACA2
358E38:  MOV             R0, R11; jumptable 00358A92 case 1615
358E3A:  MOVS            R1, #1; __int16
358E3C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358E40:  LDR.W           R0, =(ScriptParams_ptr - 0x358E4A)
358E44:  MOVS            R1, #1; int
358E46:  ADD             R0, PC; ScriptParams_ptr
358E48:  LDR             R0, [R0]; ScriptParams
358E4A:  LDR             R5, [R0]
358E4C:  MOV             R0, R5; this
358E4E:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358E52:  CMP             R0, #0
358E54:  BLT.W           loc_35ACA2
358E58:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358E60)
358E5C:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
358E5E:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
358E60:  ADD.W           R0, R1, R0,LSL#3
358E64:  LDR             R0, [R0,#4]; this
358E66:  CMP             R0, #0
358E68:  BEQ.W           loc_35ACA2
358E6C:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
358E70:  MOV             R0, R5; this
358E72:  MOVS            R1, #1; int
358E74:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358E78:  ADDS            R1, R0, #1
358E7A:  BEQ             loc_358E90
358E7C:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358E86)
358E80:  MOVS            R2, #0
358E82:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
358E84:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
358E86:  STRB.W          R2, [R1,R0,LSL#3]
358E8A:  ADD.W           R0, R1, R0,LSL#3
358E8E:  STR             R2, [R0,#4]
358E90:  LDRB.W          R0, [R11,#0xE6]
358E94:  CMP             R0, #0
358E96:  BEQ.W           loc_35ACA2
358E9A:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x358EA2)
358E9E:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
358EA0:  B               loc_358F0A
358EA2:  MOV             R0, R11; jumptable 00358A92 case 1616
358EA4:  MOVS            R1, #1; __int16
358EA6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358EAA:  LDR.W           R0, =(ScriptParams_ptr - 0x358EB4)
358EAE:  MOVS            R1, #1; int
358EB0:  ADD             R0, PC; ScriptParams_ptr
358EB2:  LDR             R0, [R0]; ScriptParams
358EB4:  LDR             R5, [R0]
358EB6:  MOV             R0, R5; this
358EB8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358EBC:  CMP             R0, #0
358EBE:  BLT.W           loc_35ACA2
358EC2:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358ECA)
358EC6:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
358EC8:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
358ECA:  ADD.W           R0, R1, R0,LSL#3
358ECE:  LDR             R0, [R0,#4]; this
358ED0:  CMP             R0, #0
358ED2:  BEQ.W           loc_35ACA2
358ED6:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
358EDA:  MOV             R0, R5; this
358EDC:  MOVS            R1, #1; int
358EDE:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358EE2:  ADDS            R1, R0, #1
358EE4:  BEQ             loc_358EFA
358EE6:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358EF0)
358EEA:  MOVS            R2, #0
358EEC:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
358EEE:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
358EF0:  STRB.W          R2, [R1,R0,LSL#3]
358EF4:  ADD.W           R0, R1, R0,LSL#3
358EF8:  STR             R2, [R0,#4]
358EFA:  LDRB.W          R0, [R11,#0xE6]
358EFE:  CMP             R0, #0
358F00:  BEQ.W           loc_35ACA2
358F04:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x358F0C)
358F08:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
358F0A:  LDR             R0, [R0]; CTheScripts::MissionCleanUp ...
358F0C:  MOV             R1, R5
358F0E:  MOVS            R2, #4
358F10:  B               loc_359136
358F12:  MOV             R0, R11; jumptable 00358A92 case 1618
358F14:  MOVS            R1, #1; __int16
358F16:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358F1A:  LDR.W           R0, =(ScriptParams_ptr - 0x358F22)
358F1E:  ADD             R0, PC; ScriptParams_ptr
358F20:  LDR             R4, [R0]; ScriptParams
358F22:  LDRH            R0, [R4]; this
358F24:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
358F28:  VMOV            S0, R0
358F2C:  VCVT.S32.F32    S0, S0
358F30:  VSTR            S0, [R4]
358F34:  B.W             loc_35AC9A
358F38:  MOV             R0, R11; jumptable 00358A92 case 1619
358F3A:  MOVS            R1, #1; __int16
358F3C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358F40:  LDR.W           R0, =(ScriptParams_ptr - 0x358F48)
358F44:  ADD             R0, PC; ScriptParams_ptr
358F46:  LDR             R4, [R0]; ScriptParams
358F48:  LDRH            R0, [R4]; this
358F4A:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
358F4E:  STR             R0, [R4]
358F50:  B.W             loc_35AC9A
358F54:  MOV             R0, R11; jumptable 00358A92 case 1620
358F56:  MOVS            R1, #2; __int16
358F58:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358F5C:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x358F6E)
358F60:  MOV.W           R3, #0x1A4
358F64:  LDR.W           R0, =(ScriptParams_ptr - 0x358F70)
358F68:  MOVS            R6, #0
358F6A:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
358F6C:  ADD             R0, PC; ScriptParams_ptr
358F6E:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
358F70:  LDR             R0, [R0]; ScriptParams
358F72:  LDRD.W          R2, R0, [R0]
358F76:  CMP             R0, #0
358F78:  LDR             R1, [R1]; CPools::ms_pObjectPool
358F7A:  MOV.W           R2, R2,LSR#8
358F7E:  LDR             R1, [R1]
358F80:  MLA.W           R1, R2, R3, R1
358F84:  LDR             R2, [R1,#0x44]
358F86:  BIC.W           R3, R2, #0x20000000
358F8A:  IT NE
358F8C:  ORRNE.W         R3, R2, #0x20000000
358F90:  STR             R3, [R1,#0x44]
358F92:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
358F96:  MOV             R0, R11; jumptable 00358A92 case 1621
358F98:  MOVS            R1, #3; __int16
358F9A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358F9E:  LDR.W           R0, =(ScriptParams_ptr - 0x358FA6)
358FA2:  ADD             R0, PC; ScriptParams_ptr
358FA4:  LDR             R2, [R0]; ScriptParams
358FA6:  LDM.W           R2, {R0,R1,R4}
358FAA:  ADDS            R2, R4, #1
358FAC:  BEQ.W           loc_35ACFC
358FB0:  ADDS            R2, R4, #2
358FB2:  ITT EQ
358FB4:  MOVWEQ          R4, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
358FB8:  MOVTEQ          R4, #:upper16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
358FBC:  CMP             R1, #0
358FBE:  BGE.W           loc_35AD04
358FC2:  B.W             loc_35AD72
358FC6:  MOV             R0, R11; jumptable 00358A92 case 1622
358FC8:  MOVS            R1, #1; __int16
358FCA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
358FCE:  LDR.W           R0, =(ScriptParams_ptr - 0x358FD6)
358FD2:  ADD             R0, PC; ScriptParams_ptr
358FD4:  LDR             R0, [R0]; ScriptParams
358FD6:  LDR             R0, [R0]
358FD8:  VMOV            S0, R0
358FDC:  VCMPE.F32       S0, #0.0
358FE0:  VMRS            APSR_nzcv, FPSCR
358FE4:  BGE             loc_358FFC
358FE6:  VLDR            S2, =360.0
358FEA:  VADD.F32        S0, S0, S2
358FEE:  VCMPE.F32       S0, #0.0
358FF2:  VMRS            APSR_nzcv, FPSCR
358FF6:  BLT             loc_358FEA
358FF8:  VMOV            R0, S0
358FFC:  VLDR            S2, =360.0
359000:  VMOV            S0, R0
359004:  VCMPE.F32       S0, S2
359008:  VMRS            APSR_nzcv, FPSCR
35900C:  BLE             loc_359024
35900E:  VLDR            S4, =-360.0
359012:  VADD.F32        S0, S0, S4
359016:  VCMPE.F32       S0, S2
35901A:  VMRS            APSR_nzcv, FPSCR
35901E:  BGT             loc_359012
359020:  VMOV            R0, S0
359024:  LDR.W           R1, =(ScriptParams_ptr - 0x35902C)
359028:  ADD             R1, PC; ScriptParams_ptr
35902A:  B.W             loc_35AC96
35902E:  MOV             R0, R11; jumptable 00358A92 case 1623
359030:  MOVS            R1, #2; __int16
359032:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359036:  LDR.W           R0, =(ScriptParams_ptr - 0x35903E)
35903A:  ADD             R0, PC; ScriptParams_ptr
35903C:  LDR             R0, [R0]; ScriptParams
35903E:  LDR             R1, [R0]
359040:  CMP             R1, #0
359042:  BLT.W           loc_35A142
359046:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359052)
35904A:  UXTB            R3, R1
35904C:  LSRS            R1, R1, #8
35904E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359050:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359052:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359054:  LDR             R2, [R0,#4]
359056:  LDRB            R2, [R2,R1]
359058:  CMP             R2, R3
35905A:  BNE.W           loc_35A142
35905E:  MOVW            R2, #0xA2C
359062:  LDR             R0, [R0]
359064:  MLA.W           R4, R1, R2, R0
359068:  B.W             loc_35A144
35906C:  MOV             R0, R11; jumptable 00358A92 case 1627
35906E:  MOVS            R1, #1; __int16
359070:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359074:  LDR.W           R0, =(ScriptParams_ptr - 0x35907C)
359078:  ADD             R0, PC; ScriptParams_ptr
35907A:  LDR             R0, [R0]; ScriptParams
35907C:  LDR             R0, [R0]; this
35907E:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
359082:  ADDS            R1, R0, #1
359084:  BEQ.W           loc_35AC06
359088:  LDR.W           R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x359094)
35908C:  VMOV.F32        S0, #0.125
359090:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
359092:  LDR             R1, [R1]; CPickups::aPickUps ...
359094:  ADD.W           R0, R1, R0,LSL#5
359098:  LDRSH.W         R1, [R0,#0x10]
35909C:  LDRSH.W         R2, [R0,#0x12]
3590A0:  LDRSH.W         R0, [R0,#0x14]
3590A4:  VMOV            S6, R1
3590A8:  VMOV            S4, R2
3590AC:  VMOV            S2, R0
3590B0:  VCVT.F32.S32    S2, S2
3590B4:  VCVT.F32.S32    S4, S4
3590B8:  VCVT.F32.S32    S6, S6
3590BC:  VMUL.F32        S2, S2, S0
3590C0:  VMUL.F32        S4, S4, S0
3590C4:  VMUL.F32        S0, S6, S0
3590C8:  VMOV            R0, S2
3590CC:  VMOV            R2, S4
3590D0:  VMOV            R1, S0
3590D4:  B.W             loc_35AC10
3590D8:  DCFS -100.0
3590DC:  DCFS 360.0
3590E0:  DCFS -360.0
3590E4:  MOV             R0, R11; jumptable 00358A92 case 1628
3590E6:  MOVS            R1, #1; __int16
3590E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3590EC:  LDR.W           R0, =(ScriptParams_ptr - 0x3590F6)
3590F0:  MOVS            R1, #7; int
3590F2:  ADD             R0, PC; ScriptParams_ptr
3590F4:  LDR             R0, [R0]; ScriptParams
3590F6:  LDR             R5, [R0]
3590F8:  MOV             R0, R5; this
3590FA:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3590FE:  MOV             R6, R0
359100:  CMP             R6, #0x13
359102:  BHI             loc_359120
359104:  LDR.W           R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x359112)
359108:  MOV             R1, R5; int
35910A:  MOVS            R2, #3; unsigned int
35910C:  MOV             R3, R11; CRunningScript *
35910E:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
359110:  LDR             R0, [R0]; this
359112:  BLX             j__ZN22CScriptResourceManager25RemoveFromResourceManagerEijP14CRunningScript; CScriptResourceManager::RemoveFromResourceManager(int,uint,CRunningScript *)
359116:  CMP             R0, #0
359118:  ITT NE
35911A:  MOVNE           R0, R6; this
35911C:  BLXNE           j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
359120:  LDRB.W          R0, [R11,#0xE6]
359124:  CMP             R0, #0
359126:  BEQ.W           loc_35ACA2
35912A:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x359136)
35912E:  MOV             R1, R5; int
359130:  MOVS            R2, #9; unsigned __int8
359132:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
359134:  LDR             R0, [R0]; this
359136:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
35913A:  B.W             loc_35ACA2
35913E:  MOV             R0, R11; jumptable 00358A92 case 1637
359140:  MOVS            R1, #1; __int16
359142:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359146:  LDR.W           R0, =(ScriptParams_ptr - 0x359156)
35914A:  MOVW            R3, #0x7CC
35914E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x359158)
359152:  ADD             R0, PC; ScriptParams_ptr
359154:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
359156:  LDR             R0, [R0]; ScriptParams
359158:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35915A:  LDR             R2, [R0]
35915C:  LDR             R1, [R1]; CPools::ms_pPedPool
35915E:  LSRS            R2, R2, #8
359160:  LDR             R1, [R1]
359162:  MLA.W           R1, R2, R3, R1
359166:  LDRSH.W         R1, [R1,#0x26]
35916A:  B.W             loc_35AC02
35916E:  MOV             R0, R11; jumptable 00358A92 case 1639
359170:  MOVS            R1, #5; __int16
359172:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359176:  LDR.W           R0, =(ScriptParams_ptr - 0x359180)
35917A:  ADD             R3, SP, #0xE0+var_7C
35917C:  ADD             R0, PC; ScriptParams_ptr
35917E:  LDR             R4, [R0]; ScriptParams
359180:  LDRD.W          R8, R0, [R4]
359184:  LDRD.W          R1, R2, [R4,#(dword_81A910 - 0x81A908)]; unsigned int
359188:  STM             R3!, {R0-R2}
35918A:  MOVS            R0, #off_3C; this
35918C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
359190:  MOV             R5, R0
359192:  LDR             R0, [R4,#(dword_81A918 - 0x81A908)]
359194:  MOV.W           R1, #0x1F4
359198:  MOVS            R6, #0
35919A:  ADD             R2, SP, #0xE0+var_7C; CVector *
35919C:  STRD.W          R6, R1, [SP,#0xE0+var_E0]; signed __int8
3591A0:  STR             R0, [SP,#0xE0+var_D8]; int
3591A2:  MOV             R0, R5; this
3591A4:  MOVS            R1, #0; CEntity *
3591A6:  MOVS            R3, #0; CVector *
3591A8:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
3591AC:  MOV             R0, R11; this
3591AE:  MOV             R1, R8; int
3591B0:  MOV             R2, R5; CTask *
3591B2:  MOVW            R3, #0x667; int
3591B6:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
3591BA:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
3591BE:  MOV             R0, R11; jumptable 00358A92 case 1640
3591C0:  MOVS            R1, #5; __int16
3591C2:  MOVS            R4, #5
3591C4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3591C8:  LDR.W           R0, =(ScriptParams_ptr - 0x3591D0)
3591CC:  ADD             R0, PC; ScriptParams_ptr
3591CE:  LDR             R0, [R0]; ScriptParams
3591D0:  LDRD.W          R5, R1, [R0]
3591D4:  LDRD.W          R2, R0, [R0,#(dword_81A910 - 0x81A908)]
3591D8:  STRD.W          R1, R2, [SP,#0xE0+var_9C]
3591DC:  STR             R0, [SP,#0xE0+var_94]
3591DE:  ADDS            R0, R5, #1
3591E0:  BEQ             loc_359226
3591E2:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3591F0)
3591E6:  LSRS            R1, R5, #8
3591E8:  MOVW            R2, #0x7CC
3591EC:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3591EE:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3591F0:  LDR             R0, [R0]; CPools::ms_pPedPool
3591F2:  LDR             R0, [R0]
3591F4:  MLA.W           R0, R1, R2, R0
3591F8:  LDRSB.W         R1, [R0,#0x71C]
3591FC:  RSB.W           R1, R1, R1,LSL#3
359200:  ADD.W           R0, R0, R1,LSL#2
359204:  MOVS            R1, #1
359206:  LDR.W           R0, [R0,#0x5A4]
35920A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
35920E:  LDRB            R0, [R0,#0x19]
359210:  LSLS            R0, R0, #0x1F
359212:  BEQ             loc_359226
359214:  MOVS            R0, #dword_1C; this
359216:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35921A:  ADD             R2, SP, #0xE0+var_9C; CVector *
35921C:  MOVS            R1, #0; CEntity *
35921E:  MOV             R6, R0
359220:  BLX             j__ZN23CTaskSimpleThrowControlC2EP7CEntityPK7CVector; CTaskSimpleThrowControl::CTaskSimpleThrowControl(CEntity *,CVector const*)
359224:  CBNZ            R6, loc_35924C
359226:  MOVS            R0, #off_3C; this
359228:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35922C:  MOV             R6, R0
35922E:  LDR.W           R0, =(ScriptParams_ptr - 0x35923A)
359232:  MOVS            R1, #3
359234:  ADD             R2, SP, #0xE0+var_9C; CVector *
359236:  ADD             R0, PC; ScriptParams_ptr
359238:  MOVS            R3, #0; CVector *
35923A:  LDR             R0, [R0]; ScriptParams
35923C:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
35923E:  STRD.W          R1, R4, [SP,#0xE0+var_E0]; signed __int8
359242:  MOVS            R1, #0; CEntity *
359244:  STR             R0, [SP,#0xE0+var_D8]; int
359246:  MOV             R0, R6; this
359248:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
35924C:  MOV             R0, R11
35924E:  MOV             R1, R5
359250:  MOV             R2, R6
359252:  MOV.W           R3, #0x668
359256:  B.W             loc_35A732
35925A:  ADD             R1, SP, #0xE0+var_7C; jumptable 00358A92 case 1641
35925C:  MOV             R0, R11; this
35925E:  MOVS            R2, #0x20 ; ' '; unsigned __int8
359260:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
359264:  MOV             R0, R11; this
359266:  MOVS            R1, #5; __int16
359268:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35926C:  MOV             R0, R11; this
35926E:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
359272:  MOVS            R1, #1; int
359274:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
359278:  LDR.W           R0, =(ScriptParams_ptr - 0x359280)
35927C:  ADD             R0, PC; ScriptParams_ptr
35927E:  LDR             R0, [R0]; ScriptParams
359280:  LDR             R1, [R0]
359282:  CMP             R1, #0
359284:  BLT.W           loc_35A196
359288:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x359294)
35928C:  UXTB            R3, R1
35928E:  LSRS            R1, R1, #8
359290:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
359292:  LDR             R0, [R0]; CPools::ms_pPedPool ...
359294:  LDR             R0, [R0]; CPools::ms_pPedPool
359296:  LDR             R2, [R0,#4]
359298:  LDRB            R2, [R2,R1]
35929A:  CMP             R2, R3
35929C:  BNE.W           loc_35A196
3592A0:  MOVW            R2, #0x7CC
3592A4:  LDR             R0, [R0]
3592A6:  MLA.W           R5, R1, R2, R0
3592AA:  B.W             loc_35A198
3592AE:  ADD             R1, SP, #0xE0+var_9C; jumptable 00358A92 case 1642
3592B0:  MOV             R0, R11; this
3592B2:  MOVS            R2, #0x20 ; ' '; unsigned __int8
3592B4:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3592B8:  MOV             R0, R11; this
3592BA:  MOVS            R1, #8; __int16
3592BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3592C0:  MOV             R0, R11; this
3592C2:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3592C6:  MOVS            R1, #1; int
3592C8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3592CC:  LDR.W           R0, =(ScriptParams_ptr - 0x3592D4)
3592D0:  ADD             R0, PC; ScriptParams_ptr
3592D2:  LDR             R0, [R0]; ScriptParams
3592D4:  LDR             R1, [R0]
3592D6:  CMP             R1, #0
3592D8:  BLT.W           loc_35A262
3592DC:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3592E8)
3592E0:  UXTB            R3, R1
3592E2:  LSRS            R1, R1, #8
3592E4:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3592E6:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3592E8:  LDR             R0, [R0]; CPools::ms_pPedPool
3592EA:  LDR             R2, [R0,#4]
3592EC:  LDRB            R2, [R2,R1]
3592EE:  CMP             R2, R3
3592F0:  BNE.W           loc_35A262
3592F4:  MOVW            R2, #0x7CC
3592F8:  LDR             R0, [R0]
3592FA:  MLA.W           R5, R1, R2, R0
3592FE:  B.W             loc_35A264
359302:  ADD             R1, SP, #0xE0+var_7C; jumptable 00358A92 case 1643
359304:  MOV             R0, R11; this
359306:  MOVS            R2, #0x20 ; ' '; unsigned __int8
359308:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
35930C:  MOV             R0, R11; this
35930E:  MOVS            R1, #5; __int16
359310:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359314:  MOV             R0, R11; this
359316:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
35931A:  MOVS            R1, #1; int
35931C:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
359320:  LDR.W           R0, =(ScriptParams_ptr - 0x359328)
359324:  ADD             R0, PC; ScriptParams_ptr
359326:  LDR             R0, [R0]; ScriptParams
359328:  LDR             R1, [R0]
35932A:  CMP             R1, #0
35932C:  BLT.W           loc_35A356
359330:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35933C)
359334:  UXTB            R3, R1
359336:  LSRS            R1, R1, #8
359338:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35933A:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35933C:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35933E:  LDR             R2, [R0,#4]
359340:  LDRB            R2, [R2,R1]
359342:  CMP             R2, R3
359344:  BNE.W           loc_35A356
359348:  MOVW            R2, #0xA2C
35934C:  LDR             R0, [R0]
35934E:  MLA.W           R5, R1, R2, R0
359352:  B.W             loc_35A358
359356:  ADD             R1, SP, #0xE0+var_9C; jumptable 00358A92 case 1644
359358:  MOV             R0, R11; this
35935A:  MOVS            R2, #0x20 ; ' '; unsigned __int8
35935C:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
359360:  MOV             R0, R11; this
359362:  MOVS            R1, #8; __int16
359364:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359368:  MOV             R0, R11; this
35936A:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
35936E:  MOVS            R1, #1; int
359370:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
359374:  LDR.W           R0, =(ScriptParams_ptr - 0x35937C)
359378:  ADD             R0, PC; ScriptParams_ptr
35937A:  LDR             R0, [R0]; ScriptParams
35937C:  LDR             R1, [R0]
35937E:  CMP             R1, #0
359380:  BLT.W           loc_35A42C
359384:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359390)
359388:  UXTB            R3, R1
35938A:  LSRS            R1, R1, #8
35938C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35938E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359390:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359392:  LDR             R2, [R0,#4]
359394:  LDRB            R2, [R2,R1]
359396:  CMP             R2, R3
359398:  BNE.W           loc_35A42C
35939C:  MOVW            R2, #0xA2C
3593A0:  LDR             R0, [R0]
3593A2:  MLA.W           R5, R1, R2, R0
3593A6:  B.W             loc_35A42E
3593AA:  ADD             R1, SP, #0xE0+var_7C; jumptable 00358A92 case 1645
3593AC:  MOV             R0, R11; this
3593AE:  MOVS            R2, #0x20 ; ' '; unsigned __int8
3593B0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3593B4:  MOV             R0, R11; this
3593B6:  MOVS            R1, #5; __int16
3593B8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3593BC:  MOV             R0, R11; this
3593BE:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3593C2:  MOVS            R1, #1; int
3593C4:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3593C8:  LDR.W           R0, =(ScriptParams_ptr - 0x3593D0)
3593CC:  ADD             R0, PC; ScriptParams_ptr
3593CE:  LDR             R0, [R0]; ScriptParams
3593D0:  LDR             R1, [R0]
3593D2:  CMP             R1, #0
3593D4:  BLT.W           loc_35A520
3593D8:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3593E4)
3593DC:  UXTB            R3, R1
3593DE:  LSRS            R1, R1, #8
3593E0:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3593E2:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3593E4:  LDR             R0, [R0]; CPools::ms_pObjectPool
3593E6:  LDR             R2, [R0,#4]
3593E8:  LDRB            R2, [R2,R1]
3593EA:  CMP             R2, R3
3593EC:  BNE.W           loc_35A520
3593F0:  MOV.W           R2, #0x1A4
3593F4:  LDR             R0, [R0]
3593F6:  MLA.W           R5, R1, R2, R0
3593FA:  B.W             loc_35A522
3593FE:  ADD             R1, SP, #0xE0+var_9C; jumptable 00358A92 case 1646
359400:  MOV             R0, R11; this
359402:  MOVS            R2, #0x20 ; ' '; unsigned __int8
359404:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
359408:  MOV             R0, R11; this
35940A:  MOVS            R1, #8; __int16
35940C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359410:  MOV             R0, R11; this
359412:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
359416:  MOVS            R1, #1; int
359418:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35941C:  LDR.W           R0, =(ScriptParams_ptr - 0x359424)
359420:  ADD             R0, PC; ScriptParams_ptr
359422:  LDR             R0, [R0]; ScriptParams
359424:  LDR             R1, [R0]
359426:  CMP             R1, #0
359428:  BLT.W           loc_35A5EC
35942C:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x359438)
359430:  UXTB            R3, R1
359432:  LSRS            R1, R1, #8
359434:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
359436:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
359438:  LDR             R0, [R0]; CPools::ms_pObjectPool
35943A:  LDR             R2, [R0,#4]
35943C:  LDRB            R2, [R2,R1]
35943E:  CMP             R2, R3
359440:  BNE.W           loc_35A5EC
359444:  MOV.W           R2, #0x1A4
359448:  LDR             R0, [R0]
35944A:  MLA.W           R5, R1, R2, R0
35944E:  B.W             loc_35A5EE
359452:  MOV             R0, R11; jumptable 00358A92 case 1650
359454:  MOVS            R1, #2; __int16
359456:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35945A:  LDR.W           R0, =(ScriptParams_ptr - 0x359464)
35945E:  MOVS            R6, #0
359460:  ADD             R0, PC; ScriptParams_ptr
359462:  LDR             R0, [R0]; ScriptParams
359464:  LDRD.W          R8, R0, [R0]
359468:  CMP             R0, #0
35946A:  BLT.W           loc_35A6E8
35946E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35947A)
359472:  UXTB            R3, R0
359474:  LSRS            R0, R0, #8
359476:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359478:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35947A:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35947C:  LDR             R2, [R1,#4]
35947E:  LDRB            R2, [R2,R0]
359480:  CMP             R2, R3
359482:  BNE.W           loc_35A6E8
359486:  MOVW            R2, #0xA2C
35948A:  LDR             R1, [R1]
35948C:  MLA.W           R9, R0, R2, R1
359490:  B.W             loc_35A6EC
359494:  MOV             R0, R11; jumptable 00358A92 case 1651
359496:  MOVS            R1, #4; __int16
359498:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35949C:  LDR.W           R0, =(ScriptParams_ptr - 0x3594AA)
3594A0:  ADD.W           R8, SP, #0xE0+var_7C
3594A4:  MOVS            R6, #0
3594A6:  ADD             R0, PC; ScriptParams_ptr
3594A8:  LDR             R4, [R0]; ScriptParams
3594AA:  LDRD.W          R9, R0, [R4]
3594AE:  LDR             R1, [R4,#(dword_81A910 - 0x81A908)]
3594B0:  STRD.W          R0, R1, [SP,#0xE0+var_7C]
3594B4:  MOV             R0, R8; this
3594B6:  STR             R6, [SP,#0xE0+var_74]
3594B8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3594BC:  MOVS            R0, #dword_24; this
3594BE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3594C2:  LDR             R2, [R4,#(dword_81A914 - 0x81A908)]; int
3594C4:  MOV             R5, R0
3594C6:  MOVS            R0, #1
3594C8:  MOVS            R1, #0; CVehicle *
3594CA:  STR             R0, [SP,#0xE0+var_E0]; bool
3594CC:  MOV             R0, R5; this
3594CE:  MOV             R3, R8; CVector *
3594D0:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
3594D4:  MOV             R0, R11; this
3594D6:  MOV             R1, R9; int
3594D8:  MOV             R2, R5; CTask *
3594DA:  MOVW            R3, #0x673; int
3594DE:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
3594E2:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
3594E6:  MOV             R0, R11; jumptable 00358A92 case 1652
3594E8:  MOVS            R1, #1; __int16
3594EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3594EE:  ADD             R1, SP, #0xE0+var_7C; char *
3594F0:  MOV             R0, R11; this
3594F2:  MOVS            R2, #9; unsigned __int8
3594F4:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3594F8:  LDRB.W          R0, [SP,#0xE0+var_7C]
3594FC:  CMP             R0, #0x5F ; '_'
3594FE:  IT NE
359500:  CMPNE           R0, #0
359502:  BNE             loc_35950A
359504:  MOVS            R0, #0x20 ; ' '
359506:  STRB.W          R0, [SP,#0xE0+var_7C]
35950A:  LDRB.W          R0, [SP,#0xE0+var_7C+1]
35950E:  CMP             R0, #0
359510:  IT NE
359512:  CMPNE           R0, #0x5F ; '_'
359514:  BNE             loc_35951C
359516:  MOVS            R0, #0x20 ; ' '
359518:  STRB.W          R0, [SP,#0xE0+var_7C+1]
35951C:  LDRB.W          R0, [SP,#0xE0+var_7C+2]
359520:  CMP             R0, #0x5F ; '_'
359522:  IT NE
359524:  CMPNE           R0, #0
359526:  BNE             loc_35952E
359528:  MOVS            R0, #0x20 ; ' '
35952A:  STRB.W          R0, [SP,#0xE0+var_7C+2]
35952E:  LDRB.W          R0, [SP,#0xE0+var_7C+3]
359532:  CMP             R0, #0x5F ; '_'
359534:  IT NE
359536:  CMPNE           R0, #0
359538:  BNE             loc_359540
35953A:  MOVS            R0, #0x20 ; ' '
35953C:  STRB.W          R0, [SP,#0xE0+var_7C+3]
359540:  LDRB.W          R0, [SP,#0xE0+var_78]
359544:  CMP             R0, #0x5F ; '_'
359546:  IT NE
359548:  CMPNE           R0, #0
35954A:  BNE             loc_359552
35954C:  MOVS            R0, #0x20 ; ' '
35954E:  STRB.W          R0, [SP,#0xE0+var_78]
359552:  LDRB.W          R0, [SP,#0xE0+var_78+1]
359556:  CMP             R0, #0x5F ; '_'
359558:  IT NE
35955A:  CMPNE           R0, #0
35955C:  BNE             loc_359564
35955E:  MOVS            R0, #0x20 ; ' '
359560:  STRB.W          R0, [SP,#0xE0+var_78+1]
359564:  LDRB.W          R0, [SP,#0xE0+var_78+2]
359568:  CMP             R0, #0x5F ; '_'
35956A:  IT NE
35956C:  CMPNE           R0, #0
35956E:  BNE             loc_359576
359570:  MOVS            R0, #0x20 ; ' '
359572:  STRB.W          R0, [SP,#0xE0+var_78+2]
359576:  LDRB.W          R0, [SP,#0xE0+var_78+3]
35957A:  CMP             R0, #0x5F ; '_'
35957C:  IT NE
35957E:  CMPNE           R0, #0
359580:  BNE             loc_359588
359582:  MOVS            R0, #0x20 ; ' '
359584:  STRB.W          R0, [SP,#0xE0+var_78+3]
359588:  LDR.W           R0, =(ScriptParams_ptr - 0x359596)
35958C:  MOVS            R2, #0
35958E:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35959C)
359592:  ADD             R0, PC; ScriptParams_ptr
359594:  STRB.W          R2, [SP,#0xE0+var_74]
359598:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
35959A:  LDR             R0, [R0]; ScriptParams
35959C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
35959E:  LDR             R0, [R0]
3595A0:  LDR.W           R4, [R1,R0,LSL#2]
3595A4:  CMP             R4, #0
3595A6:  BEQ.W           loc_35ACA2
3595AA:  LDR             R0, [R4]
3595AC:  LDR             R1, [R0,#0x14]
3595AE:  MOV             R0, R4
3595B0:  BLX             R1
3595B2:  CMP             R0, #6
3595B4:  BNE.W           loc_35ACA2
3595B8:  LDR             R0, [R4,#0x3C]
3595BA:  CMP             R0, #0
3595BC:  ITTT NE
3595BE:  ADDNE.W         R1, SP, #0xE0+var_7C; char *
3595C2:  MOVNE           R0, R4; this
3595C4:  BLXNE           j__ZN17CVehicleModelInfo21SetCustomCarPlateTextEPc; CVehicleModelInfo::SetCustomCarPlateText(char *)
3595C8:  B.W             loc_35ACA2
3595CC:  MOV             R0, R11; jumptable 00358A92 case 1654
3595CE:  MOVS            R1, #2; __int16
3595D0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3595D4:  LDR.W           R0, =(ScriptParams_ptr - 0x3595DC)
3595D8:  ADD             R0, PC; ScriptParams_ptr
3595DA:  LDR             R0, [R0]; ScriptParams
3595DC:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
3595DE:  CMP             R1, #0
3595E0:  BLT.W           loc_35A710
3595E4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3595F0)
3595E8:  UXTB            R3, R1
3595EA:  LSRS            R1, R1, #8
3595EC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3595EE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3595F0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3595F2:  LDR             R2, [R0,#4]
3595F4:  LDRB            R2, [R2,R1]
3595F6:  CMP             R2, R3
3595F8:  BNE.W           loc_35A710
3595FC:  MOVW            R2, #0xA2C
359600:  LDR             R0, [R0]
359602:  MLA.W           R5, R1, R2, R0
359606:  B.W             loc_35A712
35960A:  MOV             R0, R11; jumptable 00358A92 case 1655
35960C:  MOVS            R1, #4; __int16
35960E:  MOVS            R4, #4
359610:  STR.W           R11, [SP,#0xE0+var_B8]
359614:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359618:  LDR.W           R0, =(ScriptParams_ptr - 0x359622)
35961C:  MOVS            R6, #0
35961E:  ADD             R0, PC; ScriptParams_ptr
359620:  LDR             R1, [R0]; ScriptParams ; unsigned int
359622:  LDRD.W          R8, R0, [R1]
359626:  LDRD.W          R10, R11, [R1,#(dword_81A910 - 0x81A908)]
35962A:  CMP.W           R10, #0
35962E:  IT NE
359630:  MOVNE.W         R10, #1
359634:  CMP             R0, #0
359636:  BLT.W           loc_35A738
35963A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x359646)
35963E:  UXTB            R3, R0
359640:  LSRS            R0, R0, #8
359642:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
359644:  LDR             R1, [R1]; CPools::ms_pPedPool ...
359646:  LDR             R1, [R1]; CPools::ms_pPedPool
359648:  LDR             R2, [R1,#4]
35964A:  LDRB            R2, [R2,R0]
35964C:  CMP             R2, R3
35964E:  BNE.W           loc_35A738
359652:  MOVW            R2, #0x7CC
359656:  LDR             R1, [R1]
359658:  MLA.W           R9, R0, R2, R1
35965C:  B.W             loc_35A73C
359660:  MOV             R0, R11; jumptable 00358A92 case 1657
359662:  MOVS            R1, #9; __int16
359664:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359668:  LDR.W           R0, =(ScriptParams_ptr - 0x359674)
35966C:  LDR.W           R12, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359676)
359670:  ADD             R0, PC; ScriptParams_ptr
359672:  ADD             R12, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359674:  LDR             R0, [R0]; ScriptParams
359676:  LDR.W           R4, [R12]; CPools::ms_pVehiclePool ...
35967A:  LDRD.W          R1, LR, [R0]
35967E:  LDRD.W          R6, R5, [R0,#(dword_81A910 - 0x81A908)]
359682:  LDRD.W          R8, R2, [R0,#(dword_81A918 - 0x81A908)]
359686:  CMP             R1, #0
359688:  LDR             R3, [R0,#(dword_81A920 - 0x81A908)]
35968A:  VLDR            S0, [R0,#0x1C]
35968E:  LDR.W           R12, [R4]; CPools::ms_pVehiclePool
359692:  LDR             R0, [R0,#(dword_81A928 - 0x81A908)]
359694:  STR             R5, [SP,#0xE0+var_74]
359696:  STRD.W          LR, R6, [SP,#0xE0+var_7C]
35969A:  STR             R3, [SP,#0xE0+var_94]
35969C:  STRD.W          R8, R2, [SP,#0xE0+var_9C]
3596A0:  BLT.W           loc_35A780
3596A4:  LDR.W           R2, [R12,#4]
3596A8:  UXTB            R3, R1
3596AA:  LSRS            R1, R1, #8
3596AC:  LDRB            R2, [R2,R1]
3596AE:  CMP             R2, R3
3596B0:  BNE.W           loc_35A780
3596B4:  MOVW            R2, #0xA2C
3596B8:  LDR.W           R3, [R12]
3596BC:  MLA.W           R2, R1, R2, R3
3596C0:  B.W             loc_35A782
3596C4:  MOV             R0, R11; jumptable 00358A92 case 1658
3596C6:  MOVS            R1, #7; __int16
3596C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3596CC:  LDR             R0, =(ScriptParams_ptr - 0x3596D4)
3596CE:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3596D6)
3596D0:  ADD             R0, PC; ScriptParams_ptr
3596D2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3596D4:  LDR             R0, [R0]; ScriptParams
3596D6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3596D8:  LDRD.W          R2, R6, [R0]
3596DC:  LDRD.W          R5, R4, [R0,#(dword_81A910 - 0x81A908)]
3596E0:  LDR             R3, [R0,#(dword_81A918 - 0x81A908)]
3596E2:  CMP             R2, #0
3596E4:  VLDR            S0, [R0,#0x14]
3596E8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3596EA:  LDR             R0, [R0,#(dword_81A920 - 0x81A908)]
3596EC:  STRD.W          R6, R5, [SP,#0xE0+var_7C]
3596F0:  STR             R4, [SP,#0xE0+var_74]
3596F2:  BLT.W           loc_35A78A
3596F6:  LDR             R6, [R1,#4]
3596F8:  UXTB            R5, R2
3596FA:  LSRS            R2, R2, #8
3596FC:  LDRB            R6, [R6,R2]
3596FE:  CMP             R6, R5
359700:  BNE.W           loc_35A78A
359704:  MOVW            R6, #0xA2C
359708:  LDR             R5, [R1]
35970A:  MLA.W           R2, R2, R6, R5
35970E:  CMP             R3, #0
359710:  BGE.W           loc_35A792
359714:  B.W             loc_35AAB4
359718:  MOV             R0, R11; jumptable 00358A92 case 1659
35971A:  MOVS            R1, #7; __int16
35971C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359720:  LDR             R0, =(ScriptParams_ptr - 0x359728)
359722:  LDR             R3, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35972A)
359724:  ADD             R0, PC; ScriptParams_ptr
359726:  ADD             R3, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359728:  LDR             R0, [R0]; ScriptParams
35972A:  LDR             R3, [R3]; CPools::ms_pVehiclePool ...
35972C:  LDRD.W          R2, R6, [R0]
359730:  LDRD.W          R5, R4, [R0,#(dword_81A910 - 0x81A908)]
359734:  LDR             R1, [R0,#(dword_81A918 - 0x81A908)]
359736:  CMP             R2, #0
359738:  VLDR            S0, [R0,#0x14]
35973C:  LDR             R3, [R3]; CPools::ms_pVehiclePool
35973E:  LDR             R0, [R0,#(dword_81A920 - 0x81A908)]
359740:  STRD.W          R6, R5, [SP,#0xE0+var_7C]
359744:  STR             R4, [SP,#0xE0+var_74]
359746:  BLT.W           loc_35A7AC
35974A:  LDR             R6, [R3,#4]
35974C:  UXTB            R5, R2
35974E:  LSRS            R2, R2, #8
359750:  LDRB            R6, [R6,R2]
359752:  CMP             R6, R5
359754:  BNE.W           loc_35A7AC
359758:  MOVW            R6, #0xA2C
35975C:  LDR             R3, [R3]
35975E:  MLA.W           R2, R2, R6, R3
359762:  CMP             R1, #0
359764:  BGE.W           loc_35A7B4
359768:  LDR             R6, =(TheCamera_ptr - 0x359770)
35976A:  MOVS            R1, #0
35976C:  ADD             R6, PC; TheCamera_ptr
35976E:  B.W             loc_35AE12
359772:  MOV             R0, R11; jumptable 00358A92 case 1660
359774:  MOVS            R1, #9; __int16
359776:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35977A:  LDR             R0, =(ScriptParams_ptr - 0x359784)
35977C:  LDR.W           R12, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x359786)
359780:  ADD             R0, PC; ScriptParams_ptr
359782:  ADD             R12, PC; _ZN6CPools11ms_pPedPoolE_ptr
359784:  LDR             R0, [R0]; ScriptParams
359786:  LDR.W           R4, [R12]; CPools::ms_pPedPool ...
35978A:  LDRD.W          R1, LR, [R0]
35978E:  LDRD.W          R6, R5, [R0,#(dword_81A910 - 0x81A908)]
359792:  LDRD.W          R8, R2, [R0,#(dword_81A918 - 0x81A908)]
359796:  CMP             R1, #0
359798:  LDR             R3, [R0,#(dword_81A920 - 0x81A908)]
35979A:  VLDR            S0, [R0,#0x1C]
35979E:  LDR.W           R12, [R4]; CPools::ms_pPedPool
3597A2:  LDR             R0, [R0,#(dword_81A928 - 0x81A908)]
3597A4:  STR             R5, [SP,#0xE0+var_74]
3597A6:  STRD.W          LR, R6, [SP,#0xE0+var_7C]
3597AA:  STR             R3, [SP,#0xE0+var_94]
3597AC:  STRD.W          R8, R2, [SP,#0xE0+var_9C]
3597B0:  BLT.W           loc_35AC24
3597B4:  LDR.W           R2, [R12,#4]
3597B8:  UXTB            R3, R1
3597BA:  LSRS            R1, R1, #8
3597BC:  LDRB            R2, [R2,R1]
3597BE:  CMP             R2, R3
3597C0:  BNE.W           loc_35ADD8
3597C4:  MOVW            R2, #0x7CC
3597C8:  LDR.W           R3, [R12]
3597CC:  MLA.W           R2, R1, R2, R3
3597D0:  LDR             R1, =(TheCamera_ptr - 0x3597D6)
3597D2:  ADD             R1, PC; TheCamera_ptr
3597D4:  B.W             loc_35ADDE
3597D8:  MOV             R0, R11; jumptable 00358A92 case 1661
3597DA:  MOVS            R1, #7; __int16
3597DC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3597E0:  LDR             R0, =(ScriptParams_ptr - 0x3597E8)
3597E2:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3597EA)
3597E4:  ADD             R0, PC; ScriptParams_ptr
3597E6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3597E8:  LDR             R0, [R0]; ScriptParams
3597EA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3597EC:  LDRD.W          R2, R6, [R0]
3597F0:  LDRD.W          R5, R4, [R0,#(dword_81A910 - 0x81A908)]
3597F4:  LDR             R3, [R0,#(dword_81A918 - 0x81A908)]
3597F6:  VLDR            S0, [R0,#0x14]
3597FA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3597FC:  CMP             R3, #0
3597FE:  LDR             R0, [R0,#(dword_81A920 - 0x81A908)]
359800:  STRD.W          R6, R5, [SP,#0xE0+var_7C]
359804:  STR             R4, [SP,#0xE0+var_74]
359806:  BLT.W           loc_35A7DE
35980A:  LDR             R6, [R1,#4]
35980C:  UXTB            R5, R3
35980E:  LSRS            R3, R3, #8
359810:  LDRB            R6, [R6,R3]
359812:  CMP             R6, R5
359814:  BNE.W           loc_35A7DE
359818:  MOVW            R6, #0xA2C
35981C:  LDR             R1, [R1]
35981E:  MLA.W           R1, R3, R6, R1
359822:  CMP             R2, #0
359824:  BGE.W           loc_35A7E6
359828:  LDR             R6, =(TheCamera_ptr - 0x359830)
35982A:  MOVS            R2, #0
35982C:  ADD             R6, PC; TheCamera_ptr
35982E:  B.W             loc_35AE12
359832:  MOV             R0, R11; jumptable 00358A92 case 1662
359834:  MOVS            R1, #7; __int16
359836:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35983A:  LDR             R0, =(ScriptParams_ptr - 0x359842)
35983C:  LDR             R3, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x359844)
35983E:  ADD             R0, PC; ScriptParams_ptr
359840:  ADD             R3, PC; _ZN6CPools11ms_pPedPoolE_ptr
359842:  LDR             R0, [R0]; ScriptParams
359844:  LDR             R3, [R3]; CPools::ms_pPedPool ...
359846:  LDRD.W          R2, R6, [R0]
35984A:  LDRD.W          R5, R4, [R0,#(dword_81A910 - 0x81A908)]
35984E:  LDR             R1, [R0,#(dword_81A918 - 0x81A908)]
359850:  VLDR            S0, [R0,#0x14]
359854:  LDR             R3, [R3]; CPools::ms_pPedPool
359856:  CMP             R1, #0
359858:  LDR             R0, [R0,#(dword_81A920 - 0x81A908)]
35985A:  STRD.W          R6, R5, [SP,#0xE0+var_7C]
35985E:  STR             R4, [SP,#0xE0+var_74]
359860:  BLT.W           loc_35A810
359864:  LDR             R6, [R3,#4]
359866:  UXTB            R5, R1
359868:  LSRS            R1, R1, #8
35986A:  LDRB            R6, [R6,R1]
35986C:  CMP             R6, R5
35986E:  BNE.W           loc_35A810
359872:  MOVW            R6, #0x7CC
359876:  LDR             R5, [R3]
359878:  MLA.W           R1, R1, R6, R5
35987C:  CMP             R2, #0
35987E:  BGE.W           loc_35A818
359882:  LDR             R6, =(TheCamera_ptr - 0x35988A)
359884:  MOVS            R2, #0
359886:  ADD             R6, PC; TheCamera_ptr
359888:  B.W             loc_35AE12
35988C:  MOV             R0, R11; jumptable 00358A92 case 1663
35988E:  MOVS            R1, #2; __int16
359890:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359894:  LDR             R0, =(ScriptParams_ptr - 0x3598A2)
359896:  MOVW            R3, #0xA2C
35989A:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3598A4)
35989C:  MOVS            R6, #0
35989E:  ADD             R0, PC; ScriptParams_ptr
3598A0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3598A2:  LDR             R0, [R0]; ScriptParams
3598A4:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3598A6:  LDR             R2, [R0]
3598A8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3598AA:  LDRB            R0, [R0,#(dword_81A90C - 0x81A908)]
3598AC:  LSRS            R2, R2, #8
3598AE:  LDR             R1, [R1]
3598B0:  MLA.W           R1, R2, R3, R1
3598B4:  LDRB.W          R2, [R1,#0x4B2]
3598B8:  AND.W           R2, R2, #0xE7
3598BC:  BFI.W           R2, R0, #3, #2
3598C0:  STRB.W          R2, [R1,#0x4B2]
3598C4:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
3598C8:  MOV             R0, R11; jumptable 00358A92 case 1664
3598CA:  MOVS            R1, #2; __int16
3598CC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3598D0:  LDR             R0, =(ScriptParams_ptr - 0x3598D8)
3598D2:  MOVS            R1, #6; int
3598D4:  ADD             R0, PC; ScriptParams_ptr
3598D6:  LDR             R0, [R0]; ScriptParams
3598D8:  LDR             R0, [R0]; this
3598DA:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3598DE:  CMP             R0, #0x3F ; '?'
3598E0:  BHI.W           loc_35ACA2
3598E4:  LDR             R1, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x3598F0)
3598E6:  ADD.W           R0, R0, R0,LSL#3
3598EA:  LDR             R2, =(ScriptParams_ptr - 0x3598F2)
3598EC:  ADD             R1, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
3598EE:  ADD             R2, PC; ScriptParams_ptr
3598F0:  LDR             R1, [R1]; CScripted2dEffects::ms_userLists ...
3598F2:  LDR             R3, [R2]; ScriptParams
3598F4:  ADD.W           R2, R1, R0,LSL#2
3598F8:  LDR.W           R6, [R1,R0,LSL#2]
3598FC:  LDR             R1, [R3,#(dword_81A90C - 0x81A908)]
3598FE:  MOVS            R3, #1
359900:  STRB.W          R3, [R2,#0x20]
359904:  ADDS            R3, R6, #1
359906:  BEQ.W           loc_35AE9E
35990A:  LDR             R2, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x359910)
35990C:  ADD             R2, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
35990E:  LDR             R2, [R2]; CScripted2dEffects::ms_userLists ...
359910:  ADD.W           R2, R2, R0,LSL#2
359914:  LDR.W           R3, [R2,#4]!
359918:  ADDS            R3, #1
35991A:  BEQ.W           loc_35AEA2
35991E:  LDR             R2, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x359924)
359920:  ADD             R2, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
359922:  LDR             R2, [R2]; CScripted2dEffects::ms_userLists ...
359924:  ADD.W           R2, R2, R0,LSL#2
359928:  LDR.W           R3, [R2,#8]!
35992C:  ADDS            R3, #1
35992E:  BEQ.W           loc_35AEBC
359932:  LDR             R2, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x359938)
359934:  ADD             R2, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
359936:  LDR             R2, [R2]; CScripted2dEffects::ms_userLists ...
359938:  ADD.W           R2, R2, R0,LSL#2
35993C:  LDR.W           R3, [R2,#0xC]!
359940:  ADDS            R3, #1
359942:  BNE.W           loc_35ACA2
359946:  MOVS            R3, #3
359948:  B.W             loc_35AEBE
35994C:  DCD __stack_chk_guard_ptr - 0x358A82
359950:  DCD ScriptParams_ptr - 0x358B96
359954:  DCD _ZN18CScripted2dEffects10ms_effectsE_ptr - 0x358BAC
359958:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x358BD6
35995C:  DCD ScriptParams_ptr - 0x358C02
359960:  DCD _ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x358C1C
359964:  DCD ScriptParams_ptr - 0x358C22
359968:  DCD _ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x358C26
35996C:  DCD ScriptParams_ptr - 0x358C4C
359970:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x358C60
359974:  DCD ScriptParams_ptr - 0x358C8A
359978:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x358CA4
35997C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x358CD8
359980:  DCD ScriptParams_ptr - 0x358CDA
359984:  DCD ScriptParams_ptr - 0x358D20
359988:  DCD ScriptParams_ptr - 0x358D56
35998C:  DCD g_fxMan_ptr - 0x358D5C
359990:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358D84
359994:  DCD ScriptParams_ptr - 0x358DB2
359998:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x358DC6
35999C:  DCD ScriptParams_ptr - 0x358DDA
3599A0:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358DEE
3599A4:  DCD ScriptParams_ptr - 0x358E12
3599A8:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358E26
3599AC:  DCD ScriptParams_ptr - 0x358E4A
3599B0:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358E60
3599B4:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358E86
3599B8:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x358EA2
3599BC:  DCD ScriptParams_ptr - 0x358EB4
3599C0:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358ECA
3599C4:  DCD _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x358EF0
3599C8:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x358F0C
3599CC:  DCD ScriptParams_ptr - 0x358F22
3599D0:  DCD ScriptParams_ptr - 0x358F48
3599D4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x358F6E
3599D8:  DCD ScriptParams_ptr - 0x358F70
3599DC:  DCD ScriptParams_ptr - 0x358FA6
3599E0:  DCD ScriptParams_ptr - 0x358FD6
3599E4:  DCD ScriptParams_ptr - 0x35902C
3599E8:  DCD ScriptParams_ptr - 0x35903E
3599EC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359052
3599F0:  DCD ScriptParams_ptr - 0x35907C
3599F4:  DCD _ZN8CPickups8aPickUpsE_ptr - 0x359094
3599F8:  DCD ScriptParams_ptr - 0x3590F6
3599FC:  DCD _ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x359112
359A00:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x359136
359A04:  DCD ScriptParams_ptr - 0x359156
359A08:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x359158
359A0C:  DCD ScriptParams_ptr - 0x359180
359A10:  DCD ScriptParams_ptr - 0x3591D0
359A14:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3591F0
359A18:  DCD ScriptParams_ptr - 0x35923A
359A1C:  DCD ScriptParams_ptr - 0x359280
359A20:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x359294
359A24:  DCD ScriptParams_ptr - 0x3592D4
359A28:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3592E8
359A2C:  DCD ScriptParams_ptr - 0x359328
359A30:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35933C
359A34:  DCD ScriptParams_ptr - 0x35937C
359A38:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359390
359A3C:  DCD ScriptParams_ptr - 0x3593D0
359A40:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3593E4
359A44:  DCD ScriptParams_ptr - 0x359424
359A48:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x359438
359A4C:  DCD ScriptParams_ptr - 0x359464
359A50:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35947A
359A54:  DCD ScriptParams_ptr - 0x3594AA
359A58:  DCD ScriptParams_ptr - 0x359596
359A5C:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35959C
359A60:  DCD ScriptParams_ptr - 0x3595DC
359A64:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3595F0
359A68:  DCD ScriptParams_ptr - 0x359622
359A6C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x359646
359A70:  DCD ScriptParams_ptr - 0x359674
359A74:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359676
359A78:  DCD ScriptParams_ptr - 0x3596D4
359A7C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3596D6
359A80:  DCD ScriptParams_ptr - 0x359728
359A84:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35972A
359A88:  DCD TheCamera_ptr - 0x359770
359A8C:  DCD ScriptParams_ptr - 0x359784
359A90:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x359786
359A94:  DCD TheCamera_ptr - 0x3597D6
359A98:  DCD ScriptParams_ptr - 0x3597E8
359A9C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3597EA
359AA0:  DCD TheCamera_ptr - 0x359830
359AA4:  DCD ScriptParams_ptr - 0x359842
359AA8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x359844
359AAC:  DCD TheCamera_ptr - 0x35988A
359AB0:  DCD ScriptParams_ptr - 0x3598A2
359AB4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3598A4
359AB8:  DCD ScriptParams_ptr - 0x3598D8
359ABC:  DCD _ZN18CScripted2dEffects12ms_userListsE_ptr - 0x3598F0
359AC0:  DCD ScriptParams_ptr - 0x3598F2
359AC4:  DCD _ZN18CScripted2dEffects12ms_userListsE_ptr - 0x359910
359AC8:  DCD _ZN18CScripted2dEffects12ms_userListsE_ptr - 0x359924
359ACC:  DCD _ZN18CScripted2dEffects12ms_userListsE_ptr - 0x359938
359AD0:  DCD ScriptParams_ptr - 0x359B7C
359AD4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x359B90
359AD8:  DCD ScriptParams_ptr - 0x359BBA
359ADC:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x359BCE
359AE0:  DCD ScriptParams_ptr - 0x359C00
359AE4:  DCFS -3.1416
359AE8:  DCFS 180.0
359AEC:  DCFS 3.1416
359AF0:  DCD ScriptParams_ptr - 0x359C24
359AF4:  DCD ScriptParams_ptr - 0x359C38
359AF8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359C3A
359AFC:  DCD ScriptParams_ptr - 0x359C72
359B00:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359C86
359B04:  DCD ScriptParams_ptr - 0x359CB8
359B08:  DCD ScriptParams_ptr - 0x359CDC
359B0C:  DCD ScriptParams_ptr - 0x359D14
359B10:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x359D26
359B14:  DCD ScriptParams_ptr - 0x359D46
359B18:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359D58
359B1C:  DCD ScriptParams_ptr - 0x359D90
359B20:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x359D92
359B24:  DCD ScriptParams_ptr - 0x359DC0
359B28:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x359DDA
359B2C:  DCD ScriptParams_ptr - 0x359E04
359B30:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359E18
359B34:  DCD ScriptParams_ptr - 0x359E42
359B38:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359E56
359B3C:  DCD ScriptParams_ptr - 0x359E80
359B40:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359E94
359B44:  DCD ScriptParams_ptr - 0x359EC6
359B48:  DCD _ZN6CWorld7PlayersE_ptr - 0x359EC8
359B4C:  DCD TheCamera_ptr - 0x359EF0
359B50:  DCD ScriptParams_ptr - 0x359EF2
359B54:  DCD TheCamera_ptr - 0x359F1A
359B58:  DCD ScriptParams_ptr - 0x359F52
359B5C:  DCD ScriptParams_ptr - 0x359F72
359B60:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359F86
359B64:  DCD ScriptParams_ptr - 0x359FB0
359B68:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x359FC4
359B6C:  MOV             R0, R11; jumptable 00358A92 case 1665
359B6E:  MOVS            R1, #8; __int16
359B70:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359B74:  LDR.W           R0, =(ScriptParams_ptr - 0x359B7C)
359B78:  ADD             R0, PC; ScriptParams_ptr
359B7A:  LDR             R0, [R0]; ScriptParams
359B7C:  LDR             R1, [R0]
359B7E:  CMP             R1, #0
359B80:  BLT.W           loc_35A838
359B84:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x359B90)
359B88:  UXTB            R3, R1
359B8A:  LSRS            R1, R1, #8
359B8C:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
359B8E:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
359B90:  LDR             R0, [R0]; CPools::ms_pObjectPool
359B92:  LDR             R2, [R0,#4]
359B94:  LDRB            R2, [R2,R1]
359B96:  CMP             R2, R3
359B98:  BNE.W           loc_35A838
359B9C:  MOV.W           R2, #0x1A4
359BA0:  LDR             R0, [R0]
359BA2:  MLA.W           R0, R1, R2, R0
359BA6:  B.W             loc_35A83A
359BAA:  MOV             R0, R11; jumptable 00358A92 case 1666
359BAC:  MOVS            R1, #5; __int16
359BAE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359BB2:  LDR.W           R0, =(ScriptParams_ptr - 0x359BBA)
359BB6:  ADD             R0, PC; ScriptParams_ptr
359BB8:  LDR             R0, [R0]; ScriptParams
359BBA:  LDR             R1, [R0]
359BBC:  CMP             R1, #0
359BBE:  BLT.W           loc_35ACA2
359BC2:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x359BCE)
359BC6:  UXTB            R3, R1
359BC8:  LSRS            R1, R1, #8
359BCA:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
359BCC:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
359BCE:  LDR             R0, [R0]; CPools::ms_pObjectPool
359BD0:  LDR             R2, [R0,#4]
359BD2:  LDRB            R2, [R2,R1]
359BD4:  CMP             R2, R3
359BD6:  BNE.W           loc_35ACA2
359BDA:  MOV.W           R2, #0x1A4
359BDE:  LDR             R0, [R0]
359BE0:  MLA.W           R0, R1, R2, R0
359BE4:  CMP             R0, #0
359BE6:  BEQ.W           loc_35ACA2
359BEA:  LDR.W           R1, [R0,#0x100]
359BEE:  CMP             R1, #0
359BF0:  BEQ.W           loc_35ACA2
359BF4:  LDR.W           R1, =(ScriptParams_ptr - 0x359C00)
359BF8:  VLDR            S6, =-3.1416
359BFC:  ADD             R1, PC; ScriptParams_ptr
359BFE:  VLDR            S8, =180.0
359C02:  LDR             R1, [R1]; ScriptParams
359C04:  VLDR            S4, [R1,#8]
359C08:  VLDR            S2, [R1,#4]
359C0C:  VMUL.F32        S4, S4, S6
359C10:  VLDR            S6, =3.1416
359C14:  VLDR            S0, [R1,#0xC]
359C18:  VMUL.F32        S6, S2, S6
359C1C:  LDR.W           R1, =(ScriptParams_ptr - 0x359C24)
359C20:  ADD             R1, PC; ScriptParams_ptr
359C22:  B               loc_359CDA
359C24:  MOV             R0, R11; jumptable 00358A92 case 1667
359C26:  MOVS            R1, #8; __int16
359C28:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359C2C:  LDR.W           R0, =(ScriptParams_ptr - 0x359C38)
359C30:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359C3A)
359C34:  ADD             R0, PC; ScriptParams_ptr
359C36:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359C38:  LDR             R0, [R0]; ScriptParams
359C3A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
359C3C:  LDR             R0, [R0]
359C3E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
359C40:  CMP             R0, #0
359C42:  BLT.W           loc_35A86E
359C46:  LDR             R2, [R1,#4]
359C48:  UXTB            R3, R0
359C4A:  LSRS            R0, R0, #8
359C4C:  LDRB            R2, [R2,R0]
359C4E:  CMP             R2, R3
359C50:  BNE.W           loc_35A86E
359C54:  MOVW            R2, #0xA2C
359C58:  LDR             R3, [R1]
359C5A:  MLA.W           R0, R0, R2, R3
359C5E:  B.W             loc_35A870
359C62:  MOV             R0, R11; jumptable 00358A92 case 1668
359C64:  MOVS            R1, #5; __int16
359C66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359C6A:  LDR.W           R0, =(ScriptParams_ptr - 0x359C72)
359C6E:  ADD             R0, PC; ScriptParams_ptr
359C70:  LDR             R0, [R0]; ScriptParams
359C72:  LDR             R1, [R0]
359C74:  CMP             R1, #0
359C76:  BLT.W           loc_35ACA2
359C7A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359C86)
359C7E:  UXTB            R3, R1
359C80:  LSRS            R1, R1, #8
359C82:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359C84:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359C86:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359C88:  LDR             R2, [R0,#4]
359C8A:  LDRB            R2, [R2,R1]
359C8C:  CMP             R2, R3
359C8E:  BNE.W           loc_35ACA2
359C92:  MOVW            R2, #0xA2C
359C96:  LDR             R0, [R0]
359C98:  MLA.W           R0, R1, R2, R0; this
359C9C:  CMP             R0, #0
359C9E:  BEQ.W           loc_35ACA2
359CA2:  LDR.W           R1, [R0,#0x100]
359CA6:  CMP             R1, #0
359CA8:  BEQ.W           loc_35ACA2
359CAC:  LDR.W           R1, =(ScriptParams_ptr - 0x359CB8)
359CB0:  VLDR            S6, =-3.1416
359CB4:  ADD             R1, PC; ScriptParams_ptr
359CB6:  VLDR            S8, =180.0
359CBA:  LDR             R1, [R1]; ScriptParams
359CBC:  VLDR            S4, [R1,#8]
359CC0:  VLDR            S2, [R1,#4]
359CC4:  VMUL.F32        S4, S4, S6
359CC8:  VLDR            S6, =3.1416
359CCC:  VLDR            S0, [R1,#0xC]
359CD0:  VMUL.F32        S6, S2, S6
359CD4:  LDR.W           R1, =(ScriptParams_ptr - 0x359CDC)
359CD8:  ADD             R1, PC; ScriptParams_ptr
359CDA:  VDIV.F32        S2, S4, S8
359CDE:  VDIV.F32        S4, S6, S8
359CE2:  LDR             R1, [R1]; ScriptParams
359CE4:  LDR             R1, [R1,#(dword_81A918 - 0x81A908)]
359CE6:  CMP             R1, #0
359CE8:  BEQ.W           loc_35AEA6
359CEC:  VMOV            R1, S4; float
359CF0:  MOVS            R6, #1
359CF2:  VMOV            R2, S2; float
359CF6:  STR             R6, [SP,#0xE0+var_E0]; bool
359CF8:  VMOV            R3, S0; float
359CFC:  BLX             j__ZN9CPhysical23DettachEntityFromEntityEfffb; CPhysical::DettachEntityFromEntity(float,float,float,bool)
359D00:  B.W             loc_35ACA2
359D04:  MOV             R0, R11; jumptable 00358A92 case 1669
359D06:  MOVS            R1, #1; __int16
359D08:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359D0C:  LDR.W           R0, =(ScriptParams_ptr - 0x359D14)
359D10:  ADD             R0, PC; ScriptParams_ptr
359D12:  LDR             R0, [R0]; ScriptParams
359D14:  LDR             R1, [R0]
359D16:  CMP             R1, #0
359D18:  BLT             loc_359D74
359D1A:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x359D26)
359D1E:  UXTB            R3, R1
359D20:  LSRS            R1, R1, #8
359D22:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
359D24:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
359D26:  LDR             R0, [R0]; CPools::ms_pObjectPool
359D28:  LDR             R2, [R0,#4]
359D2A:  LDRB            R2, [R2,R1]
359D2C:  CMP             R2, R3
359D2E:  BNE             loc_359D74
359D30:  MOV.W           R2, #0x1A4
359D34:  B               loc_359D66
359D36:  MOV             R0, R11; jumptable 00358A92 case 1670
359D38:  MOVS            R1, #1; __int16
359D3A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359D3E:  LDR.W           R0, =(ScriptParams_ptr - 0x359D46)
359D42:  ADD             R0, PC; ScriptParams_ptr
359D44:  LDR             R0, [R0]; ScriptParams
359D46:  LDR             R1, [R0]
359D48:  CMP             R1, #0
359D4A:  BLT             loc_359D74
359D4C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359D58)
359D50:  UXTB            R3, R1
359D52:  LSRS            R1, R1, #8
359D54:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359D56:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359D58:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359D5A:  LDR             R2, [R0,#4]
359D5C:  LDRB            R2, [R2,R1]
359D5E:  CMP             R2, R3
359D60:  BNE             loc_359D74
359D62:  MOVW            R2, #0xA2C
359D66:  LDR             R0, [R0]
359D68:  MLA.W           R0, R1, R2, R0
359D6C:  CBZ             R0, loc_359D74
359D6E:  LDR.W           R1, [R0,#0x100]
359D72:  B               loc_359ED4
359D74:  MOVS            R1, #0
359D76:  B               loc_359EDA
359D78:  MOV             R0, R11; jumptable 00358A92 case 1671
359D7A:  MOVS            R1, #1; __int16
359D7C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359D80:  LDR.W           R0, =(ScriptParams_ptr - 0x359D90)
359D84:  MOVW            R2, #0x7CC
359D88:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x359D92)
359D8C:  ADD             R0, PC; ScriptParams_ptr
359D8E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
359D90:  LDR             R0, [R0]; ScriptParams
359D92:  LDR             R1, [R1]; CPools::ms_pPedPool ...
359D94:  LDR             R0, [R0]
359D96:  LDR             R1, [R1]; CPools::ms_pPedPool
359D98:  LSRS            R0, R0, #8
359D9A:  LDR             R1, [R1]
359D9C:  MLA.W           R0, R0, R2, R1
359DA0:  MOVS            R1, #1; bool
359DA2:  MOVS            R2, #1; bool
359DA4:  LDR.W           R0, [R0,#0x440]; this
359DA8:  BLX             j__ZN16CPedIntelligence10ClearTasksEbb; CPedIntelligence::ClearTasks(bool,bool)
359DAC:  B.W             loc_35ACA2
359DB0:  MOV             R0, R11; jumptable 00358A92 case 1672
359DB2:  MOVS            R1, #4; __int16
359DB4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359DB8:  LDR.W           R0, =(ScriptParams_ptr - 0x359DC0)
359DBC:  ADD             R0, PC; ScriptParams_ptr
359DBE:  LDR             R0, [R0]; ScriptParams
359DC0:  LDR             R0, [R0]
359DC2:  ADDS            R1, R0, #1; unsigned int
359DC4:  BEQ.W           loc_35AC2C
359DC8:  CMP             R0, #0
359DCA:  BLT.W           loc_35AB82
359DCE:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x359DDA)
359DD2:  UXTB            R3, R0
359DD4:  LSRS            R0, R0, #8
359DD6:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
359DD8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
359DDA:  LDR             R1, [R1]; CPools::ms_pPedPool
359DDC:  LDR             R2, [R1,#4]
359DDE:  LDRB            R2, [R2,R0]
359DE0:  CMP             R2, R3
359DE2:  BNE.W           loc_35AB82
359DE6:  MOVW            R2, #0x7CC
359DEA:  LDR             R1, [R1]
359DEC:  MLA.W           R8, R0, R2, R1
359DF0:  B.W             loc_35AB86
359DF4:  MOV             R0, R11; jumptable 00358A92 case 1673
359DF6:  MOVS            R1, #3; __int16
359DF8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359DFC:  LDR.W           R0, =(ScriptParams_ptr - 0x359E04)
359E00:  ADD             R0, PC; ScriptParams_ptr
359E02:  LDR             R0, [R0]; ScriptParams
359E04:  LDR             R1, [R0]
359E06:  CMP             R1, #0
359E08:  BLT.W           loc_35A89A
359E0C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359E18)
359E10:  UXTB            R3, R1
359E12:  LSRS            R1, R1, #8
359E14:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359E16:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359E18:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359E1A:  LDR             R2, [R0,#4]
359E1C:  LDRB            R2, [R2,R1]
359E1E:  CMP             R2, R3
359E20:  BNE.W           loc_35A89A
359E24:  MOVW            R2, #0xA2C
359E28:  LDR             R0, [R0]
359E2A:  MLA.W           R4, R1, R2, R0
359E2E:  B.W             loc_35A89C
359E32:  MOV             R0, R11; jumptable 00358A92 case 1674
359E34:  MOVS            R1, #2; __int16
359E36:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359E3A:  LDR.W           R0, =(ScriptParams_ptr - 0x359E42)
359E3E:  ADD             R0, PC; ScriptParams_ptr
359E40:  LDR             R0, [R0]; ScriptParams
359E42:  LDR             R1, [R0]
359E44:  CMP             R1, #0
359E46:  BLT.W           loc_35A8C2
359E4A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359E56)
359E4E:  UXTB            R3, R1
359E50:  LSRS            R1, R1, #8
359E52:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359E54:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359E56:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359E58:  LDR             R2, [R0,#4]
359E5A:  LDRB            R2, [R2,R1]
359E5C:  CMP             R2, R3
359E5E:  BNE.W           loc_35A8C2
359E62:  MOVW            R2, #0xA2C
359E66:  LDR             R0, [R0]
359E68:  MLA.W           R4, R1, R2, R0
359E6C:  B.W             loc_35A8C4
359E70:  MOV             R0, R11; jumptable 00358A92 case 1675
359E72:  MOVS            R1, #1; __int16
359E74:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359E78:  LDR.W           R0, =(ScriptParams_ptr - 0x359E80)
359E7C:  ADD             R0, PC; ScriptParams_ptr
359E7E:  LDR             R0, [R0]; ScriptParams
359E80:  LDR             R1, [R0]; unsigned int
359E82:  CMP             R1, #0
359E84:  BLT.W           loc_35A8E0
359E88:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359E94)
359E8C:  UXTB            R3, R1
359E8E:  LSRS            R1, R1, #8
359E90:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359E92:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359E94:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359E96:  LDR             R2, [R0,#4]
359E98:  LDRB            R2, [R2,R1]
359E9A:  CMP             R2, R3
359E9C:  BNE.W           loc_35A8E0
359EA0:  MOVW            R2, #0xA2C
359EA4:  LDR             R0, [R0]
359EA6:  MLA.W           R4, R1, R2, R0
359EAA:  B.W             loc_35A8E2
359EAE:  MOV             R0, R11; jumptable 00358A92 case 1676
359EB0:  MOVS            R1, #1; __int16
359EB2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359EB6:  LDR.W           R0, =(ScriptParams_ptr - 0x359EC6)
359EBA:  MOV.W           R2, #0x194
359EBE:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x359EC8)
359EC2:  ADD             R0, PC; ScriptParams_ptr
359EC4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
359EC6:  LDR             R0, [R0]; ScriptParams
359EC8:  LDR             R1, [R1]; CWorld::Players ...
359ECA:  LDR             R0, [R0]
359ECC:  MULS            R0, R2
359ECE:  LDR             R0, [R1,R0]
359ED0:  LDR.W           R1, [R0,#0x720]
359ED4:  CMP             R1, #0
359ED6:  IT NE
359ED8:  MOVNE           R1, #1; unsigned __int8
359EDA:  MOV             R0, R11; this
359EDC:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
359EE0:  B.W             loc_35ACA2
359EE4:  LDR.W           R0, =(TheCamera_ptr - 0x359EF0); jumptable 00358A92 case 1677
359EE8:  LDR.W           R1, =(ScriptParams_ptr - 0x359EF2)
359EEC:  ADD             R0, PC; TheCamera_ptr
359EEE:  ADD             R1, PC; ScriptParams_ptr
359EF0:  LDR             R0, [R0]; TheCamera
359EF2:  LDR             R1, [R1]; ScriptParams
359EF4:  LDRB.W          R2, [R0,#(byte_951FFF - 0x951FA8)]
359EF8:  ADD.W           R2, R2, R2,LSL#5
359EFC:  ADD.W           R0, R0, R2,LSL#4
359F00:  LDRD.W          R2, R3, [R0,#0x2E4]
359F04:  LDR.W           R0, [R0,#0x2EC]
359F08:  STRD.W          R2, R3, [R1]
359F0C:  STR             R0, [R1,#(dword_81A910 - 0x81A908)]
359F0E:  B.W             loc_35AC1E
359F12:  LDR.W           R0, =(TheCamera_ptr - 0x359F1A); jumptable 00358A92 case 1678
359F16:  ADD             R0, PC; TheCamera_ptr
359F18:  LDR             R0, [R0]; TheCamera
359F1A:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
359F1E:  ADD.W           R1, R1, R1,LSL#5
359F22:  ADD.W           R0, R0, R1,LSL#4
359F26:  VLDR            S0, [R0,#0x2D8]
359F2A:  VLDR            S6, [R0,#0x2E4]
359F2E:  VLDR            S2, [R0,#0x2DC]
359F32:  VLDR            S8, [R0,#0x2E8]
359F36:  VADD.F32        S0, S6, S0
359F3A:  VLDR            S4, [R0,#0x2E0]
359F3E:  VLDR            S10, [R0,#0x2EC]
359F42:  VADD.F32        S2, S8, S2
359F46:  LDR.W           R0, =(ScriptParams_ptr - 0x359F52)
359F4A:  VADD.F32        S4, S10, S4
359F4E:  ADD             R0, PC; ScriptParams_ptr
359F50:  LDR             R0, [R0]; ScriptParams
359F52:  VSTR            S0, [R0]
359F56:  VSTR            S2, [R0,#4]
359F5A:  VSTR            S4, [R0,#8]
359F5E:  B.W             loc_35AC1E
359F62:  MOV             R0, R11; jumptable 00358A92 case 1687
359F64:  MOVS            R1, #3; __int16
359F66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359F6A:  LDR.W           R0, =(ScriptParams_ptr - 0x359F72)
359F6E:  ADD             R0, PC; ScriptParams_ptr
359F70:  LDR             R0, [R0]; ScriptParams
359F72:  LDR             R1, [R0]
359F74:  CMP             R1, #0
359F76:  BLT.W           loc_35A9EE
359F7A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359F86)
359F7E:  UXTB            R3, R1
359F80:  LSRS            R1, R1, #8
359F82:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359F84:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359F86:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359F88:  LDR             R2, [R0,#4]
359F8A:  LDRB            R2, [R2,R1]
359F8C:  CMP             R2, R3
359F8E:  BNE.W           loc_35A9EE
359F92:  MOVW            R2, #0xA2C
359F96:  LDR             R0, [R0]
359F98:  MLA.W           R4, R1, R2, R0
359F9C:  B.W             loc_35A9F0
359FA0:  MOV             R0, R11; jumptable 00358A92 case 1688
359FA2:  MOVS            R1, #2; __int16
359FA4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359FA8:  LDR.W           R0, =(ScriptParams_ptr - 0x359FB0)
359FAC:  ADD             R0, PC; ScriptParams_ptr
359FAE:  LDR             R0, [R0]; ScriptParams
359FB0:  LDR             R1, [R0]
359FB2:  CMP             R1, #0
359FB4:  BLT.W           loc_35AA16
359FB8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x359FC4)
359FBC:  UXTB            R3, R1
359FBE:  LSRS            R1, R1, #8
359FC0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
359FC2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
359FC4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
359FC6:  LDR             R2, [R0,#4]
359FC8:  LDRB            R2, [R2,R1]
359FCA:  CMP             R2, R3
359FCC:  BNE.W           loc_35AA16
359FD0:  MOVW            R2, #0xA2C
359FD4:  LDR             R0, [R0]
359FD6:  MLA.W           R4, R1, R2, R0
359FDA:  B.W             loc_35AA18
359FDE:  MOV             R0, R11; jumptable 00358A92 case 1689
359FE0:  MOVS            R1, #2; __int16
359FE2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
359FE6:  LDR.W           R0, =(ScriptParams_ptr - 0x359FEE)
359FEA:  ADD             R0, PC; ScriptParams_ptr
359FEC:  LDR             R0, [R0]; ScriptParams
359FEE:  LDR             R1, [R0]
359FF0:  CMP             R1, #0
359FF2:  BLT.W           loc_35AA34
359FF6:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35A002)
359FFA:  UXTB            R3, R1
359FFC:  LSRS            R1, R1, #8
359FFE:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35A000:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35A002:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35A004:  LDR             R2, [R0,#4]
35A006:  LDRB            R2, [R2,R1]
35A008:  CMP             R2, R3
35A00A:  BNE.W           loc_35AA34
35A00E:  MOVW            R2, #0xA2C
35A012:  LDR             R0, [R0]
35A014:  MLA.W           R0, R1, R2, R0
35A018:  B.W             loc_35AA36
35A01C:  MOV             R0, R11; jumptable 00358A92 case 1690
35A01E:  MOVS            R1, #8; __int16
35A020:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35A024:  LDR.W           R0, =(ScriptParams_ptr - 0x35A030)
35A028:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x35A032)
35A02C:  ADD             R0, PC; ScriptParams_ptr
35A02E:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
35A030:  LDR             R0, [R0]; ScriptParams
35A032:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
35A034:  LDR             R0, [R0]
35A036:  LDR             R1, [R1]; CPools::ms_pObjectPool
35A038:  CMP             R0, #0
35A03A:  BLT.W           loc_35AA46
35A03E:  LDR             R2, [R1,#4]
35A040:  UXTB            R3, R0
35A042:  LSRS            R0, R0, #8
35A044:  LDRB            R2, [R2,R0]
35A046:  CMP             R2, R3
35A048:  BNE.W           loc_35AA46
35A04C:  MOV.W           R2, #0x1A4
35A050:  LDR             R3, [R1]
35A052:  MLA.W           R0, R0, R2, R3
35A056:  B.W             loc_35AA48
35A05A:  MOV             R0, R11; jumptable 00358A92 case 1691
35A05C:  MOVS            R1, #8; __int16
35A05E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35A062:  LDR.W           R0, =(ScriptParams_ptr - 0x35A06A)
35A066:  ADD             R0, PC; ScriptParams_ptr
35A068:  LDR             R0, [R0]; ScriptParams
35A06A:  LDR             R1, [R0]
35A06C:  CMP             R1, #0
35A06E:  BLT.W           loc_35AA78
35A072:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x35A07E)
35A076:  UXTB            R3, R1
35A078:  LSRS            R1, R1, #8
35A07A:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
35A07C:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
35A07E:  LDR             R0, [R0]; CPools::ms_pObjectPool
35A080:  LDR             R2, [R0,#4]
35A082:  LDRB            R2, [R2,R1]
35A084:  CMP             R2, R3
35A086:  BNE.W           loc_35AA78
35A08A:  MOV.W           R2, #0x1A4
35A08E:  LDR             R0, [R0]
35A090:  MLA.W           R0, R1, R2, R0
35A094:  B.W             loc_35AA7A
35A098:  MOV             R0, R11; jumptable 00358A92 case 1698
35A09A:  MOVS            R1, #1; __int16
35A09C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35A0A0:  LDR.W           R0, =(ScriptParams_ptr - 0x35A0B0)
35A0A4:  MOVW            R3, #0xA2C
35A0A8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35A0B6)
35A0AC:  ADD             R0, PC; ScriptParams_ptr
35A0AE:  VLDR            S0, =50.0
35A0B2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35A0B4:  LDR             R0, [R0]; ScriptParams
35A0B6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35A0B8:  LDR             R2, [R0]
35A0BA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35A0BC:  LSRS            R2, R2, #8
35A0BE:  LDR             R1, [R1]
35A0C0:  MLA.W           R1, R2, R3, R1
35A0C4:  VLDR            S2, [R1,#0x48]
35A0C8:  VLDR            S4, [R1,#0x4C]
35A0CC:  VLDR            S6, [R1,#0x50]
35A0D0:  VMUL.F32        S2, S2, S0
35A0D4:  VMUL.F32        S4, S4, S0
35A0D8:  VMUL.F32        S0, S6, S0
35A0DC:  VSTR            S2, [R0]
35A0E0:  VSTR            S4, [R0,#4]
35A0E4:  VSTR            S0, [R0,#8]
35A0E8:  B.W             loc_35AC1E
35A0EC:  MOV             R0, R11; jumptable 00358A92 case 1699
35A0EE:  MOVS            R1, #1; __int16
35A0F0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35A0F4:  LDR.W           R0, =(ScriptParams_ptr - 0x35A104)
35A0F8:  MOVW            R3, #0xA2C
35A0FC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35A106)
35A100:  ADD             R0, PC; ScriptParams_ptr
35A102:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35A104:  LDR             R0, [R0]; ScriptParams
35A106:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35A108:  LDR             R2, [R0]
35A10A:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35A10C:  LSRS            R2, R2, #8
35A10E:  LDR             R1, [R1]
35A110:  MLA.W           R1, R2, R3, R1
35A114:  LDR.W           R1, [R1,#0x90]
35A118:  B.W             loc_35AC02
35A11C:  MOVS            R5, #0
35A11E:  MOV             R0, R5; this
35A120:  MOV.W           R1, #(elf_hash_bucket+0x51C); CPed *
35A124:  BLX             j__ZN22CPedScriptedTaskRecord9GetStatusEPK4CPedi; CPedScriptedTaskRecord::GetStatus(CPed const*,int)
35A128:  CMP             R0, #0
35A12A:  BEQ.W           loc_35AC8C
35A12E:  LDR.W           R0, [R5,#0x440]
35A132:  LDR             R0, [R0,#0x10]
35A134:  CMP             R0, #0
35A136:  ITE NE
35A138:  LDRNE           R0, [R0,#0x10]
35A13A:  MOVEQ.W         R0, #0xFFFFFFFF
35A13E:  B.W             loc_35AC90
35A142:  MOVS            R4, #0
35A144:  LDR.W           R0, =(ScriptParams_ptr - 0x35A14C)
35A148:  ADD             R0, PC; ScriptParams_ptr
35A14A:  LDR             R0, [R0]; ScriptParams
35A14C:  LDR             R5, [R0,#(dword_81A90C - 0x81A908)]
35A14E:  MOV             R0, R5
35A150:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
35A154:  MOV             R8, R0
35A156:  LDR             R0, [R4]
35A158:  MOV             R1, R5
35A15A:  LDR.W           R2, [R0,#0x88]
35A15E:  MOV             R0, R4
35A160:  BLX             R2
35A162:  CMP             R0, #0
35A164:  BNE.W           loc_35ACA2
35A168:  ADD.W           R0, R4, R8,LSL#2
35A16C:  LDR.W           R0, [R0,#0x65C]
35A170:  CMP             R0, #0
35A172:  BEQ.W           loc_35ACA2
35A176:  LDR             R0, [R4]
35A178:  MOV.W           R1, #0x3F800000
35A17C:  MOV             R2, R8
35A17E:  MOV             R3, R5
35A180:  MOVS            R6, #0
35A182:  LDR.W           R12, [R0,#0x70]
35A186:  MOVS            R0, #1
35A188:  STRD.W          R1, R0, [SP,#0xE0+var_E0]
35A18C:  MOV             R0, R4
35A18E:  MOVS            R1, #0
35A190:  BLX             R12
35A192:  B.W             loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35A196:  MOVS            R5, #0
35A198:  LDR.W           R0, =(ScriptParams_ptr - 0x35A1A4)
35A19C:  VLDR            S2, =-100.0
35A1A0:  ADD             R0, PC; ScriptParams_ptr
35A1A2:  LDR             R0, [R0]; ScriptParams
35A1A4:  VLDR            S0, [R0,#0xC]
35A1A8:  VLDR            S16, [R0,#4]
35A1AC:  VCMPE.F32       S0, S2
35A1B0:  VLDR            S18, [R0,#8]
35A1B4:  VMRS            APSR_nzcv, FPSCR
35A1B8:  BGT             loc_35A1CA
35A1BA:  VMOV            R0, S16; this
35A1BE:  VMOV            R1, S18; float
35A1C2:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35A1C6:  VMOV            S0, R0
35A1CA:  VSTR            S18, [SP,#0xE0+var_98]
35A1CE:  VSTR            S16, [SP,#0xE0+var_9C]
35A1D2:  VSTR            S0, [SP,#0xE0+var_94]
35A1D6:  LDR             R0, [R5,#0x18]
35A1D8:  CBNZ            R0, loc_35A1EA
35A1DA:  LDR             R0, [R5]
35A1DC:  LDR             R1, [R0,#0x20]
35A1DE:  MOV             R0, R5
35A1E0:  BLX             R1
35A1E2:  LDR             R0, [R5,#0x18]
35A1E4:  CMP             R0, #0
35A1E6:  BEQ.W           loc_35AB28
35A1EA:  LDR.W           R1, =(ScriptParams_ptr - 0x35A1F6)
35A1EE:  LDR.W           R2, =(g_fxMan_ptr - 0x35A1FA)
35A1F2:  ADD             R1, PC; ScriptParams_ptr
35A1F4:  LDR             R0, [R0,#4]
35A1F6:  ADD             R2, PC; g_fxMan_ptr
35A1F8:  LDR             R6, [R1]; ScriptParams
35A1FA:  ADD.W           R3, R0, #0x10; int
35A1FE:  LDR             R0, [R2]; g_fxMan ; int
35A200:  ADD             R1, SP, #0xE0+var_7C; this
35A202:  ADD             R2, SP, #0xE0+var_9C; int
35A204:  LDR             R6, [R6,#(dword_81A918 - 0x81A908)]
35A206:  CMP             R6, #0
35A208:  IT NE
35A20A:  MOVNE           R6, #1
35A20C:  STR             R6, [SP,#0xE0+var_E0]; int
35A20E:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
35A212:  CMP             R0, #0
35A214:  BEQ.W           loc_35AB28
35A218:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x35A220)
35A21C:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
35A21E:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
35A220:  MOV.W           R1, #0xFFFFFFFF
35A224:  LDRB.W          R3, [R2],#8; unsigned __int8
35A228:  ADDS            R1, #1
35A22A:  CMP             R1, #0x1F
35A22C:  BHI             loc_35A232
35A22E:  CMP             R3, #0
35A230:  BNE             loc_35A224
35A232:  STR.W           R0, [R2,#-4]
35A236:  MOVS            R0, #1
35A238:  STRB.W          R0, [R2,#-8]
35A23C:  MOV             R0, R1; this
35A23E:  MOVS            R1, #1; int
35A240:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35A244:  MOV             R1, R0
35A246:  LDR.W           R0, =(ScriptParams_ptr - 0x35A24E)
35A24A:  ADD             R0, PC; ScriptParams_ptr
35A24C:  LDR             R0, [R0]; ScriptParams
35A24E:  STR             R1, [R0]
35A250:  LDRB.W          R0, [R11,#0xE6]
35A254:  CMP             R0, #0
35A256:  BEQ.W           loc_35AC9A
35A25A:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35A262)
35A25E:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35A260:  B               loc_35A6DE
35A262:  MOVS            R5, #0
35A264:  LDR.W           R0, =(ScriptParams_ptr - 0x35A270)
35A268:  VLDR            S2, =-100.0
35A26C:  ADD             R0, PC; ScriptParams_ptr
35A26E:  LDR             R0, [R0]; ScriptParams
35A270:  VLDR            S0, [R0,#0xC]
35A274:  VLDR            S16, [R0,#4]
35A278:  VCMPE.F32       S0, S2
35A27C:  VLDR            S18, [R0,#8]
35A280:  VMRS            APSR_nzcv, FPSCR
35A284:  BGT             loc_35A296
35A286:  VMOV            R0, S16; this
35A28A:  VMOV            R1, S18; float
35A28E:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35A292:  VMOV            S0, R0
35A296:  LDR.W           R0, =(ScriptParams_ptr - 0x35A2A2)
35A29A:  LDR.W           R1, =(g_fx_ptr - 0x35A2A4)
35A29E:  ADD             R0, PC; ScriptParams_ptr
35A2A0:  ADD             R1, PC; g_fx_ptr
35A2A2:  LDR             R0, [R0]; ScriptParams
35A2A4:  ADD.W           R6, R0, #0x10
35A2A8:  LDR             R0, [R1]; g_fx
35A2AA:  ADD             R1, SP, #0xE0+var_7C
35A2AC:  LDM             R6, {R2,R3,R6}
35A2AE:  VSTR            S18, [SP,#0xE0+var_A4]
35A2B2:  VSTR            S16, [SP,#0xE0+var_A8]
35A2B6:  VSTR            S0, [SP,#0xE0+var_A0]
35A2BA:  STRD.W          R2, R3, [SP,#0xE0+var_B4]
35A2BE:  ADD             R2, SP, #0xE0+var_A8
35A2C0:  ADD             R3, SP, #0xE0+var_B4
35A2C2:  STR             R6, [SP,#0xE0+var_AC]
35A2C4:  BLX             j__ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_; Fx_c::CreateMatFromVec(RwMatrixTag *,CVector *,CVector *)
35A2C8:  LDR             R0, [R5,#0x18]
35A2CA:  CMP             R0, #0
35A2CC:  BNE             loc_35A2DE
35A2CE:  LDR             R0, [R5]
35A2D0:  LDR             R1, [R0,#0x20]
35A2D2:  MOV             R0, R5
35A2D4:  BLX             R1
35A2D6:  LDR             R0, [R5,#0x18]
35A2D8:  CMP             R0, #0
35A2DA:  BEQ.W           loc_35AB30
35A2DE:  LDR.W           R1, =(ScriptParams_ptr - 0x35A2EA)
35A2E2:  LDR.W           R2, =(g_fxMan_ptr - 0x35A2EE)
35A2E6:  ADD             R1, PC; ScriptParams_ptr
35A2E8:  LDR             R0, [R0,#4]
35A2EA:  ADD             R2, PC; g_fxMan_ptr
35A2EC:  LDR             R6, [R1]; ScriptParams
35A2EE:  ADD.W           R3, R0, #0x10; int
35A2F2:  LDR             R0, [R2]; g_fxMan ; int
35A2F4:  ADD             R1, SP, #0xE0+var_9C; this
35A2F6:  ADD             R2, SP, #0xE0+var_7C; int
35A2F8:  LDR             R6, [R6,#(dword_81A924 - 0x81A908)]
35A2FA:  CMP             R6, #0
35A2FC:  IT NE
35A2FE:  MOVNE           R6, #1
35A300:  STR             R6, [SP,#0xE0+var_E0]; int
35A302:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP11RwMatrixTagS2_h; FxManager_c::CreateFxSystem(char *,RwMatrixTag *,RwMatrixTag *,uchar)
35A306:  CMP             R0, #0
35A308:  BEQ.W           loc_35AB30
35A30C:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x35A314)
35A310:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
35A312:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
35A314:  MOV.W           R1, #0xFFFFFFFF
35A318:  LDRB.W          R3, [R2],#8; unsigned __int8
35A31C:  ADDS            R1, #1
35A31E:  CMP             R1, #0x1F
35A320:  BHI             loc_35A326
35A322:  CMP             R3, #0
35A324:  BNE             loc_35A318
35A326:  STR.W           R0, [R2,#-4]
35A32A:  MOVS            R0, #1
35A32C:  STRB.W          R0, [R2,#-8]
35A330:  MOV             R0, R1; this
35A332:  MOVS            R1, #1; int
35A334:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35A338:  MOV             R1, R0
35A33A:  LDR.W           R0, =(ScriptParams_ptr - 0x35A342)
35A33E:  ADD             R0, PC; ScriptParams_ptr
35A340:  LDR             R0, [R0]; ScriptParams
35A342:  STR             R1, [R0]
35A344:  LDRB.W          R0, [R11,#0xE6]
35A348:  CMP             R0, #0
35A34A:  BEQ.W           loc_35AC9A
35A34E:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35A356)
35A352:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35A354:  B               loc_35A6DE
35A356:  MOVS            R5, #0
35A358:  LDR.W           R0, =(ScriptParams_ptr - 0x35A364)
35A35C:  VLDR            S2, =-100.0
35A360:  ADD             R0, PC; ScriptParams_ptr
35A362:  LDR             R0, [R0]; ScriptParams
35A364:  VLDR            S0, [R0,#0xC]
35A368:  VLDR            S16, [R0,#4]
35A36C:  VCMPE.F32       S0, S2
35A370:  VLDR            S18, [R0,#8]
35A374:  VMRS            APSR_nzcv, FPSCR
35A378:  BGT             loc_35A38A
35A37A:  VMOV            R0, S16; this
35A37E:  VMOV            R1, S18; float
35A382:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35A386:  VMOV            S0, R0
35A38A:  VSTR            S18, [SP,#0xE0+var_98]
35A38E:  VSTR            S16, [SP,#0xE0+var_9C]
35A392:  VSTR            S0, [SP,#0xE0+var_94]
35A396:  LDR             R0, [R5,#0x18]
35A398:  CBNZ            R0, loc_35A3AA
35A39A:  LDR             R0, [R5]
35A39C:  LDR             R1, [R0,#0x20]
35A39E:  MOV             R0, R5
35A3A0:  BLX             R1
35A3A2:  LDR             R0, [R5,#0x18]
35A3A4:  CMP             R0, #0
35A3A6:  BEQ.W           loc_35AB38
35A3AA:  LDR.W           R1, =(ScriptParams_ptr - 0x35A3B6)
35A3AE:  LDR.W           R2, =(g_fxMan_ptr - 0x35A3BA)
35A3B2:  ADD             R1, PC; ScriptParams_ptr
35A3B4:  LDR             R0, [R0,#4]
35A3B6:  ADD             R2, PC; g_fxMan_ptr
35A3B8:  LDR             R6, [R1]; ScriptParams
35A3BA:  ADD.W           R3, R0, #0x10; int
35A3BE:  LDR             R0, [R2]; g_fxMan ; int
35A3C0:  ADD             R1, SP, #0xE0+var_7C; this
35A3C2:  ADD             R2, SP, #0xE0+var_9C; int
35A3C4:  LDR             R6, [R6,#(dword_81A918 - 0x81A908)]
35A3C6:  CMP             R6, #0
35A3C8:  IT NE
35A3CA:  MOVNE           R6, #1
35A3CC:  STR             R6, [SP,#0xE0+var_E0]; int
35A3CE:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
35A3D2:  CMP             R0, #0
35A3D4:  BEQ.W           loc_35AB38
35A3D8:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x35A3E0)
35A3DC:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
35A3DE:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
35A3E0:  MOV.W           R1, #0xFFFFFFFF
35A3E4:  LDRB.W          R3, [R2],#8; unsigned __int8
35A3E8:  ADDS            R1, #1
35A3EA:  CMP             R1, #0x1F
35A3EC:  BHI             loc_35A3F2
35A3EE:  CMP             R3, #0
35A3F0:  BNE             loc_35A3E4
35A3F2:  STR.W           R0, [R2,#-4]
35A3F6:  MOVS            R0, #1
35A3F8:  STRB.W          R0, [R2,#-8]
35A3FC:  MOV             R0, R1; this
35A3FE:  MOVS            R1, #1; int
35A400:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35A404:  MOV             R1, R0
35A406:  LDR.W           R0, =(ScriptParams_ptr - 0x35A40E)
35A40A:  ADD             R0, PC; ScriptParams_ptr
35A40C:  LDR             R0, [R0]; ScriptParams
35A40E:  STR             R1, [R0]
35A410:  LDRB.W          R0, [R11,#0xE6]
35A414:  CMP             R0, #0
35A416:  BEQ.W           loc_35AC9A
35A41A:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35A422)
35A41E:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35A420:  B               loc_35A6DE
35A422:  ALIGN 4
35A424:  DCFS 50.0
35A428:  DCFS -100.0
35A42C:  MOVS            R5, #0
35A42E:  LDR.W           R0, =(ScriptParams_ptr - 0x35A43A)
35A432:  VLDR            S2, =-100.0
35A436:  ADD             R0, PC; ScriptParams_ptr
35A438:  LDR             R0, [R0]; ScriptParams
35A43A:  VLDR            S0, [R0,#0xC]
35A43E:  VLDR            S16, [R0,#4]
35A442:  VCMPE.F32       S0, S2
35A446:  VLDR            S18, [R0,#8]
35A44A:  VMRS            APSR_nzcv, FPSCR
35A44E:  BGT             loc_35A460
35A450:  VMOV            R0, S16; this
35A454:  VMOV            R1, S18; float
35A458:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35A45C:  VMOV            S0, R0
35A460:  LDR.W           R0, =(ScriptParams_ptr - 0x35A46C)
35A464:  LDR.W           R1, =(g_fx_ptr - 0x35A46E)
35A468:  ADD             R0, PC; ScriptParams_ptr
35A46A:  ADD             R1, PC; g_fx_ptr
35A46C:  LDR             R0, [R0]; ScriptParams
35A46E:  ADD.W           R6, R0, #0x10
35A472:  LDR             R0, [R1]; g_fx
35A474:  ADD             R1, SP, #0xE0+var_7C
35A476:  LDM             R6, {R2,R3,R6}
35A478:  VSTR            S18, [SP,#0xE0+var_A4]
35A47C:  VSTR            S16, [SP,#0xE0+var_A8]
35A480:  VSTR            S0, [SP,#0xE0+var_A0]
35A484:  STRD.W          R2, R3, [SP,#0xE0+var_B4]
35A488:  ADD             R2, SP, #0xE0+var_A8
35A48A:  ADD             R3, SP, #0xE0+var_B4
35A48C:  STR             R6, [SP,#0xE0+var_AC]
35A48E:  BLX             j__ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_; Fx_c::CreateMatFromVec(RwMatrixTag *,CVector *,CVector *)
35A492:  LDR             R0, [R5,#0x18]
35A494:  CMP             R0, #0
35A496:  BNE             loc_35A4A8
35A498:  LDR             R0, [R5]
35A49A:  LDR             R1, [R0,#0x20]
35A49C:  MOV             R0, R5
35A49E:  BLX             R1
35A4A0:  LDR             R0, [R5,#0x18]
35A4A2:  CMP             R0, #0
35A4A4:  BEQ.W           loc_35AB40
35A4A8:  LDR.W           R1, =(ScriptParams_ptr - 0x35A4B4)
35A4AC:  LDR.W           R2, =(g_fxMan_ptr - 0x35A4B8)
35A4B0:  ADD             R1, PC; ScriptParams_ptr
35A4B2:  LDR             R0, [R0,#4]
35A4B4:  ADD             R2, PC; g_fxMan_ptr
35A4B6:  LDR             R6, [R1]; ScriptParams
35A4B8:  ADD.W           R3, R0, #0x10; int
35A4BC:  LDR             R0, [R2]; g_fxMan ; int
35A4BE:  ADD             R1, SP, #0xE0+var_9C; this
35A4C0:  ADD             R2, SP, #0xE0+var_7C; int
35A4C2:  LDR             R6, [R6,#(dword_81A924 - 0x81A908)]
35A4C4:  CMP             R6, #0
35A4C6:  IT NE
35A4C8:  MOVNE           R6, #1
35A4CA:  STR             R6, [SP,#0xE0+var_E0]; int
35A4CC:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP11RwMatrixTagS2_h; FxManager_c::CreateFxSystem(char *,RwMatrixTag *,RwMatrixTag *,uchar)
35A4D0:  CMP             R0, #0
35A4D2:  BEQ.W           loc_35AB40
35A4D6:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x35A4DE)
35A4DA:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
35A4DC:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
35A4DE:  MOV.W           R1, #0xFFFFFFFF
35A4E2:  LDRB.W          R3, [R2],#8; unsigned __int8
35A4E6:  ADDS            R1, #1
35A4E8:  CMP             R1, #0x1F
35A4EA:  BHI             loc_35A4F0
35A4EC:  CMP             R3, #0
35A4EE:  BNE             loc_35A4E2
35A4F0:  STR.W           R0, [R2,#-4]
35A4F4:  MOVS            R0, #1
35A4F6:  STRB.W          R0, [R2,#-8]
35A4FA:  MOV             R0, R1; this
35A4FC:  MOVS            R1, #1; int
35A4FE:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35A502:  MOV             R1, R0
35A504:  LDR.W           R0, =(ScriptParams_ptr - 0x35A50C)
35A508:  ADD             R0, PC; ScriptParams_ptr
35A50A:  LDR             R0, [R0]; ScriptParams
35A50C:  STR             R1, [R0]
35A50E:  LDRB.W          R0, [R11,#0xE6]
35A512:  CMP             R0, #0
35A514:  BEQ.W           loc_35AC9A
35A518:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35A520)
35A51C:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35A51E:  B               loc_35A6DE
35A520:  MOVS            R5, #0
35A522:  LDR.W           R0, =(ScriptParams_ptr - 0x35A52E)
35A526:  VLDR            S2, =-100.0
35A52A:  ADD             R0, PC; ScriptParams_ptr
35A52C:  LDR             R0, [R0]; ScriptParams
35A52E:  VLDR            S0, [R0,#0xC]
35A532:  VLDR            S16, [R0,#4]
35A536:  VCMPE.F32       S0, S2
35A53A:  VLDR            S18, [R0,#8]
35A53E:  VMRS            APSR_nzcv, FPSCR
35A542:  BGT             loc_35A554
35A544:  VMOV            R0, S16; this
35A548:  VMOV            R1, S18; float
35A54C:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35A550:  VMOV            S0, R0
35A554:  VSTR            S18, [SP,#0xE0+var_98]
35A558:  VSTR            S16, [SP,#0xE0+var_9C]
35A55C:  VSTR            S0, [SP,#0xE0+var_94]
35A560:  LDR             R0, [R5,#0x18]
35A562:  CBNZ            R0, loc_35A574
35A564:  LDR             R0, [R5]
35A566:  LDR             R1, [R0,#0x20]
35A568:  MOV             R0, R5
35A56A:  BLX             R1
35A56C:  LDR             R0, [R5,#0x18]
35A56E:  CMP             R0, #0
35A570:  BEQ.W           loc_35AB48
35A574:  LDR.W           R1, =(ScriptParams_ptr - 0x35A580)
35A578:  LDR.W           R2, =(g_fxMan_ptr - 0x35A584)
35A57C:  ADD             R1, PC; ScriptParams_ptr
35A57E:  LDR             R0, [R0,#4]
35A580:  ADD             R2, PC; g_fxMan_ptr
35A582:  LDR             R6, [R1]; ScriptParams
35A584:  ADD.W           R3, R0, #0x10; int
35A588:  LDR             R0, [R2]; g_fxMan ; int
35A58A:  ADD             R1, SP, #0xE0+var_7C; this
35A58C:  ADD             R2, SP, #0xE0+var_9C; int
35A58E:  LDR             R6, [R6,#(dword_81A918 - 0x81A908)]
35A590:  CMP             R6, #0
35A592:  IT NE
35A594:  MOVNE           R6, #1
35A596:  STR             R6, [SP,#0xE0+var_E0]; int
35A598:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
35A59C:  CMP             R0, #0
35A59E:  BEQ.W           loc_35AB48
35A5A2:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x35A5AA)
35A5A6:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
35A5A8:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
35A5AA:  MOV.W           R1, #0xFFFFFFFF
35A5AE:  LDRB.W          R3, [R2],#8; unsigned __int8
35A5B2:  ADDS            R1, #1
35A5B4:  CMP             R1, #0x1F
35A5B6:  BHI             loc_35A5BC
35A5B8:  CMP             R3, #0
35A5BA:  BNE             loc_35A5AE
35A5BC:  STR.W           R0, [R2,#-4]
35A5C0:  MOVS            R0, #1
35A5C2:  STRB.W          R0, [R2,#-8]
35A5C6:  MOV             R0, R1; this
35A5C8:  MOVS            R1, #1; int
35A5CA:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35A5CE:  MOV             R1, R0
35A5D0:  LDR.W           R0, =(ScriptParams_ptr - 0x35A5D8)
35A5D4:  ADD             R0, PC; ScriptParams_ptr
35A5D6:  LDR             R0, [R0]; ScriptParams
35A5D8:  STR             R1, [R0]
35A5DA:  LDRB.W          R0, [R11,#0xE6]
35A5DE:  CMP             R0, #0
35A5E0:  BEQ.W           loc_35AC9A
35A5E4:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35A5EC)
35A5E8:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35A5EA:  B               loc_35A6DE
35A5EC:  MOVS            R5, #0
35A5EE:  LDR.W           R0, =(ScriptParams_ptr - 0x35A5FA)
35A5F2:  VLDR            S2, =-100.0
35A5F6:  ADD             R0, PC; ScriptParams_ptr
35A5F8:  LDR             R0, [R0]; ScriptParams
35A5FA:  VLDR            S0, [R0,#0xC]
35A5FE:  VLDR            S16, [R0,#4]
35A602:  VCMPE.F32       S0, S2
35A606:  VLDR            S18, [R0,#8]
35A60A:  VMRS            APSR_nzcv, FPSCR
35A60E:  BGT             loc_35A620
35A610:  VMOV            R0, S16; this
35A614:  VMOV            R1, S18; float
35A618:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35A61C:  VMOV            S0, R0
35A620:  LDR.W           R0, =(ScriptParams_ptr - 0x35A62C)
35A624:  LDR.W           R1, =(g_fx_ptr - 0x35A62E)
35A628:  ADD             R0, PC; ScriptParams_ptr
35A62A:  ADD             R1, PC; g_fx_ptr
35A62C:  LDR             R0, [R0]; ScriptParams
35A62E:  ADD.W           R6, R0, #0x10
35A632:  LDR             R0, [R1]; g_fx
35A634:  ADD             R1, SP, #0xE0+var_7C
35A636:  LDM             R6, {R2,R3,R6}
35A638:  VSTR            S18, [SP,#0xE0+var_A4]
35A63C:  VSTR            S16, [SP,#0xE0+var_A8]
35A640:  VSTR            S0, [SP,#0xE0+var_A0]
35A644:  STRD.W          R2, R3, [SP,#0xE0+var_B4]
35A648:  ADD             R2, SP, #0xE0+var_A8
35A64A:  ADD             R3, SP, #0xE0+var_B4
35A64C:  STR             R6, [SP,#0xE0+var_AC]
35A64E:  BLX             j__ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_; Fx_c::CreateMatFromVec(RwMatrixTag *,CVector *,CVector *)
35A652:  LDR             R0, [R5,#0x18]
35A654:  CMP             R0, #0
35A656:  BNE             loc_35A668
35A658:  LDR             R0, [R5]
35A65A:  LDR             R1, [R0,#0x20]
35A65C:  MOV             R0, R5
35A65E:  BLX             R1
35A660:  LDR             R0, [R5,#0x18]
35A662:  CMP             R0, #0
35A664:  BEQ.W           loc_35AB50
35A668:  LDR.W           R1, =(ScriptParams_ptr - 0x35A674)
35A66C:  LDR.W           R2, =(g_fxMan_ptr - 0x35A678)
35A670:  ADD             R1, PC; ScriptParams_ptr
35A672:  LDR             R0, [R0,#4]
35A674:  ADD             R2, PC; g_fxMan_ptr
35A676:  LDR             R6, [R1]; ScriptParams
35A678:  ADD.W           R3, R0, #0x10; int
35A67C:  LDR             R0, [R2]; g_fxMan ; int
35A67E:  ADD             R1, SP, #0xE0+var_9C; this
35A680:  ADD             R2, SP, #0xE0+var_7C; int
35A682:  LDR             R6, [R6,#(dword_81A924 - 0x81A908)]
35A684:  CMP             R6, #0
35A686:  IT NE
35A688:  MOVNE           R6, #1
35A68A:  STR             R6, [SP,#0xE0+var_E0]; int
35A68C:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP11RwMatrixTagS2_h; FxManager_c::CreateFxSystem(char *,RwMatrixTag *,RwMatrixTag *,uchar)
35A690:  CMP             R0, #0
35A692:  BEQ.W           loc_35AB50
35A696:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x35A69E)
35A69A:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
35A69C:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
35A69E:  MOV.W           R1, #0xFFFFFFFF
35A6A2:  LDRB.W          R3, [R2],#8; unsigned __int8
35A6A6:  ADDS            R1, #1
35A6A8:  CMP             R1, #0x1F
35A6AA:  BHI             loc_35A6B0
35A6AC:  CMP             R3, #0
35A6AE:  BNE             loc_35A6A2
35A6B0:  STR.W           R0, [R2,#-4]
35A6B4:  MOVS            R0, #1
35A6B6:  STRB.W          R0, [R2,#-8]
35A6BA:  MOV             R0, R1; this
35A6BC:  MOVS            R1, #1; int
35A6BE:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35A6C2:  MOV             R1, R0; int
35A6C4:  LDR.W           R0, =(ScriptParams_ptr - 0x35A6CC)
35A6C8:  ADD             R0, PC; ScriptParams_ptr
35A6CA:  LDR             R0, [R0]; ScriptParams
35A6CC:  STR             R1, [R0]
35A6CE:  LDRB.W          R0, [R11,#0xE6]
35A6D2:  CMP             R0, #0
35A6D4:  BEQ.W           loc_35AC9A
35A6D8:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35A6E0)
35A6DC:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35A6DE:  LDR             R0, [R0]; this
35A6E0:  MOVS            R2, #4; unsigned __int8
35A6E2:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
35A6E6:  B               loc_35AC9A
35A6E8:  MOV.W           R9, #0
35A6EC:  MOVS            R0, #dword_20; this
35A6EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35A6F2:  MOV             R1, R9; CVehicle *
35A6F4:  MOVS            R2, #0; unsigned int
35A6F6:  MOVS            R3, #0; unsigned int
35A6F8:  MOV             R5, R0
35A6FA:  STR             R6, [SP,#0xE0+var_E0]; unsigned int
35A6FC:  BLX             j__ZN22CTaskComplexDestroyCarC2EP8CVehiclejjj; CTaskComplexDestroyCar::CTaskComplexDestroyCar(CVehicle *,uint,uint,uint)
35A700:  MOV             R0, R11; this
35A702:  MOV             R1, R8; int
35A704:  MOV             R2, R5; CTask *
35A706:  MOVW            R3, #0x672; int
35A70A:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35A70E:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35A710:  MOVS            R5, #0
35A712:  MOVS            R0, #word_2C; this
35A714:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35A718:  MOV             R1, R5; CVehicle *
35A71A:  MOV             R6, R0
35A71C:  BLX             j__ZN24CTaskComplexShuffleSeatsC2EP8CVehicle; CTaskComplexShuffleSeats::CTaskComplexShuffleSeats(CVehicle *)
35A720:  LDR.W           R0, =(ScriptParams_ptr - 0x35A72E)
35A724:  MOV             R2, R6; CTask *
35A726:  MOVW            R3, #0x676; int
35A72A:  ADD             R0, PC; ScriptParams_ptr
35A72C:  LDR             R0, [R0]; ScriptParams
35A72E:  LDR             R1, [R0]; int
35A730:  MOV             R0, R11; this
35A732:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35A736:  B               loc_35ACA2
35A738:  MOV.W           R9, #0
35A73C:  MOVS            R0, #dword_78; this
35A73E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35A742:  CMP.W           R11, #0
35A746:  MOV.W           R1, #0x3F000000
35A74A:  IT NE
35A74C:  MOVNE.W         R4, #0xFFFFFFFF
35A750:  MOV             R5, R0
35A752:  STRD.W          R1, R4, [SP,#0xE0+var_E0]
35A756:  MOVS            R0, #1
35A758:  ADR.W           R1, aCommandTaskCha; "COMMAND_TASK_CHAT_WITH_CHAR"
35A75C:  STRD.W          R0, R0, [SP,#0xE0+var_D8]
35A760:  MOV             R0, R5
35A762:  MOV             R2, R9
35A764:  MOV             R3, R10
35A766:  STRD.W          R6, R6, [SP,#0xE0+var_D0]
35A76A:  STR             R6, [SP,#0xE0+var_C8]
35A76C:  BLX             j__ZN23CTaskComplexPartnerChatC2EPcP4CPedhfihh7CVector; CTaskComplexPartnerChat::CTaskComplexPartnerChat(char *,CPed *,uchar,float,int,uchar,uchar,CVector)
35A770:  LDR             R0, [SP,#0xE0+var_B8]; this
35A772:  MOV             R1, R8; int
35A774:  MOV             R2, R5; CTask *
35A776:  MOVW            R3, #0x677; int
35A77A:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35A77E:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35A780:  MOVS            R2, #0
35A782:  LDR.W           R1, =(TheCamera_ptr - 0x35A78A)
35A786:  ADD             R1, PC; TheCamera_ptr
35A788:  B               loc_35ADDE
35A78A:  MOVS            R2, #0
35A78C:  CMP             R3, #0
35A78E:  BLT.W           loc_35AAB4
35A792:  LDR             R6, [R1,#4]
35A794:  UXTB            R5, R3
35A796:  LSRS            R3, R3, #8
35A798:  LDRB            R6, [R6,R3]
35A79A:  CMP             R6, R5
35A79C:  BNE.W           loc_35AAB4
35A7A0:  MOVW            R6, #0xA2C
35A7A4:  LDR             R1, [R1]
35A7A6:  MLA.W           R1, R3, R6, R1
35A7AA:  B               loc_35AAB6
35A7AC:  MOVS            R2, #0
35A7AE:  CMP             R1, #0
35A7B0:  BLT.W           loc_359768
35A7B4:  LDR.W           R3, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35A7C0)
35A7B8:  UXTB            R5, R1
35A7BA:  LSRS            R1, R1, #8
35A7BC:  ADD             R3, PC; _ZN6CPools11ms_pPedPoolE_ptr
35A7BE:  LDR             R3, [R3]; CPools::ms_pPedPool ...
35A7C0:  LDR             R3, [R3]; CPools::ms_pPedPool
35A7C2:  LDR             R6, [R3,#4]
35A7C4:  LDRB            R6, [R6,R1]
35A7C6:  CMP             R6, R5
35A7C8:  BNE.W           loc_35ADFC
35A7CC:  MOVW            R6, #0x7CC
35A7D0:  LDR             R3, [R3]
35A7D2:  MLA.W           R1, R1, R6, R3
35A7D6:  LDR.W           R6, =(TheCamera_ptr - 0x35A7DE)
35A7DA:  ADD             R6, PC; TheCamera_ptr
35A7DC:  B               loc_35AE12
35A7DE:  MOVS            R1, #0
35A7E0:  CMP             R2, #0
35A7E2:  BLT.W           loc_359828
35A7E6:  LDR.W           R3, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35A7F2)
35A7EA:  UXTB            R5, R2
35A7EC:  LSRS            R2, R2, #8
35A7EE:  ADD             R3, PC; _ZN6CPools11ms_pPedPoolE_ptr
35A7F0:  LDR             R3, [R3]; CPools::ms_pPedPool ...
35A7F2:  LDR             R3, [R3]; CPools::ms_pPedPool
35A7F4:  LDR             R6, [R3,#4]
35A7F6:  LDRB            R6, [R6,R2]
35A7F8:  CMP             R6, R5
35A7FA:  BNE.W           loc_35AE04
35A7FE:  MOVW            R6, #0x7CC
35A802:  LDR             R3, [R3]
35A804:  MLA.W           R2, R2, R6, R3
35A808:  LDR.W           R6, =(TheCamera_ptr - 0x35A810)
35A80C:  ADD             R6, PC; TheCamera_ptr
35A80E:  B               loc_35AE12
35A810:  MOVS            R1, #0; CEntity *
35A812:  CMP             R2, #0
35A814:  BLT.W           loc_359882
35A818:  LDR             R6, [R3,#4]
35A81A:  UXTB            R5, R2
35A81C:  LSRS            R2, R2, #8
35A81E:  LDRB            R6, [R6,R2]
35A820:  CMP             R6, R5
35A822:  BNE.W           loc_35AE0C
35A826:  MOVW            R6, #0x7CC
35A82A:  LDR             R3, [R3]
35A82C:  MLA.W           R2, R2, R6, R3
35A830:  LDR.W           R6, =(TheCamera_ptr - 0x35A838)
35A834:  ADD             R6, PC; TheCamera_ptr
35A836:  B               loc_35AE12
35A838:  MOVS            R0, #0
35A83A:  LDR.W           R1, =(ScriptParams_ptr - 0x35A842)
35A83E:  ADD             R1, PC; ScriptParams_ptr
35A840:  LDR             R1, [R1]; ScriptParams
35A842:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
35A844:  CMP             R2, #0
35A846:  BLT.W           loc_35AABE
35A84A:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35A856)
35A84E:  UXTB            R6, R2
35A850:  LSRS            R2, R2, #8
35A852:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35A854:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35A856:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35A858:  LDR             R3, [R1,#4]
35A85A:  LDRB            R3, [R3,R2]
35A85C:  CMP             R3, R6
35A85E:  BNE.W           loc_35AABE
35A862:  MOVW            R3, #0xA2C
35A866:  LDR             R1, [R1]
35A868:  MLA.W           R1, R2, R3, R1
35A86C:  B               loc_35AAC0
35A86E:  MOVS            R0, #0; int
35A870:  LDR.W           R2, =(ScriptParams_ptr - 0x35A878)
35A874:  ADD             R2, PC; ScriptParams_ptr
35A876:  LDR             R2, [R2]; ScriptParams
35A878:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
35A87A:  CMP             R2, #0
35A87C:  BLT.W           loc_35AAC8
35A880:  LDR             R3, [R1,#4]
35A882:  UXTB            R6, R2
35A884:  LSRS            R2, R2, #8
35A886:  LDRB            R3, [R3,R2]
35A888:  CMP             R3, R6
35A88A:  BNE.W           loc_35AAC8
35A88E:  MOVW            R3, #0xA2C
35A892:  LDR             R1, [R1]
35A894:  MLA.W           R1, R2, R3, R1
35A898:  B               loc_35AACA
35A89A:  MOVS            R4, #0
35A89C:  LDR.W           R0, =(ScriptParams_ptr - 0x35A8A4)
35A8A0:  ADD             R0, PC; ScriptParams_ptr
35A8A2:  LDR             R0, [R0]; ScriptParams
35A8A4:  LDRD.W          R5, R6, [R0,#(dword_81A90C - 0x81A908)]
35A8A8:  MOV             R0, R5
35A8AA:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
35A8AE:  CMP             R6, #0
35A8B0:  MOV             R1, R0
35A8B2:  IT NE
35A8B4:  MOVNE           R6, #1
35A8B6:  MOV             R0, R4
35A8B8:  MOV             R2, R5
35A8BA:  MOV             R3, R6
35A8BC:  BLX             j__ZN11CAutomobile7PopDoorEi6eDoorsb; CAutomobile::PopDoor(int,eDoors,bool)
35A8C0:  B               loc_35ACA2
35A8C2:  MOVS            R4, #0
35A8C4:  LDR.W           R0, =(ScriptParams_ptr - 0x35A8CC)
35A8C8:  ADD             R0, PC; ScriptParams_ptr
35A8CA:  LDR             R0, [R0]; ScriptParams
35A8CC:  LDR             R5, [R0,#(dword_81A90C - 0x81A908)]
35A8CE:  MOV             R0, R5
35A8D0:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
35A8D4:  MOV             R1, R0
35A8D6:  MOV             R0, R4
35A8D8:  MOV             R2, R5
35A8DA:  BLX             j__ZN11CAutomobile7FixDoorEi6eDoors; CAutomobile::FixDoor(int,eDoors)
35A8DE:  B               loc_35ACA2
35A8E0:  MOVS            R4, #0
35A8E2:  LDR.W           R0, [R4,#0x464]
35A8E6:  CBZ             R0, loc_35A93A
35A8E8:  MOVS            R0, #dword_14; this
35A8EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35A8EE:  MOV             R5, R0
35A8F0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
35A8F4:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35A906)
35A8F8:  MOVS            R2, #0
35A8FA:  LDR.W           R1, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x35A90A)
35A8FE:  MOVW            R3, #0x68B; int
35A902:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35A904:  STR             R2, [R5,#0xC]
35A906:  ADD             R1, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
35A908:  MOVS            R2, #1
35A90A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35A90C:  LDR             R1, [R1]; `vtable for'CTaskComplexLeaveAnyCar ...
35A90E:  STRH            R2, [R5,#0x10]
35A910:  ADDS            R1, #8
35A912:  STR             R1, [R5]
35A914:  LDR             R0, [R0]; CPools::ms_pPedPool
35A916:  LDR.W           R1, [R4,#0x464]
35A91A:  LDRD.W          R2, R0, [R0]
35A91E:  SUBS            R1, R1, R2
35A920:  MOV             R2, #0xBED87F3B
35A928:  ASRS            R1, R1, #2
35A92A:  MULS            R1, R2
35A92C:  MOV             R2, R5; CTask *
35A92E:  LDRB            R0, [R0,R1]
35A930:  ORR.W           R1, R0, R1,LSL#8; int
35A934:  MOV             R0, R11; this
35A936:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35A93A:  LDRB.W          R0, [R4,#0x48C]
35A93E:  CMP             R0, #0
35A940:  BEQ.W           loc_35ACA2
35A944:  LDR.W           R1, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x35A956)
35A948:  ADD.W           R9, R4, #0x468
35A94C:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35A95C)
35A950:  MOVS            R5, #0xFA
35A952:  ADD             R1, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
35A954:  VLDR            S16, =0.000015259
35A958:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
35A95A:  VLDR            S18, =500.0
35A95E:  LDR             R1, [R1]; `vtable for'CTaskComplexLeaveAnyCar ...
35A960:  STR             R4, [SP,#0xE0+var_B8]
35A962:  MOVS            R4, #0
35A964:  ADD.W           R8, R1, #8
35A968:  LDR             R2, [R2]; CPools::ms_pPedPool ...
35A96A:  STR             R2, [SP,#0xE0+var_BC]
35A96C:  LDR.W           R1, [R9,R4,LSL#2]
35A970:  CBZ             R1, loc_35A9DE
35A972:  BLX             rand
35A976:  MOV             R10, R0
35A978:  MOVS            R0, #dword_14; this
35A97A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35A97E:  MOV             R6, R0
35A980:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
35A984:  UXTH.W          R0, R10
35A988:  MOVW            R3, #0x68B; int
35A98C:  VMOV            S0, R0
35A990:  MOVS            R0, #1
35A992:  VCVT.F32.S32    S0, S0
35A996:  STR.W           R8, [R6]
35A99A:  VMUL.F32        S0, S0, S16
35A99E:  VMUL.F32        S0, S0, S18
35A9A2:  VCVT.S32.F32    S0, S0
35A9A6:  STRH            R0, [R6,#0x10]
35A9A8:  VMOV            R0, S0
35A9AC:  ADD             R0, R5
35A9AE:  STR             R0, [R6,#0xC]
35A9B0:  LDR             R0, [SP,#0xE0+var_BC]
35A9B2:  LDR.W           R1, [R9,R4,LSL#2]
35A9B6:  LDR             R0, [R0]
35A9B8:  LDRD.W          R2, R0, [R0]
35A9BC:  SUBS            R1, R1, R2
35A9BE:  MOV             R2, #0xBED87F3B
35A9C6:  ASRS            R1, R1, #2
35A9C8:  MULS            R1, R2
35A9CA:  MOV             R2, R6; CTask *
35A9CC:  LDRB            R0, [R0,R1]
35A9CE:  ORR.W           R1, R0, R1,LSL#8; int
35A9D2:  MOV             R0, R11; this
35A9D4:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35A9D8:  LDR             R0, [SP,#0xE0+var_B8]
35A9DA:  LDRB.W          R0, [R0,#0x48C]
35A9DE:  ADD.W           R5, R5, #0x1F4
35A9E2:  ADDS            R4, #1
35A9E4:  UXTB            R1, R0
35A9E6:  MOVS            R6, #0
35A9E8:  CMP             R4, R1
35A9EA:  BLT             loc_35A96C
35A9EC:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35A9EE:  MOVS            R4, #0
35A9F0:  LDR.W           R0, =(ScriptParams_ptr - 0x35A9F8)
35A9F4:  ADD             R0, PC; ScriptParams_ptr
35A9F6:  LDR             R0, [R0]; ScriptParams
35A9F8:  LDRD.W          R5, R6, [R0,#(dword_81A90C - 0x81A908)]
35A9FC:  MOV             R0, R5
35A9FE:  BLX             j__ZN14CDamageManager24GetCarNodeIndexFromPanelE7ePanels; CDamageManager::GetCarNodeIndexFromPanel(ePanels)
35AA02:  CMP             R6, #0
35AA04:  MOV             R1, R0; int
35AA06:  IT NE
35AA08:  MOVNE           R6, #1
35AA0A:  MOV             R0, R4; int
35AA0C:  MOV             R2, R5; int
35AA0E:  MOV             R3, R6
35AA10:  BLX             j__ZN11CAutomobile8PopPanelEi7ePanelsb; CAutomobile::PopPanel(int,ePanels,bool)
35AA14:  B               loc_35ACA2
35AA16:  MOVS            R4, #0
35AA18:  LDR.W           R0, =(ScriptParams_ptr - 0x35AA20)
35AA1C:  ADD             R0, PC; ScriptParams_ptr
35AA1E:  LDR             R0, [R0]; ScriptParams
35AA20:  LDR             R5, [R0,#(dword_81A90C - 0x81A908)]
35AA22:  MOV             R0, R5
35AA24:  BLX             j__ZN14CDamageManager24GetCarNodeIndexFromPanelE7ePanels; CDamageManager::GetCarNodeIndexFromPanel(ePanels)
35AA28:  MOV             R1, R0; int
35AA2A:  MOV             R0, R4; int
35AA2C:  MOV             R2, R5; int
35AA2E:  BLX             j__ZN11CAutomobile8FixPanelEi7ePanels; CAutomobile::FixPanel(int,ePanels)
35AA32:  B               loc_35ACA2
35AA34:  MOVS            R0, #0
35AA36:  LDR.W           R1, =(ScriptParams_ptr - 0x35AA3E)
35AA3A:  ADD             R1, PC; ScriptParams_ptr
35AA3C:  LDR             R1, [R1]; ScriptParams
35AA3E:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35AA40:  BLX             j__ZN11CAutomobile7FixTyreE7eWheels; CAutomobile::FixTyre(eWheels)
35AA44:  B               loc_35ACA2
35AA46:  MOVS            R0, #0
35AA48:  LDR.W           R2, =(ScriptParams_ptr - 0x35AA50)
35AA4C:  ADD             R2, PC; ScriptParams_ptr
35AA4E:  LDR             R2, [R2]; ScriptParams
35AA50:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
35AA52:  CMP             R2, #0
35AA54:  BLT.W           loc_35ACCA
35AA58:  LDR             R3, [R1,#4]
35AA5A:  UXTB            R6, R2
35AA5C:  LSRS            R2, R2, #8
35AA5E:  LDRB            R3, [R3,R2]
35AA60:  CMP             R3, R6
35AA62:  BNE.W           loc_35AE2C
35AA66:  MOV.W           R3, #0x1A4
35AA6A:  LDR             R1, [R1]
35AA6C:  MLA.W           R1, R2, R3, R1
35AA70:  LDR.W           R2, =(ScriptParams_ptr - 0x35AA78)
35AA74:  ADD             R2, PC; ScriptParams_ptr
35AA76:  B               loc_35AE3A
35AA78:  MOVS            R0, #0
35AA7A:  LDR.W           R1, =(ScriptParams_ptr - 0x35AA82)
35AA7E:  ADD             R1, PC; ScriptParams_ptr
35AA80:  LDR             R1, [R1]; ScriptParams
35AA82:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
35AA84:  CMP             R2, #0
35AA86:  BLT.W           loc_35ACD2
35AA8A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35AA96)
35AA8E:  UXTB            R6, R2
35AA90:  LSRS            R2, R2, #8
35AA92:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35AA94:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35AA96:  LDR             R1, [R1]; CPools::ms_pPedPool
35AA98:  LDR             R3, [R1,#4]
35AA9A:  LDRB            R3, [R3,R2]
35AA9C:  CMP             R3, R6
35AA9E:  BNE.W           loc_35AE34
35AAA2:  MOVW            R3, #0x7CC
35AAA6:  LDR             R1, [R1]
35AAA8:  MLA.W           R1, R2, R3, R1
35AAAC:  LDR.W           R2, =(ScriptParams_ptr - 0x35AAB4)
35AAB0:  ADD             R2, PC; ScriptParams_ptr
35AAB2:  B               loc_35AE3A
35AAB4:  MOVS            R1, #0
35AAB6:  LDR.W           R6, =(TheCamera_ptr - 0x35AABE)
35AABA:  ADD             R6, PC; TheCamera_ptr
35AABC:  B               loc_35AE12
35AABE:  MOVS            R1, #0
35AAC0:  LDR.W           R2, =(ScriptParams_ptr - 0x35AAC8)
35AAC4:  ADD             R2, PC; ScriptParams_ptr
35AAC6:  B               loc_35AE3A
35AAC8:  MOVS            R1, #0; this
35AACA:  LDR.W           R2, =(ScriptParams_ptr - 0x35AAD6)
35AACE:  VLDR            S0, =-999.9
35AAD2:  ADD             R2, PC; ScriptParams_ptr
35AAD4:  LDR             R6, [R2]; ScriptParams
35AAD6:  ADDS            R6, #8
35AAD8:  LDM             R6, {R2,R3,R6}
35AADA:  STR             R2, [SP,#0xE0+var_9C]
35AADC:  VMOV            S2, R2
35AAE0:  STRD.W          R3, R6, [SP,#0xE0+var_98]
35AAE4:  VCMPE.F32       S2, S0
35AAE8:  VMRS            APSR_nzcv, FPSCR
35AAEC:  BLE             loc_35AB1C
35AAEE:  LDR.W           R5, =(ScriptParams_ptr - 0x35AAFA)
35AAF2:  VLDR            S0, =3.1416
35AAF6:  ADD             R5, PC; ScriptParams_ptr
35AAF8:  VLDR            S8, =180.0
35AAFC:  LDR             R5, [R5]; ScriptParams
35AAFE:  VLDR            S4, [R5,#0x18]
35AB02:  VLDR            S6, [R5,#0x1C]
35AB06:  VLDR            S2, [R5,#0x14]
35AB0A:  VMUL.F32        S4, S4, S0
35AB0E:  VMUL.F32        S6, S6, S0
35AB12:  VMUL.F32        S0, S2, S0
35AB16:  VDIV.F32        S4, S4, S8
35AB1A:  B               loc_35AE6A
35AB1C:  MOVS            R2, #0
35AB1E:  MOVS            R3, #0
35AB20:  MOVS            R6, #0
35AB22:  BLX             j__ZN9CPhysical20AttachEntityToEntityEP7CEntityP7CVectorP6RtQuat; CPhysical::AttachEntityToEntity(CEntity *,CVector *,RtQuat *)
35AB26:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35AB28:  LDR.W           R0, =(ScriptParams_ptr - 0x35AB30)
35AB2C:  ADD             R0, PC; ScriptParams_ptr
35AB2E:  B               loc_35ABFC
35AB30:  LDR.W           R0, =(ScriptParams_ptr - 0x35AB38)
35AB34:  ADD             R0, PC; ScriptParams_ptr
35AB36:  B               loc_35ABFC
35AB38:  LDR.W           R0, =(ScriptParams_ptr - 0x35AB40)
35AB3C:  ADD             R0, PC; ScriptParams_ptr
35AB3E:  B               loc_35ABFC
35AB40:  LDR.W           R0, =(ScriptParams_ptr - 0x35AB48)
35AB44:  ADD             R0, PC; ScriptParams_ptr
35AB46:  B               loc_35ABFC
35AB48:  LDR.W           R0, =(ScriptParams_ptr - 0x35AB50)
35AB4C:  ADD             R0, PC; ScriptParams_ptr
35AB4E:  B               loc_35ABFC
35AB50:  LDR.W           R0, =(ScriptParams_ptr - 0x35AB58)
35AB54:  ADD             R0, PC; ScriptParams_ptr
35AB56:  B               loc_35ABFC
35AB58:  MOVS            R4, #0
35AB5A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x35AB64)
35AB5E:  MOV             R1, R4; CPed *
35AB60:  ADD             R0, PC; g_ikChainMan_ptr
35AB62:  LDR             R0, [R0]; g_ikChainMan ; this
35AB64:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
35AB68:  CMP             R0, #0
35AB6A:  BEQ.W           loc_35ACA2
35AB6E:  LDR.W           R0, =(g_ikChainMan_ptr - 0x35AB7C)
35AB72:  MOV             R1, R4; CPed *
35AB74:  MOV.W           R2, #0x1F4; int
35AB78:  ADD             R0, PC; g_ikChainMan_ptr
35AB7A:  LDR             R0, [R0]; g_ikChainMan ; this
35AB7C:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
35AB80:  B               loc_35ACA2
35AB82:  MOV.W           R8, #0
35AB86:  LDR.W           R0, =(ScriptParams_ptr - 0x35AB92)
35AB8A:  ADD.W           R9, SP, #0xE0+var_7C
35AB8E:  ADD             R0, PC; ScriptParams_ptr
35AB90:  LDR             R0, [R0]; ScriptParams
35AB92:  LDRD.W          R6, R4, [R0,#(dword_81A90C - 0x81A908)]
35AB96:  LDR             R5, [R0,#(dword_81A914 - 0x81A908)]
35AB98:  MOV             R0, R9; this
35AB9A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
35AB9E:  LDR             R0, =(_ZTV33CTaskSimpleTogglePedThreatScanner_ptr - 0x35ABAC)
35ABA0:  CMP             R6, #0
35ABA2:  IT NE
35ABA4:  MOVNE           R6, #1
35ABA6:  CMP             R4, #0
35ABA8:  ADD             R0, PC; _ZTV33CTaskSimpleTogglePedThreatScanner_ptr
35ABAA:  STRB.W          R6, [SP,#0xE0+var_74]
35ABAE:  MOV             R1, R8; CPed *
35ABB0:  LDR             R0, [R0]; `vtable for'CTaskSimpleTogglePedThreatScanner ...
35ABB2:  ADD.W           R0, R0, #8
35ABB6:  STR             R0, [SP,#0xE0+var_7C]
35ABB8:  IT NE
35ABBA:  MOVNE           R4, #1
35ABBC:  CMP             R5, #0
35ABBE:  STRB.W          R4, [SP,#0xE0+var_74+1]
35ABC2:  IT NE
35ABC4:  MOVNE           R5, #1
35ABC6:  MOV             R0, R9; this
35ABC8:  STRB.W          R5, [SP,#0xE0+var_74+2]
35ABCC:  BLX             j__ZN33CTaskSimpleTogglePedThreatScanner10ProcessPedEP4CPed; CTaskSimpleTogglePedThreatScanner::ProcessPed(CPed *)
35ABD0:  MOV             R0, R9; this
35ABD2:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
35ABD6:  B               loc_35ACA2
35ABD8:  MOVS            R0, #byte_8; this
35ABDA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35ABDE:  MOV             R4, R0
35ABE0:  BLX             j__ZN22CTaskSimpleClearLookAtC2Ev; CTaskSimpleClearLookAt::CTaskSimpleClearLookAt(void)
35ABE4:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x35ABF0)
35ABE8:  LDR.W           R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x35ABF2)
35ABEC:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
35ABEE:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
35ABF0:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
35ABF2:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
35ABF4:  B               loc_35AC7E
35ABF6:  LDR.W           R0, =(ScriptParams_ptr - 0x35ABFE)
35ABFA:  ADD             R0, PC; ScriptParams_ptr
35ABFC:  LDR             R0, [R0]; ScriptParams
35ABFE:  MOV.W           R1, #0xFFFFFFFF
35AC02:  STR             R1, [R0]
35AC04:  B               loc_35AC9A
35AC06:  MOVS            R0, #0
35AC08:  MOVS            R1, #0
35AC0A:  MOVT            R0, #0xC2C8
35AC0E:  MOVS            R2, #0
35AC10:  LDR.W           R3, =(ScriptParams_ptr - 0x35AC18)
35AC14:  ADD             R3, PC; ScriptParams_ptr
35AC16:  LDR             R3, [R3]; ScriptParams
35AC18:  STRD.W          R1, R2, [R3]
35AC1C:  STR             R0, [R3,#(dword_81A910 - 0x81A908)]
35AC1E:  MOV             R0, R11
35AC20:  MOVS            R1, #3
35AC22:  B               loc_35AC9E
35AC24:  LDR             R1, =(TheCamera_ptr - 0x35AC2C)
35AC26:  MOVS            R2, #0
35AC28:  ADD             R1, PC; TheCamera_ptr
35AC2A:  B               loc_35ADDE
35AC2C:  MOVS            R0, #(byte_9+3); this
35AC2E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35AC32:  MOV             R4, R0
35AC34:  LDR             R0, =(ScriptParams_ptr - 0x35AC3A)
35AC36:  ADD             R0, PC; ScriptParams_ptr
35AC38:  LDR             R0, [R0]; ScriptParams
35AC3A:  ADD.W           R8, R0, #4
35AC3E:  MOV             R0, R4; this
35AC40:  LDM.W           R8, {R5,R6,R8}
35AC44:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
35AC48:  LDR             R1, =(_ZTV33CTaskSimpleTogglePedThreatScanner_ptr - 0x35AC56)
35AC4A:  CMP             R5, #0
35AC4C:  LDR             R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x35AC5A)
35AC4E:  IT NE
35AC50:  MOVNE           R5, #1
35AC52:  ADD             R1, PC; _ZTV33CTaskSimpleTogglePedThreatScanner_ptr
35AC54:  LDR             R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x35AC60)
35AC56:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
35AC58:  CMP             R6, #0
35AC5A:  LDR             R1, [R1]; `vtable for'CTaskSimpleTogglePedThreatScanner ...
35AC5C:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
35AC5E:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
35AC60:  STRB            R5, [R4,#8]
35AC62:  ADD.W           R1, R1, #8
35AC66:  STR             R1, [R4]
35AC68:  IT NE
35AC6A:  MOVNE           R6, #1
35AC6C:  CMP.W           R8, #0
35AC70:  STRB            R6, [R4,#9]
35AC72:  IT NE
35AC74:  MOVNE.W         R8, #1
35AC78:  LDR             R1, [R2]; CTaskSequences::ms_taskSequence ...
35AC7A:  STRB.W          R8, [R4,#0xA]
35AC7E:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
35AC80:  ADD.W           R0, R1, R0,LSL#6; this
35AC84:  MOV             R1, R4; CTask *
35AC86:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
35AC8A:  B               loc_35ACA2
35AC8C:  MOV.W           R0, #0xFFFFFFFF
35AC90:  LDR.W           R1, =(ScriptParams_ptr - 0x35AC98)
35AC94:  ADD             R1, PC; ScriptParams_ptr
35AC96:  LDR             R1, [R1]; ScriptParams
35AC98:  STR             R0, [R1]
35AC9A:  MOV             R0, R11; this
35AC9C:  MOVS            R1, #1; __int16
35AC9E:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
35ACA2:  MOVS            R6, #0
35ACA4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x35ACAE); jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35ACA8:  LDR             R1, [SP,#0xE0+var_34]
35ACAA:  ADD             R0, PC; __stack_chk_guard_ptr
35ACAC:  LDR             R0, [R0]; __stack_chk_guard
35ACAE:  LDR             R0, [R0]
35ACB0:  SUBS            R0, R0, R1
35ACB2:  ITTTT EQ
35ACB4:  SXTBEQ          R0, R6
35ACB6:  ADDEQ           SP, SP, #0xB0
35ACB8:  VPOPEQ          {D8-D9}
35ACBC:  ADDEQ           SP, SP, #4
35ACBE:  ITT EQ
35ACC0:  POPEQ.W         {R8-R11}
35ACC4:  POPEQ           {R4-R7,PC}
35ACC6:  BLX             __stack_chk_fail
35ACCA:  LDR             R2, =(ScriptParams_ptr - 0x35ACD2)
35ACCC:  MOVS            R1, #0
35ACCE:  ADD             R2, PC; ScriptParams_ptr
35ACD0:  B               loc_35AE3A
35ACD2:  LDR             R2, =(ScriptParams_ptr - 0x35ACDA)
35ACD4:  MOVS            R1, #0
35ACD6:  ADD             R2, PC; ScriptParams_ptr
35ACD8:  B               loc_35AE3A
35ACDA:  ALIGN 4
35ACDC:  DCFS 0.000015259
35ACE0:  DCFS 500.0
35ACE4:  DCFS -999.9
35ACE8:  DCFS 3.1416
35ACEC:  DCFS 180.0
35ACF0:  DCD ScriptParams_ptr - 0x359FEE
35ACF4:  DCD ScriptParams_ptr - 0x35A14C
35ACF8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35A002
35ACFC:  MOVW            R4, #0x4E20
35AD00:  CMP             R1, #0
35AD02:  BLT             loc_35AD72
35AD04:  LDR             R2, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x35AD0E)
35AD06:  UXTB            R6, R1
35AD08:  LSRS            R1, R1, #8
35AD0A:  ADD             R2, PC; _ZN6CPools14ms_pObjectPoolE_ptr
35AD0C:  LDR             R2, [R2]; CPools::ms_pObjectPool ...
35AD0E:  LDR             R2, [R2]; CPools::ms_pObjectPool
35AD10:  LDR             R3, [R2,#4]
35AD12:  LDRB            R3, [R3,R1]
35AD14:  CMP             R3, R6
35AD16:  BNE             loc_35AD72
35AD18:  MOV.W           R3, #0x1A4
35AD1C:  LDR             R2, [R2]
35AD1E:  MLA.W           R8, R1, R3, R2
35AD22:  ADDS            R1, R0, #1; unsigned int
35AD24:  BNE             loc_35AD7A
35AD26:  MOVS            R0, #word_30; this
35AD28:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35AD2C:  MOV             R5, R0
35AD2E:  MOVS            R6, #0
35AD30:  MOVS            R0, #3
35AD32:  MOV.W           R1, #0x3E8
35AD36:  MOV.W           R2, #0x3E800000
35AD3A:  MOVS            R3, #1
35AD3C:  STRD.W          R6, R6, [SP,#0xE0+var_E0]; int
35AD40:  STRD.W          R6, R3, [SP,#0xE0+var_D8]; int
35AD44:  MOV.W           R3, #0xFFFFFFFF; int
35AD48:  STRD.W          R2, R1, [SP,#0xE0+var_D0]; float
35AD4C:  MOV             R1, R8; int
35AD4E:  STR             R0, [SP,#0xE0+var_C8]; int
35AD50:  MOV             R0, R5; int
35AD52:  MOV             R2, R4; int
35AD54:  BLX             j__ZN24CTaskSimpleTriggerLookAtC2EP7CEntityii5RwV3dhfii; CTaskSimpleTriggerLookAt::CTaskSimpleTriggerLookAt(CEntity *,int,int,RwV3d,uchar,float,int,int)
35AD58:  LDR             R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x35AD60)
35AD5A:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x35AD62)
35AD5C:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
35AD5E:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
35AD60:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
35AD62:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
35AD64:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
35AD66:  ADD.W           R0, R1, R0,LSL#6; this
35AD6A:  MOV             R1, R5; CTask *
35AD6C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
35AD70:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35AD72:  MOV.W           R8, #0
35AD76:  ADDS            R1, R0, #1
35AD78:  BEQ             loc_35AD26
35AD7A:  MOVS            R6, #0
35AD7C:  CMP             R0, #0
35AD7E:  BLT             loc_35ADA0
35AD80:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35AD8A)
35AD82:  UXTB            R3, R0
35AD84:  LSRS            R0, R0, #8
35AD86:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35AD88:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35AD8A:  LDR             R1, [R1]; CPools::ms_pPedPool
35AD8C:  LDR             R2, [R1,#4]
35AD8E:  LDRB            R2, [R2,R0]
35AD90:  CMP             R2, R3
35AD92:  BNE             loc_35ADA0
35AD94:  MOVW            R2, #0x7CC
35AD98:  LDR             R1, [R1]
35AD9A:  MLA.W           R2, R0, R2, R1
35AD9E:  B               loc_35ADA2
35ADA0:  MOVS            R2, #0; CPed *
35ADA2:  LDR.W           R12, =(g_ikChainMan_ptr - 0x35ADB6)
35ADA6:  MOV.W           R1, #0xFFFFFFFF
35ADAA:  MOV.W           R5, #0x1F4
35ADAE:  MOV.W           R0, #0x3E800000
35ADB2:  ADD             R12, PC; g_ikChainMan_ptr
35ADB4:  STRD.W          R4, R1, [SP,#0xE0+var_E0]; int
35ADB8:  STRD.W          R6, R6, [SP,#0xE0+var_D8]; int
35ADBC:  MOV.W           LR, #1
35ADC0:  STRD.W          R0, R5, [SP,#0xE0+var_D0]; float
35ADC4:  MOVS            R3, #6
35ADC6:  LDR.W           R0, [R12]; g_ikChainMan ; int
35ADCA:  ADR             R1, aCommandTaskLoo_1; "COMMAND_TASK_LOOK_AT_OBJECT"
35ADCC:  STRD.W          R3, LR, [SP,#0xE0+var_C8]; int
35ADD0:  MOV             R3, R8; int
35ADD2:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
35ADD6:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35ADD8:  LDR             R1, =(TheCamera_ptr - 0x35ADE0)
35ADDA:  MOVS            R2, #0; CEntity *
35ADDC:  ADD             R1, PC; TheCamera_ptr
35ADDE:  MOVS            R3, #1
35ADE0:  SXTH            R0, R0
35ADE2:  STRD.W          R0, R3, [SP,#0xE0+var_D8]; __int16
35ADE6:  ADD             R0, SP, #0xE0+var_9C
35ADE8:  VSTR            S0, [SP,#0xE0+var_DC]
35ADEC:  ADD             R3, SP, #0xE0+var_7C; CVector *
35ADEE:  STR             R0, [SP,#0xE0+var_E0]; CVector *
35ADF0:  MOVS            R6, #0
35ADF2:  LDR             R0, [R1]; TheCamera ; this
35ADF4:  MOVS            R1, #0; CEntity *
35ADF6:  BLX             j__ZN7CCamera25TakeControlAttachToEntityEP7CEntityS1_R7CVectorS3_fsi; CCamera::TakeControlAttachToEntity(CEntity *,CEntity *,CVector &,CVector &,float,short,int)
35ADFA:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35ADFC:  LDR             R6, =(TheCamera_ptr - 0x35AE04)
35ADFE:  MOVS            R1, #0
35AE00:  ADD             R6, PC; TheCamera_ptr
35AE02:  B               loc_35AE12
35AE04:  LDR             R6, =(TheCamera_ptr - 0x35AE0C)
35AE06:  MOVS            R2, #0
35AE08:  ADD             R6, PC; TheCamera_ptr
35AE0A:  B               loc_35AE12
35AE0C:  LDR             R6, =(TheCamera_ptr - 0x35AE14)
35AE0E:  MOVS            R2, #0; CEntity *
35AE10:  ADD             R6, PC; TheCamera_ptr
35AE12:  MOVS            R3, #1
35AE14:  SXTH            R0, R0
35AE16:  STRD.W          R0, R3, [SP,#0xE0+var_D8]; __int16
35AE1A:  ADD             R0, SP, #0xE0+var_9C
35AE1C:  VSTR            S0, [SP,#0xE0+var_DC]
35AE20:  ADD             R3, SP, #0xE0+var_7C; CVector *
35AE22:  STR             R0, [SP,#0xE0+var_E0]; CVector *
35AE24:  LDR             R0, [R6]; TheCamera ; this
35AE26:  BLX             j__ZN7CCamera25TakeControlAttachToEntityEP7CEntityS1_R7CVectorS3_fsi; CCamera::TakeControlAttachToEntity(CEntity *,CEntity *,CVector &,CVector &,float,short,int)
35AE2A:  B               loc_35ACA2
35AE2C:  LDR             R2, =(ScriptParams_ptr - 0x35AE34)
35AE2E:  MOVS            R1, #0
35AE30:  ADD             R2, PC; ScriptParams_ptr
35AE32:  B               loc_35AE3A
35AE34:  LDR             R2, =(ScriptParams_ptr - 0x35AE3C)
35AE36:  MOVS            R1, #0
35AE38:  ADD             R2, PC; ScriptParams_ptr
35AE3A:  LDR             R6, [R2]; ScriptParams
35AE3C:  VLDR            S0, =3.1416
35AE40:  VLDR            S8, =180.0
35AE44:  VLDR            S4, [R6,#0x18]
35AE48:  VLDR            S6, [R6,#0x1C]
35AE4C:  VLDR            S2, [R6,#0x14]
35AE50:  VMUL.F32        S4, S4, S0
35AE54:  VMUL.F32        S6, S6, S0
35AE58:  ADDS            R6, #8
35AE5A:  VMUL.F32        S0, S2, S0
35AE5E:  LDM             R6, {R2,R3,R6}
35AE60:  STR             R2, [SP,#0xE0+var_9C]
35AE62:  STR             R3, [SP,#0xE0+var_98]
35AE64:  VDIV.F32        S4, S4, S8
35AE68:  STR             R6, [SP,#0xE0+var_94]
35AE6A:  VDIV.F32        S2, S6, S8
35AE6E:  VDIV.F32        S0, S0, S8
35AE72:  STR             R6, [SP,#0xE0+var_E0]
35AE74:  VSTR            S0, [SP,#0xE0+var_DC]
35AE78:  VSTR            S4, [SP,#0xE0+var_D8]
35AE7C:  VSTR            S2, [SP,#0xE0+var_D4]
35AE80:  BLX             j__ZN9CPhysical20AttachEntityToEntityEP7CEntity7CVectorS2_; CPhysical::AttachEntityToEntity(CEntity *,CVector,CVector)
35AE84:  B               loc_35ACA2
35AE86:  MOVS            R2, #0
35AE88:  CMP             R2, R0
35AE8A:  IT EQ
35AE8C:  MOVEQ           R1, #1
35AE8E:  B.W             loc_359EDA
35AE92:  CMP             R0, #0
35AE94:  IT NE
35AE96:  MOVNE           R0, #1
35AE98:  MOV             R1, R0
35AE9A:  B.W             loc_359EDA
35AE9E:  MOVS            R3, #0
35AEA0:  B               loc_35AEBE
35AEA2:  MOVS            R3, #1
35AEA4:  B               loc_35AEBE
35AEA6:  VMOV            R1, S4; float
35AEAA:  MOVS            R6, #0
35AEAC:  VMOV            R2, S2; float
35AEB0:  STR             R6, [SP,#0xE0+var_E0]; bool
35AEB2:  VMOV            R3, S0; float
35AEB6:  BLX             j__ZN9CPhysical23DettachEntityFromEntityEfffb; CPhysical::DettachEntityFromEntity(float,float,float,bool)
35AEBA:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
35AEBC:  MOVS            R3, #2
35AEBE:  LDR             R6, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x35AECA)
35AEC0:  MOV             R5, #0xFFFFFFFE
35AEC4:  STR             R5, [R2]
35AEC6:  ADD             R6, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
35AEC8:  LDR             R2, [R6]; CScripted2dEffects::ms_userLists ...
35AECA:  MOVS            R6, #0
35AECC:  ADD.W           R0, R2, R0,LSL#2
35AED0:  ADD.W           R0, R0, R3,LSL#2
35AED4:  STR             R1, [R0,#0x10]
35AED6:  B               loc_35ACA4; jumptable 00358A92 cases 1610,1613,1617,1625,1626,1638,1647-1649,1653,1656,1679,1692-1697
