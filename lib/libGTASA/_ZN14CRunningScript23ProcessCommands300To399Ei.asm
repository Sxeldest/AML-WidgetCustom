; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands300To399Ei
; Address            : 0x341C18 - 0x342B9A
; =========================================================

341C18:  PUSH            {R4-R7,LR}
341C1A:  ADD             R7, SP, #0xC
341C1C:  PUSH.W          {R8-R11}
341C20:  SUB             SP, SP, #4
341C22:  VPUSH           {D8-D10}
341C26:  SUB             SP, SP, #0x50; float
341C28:  MOV             R4, R0
341C2A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x341C32)
341C2E:  ADD             R0, PC; __stack_chk_guard_ptr
341C30:  LDR             R0, [R0]; __stack_chk_guard
341C32:  LDR             R0, [R0]
341C34:  STR             R0, [SP,#0x88+var_3C]
341C36:  SUBW            R0, R1, #0x137; switch 89 cases
341C3A:  CMP             R0, #0x58 ; 'X'
341C3C:  BHI.W           def_341C42; jumptable 00341C42 default case, cases 312-330,333,336,338,339,341-343,348,350,355,368,369,376,378,380-383,386,387
341C40:  MOVS            R6, #0
341C42:  TBH.W           [PC,R0,LSL#1]; switch jump
341C46:  DCW 0x59; jump table for switch statement
341C48:  DCW 0x78
341C4A:  DCW 0x78
341C4C:  DCW 0x78
341C4E:  DCW 0x78
341C50:  DCW 0x78
341C52:  DCW 0x78
341C54:  DCW 0x78
341C56:  DCW 0x78
341C58:  DCW 0x78
341C5A:  DCW 0x78
341C5C:  DCW 0x78
341C5E:  DCW 0x78
341C60:  DCW 0x78
341C62:  DCW 0x78
341C64:  DCW 0x78
341C66:  DCW 0x78
341C68:  DCW 0x78
341C6A:  DCW 0x78
341C6C:  DCW 0x78
341C6E:  DCW 0x7B
341C70:  DCW 0xB8
341C72:  DCW 0x78
341C74:  DCW 0xD2
341C76:  DCW 0xEA
341C78:  DCW 0x78
341C7A:  DCW 0xF6
341C7C:  DCW 0x78
341C7E:  DCW 0x78
341C80:  DCW 0x102
341C82:  DCW 0x78
341C84:  DCW 0x78
341C86:  DCW 0x78
341C88:  DCW 0x123
341C8A:  DCW 0x153
341C8C:  DCW 0x18D
341C8E:  DCW 0x195
341C90:  DCW 0x78
341C92:  DCW 0x1A9
341C94:  DCW 0x78
341C96:  DCW 0x1BA
341C98:  DCW 0x1D7
341C9A:  DCW 0x20A
341C9C:  DCW 0x74D
341C9E:  DCW 0x78
341CA0:  DCW 0x220
341CA2:  DCW 0x22D
341CA4:  DCW 0x74D
341CA6:  DCW 0x23B
341CA8:  DCW 0x285
341CAA:  DCW 0x293
341CAC:  DCW 0x2A6
341CAE:  DCW 0x2D1
341CB0:  DCW 0x2D8
341CB2:  DCW 0x306
341CB4:  DCW 0x334
341CB6:  DCW 0x35F
341CB8:  DCW 0x78
341CBA:  DCW 0x78
341CBC:  DCW 0x37C
341CBE:  DCW 0x3A7
341CC0:  DCW 0x3F7
341CC2:  DCW 0x415
341CC4:  DCW 0x433
341CC6:  DCW 0x451
341CC8:  DCW 0x78
341CCA:  DCW 0x46F
341CCC:  DCW 0x78
341CCE:  DCW 0x48D
341CD0:  DCW 0x78
341CD2:  DCW 0x78
341CD4:  DCW 0x78
341CD6:  DCW 0x78
341CD8:  DCW 0x4AB
341CDA:  DCW 0x74D
341CDC:  DCW 0x78
341CDE:  DCW 0x78
341CE0:  DCW 0x4B9
341CE2:  DCW 0x4D4
341CE4:  DCW 0x4F9
341CE6:  DCW 0x51D
341CE8:  DCW 0x530
341CEA:  DCW 0x74D
341CEC:  DCW 0x54C
341CEE:  DCW 0x588
341CF0:  DCW 0x595
341CF2:  DCW 0x5AC
341CF4:  DCW 0x5B1
341CF6:  DCW 0x5B6
341CF8:  MOV             R0, R4; jumptable 00341C42 case 311
341CFA:  MOVS            R1, #2; __int16
341CFC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341D00:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x341D12)
341D04:  MOVW            R3, #0xA2C
341D08:  LDR.W           R0, =(ScriptParams_ptr - 0x341D14)
341D0C:  MOVS            R6, #0
341D0E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
341D10:  ADD             R0, PC; ScriptParams_ptr
341D12:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
341D14:  LDR             R0, [R0]; ScriptParams
341D16:  LDRD.W          R2, R0, [R0]
341D1A:  LDR             R1, [R1]; CPools::ms_pVehiclePool
341D1C:  LSRS            R2, R2, #8
341D1E:  LDR             R1, [R1]
341D20:  MLA.W           R1, R2, R3, R1
341D24:  LDRSH.W         R1, [R1,#0x26]
341D28:  CMP             R0, R1
341D2A:  MOV.W           R1, #0
341D2E:  IT EQ
341D30:  MOVEQ           R1, #1
341D32:  B.W             loc_3429BA
341D36:  MOVS            R6, #0xFF; jumptable 00341C42 default case, cases 312-330,333,336,338,339,341-343,348,350,355,368,369,376,378,380-383,386,387
341D38:  B.W             loc_342AE0; jumptable 00341C42 cases 354,358,385,393
341D3C:  MOV             R0, R4; jumptable 00341C42 case 331
341D3E:  MOVS            R1, #0xC; __int16
341D40:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341D44:  LDR.W           R0, =(ScriptParams_ptr - 0x341D50)
341D48:  VLDR            S4, =-100.0
341D4C:  ADD             R0, PC; ScriptParams_ptr
341D4E:  VLDR            S2, =0.015
341D52:  LDR             R5, [R0]; ScriptParams
341D54:  LDRD.W          R3, R12, [R5,#(dword_81A914 - 0x81A908)]; float
341D58:  LDRD.W          R0, R1, [R5]; float
341D5C:  VLDR            S0, [R5,#8]
341D60:  LDRH            R6, [R5,#(word_81A934 - 0x81A908)]
341D62:  VCMPE.F32       S0, S4
341D66:  LDRSH.W         R8, [R5,#(dword_81A920 - 0x81A908)]
341D6A:  VMRS            APSR_nzcv, FPSCR
341D6E:  VADD.F32        S2, S0, S2
341D72:  LDRH            R2, [R5,#(dword_81A930 - 0x81A908)]
341D74:  LDRSH.W         LR, [R5,#(dword_81A91C - 0x81A908)]
341D78:  LDRB.W          R9, [R5,#(dword_81A924 - 0x81A908)]
341D7C:  LDRB.W          R10, [R5,#(dword_81A928 - 0x81A908)]
341D80:  LDRB.W          R11, [R5,#(dword_81A92C - 0x81A908)]
341D84:  STRD.W          R2, R6, [SP,#0x88+var_70]; unsigned __int8
341D88:  ADD             R2, SP, #0x88+var_80
341D8A:  STM.W           R2, {R8-R11}
341D8E:  MOV.W           R2, #1
341D92:  MOV.W           R6, #0
341D96:  IT GT
341D98:  VMOVGT.F32      S0, S2
341D9C:  STR.W           LR, [SP,#0x88+var_84]; int
341DA0:  STRD.W          R6, R2, [SP,#0x88+var_68]; unsigned __int16
341DA4:  VMOV            R2, S0; float
341DA8:  STR.W           R12, [SP,#0x88+var_88]; float
341DAC:  BLX             j__ZN17CTheCarGenerators18CreateCarGeneratorEffffisshhhtthh; CTheCarGenerators::CreateCarGenerator(float,float,float,float,int,short,short,uchar,uchar,uchar,ushort,ushort,uchar,uchar)
341DB0:  STR             R0, [R5]
341DB2:  B.W             loc_342676
341DB6:  MOV             R0, R4; jumptable 00341C42 case 332
341DB8:  MOVS            R1, #2; __int16
341DBA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341DBE:  LDR.W           R0, =(ScriptParams_ptr - 0x341DCA)
341DC2:  LDR.W           R1, =(_ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x341DCC)
341DC6:  ADD             R0, PC; ScriptParams_ptr
341DC8:  ADD             R1, PC; _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr
341DCA:  LDR             R0, [R0]; ScriptParams
341DCC:  LDR             R1, [R1]; CTheCarGenerators::CarGeneratorArray ...
341DCE:  LDRH            R4, [R0]
341DD0:  LDR             R5, [R0,#(dword_81A90C - 0x81A908)]
341DD2:  ADD.W           R0, R1, R4,LSL#5; this
341DD6:  CMP             R5, #0
341DD8:  BEQ.W           loc_3429C2
341DDC:  CMP             R5, #0x65 ; 'e'
341DDE:  BLT.W           loc_342B1A
341DE2:  BLX             j__ZN13CCarGenerator8SwitchOnEv; CCarGenerator::SwitchOn(void)
341DE6:  B.W             loc_342ADE
341DEA:  MOV             R0, R4; jumptable 00341C42 case 334
341DEC:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
341DF0:  MOV             R5, R0
341DF2:  MOV             R0, R4; this
341DF4:  MOVS            R1, #1; __int16
341DF6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341DFA:  LDR.W           R0, =(ScriptParams_ptr - 0x341E02)
341DFE:  ADD             R0, PC; ScriptParams_ptr
341E00:  LDR             R0, [R0]; ScriptParams
341E02:  LDR             R0, [R0]
341E04:  CMP             R0, #0
341E06:  BEQ.W           loc_3429C8
341E0A:  LDR.W           R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x341E18)
341E0E:  MOV             R1, R5
341E10:  MOVS            R2, #0
341E12:  MOVS            R3, #1
341E14:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
341E16:  B.W             loc_3429D2
341E1A:  MOV             R0, R4; jumptable 00341C42 case 335
341E1C:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
341E20:  MOV             R1, R0; unsigned int
341E22:  LDR.W           R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x341E2A)
341E26:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
341E28:  LDR             R0, [R0]; this
341E2A:  BLX             j__ZN14COnscreenTimer10ClearClockEj; COnscreenTimer::ClearClock(uint)
341E2E:  B.W             loc_342ADE
341E32:  MOV             R0, R4; jumptable 00341C42 case 337
341E34:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
341E38:  MOV             R1, R0; unsigned int
341E3A:  LDR.W           R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x341E42)
341E3E:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
341E40:  LDR             R0, [R0]; this
341E42:  BLX             j__ZN14COnscreenTimer12ClearCounterEj; COnscreenTimer::ClearCounter(uint)
341E46:  B.W             loc_342ADE
341E4A:  MOV             R0, R4; jumptable 00341C42 case 340
341E4C:  MOVS            R1, #1; __int16
341E4E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341E52:  LDR.W           R0, =(ScriptParams_ptr - 0x341E5E)
341E56:  MOV.W           R8, #0
341E5A:  ADD             R0, PC; ScriptParams_ptr
341E5C:  LDR             R0, [R0]; ScriptParams
341E5E:  LDR             R0, [R0]
341E60:  CMP             R0, #0
341E62:  BLT.W           loc_3427DA
341E66:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x341E72)
341E6A:  UXTB            R3, R0
341E6C:  LSRS            R0, R0, #8
341E6E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
341E70:  LDR             R1, [R1]; CPools::ms_pPedPool ...
341E72:  LDR             R1, [R1]; CPools::ms_pPedPool
341E74:  LDR             R2, [R1,#4]
341E76:  LDRB            R2, [R2,R0]
341E78:  CMP             R2, R3
341E7A:  BNE.W           loc_3427DA
341E7E:  MOVW            R2, #0x7CC
341E82:  LDR             R1, [R1]
341E84:  MLA.W           R5, R0, R2, R1
341E88:  B.W             loc_3427DC
341E8C:  MOV             R0, R4; jumptable 00341C42 case 344
341E8E:  MOVS            R1, #3; __int16
341E90:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341E94:  LDR.W           R0, =(ScriptParams_ptr - 0x341E9C)
341E98:  ADD             R0, PC; ScriptParams_ptr
341E9A:  LDR             R0, [R0]; ScriptParams
341E9C:  LDR             R1, [R0]
341E9E:  CMP             R1, #0
341EA0:  BLT.W           loc_342ADE
341EA4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x341EB0)
341EA8:  UXTB            R3, R1
341EAA:  LSRS            R1, R1, #8
341EAC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
341EAE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
341EB0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
341EB2:  LDR             R2, [R0,#4]
341EB4:  LDRB            R2, [R2,R1]
341EB6:  CMP             R2, R3
341EB8:  BNE.W           loc_342ADE
341EBC:  MOVW            R2, #0xA2C
341EC0:  LDR             R0, [R0]
341EC2:  MLA.W           R1, R1, R2, R0
341EC6:  CMP             R1, #0
341EC8:  BEQ.W           loc_342ADE
341ECC:  LDR.W           R0, =(ScriptParams_ptr - 0x341EDA)
341ED0:  MOVS            R5, #1
341ED2:  LDR.W           R6, =(TheCamera_ptr - 0x341EDE)
341ED6:  ADD             R0, PC; ScriptParams_ptr
341ED8:  STR             R5, [SP,#0x88+var_88]
341EDA:  ADD             R6, PC; TheCamera_ptr
341EDC:  LDR             R0, [R0]; ScriptParams
341EDE:  LDRSH.W         R2, [R0,#(dword_81A90C - 0x81A908)]
341EE2:  LDRSH.W         R3, [R0,#(dword_81A910 - 0x81A908)]
341EE6:  LDR             R0, [R6]; TheCamera
341EE8:  B.W             loc_342B94
341EEC:  MOV             R0, R4; jumptable 00341C42 case 345
341EEE:  MOVS            R1, #3; __int16
341EF0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341EF4:  LDR.W           R0, =(ScriptParams_ptr - 0x341EFC)
341EF8:  ADD             R0, PC; ScriptParams_ptr
341EFA:  LDR             R0, [R0]; ScriptParams
341EFC:  LDR             R1, [R0]
341EFE:  CMP             R1, #0
341F00:  BLT.W           loc_342ADE
341F04:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x341F10)
341F08:  UXTB            R3, R1
341F0A:  LSRS            R1, R1, #8
341F0C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
341F0E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
341F10:  LDR             R0, [R0]; CPools::ms_pPedPool
341F12:  LDR             R2, [R0,#4]
341F14:  LDRB            R2, [R2,R1]
341F16:  CMP             R2, R3
341F18:  BNE.W           loc_342ADE
341F1C:  MOVW            R2, #0x7CC
341F20:  LDR             R0, [R0]
341F22:  MLA.W           R4, R1, R2, R0
341F26:  CMP             R4, #0
341F28:  BEQ.W           loc_342ADE
341F2C:  MOV             R0, R4; this
341F2E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
341F32:  CMP             R0, #1
341F34:  B.W             loc_342B7A
341F38:  LDR.W           R0, =(ScriptParams_ptr - 0x341F46)
341F3C:  MOVS            R6, #1
341F3E:  LDR.W           R1, =(TheCamera_ptr - 0x341F4A)
341F42:  ADD             R0, PC; ScriptParams_ptr
341F44:  STR             R6, [SP,#0x88+var_88]; int
341F46:  ADD             R1, PC; TheCamera_ptr
341F48:  MOVS            R6, #0
341F4A:  LDR             R0, [R0]; ScriptParams
341F4C:  LDRSH.W         R2, [R0,#(dword_81A90C - 0x81A908)]; __int16
341F50:  LDRSH.W         R3, [R0,#(dword_81A910 - 0x81A908)]; __int16
341F54:  LDR             R0, [R1]; TheCamera ; this
341F56:  MOVS            R1, #0; CEntity *
341F58:  BLX             j__ZN7CCamera11TakeControlEP7CEntityssi; CCamera::TakeControl(CEntity *,short,short,int)
341F5C:  B.W             loc_342AE0; jumptable 00341C42 cases 354,358,385,393
341F60:  LDR.W           R0, =(TheCamera_ptr - 0x341F68); jumptable 00341C42 case 346
341F64:  ADD             R0, PC; TheCamera_ptr
341F66:  LDR             R0, [R0]; TheCamera ; this
341F68:  BLX             j__ZN7CCamera7RestoreEv; CCamera::Restore(void)
341F6C:  B.W             loc_342ADE
341F70:  MOV             R0, R4; jumptable 00341C42 case 347
341F72:  MOVS            R1, #3; __int16
341F74:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341F78:  LDR.W           R0, =(ScriptParams_ptr - 0x341F80)
341F7C:  ADD             R0, PC; ScriptParams_ptr
341F7E:  LDR             R4, [R0]; ScriptParams
341F80:  LDR             R0, [R4]; this
341F82:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
341F86:  LDRB            R2, [R4,#(dword_81A910 - 0x81A908)]; unsigned __int8
341F88:  MOVS            R3, #0; unsigned int
341F8A:  LDRSH.W         R1, [R4,#(dword_81A90C - 0x81A908)]; __int16
341F8E:  MOVS            R6, #0
341F90:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
341F94:  B.W             loc_342AE0; jumptable 00341C42 cases 354,358,385,393
341F98:  MOV             R0, R4; jumptable 00341C42 case 349
341F9A:  MOVS            R1, #1; __int16
341F9C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341FA0:  LDR.W           R0, =(ScriptParams_ptr - 0x341FAE)
341FA4:  MOVS            R6, #0
341FA6:  LDR.W           R1, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x341FB0)
341FAA:  ADD             R0, PC; ScriptParams_ptr
341FAC:  ADD             R1, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
341FAE:  LDR             R0, [R0]; ScriptParams
341FB0:  LDR             R1, [R1]; CTimer::ms_fTimeScale ...
341FB2:  LDR             R0, [R0]
341FB4:  STR             R0, [R1]; CTimer::ms_fTimeScale
341FB6:  B.W             loc_342AE0; jumptable 00341C42 cases 354,358,385,393
341FBA:  MOV             R0, R4; jumptable 00341C42 case 351
341FBC:  MOVS            R1, #6; __int16
341FBE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341FC2:  LDR.W           R0, =(ScriptParams_ptr - 0x341FCE)
341FC6:  ADD.W           R12, SP, #0x88+var_58
341FCA:  ADD             R0, PC; ScriptParams_ptr
341FCC:  LDR             R0, [R0]; ScriptParams
341FCE:  LDM.W           R0, {R1-R3,R6}
341FD2:  LDRD.W          R5, R4, [R0,#(dword_81A918 - 0x81A908)]
341FD6:  LDR.W           R0, =(TheCamera_ptr - 0x341FE4)
341FDA:  STM.W           R12, {R1-R3}
341FDE:  ADD             R1, SP, #0x88+var_58; CVector *
341FE0:  ADD             R0, PC; TheCamera_ptr
341FE2:  ADD             R2, SP, #0x88+var_48; CVector *
341FE4:  STRD.W          R6, R5, [SP,#0x88+var_48]
341FE8:  LDR             R0, [R0]; TheCamera ; this
341FEA:  STR             R4, [SP,#0x88+var_40]
341FEC:  BLX             j__ZN7CCamera26SetCamPositionForFixedModeERK7CVectorS2_; CCamera::SetCamPositionForFixedMode(CVector const&,CVector const&)
341FF0:  B.W             loc_342ADE
341FF4:  MOV             R0, R4; jumptable 00341C42 case 352
341FF6:  MOVS            R1, #4; __int16
341FF8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
341FFC:  LDR.W           R0, =(ScriptParams_ptr - 0x342008)
342000:  VLDR            S2, =-100.0
342004:  ADD             R0, PC; ScriptParams_ptr
342006:  LDR             R0, [R0]; ScriptParams
342008:  VLDR            S0, [R0,#8]
34200C:  VLDR            S16, [R0]
342010:  VCMPE.F32       S0, S2
342014:  VLDR            S18, [R0,#4]
342018:  VMRS            APSR_nzcv, FPSCR
34201C:  BGT             loc_34202E
34201E:  VMOV            R0, S16; this
342022:  VMOV            R1, S18; float
342026:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34202A:  VMOV            S0, R0
34202E:  LDR.W           R0, =(ScriptParams_ptr - 0x34203C)
342032:  ADD             R1, SP, #0x88+var_58; CVector *
342034:  LDR.W           R3, =(TheCamera_ptr - 0x342042)
342038:  ADD             R0, PC; ScriptParams_ptr
34203A:  VSTR            S18, [SP,#0x88+var_58+4]
34203E:  ADD             R3, PC; TheCamera_ptr
342040:  VSTR            S16, [SP,#0x88+var_58]
342044:  LDR             R0, [R0]; ScriptParams
342046:  VSTR            S0, [SP,#0x88+var_50]
34204A:  LDRSH.W         R2, [R0,#(dword_81A914 - 0x81A908)]; __int16
34204E:  LDR             R0, [R3]; TheCamera ; this
342050:  MOVS            R3, #1; int
342052:  BLX             j__ZN7CCamera19TakeControlNoEntityERK7CVectorsi; CCamera::TakeControlNoEntity(CVector const&,short,int)
342056:  B.W             loc_342ADE
34205A:  MOV             R0, R4; jumptable 00341C42 case 353
34205C:  MOVS            R1, #3; __int16
34205E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342062:  MOV             R0, R4; this
342064:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
342068:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
34206C:  LDR.W           R0, =(ScriptParams_ptr - 0x342074)
342070:  ADD             R0, PC; ScriptParams_ptr
342072:  LDR             R5, [R0]; ScriptParams
342074:  ADD.W           R0, R4, #8
342078:  LDM.W           R5, {R1-R3}
34207C:  STR             R0, [SP,#0x88+var_88]
34207E:  MOVS            R0, #1
342080:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
342084:  B               loc_342128
342086:  MOV             R0, R4; jumptable 00341C42 case 356
342088:  MOVS            R1, #1; __int16
34208A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34208E:  LDR.W           R0, =(ScriptParams_ptr - 0x342096)
342092:  ADD             R0, PC; ScriptParams_ptr
342094:  LDR             R0, [R0]; ScriptParams
342096:  LDR             R0, [R0]; this
342098:  BLX             j__ZN6CRadar9ClearBlipEi; CRadar::ClearBlip(int)
34209C:  B.W             loc_342ADE
3420A0:  MOV             R0, R4; jumptable 00341C42 case 357
3420A2:  MOVS            R1, #2; __int16
3420A4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3420A8:  LDR.W           R0, =(ScriptParams_ptr - 0x3420B0)
3420AC:  ADD             R0, PC; ScriptParams_ptr
3420AE:  LDR             R1, [R0]; ScriptParams
3420B0:  LDRD.W          R0, R1, [R1]; int
3420B4:  BLX             j__ZN6CRadar16ChangeBlipColourEij; CRadar::ChangeBlipColour(int,uint)
3420B8:  B.W             loc_342ADE
3420BC:  MOV             R0, R4; jumptable 00341C42 case 359
3420BE:  MOVS            R1, #5; __int16
3420C0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3420C4:  LDR.W           R0, =(ScriptParams_ptr - 0x3420D0)
3420C8:  VLDR            S0, =-100.0
3420CC:  ADD             R0, PC; ScriptParams_ptr
3420CE:  LDR             R0, [R0]; ScriptParams
3420D0:  VLDR            S20, [R0,#8]
3420D4:  VLDR            S18, [R0]
3420D8:  VCMPE.F32       S20, S0
3420DC:  VLDR            S16, [R0,#4]
3420E0:  VMRS            APSR_nzcv, FPSCR
3420E4:  BGT             loc_3420F6
3420E6:  VMOV            R0, S18; this
3420EA:  VMOV            R1, S16; float
3420EE:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3420F2:  VMOV            S20, R0
3420F6:  MOV             R0, R4; this
3420F8:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3420FC:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
342100:  VMOV            R1, S18
342104:  LDR.W           R0, =(ScriptParams_ptr - 0x342114)
342108:  VMOV            R2, S16
34210C:  VMOV            R3, S20
342110:  ADD             R0, PC; ScriptParams_ptr
342112:  LDR             R5, [R0]; ScriptParams
342114:  ADD.W           R0, R4, #8
342118:  LDRD.W          R12, R6, [R5,#(dword_81A914 - 0x81A908)]
34211C:  STRD.W          R12, R6, [SP,#0x88+var_88]
342120:  STR             R0, [SP,#0x88+var_80]
342122:  MOVS            R0, #4
342124:  BLX             j__ZN6CRadar12SetCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc; CRadar::SetCoordBlip(eBlipType,CVector,uint,eBlipDisplay,char *)
342128:  STR             R0, [R5]
34212A:  B.W             loc_342AD6
34212E:  ALIGN 0x10
342130:  DCFS -100.0
342134:  DCFS 0.015
342138:  DCFS 1000.0
34213C:  DCFS 0.0
342140:  DCFS 360.0
342144:  DCFS -360.0
342148:  DCFS 3.1416
34214C:  DCFS 180.0
342150:  MOV             R0, R4; jumptable 00341C42 case 360
342152:  MOVS            R1, #2; __int16
342154:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342158:  LDR.W           R0, =(ScriptParams_ptr - 0x342160)
34215C:  ADD             R0, PC; ScriptParams_ptr
34215E:  LDR             R1, [R0]; ScriptParams
342160:  LDRD.W          R0, R1, [R1]; int
342164:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
342168:  B.W             loc_342ADE
34216C:  MOV             R0, R4; jumptable 00341C42 case 361
34216E:  MOVS            R1, #3; __int16
342170:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342174:  LDR.W           R0, =(ScriptParams_ptr - 0x342180)
342178:  LDR.W           R6, =(TheCamera_ptr - 0x342182)
34217C:  ADD             R0, PC; ScriptParams_ptr
34217E:  ADD             R6, PC; TheCamera_ptr
342180:  LDR             R0, [R0]; ScriptParams
342182:  LDRB            R1, [R0]; unsigned __int8
342184:  LDRB            R2, [R0,#(dword_81A90C - 0x81A908)]; unsigned __int8
342186:  LDRB            R3, [R0,#(dword_81A910 - 0x81A908)]; unsigned __int8
342188:  LDR             R0, [R6]; TheCamera ; this
34218A:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
34218E:  B.W             loc_342ADE
342192:  MOV             R0, R4; jumptable 00341C42 case 362
342194:  MOVS            R1, #2; __int16
342196:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34219A:  LDR.W           R0, =(ScriptParams_ptr - 0x3421A6)
34219E:  VLDR            S2, =1000.0
3421A2:  ADD             R0, PC; ScriptParams_ptr
3421A4:  LDR             R5, [R0]; ScriptParams
3421A6:  LDR.W           R0, =(TheCamera_ptr - 0x3421B2)
3421AA:  VLDR            S0, [R5]
3421AE:  ADD             R0, PC; TheCamera_ptr
3421B0:  VCVT.F32.S32    S0, S0
3421B4:  LDRSH.W         R2, [R5,#(dword_81A90C - 0x81A908)]; __int16
3421B8:  LDR             R0, [R0]; TheCamera ; this
3421BA:  VDIV.F32        S0, S0, S2
3421BE:  VMOV            R1, S0; float
3421C2:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
3421C6:  LDR             R1, [R5,#(dword_81A90C - 0x81A908)]
3421C8:  LDRB.W          R0, [R4,#0xE6]
3421CC:  CMP             R1, #1
3421CE:  BNE.W           loc_342978
3421D2:  MOVS            R6, #0
3421D4:  CMP             R0, #0
3421D6:  BEQ.W           loc_342AE0; jumptable 00341C42 cases 354,358,385,393
3421DA:  LDR.W           R0, =(_ZN11CTheScripts18bScriptHasFadedOutE_ptr - 0x3421E2)
3421DE:  ADD             R0, PC; _ZN11CTheScripts18bScriptHasFadedOutE_ptr
3421E0:  LDR             R0, [R0]; CTheScripts::bScriptHasFadedOut ...
3421E2:  STRB            R6, [R0]; CTheScripts::bScriptHasFadedOut
3421E4:  B.W             loc_342AE0; jumptable 00341C42 cases 354,358,385,393
3421E8:  LDR.W           R0, =(TheCamera_ptr - 0x3421F0); jumptable 00341C42 case 363
3421EC:  ADD             R0, PC; TheCamera_ptr
3421EE:  LDR             R0, [R0]; TheCamera ; this
3421F0:  BLX             j__ZN7CCamera9GetFadingEv; CCamera::GetFading(void)
3421F4:  B               loc_3427D0
3421F6:  MOV             R0, R4; jumptable 00341C42 case 364
3421F8:  MOVS            R1, #5; __int16
3421FA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3421FE:  LDR.W           R0, =(ScriptParams_ptr - 0x34220A)
342202:  VLDR            S2, =-100.0
342206:  ADD             R0, PC; ScriptParams_ptr
342208:  LDR             R0, [R0]; ScriptParams
34220A:  VLDR            S0, [R0,#8]
34220E:  LDR             R4, [R0,#(dword_81A918 - 0x81A908)]
342210:  VCMPE.F32       S0, S2
342214:  VLDR            S16, [R0]
342218:  VLDR            S18, [R0,#4]
34221C:  VLDR            S20, [R0,#0xC]
342220:  VMRS            APSR_nzcv, FPSCR
342224:  BGT             loc_342236
342226:  VMOV            R0, S16; this
34222A:  VMOV            R1, S18; float
34222E:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
342232:  VMOV            S0, R0
342236:  VMOV            R1, S20; CVector *
34223A:  ADD             R0, SP, #0x88+var_58; this
34223C:  MOV             R2, R4; float
34223E:  VSTR            S18, [SP,#0x88+var_58+4]
342242:  VSTR            S16, [SP,#0x88+var_58]
342246:  VSTR            S0, [SP,#0x88+var_50]
34224A:  BLX             j__ZN8CRestart23AddHospitalRestartPointERK7CVectorfi; CRestart::AddHospitalRestartPoint(CVector const&,float,int)
34224E:  B.W             loc_342ADE
342252:  MOV             R0, R4; jumptable 00341C42 case 365
342254:  MOVS            R1, #5; __int16
342256:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34225A:  LDR.W           R0, =(ScriptParams_ptr - 0x342266)
34225E:  VLDR            S2, =-100.0
342262:  ADD             R0, PC; ScriptParams_ptr
342264:  LDR             R0, [R0]; ScriptParams
342266:  VLDR            S0, [R0,#8]
34226A:  LDR             R4, [R0,#(dword_81A918 - 0x81A908)]
34226C:  VCMPE.F32       S0, S2
342270:  VLDR            S16, [R0]
342274:  VLDR            S18, [R0,#4]
342278:  VLDR            S20, [R0,#0xC]
34227C:  VMRS            APSR_nzcv, FPSCR
342280:  BGT             loc_342292
342282:  VMOV            R0, S16; this
342286:  VMOV            R1, S18; float
34228A:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34228E:  VMOV            S0, R0
342292:  VMOV            R1, S20; CVector *
342296:  ADD             R0, SP, #0x88+var_58; this
342298:  MOV             R2, R4; float
34229A:  VSTR            S18, [SP,#0x88+var_58+4]
34229E:  VSTR            S16, [SP,#0x88+var_58]
3422A2:  VSTR            S0, [SP,#0x88+var_50]
3422A6:  BLX             j__ZN8CRestart21AddPoliceRestartPointERK7CVectorfi; CRestart::AddPoliceRestartPoint(CVector const&,float,int)
3422AA:  B.W             loc_342ADE
3422AE:  MOV             R0, R4; jumptable 00341C42 case 366
3422B0:  MOVS            R1, #4; __int16
3422B2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3422B6:  LDR.W           R0, =(ScriptParams_ptr - 0x3422C2)
3422BA:  VLDR            S2, =-100.0
3422BE:  ADD             R0, PC; ScriptParams_ptr
3422C0:  LDR             R0, [R0]; ScriptParams
3422C2:  VLDR            S0, [R0,#8]
3422C6:  VLDR            S16, [R0]
3422CA:  VCMPE.F32       S0, S2
3422CE:  VLDR            S18, [R0,#4]
3422D2:  VLDR            S20, [R0,#0xC]
3422D6:  VMRS            APSR_nzcv, FPSCR
3422DA:  BGT             loc_3422EC
3422DC:  VMOV            R0, S16; this
3422E0:  VMOV            R1, S18; float
3422E4:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3422E8:  VMOV            S0, R0
3422EC:  VMOV            R1, S20; CVector *
3422F0:  ADD             R0, SP, #0x88+var_58; this
3422F2:  VSTR            S18, [SP,#0x88+var_58+4]
3422F6:  VSTR            S16, [SP,#0x88+var_58]
3422FA:  VSTR            S0, [SP,#0x88+var_50]
3422FE:  BLX             j__ZN8CRestart19OverrideNextRestartERK7CVectorf; CRestart::OverrideNextRestart(CVector const&,float)
342302:  B               loc_342ADE
342304:  MOV             R0, R4; jumptable 00341C42 case 367
342306:  MOVS            R1, #0xA; __int16
342308:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34230C:  LDR.W           R0, =(ScriptParams_ptr - 0x342314)
342310:  ADD             R0, PC; ScriptParams_ptr
342312:  LDR             R0, [R0]; ScriptParams
342314:  ADDS            R3, R0, #4
342316:  LDM             R3, {R1-R3}
342318:  VLDR            S0, [R0,#0x10]
34231C:  ADD             R0, SP, #0x88+var_58
34231E:  STM             R0!, {R1-R3}
342320:  VCMP.F32        S0, #0.0
342324:  VMRS            APSR_nzcv, FPSCR
342328:  BNE.W           loc_3429DC
34232C:  LDR.W           R0, =(ScriptParams_ptr - 0x342338)
342330:  VLDR            S0, =0.0
342334:  ADD             R0, PC; ScriptParams_ptr
342336:  LDR             R0, [R0]; ScriptParams
342338:  VLDR            S2, [R0,#0x14]
34233C:  B               loc_342A08
34233E:  MOV             R0, R4; jumptable 00341C42 case 370
342340:  MOVS            R1, #1; __int16
342342:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342346:  LDR.W           R0, =(ScriptParams_ptr - 0x342356)
34234A:  MOVW            R2, #0x7CC
34234E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x342358)
342352:  ADD             R0, PC; ScriptParams_ptr
342354:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
342356:  LDR             R0, [R0]; ScriptParams
342358:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34235A:  LDR             R0, [R0]
34235C:  LDR             R1, [R1]; CPools::ms_pPedPool
34235E:  LSRS            R0, R0, #8
342360:  LDR             R1, [R1]
342362:  MLA.W           R0, R0, R2, R1
342366:  LDRB.W          R1, [R0,#0x485]
34236A:  LSLS            R1, R1, #0x1F
34236C:  ITE NE
34236E:  LDRNE.W         R1, [R0,#0x590]
342372:  MOVEQ           R1, #0
342374:  CMP             R1, #0
342376:  IT NE
342378:  MOVNE           R0, R1
34237A:  LDR             R1, [R0,#dword_14]
34237C:  CMP             R1, #0
34237E:  BEQ.W           loc_342A42
342382:  LDRD.W          R0, R1, [R1,#0x10]; x
342386:  EOR.W           R0, R0, #0x80000000; y
34238A:  BLX             atan2f
34238E:  VMOV            S0, R0
342392:  B               loc_342A46
342394:  MOV             R0, R4; jumptable 00341C42 case 371
342396:  MOVS            R1, #2; __int16
342398:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34239C:  LDR.W           R0, =(ScriptParams_ptr - 0x3423A8)
3423A0:  VLDR            S2, =360.0
3423A4:  ADD             R0, PC; ScriptParams_ptr
3423A6:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3423B0)
3423AA:  LDR             R0, [R0]; ScriptParams
3423AC:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3423AE:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3423B0:  VLDR            S0, [R0,#4]
3423B4:  LDR             R0, [R0]
3423B6:  VCMPE.F32       S0, #0.0
3423BA:  LDR             R1, [R1]; CPools::ms_pPedPool
3423BC:  VMRS            APSR_nzcv, FPSCR
3423C0:  VADD.F32        S4, S0, S2
3423C4:  MOV.W           R4, R0,LSR#8
3423C8:  MOVW            R0, #0x7CC
3423CC:  IT LT
3423CE:  VMOVLT.F32      S0, S4
3423D2:  VLDR            S4, =-360.0
3423D6:  VCMPE.F32       S0, S2
3423DA:  LDR             R5, [R1]
3423DC:  VMRS            APSR_nzcv, FPSCR
3423E0:  VADD.F32        S4, S0, S4
3423E4:  MLA.W           R6, R4, R0, R5
3423E8:  IT GT
3423EA:  VMOVGT.F32      S0, S4
3423EE:  LDRB.W          R0, [R6,#0x485]
3423F2:  LSLS            R0, R0, #0x1F
3423F4:  ITT NE
3423F6:  LDRNE.W         R0, [R6,#0x590]
3423FA:  CMPNE           R0, #0
3423FC:  BNE.W           loc_342ADE
342400:  VLDR            S2, =3.1416
342404:  LDR.W           R0, [R6,#0x14]!; this
342408:  VMUL.F32        S0, S0, S2
34240C:  VLDR            S2, =180.0
342410:  ADDW            R1, R6, #0x54C
342414:  CMP             R0, #0
342416:  VDIV.F32        S0, S0, S2
34241A:  VSTR            S0, [R1]
34241E:  ADD.W           R1, R6, #0x548
342422:  VSTR            S0, [R1]
342426:  BEQ.W           loc_342B42
34242A:  VMOV            R1, S0; x
34242E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
342432:  B               loc_342B4E
342434:  MOV             R0, R4; jumptable 00341C42 case 372
342436:  MOVS            R1, #1; __int16
342438:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34243C:  LDR.W           R0, =(ScriptParams_ptr - 0x342444)
342440:  ADD             R0, PC; ScriptParams_ptr
342442:  LDR             R0, [R0]; ScriptParams
342444:  LDR             R1, [R0]
342446:  CMP             R1, #0
342448:  BLT.W           loc_342820
34244C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x342458)
342450:  UXTB            R3, R1
342452:  LSRS            R1, R1, #8
342454:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
342456:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
342458:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34245A:  LDR             R2, [R0,#4]
34245C:  LDRB            R2, [R2,R1]
34245E:  CMP             R2, R3
342460:  BNE.W           loc_342820
342464:  MOVW            R2, #0xA2C
342468:  LDR             R0, [R0]
34246A:  MLA.W           R0, R1, R2, R0
34246E:  B               loc_342822
342470:  MOV             R0, R4; jumptable 00341C42 case 373
342472:  MOVS            R1, #2; __int16
342474:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342478:  LDR.W           R0, =(ScriptParams_ptr - 0x342480)
34247C:  ADD             R0, PC; ScriptParams_ptr
34247E:  LDR             R0, [R0]; ScriptParams
342480:  LDR             R1, [R0]
342482:  CMP             R1, #0
342484:  BLT.W           loc_34283C
342488:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x342494)
34248C:  UXTB            R3, R1
34248E:  LSRS            R1, R1, #8
342490:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
342492:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
342494:  LDR             R0, [R0]; CPools::ms_pVehiclePool
342496:  LDR             R2, [R0,#4]
342498:  LDRB            R2, [R2,R1]
34249A:  CMP             R2, R3
34249C:  BNE.W           loc_34283C
3424A0:  MOVW            R2, #0xA2C
3424A4:  LDR             R0, [R0]
3424A6:  MLA.W           R4, R1, R2, R0
3424AA:  B               loc_34283E
3424AC:  MOV             R0, R4; jumptable 00341C42 case 374
3424AE:  MOVS            R1, #1; __int16
3424B0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3424B4:  LDR.W           R0, =(ScriptParams_ptr - 0x3424BC)
3424B8:  ADD             R0, PC; ScriptParams_ptr
3424BA:  LDR             R0, [R0]; ScriptParams
3424BC:  LDR             R1, [R0]
3424BE:  CMP             R1, #0
3424C0:  BLT.W           loc_342898
3424C4:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3424D0)
3424C8:  UXTB            R3, R1
3424CA:  LSRS            R1, R1, #8
3424CC:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3424CE:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3424D0:  LDR             R0, [R0]; CPools::ms_pObjectPool
3424D2:  LDR             R2, [R0,#4]
3424D4:  LDRB            R2, [R2,R1]
3424D6:  CMP             R2, R3
3424D8:  BNE.W           loc_342898
3424DC:  MOV.W           R2, #0x1A4
3424E0:  LDR             R0, [R0]
3424E2:  MLA.W           R0, R1, R2, R0
3424E6:  B               loc_34289A
3424E8:  MOV             R0, R4; jumptable 00341C42 case 375
3424EA:  MOVS            R1, #2; __int16
3424EC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3424F0:  LDR.W           R0, =(ScriptParams_ptr - 0x3424F8)
3424F4:  ADD             R0, PC; ScriptParams_ptr
3424F6:  LDR             R0, [R0]; ScriptParams
3424F8:  LDR             R1, [R0]; CEntity *
3424FA:  CMP             R1, #0
3424FC:  BLT.W           loc_3428B4
342500:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34250C)
342504:  UXTB            R3, R1
342506:  LSRS            R1, R1, #8
342508:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34250A:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
34250C:  LDR             R0, [R0]; CPools::ms_pObjectPool
34250E:  LDR             R2, [R0,#4]
342510:  LDRB            R2, [R2,R1]
342512:  CMP             R2, R3
342514:  BNE.W           loc_3428B4
342518:  MOV.W           R2, #0x1A4
34251C:  LDR             R0, [R0]
34251E:  MLA.W           R4, R1, R2, R0
342522:  B               loc_3428B6
342524:  MOV             R0, R4; jumptable 00341C42 case 377
342526:  MOVS            R1, #2; __int16
342528:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34252C:  LDR.W           R0, =(ScriptParams_ptr - 0x342534)
342530:  ADD             R0, PC; ScriptParams_ptr
342532:  LDR             R0, [R0]; ScriptParams
342534:  LDR             R1, [R0]
342536:  CMP             R1, #0
342538:  BLT.W           loc_342914
34253C:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x342548)
342540:  UXTB            R3, R1
342542:  LSRS            R1, R1, #8
342544:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
342546:  LDR             R0, [R0]; CPools::ms_pPedPool ...
342548:  LDR             R0, [R0]; CPools::ms_pPedPool
34254A:  LDR             R2, [R0,#4]
34254C:  LDRB            R2, [R2,R1]
34254E:  CMP             R2, R3
342550:  BNE.W           loc_342914
342554:  MOVW            R2, #0x7CC
342558:  LDR             R0, [R0]
34255A:  MLA.W           R0, R1, R2, R0
34255E:  B               loc_342916
342560:  MOV             R0, R4; jumptable 00341C42 case 379
342562:  MOVS            R1, #3; __int16
342564:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342568:  LDR.W           R0, =(ScriptParams_ptr - 0x342570)
34256C:  ADD             R0, PC; ScriptParams_ptr
34256E:  LDR             R0, [R0]; ScriptParams
342570:  LDR             R1, [R0]
342572:  CMP             R1, #0
342574:  BLT.W           loc_342942
342578:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x342584)
34257C:  UXTB            R3, R1
34257E:  LSRS            R1, R1, #8
342580:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
342582:  LDR             R0, [R0]; CPools::ms_pPedPool ...
342584:  LDR             R0, [R0]; CPools::ms_pPedPool
342586:  LDR             R2, [R0,#4]
342588:  LDRB            R2, [R2,R1]
34258A:  CMP             R2, R3
34258C:  BNE.W           loc_342942
342590:  MOVW            R2, #0x7CC
342594:  LDR             R0, [R0]
342596:  MLA.W           R0, R1, R2, R0
34259A:  B               loc_342944
34259C:  LDR.W           R0, =(_ZN11CTheScripts14OnAMissionFlagE_ptr - 0x3425A8); jumptable 00341C42 case 384
3425A0:  MOVS            R6, #0
3425A2:  LDR             R1, [R4,#0x14]
3425A4:  ADD             R0, PC; _ZN11CTheScripts14OnAMissionFlagE_ptr
3425A6:  ADDS            R2, R1, #1
3425A8:  STR             R2, [R4,#0x14]
3425AA:  LDR             R0, [R0]; CTheScripts::OnAMissionFlag ...
3425AC:  LDRH.W          R2, [R1,#1]
3425B0:  ADDS            R1, #3
3425B2:  STR             R1, [R4,#0x14]
3425B4:  STR             R2, [R0]; CTheScripts::OnAMissionFlag
3425B6:  B               loc_342AE0; jumptable 00341C42 cases 354,358,385,393
3425B8:  MOV             R0, R4; jumptable 00341C42 case 388
3425BA:  MOVS            R1, #2; __int16
3425BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3425C0:  LDR.W           R0, =(ScriptParams_ptr - 0x3425CC)
3425C4:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3425CE)
3425C8:  ADD             R0, PC; ScriptParams_ptr
3425CA:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3425CC:  LDR             R0, [R0]; ScriptParams
3425CE:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3425D0:  LDR             R2, [R0]
3425D2:  LDR             R1, [R1]; CPools::ms_pPedPool
3425D4:  VLDR            S0, [R0,#4]
3425D8:  LSRS            R0, R2, #8
3425DA:  MOVW            R2, #0x7CC
3425DE:  LDR             R1, [R1]
3425E0:  MLA.W           R0, R0, R2, R1
3425E4:  VCVT.F32.S32    S0, S0
3425E8:  ADDW            R0, R0, #0x544
3425EC:  B               loc_342622
3425EE:  MOV             R0, R4; jumptable 00341C42 case 389
3425F0:  MOVS            R1, #2; __int16
3425F2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3425F6:  LDR.W           R0, =(ScriptParams_ptr - 0x342602)
3425FA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x342604)
3425FE:  ADD             R0, PC; ScriptParams_ptr
342600:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
342602:  LDR             R0, [R0]; ScriptParams
342604:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
342606:  LDR             R2, [R0]
342608:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34260A:  VLDR            S0, [R0,#4]
34260E:  LSRS            R0, R2, #8
342610:  MOVW            R2, #0xA2C
342614:  LDR             R1, [R1]
342616:  MLA.W           R0, R0, R2, R1
34261A:  VCVT.F32.S32    S0, S0
34261E:  ADDW            R0, R0, #0x4CC
342622:  VLDR            S2, [R0]
342626:  MOVS            R1, #0
342628:  MOVS            R6, #0
34262A:  VCMPE.F32       S2, S0
34262E:  VMRS            APSR_nzcv, FPSCR
342632:  IT GT
342634:  MOVGT           R1, #1
342636:  B               loc_3429BA
342638:  MOV             R0, R4; jumptable 00341C42 case 390
34263A:  MOVS            R1, #1; __int16
34263C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342640:  MOV             R0, R4; this
342642:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
342646:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
34264A:  LDR.W           R0, =(ScriptParams_ptr - 0x342658)
34264E:  MOVS            R2, #0
342650:  MOVS            R3, #3
342652:  MOVS            R6, #0
342654:  ADD             R0, PC; ScriptParams_ptr
342656:  LDR.W           R8, [R0]; ScriptParams
34265A:  ADD.W           R0, R4, #8
34265E:  STR             R0, [SP,#0x88+var_88]
342660:  MOVS            R0, #1
342662:  LDR.W           R1, [R8]
342666:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
34266A:  MOVS            R1, #3; int
34266C:  MOV             R5, R0
34266E:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
342672:  STR.W           R5, [R8]
342676:  MOV             R0, R4; this
342678:  MOVS            R1, #1; __int16
34267A:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
34267E:  B               loc_342AE0; jumptable 00341C42 cases 354,358,385,393
342680:  MOV             R0, R4; jumptable 00341C42 case 391
342682:  MOVS            R1, #1; __int16
342684:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342688:  MOV             R0, R4; this
34268A:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
34268E:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
342692:  LDR.W           R0, =(ScriptParams_ptr - 0x34269C)
342696:  MOVS            R2, #1
342698:  ADD             R0, PC; ScriptParams_ptr
34269A:  LDR             R6, [R0]; ScriptParams
34269C:  ADD.W           R0, R4, #8
3426A0:  STR             R0, [SP,#0x88+var_88]
3426A2:  MOVS            R0, #2
3426A4:  B               loc_3426CA
3426A6:  MOV             R0, R4; jumptable 00341C42 case 392
3426A8:  MOVS            R1, #1; __int16
3426AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3426AE:  MOV             R0, R4; this
3426B0:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3426B4:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
3426B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3426C2)
3426BC:  MOVS            R2, #6
3426BE:  ADD             R0, PC; ScriptParams_ptr
3426C0:  LDR             R6, [R0]; ScriptParams
3426C2:  ADD.W           R0, R4, #8
3426C6:  STR             R0, [SP,#0x88+var_88]
3426C8:  MOVS            R0, #3
3426CA:  LDR             R1, [R6]
3426CC:  MOVS            R3, #3
3426CE:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
3426D2:  MOVS            R1, #3; int
3426D4:  MOV             R5, R0
3426D6:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
3426DA:  STR             R5, [R6]
3426DC:  B               loc_342AD6
3426DE:  MOV             R0, R4; jumptable 00341C42 case 394
3426E0:  MOVS            R1, #3; __int16
3426E2:  MOVS            R5, #3
3426E4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3426E8:  LDR.W           R0, =(ScriptParams_ptr - 0x3426F4)
3426EC:  VLDR            S0, =-100.0
3426F0:  ADD             R0, PC; ScriptParams_ptr
3426F2:  LDR             R0, [R0]; ScriptParams
3426F4:  VLDR            S20, [R0,#8]
3426F8:  VLDR            S16, [R0]
3426FC:  VCMPE.F32       S20, S0
342700:  VLDR            S18, [R0,#4]
342704:  VMRS            APSR_nzcv, FPSCR
342708:  BGT             loc_34271A
34270A:  VMOV            R0, S16; this
34270E:  VMOV            R1, S18; float
342712:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
342716:  VMOV            S20, R0
34271A:  MOV             R0, R4; this
34271C:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
342720:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
342724:  VMOV            R1, S16
342728:  MOVS            R6, #5
34272A:  VMOV            R2, S18
34272E:  ADD.W           R0, R4, #8
342732:  VMOV            R3, S20
342736:  STRD.W          R6, R5, [SP,#0x88+var_88]
34273A:  STR             R0, [SP,#0x88+var_80]
34273C:  MOVS            R0, #4
34273E:  BLX             j__ZN6CRadar12SetCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc; CRadar::SetCoordBlip(eBlipType,CVector,uint,eBlipDisplay,char *)
342742:  MOVS            R1, #3; int
342744:  MOV             R5, R0
342746:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
34274A:  LDR.W           R0, =(ScriptParams_ptr - 0x342752)
34274E:  ADD             R0, PC; ScriptParams_ptr
342750:  LDR             R0, [R0]; ScriptParams
342752:  STR             R5, [R0]
342754:  B               loc_342AD6
342756:  MOV             R0, R4; jumptable 00341C42 case 395
342758:  MOVS            R1, #2; __int16
34275A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34275E:  LDR.W           R0, =(ScriptParams_ptr - 0x342766)
342762:  ADD             R0, PC; ScriptParams_ptr
342764:  LDR             R1, [R0]; ScriptParams
342766:  LDRD.W          R0, R1, [R1]
34276A:  BLX             j__ZN6CRadar17ChangeBlipDisplayEi12eBlipDisplay; CRadar::ChangeBlipDisplay(int,eBlipDisplay)
34276E:  B               loc_342ADE
342770:  MOV             R0, R4; jumptable 00341C42 case 396
342772:  MOVS            R1, #4; __int16
342774:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342778:  LDR.W           R0, =(ScriptParams_ptr - 0x342784)
34277C:  LDR.W           R2, =(AudioEngine_ptr - 0x342786)
342780:  ADD             R0, PC; ScriptParams_ptr
342782:  ADD             R2, PC; AudioEngine_ptr
342784:  LDR             R0, [R0]; ScriptParams
342786:  LDRD.W          R3, R6, [R0]
34278A:  LDR             R5, [R0,#(dword_81A910 - 0x81A908)]
34278C:  LDRH            R1, [R0,#(dword_81A914 - 0x81A908)]; unsigned __int16
34278E:  LDR             R0, [R2]; AudioEngine ; this
342790:  ADD             R2, SP, #0x88+var_58; CVector *
342792:  STRD.W          R3, R6, [SP,#0x88+var_58]
342796:  STR             R5, [SP,#0x88+var_50]
342798:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtR7CVector; CAudioEngine::ReportMissionAudioEvent(ushort,CVector &)
34279C:  B               loc_342ADE
34279E:  MOV             R0, R4; jumptable 00341C42 case 397
3427A0:  MOVS            R1, #4; __int16
3427A2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3427A6:  B               loc_342AD6
3427A8:  MOV             R0, R4; jumptable 00341C42 case 398
3427AA:  MOVS            R1, #1; __int16
3427AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3427B0:  B               loc_342ADE
3427B2:  MOV             R0, R4; jumptable 00341C42 case 399
3427B4:  MOVS            R1, #1; __int16
3427B6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3427BA:  LDR.W           R0, =(ScriptParams_ptr - 0x3427C6)
3427BE:  LDR.W           R2, =(_ZN11CTheScripts14UpsideDownCarsE_ptr - 0x3427C8)
3427C2:  ADD             R0, PC; ScriptParams_ptr
3427C4:  ADD             R2, PC; _ZN11CTheScripts14UpsideDownCarsE_ptr
3427C6:  LDR             R0, [R0]; ScriptParams
3427C8:  LDR             R1, [R0]; int
3427CA:  LDR             R0, [R2]; this
3427CC:  BLX             j__ZN19CUpsideDownCarCheck29HasCarBeenUpsideDownForAWhileEi; CUpsideDownCarCheck::HasCarBeenUpsideDownForAWhile(int)
3427D0:  MOV             R1, R0
3427D2:  CMP             R1, #0
3427D4:  IT NE
3427D6:  MOVNE           R1, #1
3427D8:  B               loc_342970
3427DA:  MOVS            R5, #0
3427DC:  ADD             R6, SP, #0x88+var_48
3427DE:  MOV             R0, R4; this
3427E0:  MOVS            R2, #8; unsigned __int8
3427E2:  MOV             R1, R6; char *
3427E4:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3427E8:  ADD             R0, SP, #0x88+var_60; char *
3427EA:  MOV             R1, R6; char *
3427EC:  STRD.W          R8, R8, [SP,#0x88+var_60]
3427F0:  BLX             strcpy
3427F4:  MOV             R0, R5; this
3427F6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3427FA:  LDRB.W          R0, [R5,#0x485]
3427FE:  LSLS            R0, R0, #0x1F
342800:  ITT NE
342802:  LDRNE.W         R0, [R5,#0x590]
342806:  CMPNE           R0, #0
342808:  BNE.W           loc_34298C
34280C:  LDR             R0, [R5,#0x14]
34280E:  ADD.W           R1, R0, #0x30 ; '0'
342812:  CMP             R0, #0
342814:  IT EQ
342816:  ADDEQ           R1, R5, #4
342818:  LDR             R0, [R1,#8]
34281A:  VLDR            D16, [R1]
34281E:  B               loc_34299E
342820:  MOVS            R0, #0
342822:  LDR             R1, [R0,#0x14]
342824:  CMP             R1, #0
342826:  BEQ.W           loc_342A58
34282A:  LDRD.W          R0, R1, [R1,#0x10]; x
34282E:  EOR.W           R0, R0, #0x80000000; y
342832:  BLX             atan2f
342836:  VMOV            S0, R0
34283A:  B               loc_342A5C
34283C:  MOVS            R4, #0
34283E:  LDR.W           R0, =(ScriptParams_ptr - 0x34284A)
342842:  VLDR            S0, =360.0
342846:  ADD             R0, PC; ScriptParams_ptr
342848:  LDR             R0, [R0]; ScriptParams
34284A:  VLDR            S2, [R0,#4]
34284E:  VCMPE.F32       S2, #0.0
342852:  VMRS            APSR_nzcv, FPSCR
342856:  VADD.F32        S4, S2, S0
34285A:  IT LT
34285C:  VMOVLT.F32      S2, S4
342860:  VLDR            S4, =-360.0
342864:  VCMPE.F32       S2, S0
342868:  VLDR            S0, =3.1416
34286C:  VMRS            APSR_nzcv, FPSCR
342870:  VADD.F32        S4, S2, S4
342874:  IT GT
342876:  VMOVGT.F32      S2, S4
34287A:  LDR             R0, [R4,#0x14]; this
34287C:  VMUL.F32        S0, S2, S0
342880:  VLDR            S2, =180.0
342884:  CMP             R0, #0
342886:  VDIV.F32        S0, S0, S2
34288A:  BEQ.W           loc_342A6E
34288E:  VMOV            R1, S0; x
342892:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
342896:  B               loc_342A72
342898:  MOVS            R0, #0
34289A:  LDR             R1, [R0,#0x14]
34289C:  CMP             R1, #0
34289E:  BEQ.W           loc_342A8C
3428A2:  LDRD.W          R0, R1, [R1,#0x10]; x
3428A6:  EOR.W           R0, R0, #0x80000000; y
3428AA:  BLX             atan2f
3428AE:  VMOV            S0, R0
3428B2:  B               loc_342A90
3428B4:  MOVS            R4, #0
3428B6:  MOV             R0, R4; this
3428B8:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
3428BC:  LDR             R0, =(ScriptParams_ptr - 0x3428C6)
3428BE:  VLDR            S0, =360.0
3428C2:  ADD             R0, PC; ScriptParams_ptr
3428C4:  LDR             R0, [R0]; ScriptParams
3428C6:  VLDR            S2, [R0,#4]
3428CA:  VCMPE.F32       S2, #0.0
3428CE:  VMRS            APSR_nzcv, FPSCR
3428D2:  VADD.F32        S4, S2, S0
3428D6:  IT LT
3428D8:  VMOVLT.F32      S2, S4
3428DC:  VLDR            S4, =-360.0
3428E0:  VCMPE.F32       S2, S0
3428E4:  VLDR            S0, =3.1416
3428E8:  VMRS            APSR_nzcv, FPSCR
3428EC:  VADD.F32        S4, S2, S4
3428F0:  IT GT
3428F2:  VMOVGT.F32      S2, S4
3428F6:  LDR             R0, [R4,#0x14]; this
3428F8:  VMUL.F32        S0, S2, S0
3428FC:  VLDR            S2, =180.0
342900:  CMP             R0, #0
342902:  VDIV.F32        S0, S0, S2
342906:  BEQ.W           loc_342B04
34290A:  VMOV            R1, S0; x
34290E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
342912:  B               loc_342B08
342914:  MOVS            R0, #0
342916:  LDR             R1, =(ScriptParams_ptr - 0x34291C)
342918:  ADD             R1, PC; ScriptParams_ptr
34291A:  LDR             R1, [R1]; ScriptParams
34291C:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
34291E:  CMP             R2, #0
342920:  BLT             loc_342954
342922:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34292C)
342924:  UXTB            R6, R2
342926:  LSRS            R2, R2, #8
342928:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34292A:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
34292C:  LDR             R1, [R1]; CPools::ms_pObjectPool
34292E:  LDR             R3, [R1,#4]
342930:  LDRB            R3, [R3,R2]
342932:  CMP             R3, R6
342934:  BNE             loc_342954
342936:  MOV.W           R3, #0x1A4
34293A:  LDR             R1, [R1]
34293C:  MLA.W           R1, R2, R3, R1
342940:  B               loc_342956
342942:  MOVS            R0, #0
342944:  LDR             R1, =(ScriptParams_ptr - 0x34294A)
342946:  ADD             R1, PC; ScriptParams_ptr
342948:  LDR             R2, [R1]; ScriptParams
34294A:  LDRD.W          R1, R2, [R2,#(dword_81A90C - 0x81A908)]
34294E:  BLX             j__ZN4CPed7SetAmmoE11eWeaponTypej; CPed::SetAmmo(eWeaponType,uint)
342952:  B               loc_342ADE
342954:  MOVS            R1, #0; CEntity *
342956:  LDRB.W          R2, [R0,#0x485]
34295A:  LSLS            R2, R2, #0x1F
34295C:  ITE NE
34295E:  LDRNE.W         R2, [R0,#0x590]
342962:  MOVEQ           R2, #0
342964:  CMP             R2, #0
342966:  IT NE
342968:  MOVNE           R0, R2; this
34296A:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
34296E:  MOV             R1, R0; unsigned __int8
342970:  MOV             R0, R4; this
342972:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
342976:  B               loc_342ADE
342978:  CMP             R0, #0
34297A:  BEQ.W           loc_342ADE
34297E:  LDR             R0, =(_ZN11CTheScripts18bScriptHasFadedOutE_ptr - 0x342988)
342980:  MOVS            R1, #1
342982:  MOVS            R6, #0
342984:  ADD             R0, PC; _ZN11CTheScripts18bScriptHasFadedOutE_ptr
342986:  LDR             R0, [R0]; CTheScripts::bScriptHasFadedOut ...
342988:  STRB            R1, [R0]; CTheScripts::bScriptHasFadedOut
34298A:  B               loc_342AE0; jumptable 00341C42 cases 354,358,385,393
34298C:  LDR             R1, [R0,#0x14]
34298E:  ADD.W           R2, R1, #0x30 ; '0'
342992:  CMP             R1, #0
342994:  IT EQ
342996:  ADDEQ           R2, R0, #4
342998:  VLDR            D16, [R2]
34299C:  LDR             R0, [R2,#8]
34299E:  STR             R0, [SP,#0x88+var_50]
3429A0:  ADD             R0, SP, #0x88+var_58
3429A2:  VSTR            D16, [SP,#0x88+var_58]
3429A6:  MOVS            R6, #0
3429A8:  LDRD.W          R2, R3, [SP,#0x88+var_60]
3429AC:  STR             R6, [SP,#0x88+var_88]
3429AE:  BLX             j__ZN9CTheZones35DoesPointLieWithinZoneWithGivenNameEPK7CVectory9eZoneType; CTheZones::DoesPointLieWithinZoneWithGivenName(CVector const*,ulong long,eZoneType)
3429B2:  MOV             R1, R0
3429B4:  CMP             R1, #0
3429B6:  IT NE
3429B8:  MOVNE           R1, #1; unsigned __int8
3429BA:  MOV             R0, R4; this
3429BC:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
3429C0:  B               loc_342AE0; jumptable 00341C42 cases 354,358,385,393
3429C2:  BLX             j__ZN13CCarGenerator9SwitchOffEv; CCarGenerator::SwitchOff(void)
3429C6:  B               loc_342ADE
3429C8:  LDR             R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x3429D4)
3429CA:  MOV             R1, R5; unsigned int
3429CC:  MOVS            R2, #0; char *
3429CE:  MOVS            R3, #0; bool
3429D0:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
3429D2:  MOVS            R6, #0
3429D4:  LDR             R0, [R0]; this
3429D6:  BLX             j__ZN14COnscreenTimer8AddClockEjPcb; COnscreenTimer::AddClock(uint,char *,bool)
3429DA:  B               loc_342AE0; jumptable 00341C42 cases 354,358,385,393
3429DC:  VMOV            R4, S0
3429E0:  MOV             R0, R4; x
3429E2:  BLX             cosf
3429E6:  MOV             R5, R0
3429E8:  MOV             R0, R4; x
3429EA:  BLX             sinf
3429EE:  LDR             R1, =(ScriptParams_ptr - 0x3429FC)
3429F0:  VMOV            S0, R0
3429F4:  VMOV            S4, R5
3429F8:  ADD             R1, PC; ScriptParams_ptr
3429FA:  LDR             R1, [R1]; ScriptParams
3429FC:  VLDR            S2, [R1,#0x14]
342A00:  VMUL.F32        S0, S0, S2
342A04:  VMUL.F32        S2, S4, S2
342A08:  VMOV            R1, S0
342A0C:  LDR             R0, =(ScriptParams_ptr - 0x342A16)
342A0E:  VMOV            R3, S2; float
342A12:  ADD             R0, PC; ScriptParams_ptr
342A14:  LDR             R2, [R0]; ScriptParams
342A16:  LDRB            R0, [R2]; this
342A18:  LDRSH.W         R6, [R2,#(dword_81A920 - 0x81A908)]
342A1C:  LDRB            R5, [R2,#(dword_81A924 - 0x81A908)]
342A1E:  LDRB.W          R4, [R2,#(dword_81A928 - 0x81A908)]
342A22:  LDRB.W          R2, [R2,#(dword_81A92C - 0x81A908)]
342A26:  STRD.W          R6, R5, [SP,#0x88+var_80]; float
342A2A:  STRD.W          R4, R2, [SP,#0x88+var_78]; unsigned __int8
342A2E:  VSTR            S2, [SP,#0x88+var_88]
342A32:  VSTR            S0, [SP,#0x88+var_84]
342A36:  EOR.W           R2, R1, #0x80000000; CVector *
342A3A:  ADD             R1, SP, #0x88+var_58; unsigned __int8
342A3C:  BLX             j__ZN8CShadows23StoreShadowToBeRenderedEhP7CVectorffffshhh; CShadows::StoreShadowToBeRendered(uchar,CVector *,float,float,float,float,short,uchar,uchar,uchar)
342A40:  B               loc_342ADE
342A42:  VLDR            S0, [R0,#0x10]
342A46:  VLDR            S2, =180.0
342A4A:  LDR             R0, =(ScriptParams_ptr - 0x342A58)
342A4C:  VMUL.F32        S0, S0, S2
342A50:  VLDR            S2, =3.1416
342A54:  ADD             R0, PC; ScriptParams_ptr
342A56:  B               loc_342AA0
342A58:  VLDR            S0, [R0,#0x10]
342A5C:  VLDR            S2, =180.0
342A60:  LDR             R0, =(ScriptParams_ptr - 0x342A6E)
342A62:  VMUL.F32        S0, S0, S2
342A66:  VLDR            S2, =3.1416
342A6A:  ADD             R0, PC; ScriptParams_ptr
342A6C:  B               loc_342AA0
342A6E:  VSTR            S0, [R4,#0x10]
342A72:  LDR             R0, [R4,#0x18]
342A74:  CBZ             R0, loc_342ADE
342A76:  LDR             R1, [R0,#4]
342A78:  LDR             R0, [R4,#0x14]
342A7A:  ADDS            R1, #0x10
342A7C:  CMP             R0, #0
342A7E:  BNE             loc_342B64
342A80:  ADDS            R0, R4, #4
342A82:  B               loc_342B74
342A84:  DCFS -100.0
342A88:  DCD __stack_chk_guard_ptr - 0x341C32
342A8C:  VLDR            S0, [R0,#0x10]
342A90:  VLDR            S2, =180.0
342A94:  LDR             R0, =(ScriptParams_ptr - 0x342AA2)
342A96:  VMUL.F32        S0, S0, S2
342A9A:  VLDR            S2, =3.1416
342A9E:  ADD             R0, PC; ScriptParams_ptr
342AA0:  VDIV.F32        S0, S0, S2
342AA4:  VCMPE.F32       S0, #0.0
342AA8:  VLDR            S2, =360.0
342AAC:  VMRS            APSR_nzcv, FPSCR
342AB0:  VADD.F32        S4, S0, S2
342AB4:  IT LT
342AB6:  VMOVLT.F32      S0, S4
342ABA:  VLDR            S4, =-360.0
342ABE:  VADD.F32        S4, S0, S4
342AC2:  VCMPE.F32       S0, S2
342AC6:  LDR             R0, [R0]; ScriptParams
342AC8:  VMRS            APSR_nzcv, FPSCR
342ACC:  IT GT
342ACE:  VMOVGT.F32      S0, S4
342AD2:  VSTR            S0, [R0]
342AD6:  MOV             R0, R4; this
342AD8:  MOVS            R1, #1; __int16
342ADA:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
342ADE:  MOVS            R6, #0
342AE0:  LDR             R0, =(__stack_chk_guard_ptr - 0x342AE8); jumptable 00341C42 cases 354,358,385,393
342AE2:  LDR             R1, [SP,#0x88+var_3C]
342AE4:  ADD             R0, PC; __stack_chk_guard_ptr
342AE6:  LDR             R0, [R0]; __stack_chk_guard
342AE8:  LDR             R0, [R0]
342AEA:  SUBS            R0, R0, R1
342AEC:  ITTTT EQ
342AEE:  SXTBEQ          R0, R6
342AF0:  ADDEQ           SP, SP, #0x50 ; 'P'
342AF2:  VPOPEQ          {D8-D10}
342AF6:  ADDEQ           SP, SP, #4
342AF8:  ITT EQ
342AFA:  POPEQ.W         {R8-R11}
342AFE:  POPEQ           {R4-R7,PC}
342B00:  BLX             __stack_chk_fail
342B04:  VSTR            S0, [R4,#0x10]
342B08:  LDR             R0, [R4,#0x18]
342B0A:  CBZ             R0, loc_342B34
342B0C:  LDR             R1, [R0,#4]
342B0E:  LDR             R0, [R4,#0x14]
342B10:  ADDS            R1, #0x10
342B12:  CBZ             R0, loc_342B2E
342B14:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
342B18:  B               loc_342B34
342B1A:  BLX             j__ZN13CCarGenerator8SwitchOnEv; CCarGenerator::SwitchOn(void)
342B1E:  LDR             R0, =(_ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x342B26)
342B20:  MOVS            R6, #0
342B22:  ADD             R0, PC; _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr
342B24:  LDR             R0, [R0]; CTheCarGenerators::CarGeneratorArray ...
342B26:  ADD.W           R0, R0, R4,LSL#5
342B2A:  STRH            R5, [R0,#0x1A]
342B2C:  B               loc_342AE0; jumptable 00341C42 cases 354,358,385,393
342B2E:  ADDS            R0, R4, #4
342B30:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
342B34:  MOV             R0, R4; this
342B36:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
342B3A:  MOV             R0, R4; this
342B3C:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
342B40:  B               loc_342ADE
342B42:  MOVW            R0, #0x7CC
342B46:  MLA.W           R0, R4, R0, R5
342B4A:  VSTR            S0, [R0,#0x10]
342B4E:  MOVW            R0, #0x7CC
342B52:  MLA.W           R0, R4, R0, R5
342B56:  LDR             R0, [R0,#0x18]
342B58:  CMP             R0, #0
342B5A:  BEQ             loc_342ADE
342B5C:  LDR             R1, [R0,#4]
342B5E:  LDR             R0, [R6]
342B60:  ADDS            R1, #0x10
342B62:  CBZ             R0, loc_342B6A
342B64:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
342B68:  B               loc_342ADE
342B6A:  MOVW            R0, #0x7CC
342B6E:  MLA.W           R0, R4, R0, R5
342B72:  ADDS            R0, #4
342B74:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
342B78:  B               loc_342ADE
342B7A:  LDR             R0, =(ScriptParams_ptr - 0x342B84)
342B7C:  MOVS            R6, #1
342B7E:  LDR             R1, =(TheCamera_ptr - 0x342B88)
342B80:  ADD             R0, PC; ScriptParams_ptr
342B82:  STR             R6, [SP,#0x88+var_88]; int
342B84:  ADD             R1, PC; TheCamera_ptr
342B86:  LDR             R0, [R0]; ScriptParams
342B88:  LDRSH.W         R2, [R0,#(dword_81A90C - 0x81A908)]; __int16
342B8C:  LDRSH.W         R3, [R0,#(dword_81A910 - 0x81A908)]; __int16
342B90:  LDR             R0, [R1]; TheCamera ; this
342B92:  MOV             R1, R4; CEntity *
342B94:  BLX             j__ZN7CCamera11TakeControlEP7CEntityssi; CCamera::TakeControl(CEntity *,short,short,int)
342B98:  B               loc_342ADE
