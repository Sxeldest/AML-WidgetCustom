; =========================================================
; Game Engine Function: _ZN10CGameLogic6UpdateEv
; Address            : 0x307D0C - 0x308DB8
; =========================================================

307D0C:  PUSH            {R4-R7,LR}
307D0E:  ADD             R7, SP, #0xC
307D10:  PUSH.W          {R8}
307D14:  VPUSH           {D8-D10}
307D18:  SUB             SP, SP, #0x30
307D1A:  MOVS            R0, #0; this
307D1C:  BLX             j__ZN6CStats17UpdateRespectStatEh; CStats::UpdateRespectStat(uchar)
307D20:  BLX             j__ZN6CStats19UpdateSexAppealStatEv; CStats::UpdateSexAppealStat(void)
307D24:  MOVS            R0, #0; this
307D26:  BLX             j__ZN10CGameLogic43SetPlayerWantedLevelForForbiddenTerritoriesEb; CGameLogic::SetPlayerWantedLevelForForbiddenTerritories(bool)
307D2A:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x307D32)
307D2E:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
307D30:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing ...
307D32:  LDRB            R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing
307D34:  CBZ             R0, loc_307D42
307D36:  ADD             SP, SP, #0x30 ; '0'
307D38:  VPOP            {D8-D10}
307D3C:  POP.W           {R8}
307D40:  POP             {R4-R7,PC}
307D42:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x307D4A)
307D46:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
307D48:  LDR             R1, [R0]; CWorld::Players ...
307D4A:  LDR             R0, [R1]; this
307D4C:  CMP             R0, #0
307D4E:  ITT NE
307D50:  LDRNE.W         R1, [R1,#(dword_96B830 - 0x96B69C)]
307D54:  CMPNE           R1, #0
307D56:  BNE             loc_307D5E
307D58:  BLX             j__ZN10CGameLogic10UpdateSkipEv; CGameLogic::UpdateSkip(void)
307D5C:  B               loc_307F32
307D5E:  LDR             R2, [R1,#0x14]
307D60:  LDR             R3, [R0,#0x14]
307D62:  ADD.W           R6, R2, #0x30 ; '0'
307D66:  CMP             R2, #0
307D68:  IT EQ
307D6A:  ADDEQ           R6, R1, #4
307D6C:  ADD.W           R1, R3, #0x30 ; '0'
307D70:  CMP             R3, #0
307D72:  VLDR            D16, [R6]
307D76:  IT EQ
307D78:  ADDEQ           R1, R0, #4
307D7A:  VLDR            D17, [R1]
307D7E:  VSUB.F32        D16, D17, D16
307D82:  VMUL.F32        D0, D16, D16
307D86:  VADD.F32        S0, S0, S1
307D8A:  VSQRT.F32       S16, S0
307D8E:  VLDR            S0, =100.0
307D92:  VCMPE.F32       S16, S0
307D96:  VMRS            APSR_nzcv, FPSCR
307D9A:  BLE             loc_307DCE
307D9C:  LDR.W           R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x307DA4)
307DA0:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
307DA2:  LDR             R0, [R0]; CGameLogic::GameState ...
307DA4:  LDRB            R0, [R0]; CGameLogic::GameState
307DA6:  CMP             R0, #3
307DA8:  BEQ.W           loc_307EF4
307DAC:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307DBE)
307DB0:  MOVS            R3, #3
307DB2:  LDR.W           R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x307DC0)
307DB6:  LDR.W           R2, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x307DC2)
307DBA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
307DBC:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
307DBE:  ADD             R2, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
307DC0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
307DC2:  LDR             R1, [R1]; CGameLogic::GameState ...
307DC4:  LDR             R2, [R2]; CGameLogic::TimeOfLastEvent ...
307DC6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
307DC8:  STRB            R3, [R1]; CGameLogic::GameState
307DCA:  STR             R0, [R2]; CGameLogic::TimeOfLastEvent
307DCC:  B               loc_307EF4
307DCE:  LDR.W           R0, =(unk_7A21D8 - 0x307DDA)
307DD2:  VLDR            S2, =85.0
307DD6:  ADD             R0, PC; unk_7A21D8
307DD8:  VCMPE.F32       S16, S2
307DDC:  VLDR            S0, [R0]
307DE0:  VMRS            APSR_nzcv, FPSCR
307DE4:  BLE             loc_307E16
307DE6:  VCMPE.F32       S0, S2
307DEA:  VMRS            APSR_nzcv, FPSCR
307DEE:  BGT             loc_307E16
307DF0:  LDR.W           R0, =(TheText_ptr - 0x307DFC)
307DF4:  ADR.W           R4, aWrn2p; "WRN_2P"
307DF8:  ADD             R0, PC; TheText_ptr
307DFA:  MOV             R1, R4; CKeyGen *
307DFC:  LDR             R0, [R0]; TheText ; this
307DFE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
307E02:  MOV             R1, R0; char *
307E04:  MOVS            R0, #0
307E06:  STRD.W          R0, R0, [SP,#0x58+var_58]; bool
307E0A:  MOV             R0, R4; this
307E0C:  MOVS            R2, #0; unsigned __int16 *
307E0E:  MOVS            R3, #0; bool
307E10:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
307E14:  B               loc_307EF4
307E16:  LDR.W           R0, =(_ZN10CGameLogic17MaxPlayerDistanceE_ptr - 0x307E1E)
307E1A:  ADD             R0, PC; _ZN10CGameLogic17MaxPlayerDistanceE_ptr
307E1C:  LDR             R0, [R0]; CGameLogic::MaxPlayerDistance ...
307E1E:  VLDR            S2, [R0]
307E22:  VCMPE.F32       S16, S2
307E26:  VMRS            APSR_nzcv, FPSCR
307E2A:  BLE             loc_307EF4
307E2C:  LDR.W           R0, =(_ZN10CGameLogic22nPrintFocusHelpCounterE_ptr - 0x307E34)
307E30:  ADD             R0, PC; _ZN10CGameLogic22nPrintFocusHelpCounterE_ptr
307E32:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpCounter ...
307E34:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpCounter
307E36:  CMP             R0, #4
307E38:  BHI             loc_307EF4
307E3A:  LDR.W           R0, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x307E4E)
307E3E:  VCMPE.F32       S0, S2
307E42:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307E50)
307E46:  VMRS            APSR_nzcv, FPSCR
307E4A:  ADD             R0, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
307E4C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
307E4E:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpTimer ...
307E50:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
307E52:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpTimer
307E54:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
307E56:  BGT             loc_307EA4
307E58:  CMP             R1, R0
307E5A:  BLS             loc_307EA4
307E5C:  LDR.W           R0, =(TheText_ptr - 0x307E68)
307E60:  ADR.W           R4, aWrn12p; "WRN1_2P"
307E64:  ADD             R0, PC; TheText_ptr
307E66:  MOV             R1, R4; CKeyGen *
307E68:  LDR             R0, [R0]; TheText ; this
307E6A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
307E6E:  MOV             R1, R0; char *
307E70:  MOVS            R0, #0
307E72:  STRD.W          R0, R0, [SP,#0x58+var_58]; bool
307E76:  MOV             R0, R4; this
307E78:  MOVS            R2, #0; unsigned __int16 *
307E7A:  MOVS            R3, #0; bool
307E7C:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
307E80:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307E90)
307E84:  MOVW            R3, #0x3A98
307E88:  LDR.W           R1, =(_ZN10CGameLogic22nPrintFocusHelpCounterE_ptr - 0x307E96)
307E8C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
307E8E:  LDR.W           R2, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x307E9A)
307E92:  ADD             R1, PC; _ZN10CGameLogic22nPrintFocusHelpCounterE_ptr
307E94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
307E96:  ADD             R2, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
307E98:  B               loc_307EE4
307E9A:  ALIGN 4
307E9C:  DCFS 100.0
307EA0:  DCFS 85.0
307EA4:  CMP             R1, R0
307EA6:  BLS             loc_307EF4
307EA8:  LDR.W           R0, =(TheText_ptr - 0x307EB4)
307EAC:  ADR.W           R4, aWrn22p; "WRN2_2P"
307EB0:  ADD             R0, PC; TheText_ptr
307EB2:  MOV             R1, R4; CKeyGen *
307EB4:  LDR             R0, [R0]; TheText ; this
307EB6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
307EBA:  MOV             R1, R0; char *
307EBC:  MOVS            R0, #0
307EBE:  STRD.W          R0, R0, [SP,#0x58+var_58]; bool
307EC2:  MOV             R0, R4; this
307EC4:  MOVS            R2, #0; unsigned __int16 *
307EC6:  MOVS            R3, #0; bool
307EC8:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
307ECC:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307EDC)
307ED0:  MOVW            R3, #0xEA60
307ED4:  LDR.W           R1, =(_ZN10CGameLogic22nPrintFocusHelpCounterE_ptr - 0x307EE2)
307ED8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
307EDA:  LDR.W           R2, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x307EE6)
307EDE:  ADD             R1, PC; _ZN10CGameLogic22nPrintFocusHelpCounterE_ptr
307EE0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
307EE2:  ADD             R2, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
307EE4:  LDR             R1, [R1]; CGameLogic::nPrintFocusHelpCounter ...
307EE6:  LDR             R2, [R2]; CGameLogic::nPrintFocusHelpTimer ...
307EE8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
307EEA:  LDR             R6, [R1]; CGameLogic::nPrintFocusHelpCounter
307EEC:  ADD             R0, R3
307EEE:  STR             R0, [R2]; CGameLogic::nPrintFocusHelpTimer
307EF0:  ADDS            R0, R6, #1
307EF2:  STR             R0, [R1]; CGameLogic::nPrintFocusHelpCounter
307EF4:  LDR.W           R0, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x307EFC)
307EF8:  ADD             R0, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
307EFA:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus ...
307EFC:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus
307EFE:  CMP             R0, #2
307F00:  BEQ             loc_307F28
307F02:  LDR.W           R0, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x307F0A)
307F06:  ADD             R0, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
307F08:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpTimer ...
307F0A:  LDR             R0, [R0]; CGameLogic::nPrintFocusHelpTimer
307F0C:  CBZ             R0, loc_307F28
307F0E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307F1E)
307F12:  MOVW            R2, #0x7530
307F16:  LDR.W           R1, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x307F20)
307F1A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
307F1C:  ADD             R1, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
307F1E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
307F20:  LDR             R1, [R1]; CGameLogic::nPrintFocusHelpTimer ...
307F22:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
307F24:  ADD             R0, R2
307F26:  STR             R0, [R1]; CGameLogic::nPrintFocusHelpTimer
307F28:  LDR.W           R0, =(unk_7A21D8 - 0x307F30)
307F2C:  ADD             R0, PC; unk_7A21D8
307F2E:  VSTR            S16, [R0]
307F32:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x307F3C)
307F36:  MOVS            R5, #0x20 ; ' '
307F38:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
307F3A:  LDR             R1, [R0]; CWorld::Players ...
307F3C:  LDR             R0, [R1]; CWorld::Players
307F3E:  CMP             R0, #0
307F40:  BEQ             loc_307FF8
307F42:  LDRB.W          R1, [R1,#(byte_96B778 - 0x96B69C)]
307F46:  CMP             R1, #0
307F48:  BNE             loc_307FF8
307F4A:  LDR.W           R0, [R0,#0x440]
307F4E:  ADDS            R0, #4; this
307F50:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
307F54:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x307F5C)
307F58:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
307F5A:  LDR             R0, [R0]; CWorld::Players ...
307F5C:  LDR             R0, [R0]; this
307F5E:  LDR.W           R1, [R0,#0x44C]
307F62:  CMP             R1, #0x37 ; '7'
307F64:  BEQ             loc_307F72
307F66:  CMP             R1, #0x36 ; '6'
307F68:  BNE             loc_307FAA
307F6A:  LDR.W           R1, [R0,#0x490]
307F6E:  TST             R1, R5
307F70:  BEQ             loc_307FF8
307F72:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
307F76:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x307F7E)
307F7A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
307F7C:  LDR             R4, [R0]; CWorld::Players ...
307F7E:  MOV             R0, R4; this
307F80:  BLX             j__ZN11CPlayerInfo10KillPlayerEv; CPlayerInfo::KillPlayer(void)
307F84:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307F96)
307F88:  MOVS            R6, #1
307F8A:  LDR.W           R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x307F98)
307F8E:  LDR.W           R2, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x307F9A)
307F92:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
307F94:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
307F96:  ADD             R2, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
307F98:  LDR             R3, [R0]; CTimer::m_snTimeInMilliseconds ...
307F9A:  LDR             R1, [R1]; CGameLogic::GameState ...
307F9C:  LDR             R2, [R2]; CGameLogic::TimeOfLastEvent ...
307F9E:  LDR             R0, [R4]; this
307FA0:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
307FA2:  STRB            R6, [R1]; CGameLogic::GameState
307FA4:  STR             R3, [R2]; CGameLogic::TimeOfLastEvent
307FA6:  LDR.W           R1, [R0,#0x44C]
307FAA:  CMP             R1, #0x3F ; '?'
307FAC:  BNE             loc_307FF8
307FAE:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
307FB2:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x307FBA)
307FB6:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
307FB8:  LDR             R4, [R0]; CWorld::Players ...
307FBA:  MOV             R0, R4; this
307FBC:  BLX             j__ZN11CPlayerInfo12ArrestPlayerEv; CPlayerInfo::ArrestPlayer(void)
307FC0:  LDR             R0, [R4]; this
307FC2:  MOVS            R1, #1
307FC4:  STRD.W          R1, R1, [SP,#0x58+var_58]; unsigned __int8
307FC8:  MOVW            R2, #0x8FC; unsigned int
307FCC:  STR             R1, [SP,#0x58+var_50]; unsigned __int8
307FCE:  MOVS            R1, #0xF; unsigned __int16
307FD0:  MOV.W           R3, #0x3F800000; float
307FD4:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
307FD8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307FEA)
307FDC:  MOVS            R3, #2
307FDE:  LDR.W           R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x307FEC)
307FE2:  LDR.W           R2, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x307FEE)
307FE6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
307FE8:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
307FEA:  ADD             R2, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
307FEC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
307FEE:  LDR             R1, [R1]; CGameLogic::GameState ...
307FF0:  LDR             R2, [R2]; CGameLogic::TimeOfLastEvent ...
307FF2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
307FF4:  STRB            R3, [R1]; CGameLogic::GameState
307FF6:  STR             R0, [R2]; CGameLogic::TimeOfLastEvent
307FF8:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308008)
307FFC:  MOV.W           R6, #0xFFFFFFFF
308000:  MOV             R8, #0xE7FFFFFF
308004:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308006:  LDR             R1, [R0]; CWorld::Players ...
308008:  LDR.W           R0, [R1,#(dword_96B830 - 0x96B69C)]
30800C:  CMP             R0, #0
30800E:  BEQ             loc_3080FA
308010:  LDRB.W          R1, [R1,#(byte_96B90C - 0x96B69C)]
308014:  CMP             R1, #0
308016:  BNE             loc_3080FA
308018:  LDR.W           R0, [R0,#0x440]
30801C:  ADDS            R0, #4; this
30801E:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
308022:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30802A)
308026:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308028:  LDR             R0, [R0]; CWorld::Players ...
30802A:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]; this
30802E:  LDR.W           R1, [R0,#0x44C]
308032:  CMP             R1, #0x37 ; '7'
308034:  BEQ             loc_308042
308036:  CMP             R1, #0x36 ; '6'
308038:  BNE             loc_30807E
30803A:  LDR.W           R1, [R0,#0x490]
30803E:  TST             R1, R5
308040:  BEQ             loc_3080FA
308042:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
308046:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30804E)
30804A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30804C:  LDR             R4, [R0]; CWorld::Players ...
30804E:  ADD.W           R0, R4, #0x194; this
308052:  BLX             j__ZN11CPlayerInfo10KillPlayerEv; CPlayerInfo::KillPlayer(void)
308056:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x308068)
30805A:  MOVS            R5, #1
30805C:  LDR.W           R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x30806A)
308060:  LDR.W           R2, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x30806C)
308064:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
308066:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
308068:  ADD             R2, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
30806A:  LDR             R3, [R0]; CTimer::m_snTimeInMilliseconds ...
30806C:  LDR             R1, [R1]; CGameLogic::GameState ...
30806E:  LDR             R2, [R2]; CGameLogic::TimeOfLastEvent ...
308070:  LDR.W           R0, [R4,#(dword_96B830 - 0x96B69C)]; this
308074:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
308076:  STRB            R5, [R1]; CGameLogic::GameState
308078:  STR             R3, [R2]; CGameLogic::TimeOfLastEvent
30807A:  LDR.W           R1, [R0,#0x44C]
30807E:  CMP             R1, #0x3F ; '?'
308080:  BNE             loc_3080FA
308082:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
308086:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30808E)
30808A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30808C:  LDR             R4, [R0]; CWorld::Players ...
30808E:  ADD.W           R0, R4, #0x194; this
308092:  BLX             j__ZN11CPlayerInfo12ArrestPlayerEv; CPlayerInfo::ArrestPlayer(void)
308096:  LDR.W           R0, [R4,#(dword_96B830 - 0x96B69C)]; this
30809A:  MOVS            R1, #1
30809C:  STRD.W          R1, R1, [SP,#0x58+var_58]; unsigned __int8
3080A0:  MOVW            R2, #0x8FC; unsigned int
3080A4:  STR             R1, [SP,#0x58+var_50]; unsigned int
3080A6:  MOVS            R1, #0xF; unsigned __int16
3080A8:  MOV.W           R3, #0x3F800000; float
3080AC:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
3080B0:  LDR.W           R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x3080BE)
3080B4:  MOVS            R5, #2
3080B6:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3080C8)
3080BA:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
3080BC:  LDR.W           R2, =(_ZN10CGameLogic9GameStateE_ptr - 0x3080CC)
3080C0:  LDR.W           R3, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x3080CE)
3080C4:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3080C6:  LDR             R0, [R0]; CHud::m_BigMessage ...
3080C8:  ADD             R2, PC; _ZN10CGameLogic9GameStateE_ptr
3080CA:  ADD             R3, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
3080CC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3080CE:  LDR             R2, [R2]; CGameLogic::GameState ...
3080D0:  LDRH.W          R0, [R0,#(word_99116C - 0x990F6C)]
3080D4:  LDR             R3, [R3]; CGameLogic::TimeOfLastEvent ...
3080D6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3080D8:  CMP             R0, #0
3080DA:  STRB            R5, [R2]; CGameLogic::GameState
3080DC:  STR             R1, [R3]; CGameLogic::TimeOfLastEvent
3080DE:  BNE             loc_308118
3080E0:  LDR.W           R0, =(TheText_ptr - 0x3080EC)
3080E4:  ADR.W           R1, aBusted; "BUSTED"
3080E8:  ADD             R0, PC; TheText_ptr
3080EA:  LDR             R0, [R0]; TheText ; this
3080EC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3080F0:  MOVW            R1, #(elf_hash_bucket+0x128C); unsigned __int16 *
3080F4:  MOVS            R2, #2; unsigned int
3080F6:  BLX             j__ZN9CMessages13AddBigMessageEPtjt; CMessages::AddBigMessage(ushort *,uint,ushort)
3080FA:  LDR.W           R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x308102)
3080FE:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
308100:  LDR             R0, [R0]; CGameLogic::GameState ...
308102:  LDRB            R0, [R0]; this
308104:  SUBS            R1, R0, #3
308106:  CMP             R1, #2
308108:  BCC.W           loc_308216
30810C:  CMP             R0, #1
30810E:  BEQ.W           loc_3082C0
308112:  CMP             R0, #2
308114:  BNE.W           loc_308B94
308118:  BLX             j__ZN14CWeaponEffects15ClearCrossHairsEv; CWeaponEffects::ClearCrossHairs(void)
30811C:  LDR.W           R0, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x30812C)
308120:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30812E)
308124:  LDR.W           R2, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x308130)
308128:  ADD             R0, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
30812A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30812C:  ADD             R2, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
30812E:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent ...
308130:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
308132:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds ...
308134:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent
308136:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
308138:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds
30813A:  SUBS            R5, R1, R0
30813C:  MOVW            R1, #0xBB8
308140:  SUBS            R0, R2, R0
308142:  CMP             R0, R1
308144:  BHI             loc_30816E
308146:  MOVW            R0, #0xBB9
30814A:  CMP             R5, R0
30814C:  BCC             loc_30816E
30814E:  LDR.W           R0, =(TheCamera_ptr - 0x30815C)
308152:  MOVS            R1, #0; unsigned __int8
308154:  MOVS            R2, #0; unsigned __int8
308156:  MOVS            R3, #0; unsigned __int8
308158:  ADD             R0, PC; TheCamera_ptr
30815A:  LDR             R4, [R0]; TheCamera
30815C:  MOV             R0, R4; this
30815E:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
308162:  MOV             R0, R4; this
308164:  MOV.W           R1, #0x40000000; float
308168:  MOVS            R2, #0; __int16
30816A:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
30816E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308176)
308172:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr ; this
308174:  LDR             R4, [R0]; CWorld::Players ...
308176:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
30817A:  LDRB.W          R1, [R4,#(byte_96B7F0 - 0x96B69C)]
30817E:  ORRS            R0, R1
308180:  LSLS            R0, R0, #0x18
308182:  BEQ.W           loc_308386
308186:  CMP.W           R5, #0xFA0
30818A:  BCC.W           loc_308B94
30818E:  LDR.W           R0, =(TheCamera_ptr - 0x308196)
308192:  ADD             R0, PC; TheCamera_ptr
308194:  LDR             R0, [R0]; TheCamera
308196:  LDRB.W          R0, [R0,#(byte_951FF7 - 0x951FA8)]
30819A:  CMP             R0, #0
30819C:  BNE.W           loc_308B94
3081A0:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3081AE)
3081A4:  MOVS            R5, #0
3081A6:  LDR.W           R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x3081B0)
3081AA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3081AC:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
3081AE:  LDR             R3, [R0]; CWorld::Players ...
3081B0:  LDR             R1, [R1]; CGameLogic::GameState ...
3081B2:  LDR             R2, [R3]; CWorld::Players
3081B4:  LDR.W           R0, [R3,#(dword_96B830 - 0x96B69C)]
3081B8:  CMP             R2, #0
3081BA:  STRB            R5, [R1]; CGameLogic::GameState
3081BC:  STRB.W          R5, [R3,#(byte_96B778 - 0x96B69C)]
3081C0:  IT NE
3081C2:  CMPNE           R0, #0
3081C4:  BNE.W           loc_308648
3081C8:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3081D0)
3081CC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3081CE:  LDR             R0, [R0]; CWorld::Players ...
3081D0:  LDR             R0, [R0,#(dword_96B6A0 - 0x96B69C)]
3081D2:  LDR             R0, [R0,#0x2C]
3081D4:  SUBS            R0, #2
3081D6:  CMP             R0, #4
3081D8:  ITTE LS
3081DA:  ADRLS.W         R1, dword_308E8C
3081DE:  LDRLS.W         R0, [R1,R0,LSL#2]
3081E2:  MOVHI           R0, #0x64 ; 'd'
3081E4:  LDR.W           R1, =(_ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr - 0x3081EC)
3081E8:  ADD             R1, PC; _ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr
3081EA:  LDR             R1, [R1]; CGameLogic::bPenaltyForArrestApplies ...
3081EC:  LDRB            R1, [R1]; CGameLogic::bPenaltyForArrestApplies
3081EE:  CMP             R1, #0
3081F0:  BEQ.W           loc_308648
3081F4:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3081FC)
3081F8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3081FA:  LDR             R1, [R1]; CWorld::Players ...
3081FC:  LDRB.W          R1, [R1,#(byte_96B7ED - 0x96B69C)]
308200:  CMP             R1, #0
308202:  BEQ.W           loc_308614
308206:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308210)
30820A:  MOVS            R1, #0
30820C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30820E:  LDR             R0, [R0]; CWorld::Players ...
308210:  STRB.W          R1, [R0,#(byte_96B7ED - 0x96B69C)]
308214:  B               loc_308648
308216:  LDR.W           R0, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x308226)
30821A:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x308228)
30821E:  LDR.W           R2, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x30822A)
308222:  ADD             R0, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
308224:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
308226:  ADD             R2, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
308228:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent ...
30822A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30822C:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds ...
30822E:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent
308230:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
308232:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds
308234:  SUBS            R5, R1, R0
308236:  MOVW            R1, #0xBB8
30823A:  SUBS            R0, R2, R0
30823C:  CMP             R0, R1
30823E:  BHI             loc_308268
308240:  MOVW            R0, #0xBB9
308244:  CMP             R5, R0
308246:  BCC             loc_308268
308248:  LDR.W           R0, =(TheCamera_ptr - 0x308256)
30824C:  MOVS            R1, #0; unsigned __int8
30824E:  MOVS            R2, #0; unsigned __int8
308250:  MOVS            R3, #0; unsigned __int8
308252:  ADD             R0, PC; TheCamera_ptr
308254:  LDR             R4, [R0]; TheCamera
308256:  MOV             R0, R4; this
308258:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
30825C:  MOV             R0, R4; this
30825E:  MOV.W           R1, #0x40000000; float
308262:  MOVS            R2, #0; __int16
308264:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
308268:  MOVW            R0, #0xBB9
30826C:  CMP             R5, R0
30826E:  BCC.W           loc_308B94
308272:  LDR.W           R0, =(TheCamera_ptr - 0x30827A)
308276:  ADD             R0, PC; TheCamera_ptr
308278:  LDR             R0, [R0]; TheCamera
30827A:  LDRB.W          R0, [R0,#(byte_951FF7 - 0x951FA8)]
30827E:  CMP             R0, #0
308280:  BNE.W           loc_308B94
308284:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308292)
308288:  MOVS            R3, #0
30828A:  LDR.W           R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x308294)
30828E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308290:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
308292:  LDR             R0, [R0]; CWorld::Players ...
308294:  LDR             R2, [R1]; CGameLogic::GameState ...
308296:  LDR             R1, [R0]; CPed *
308298:  STRB            R3, [R2]; CGameLogic::GameState
30829A:  STRB.W          R3, [R0,#(byte_96B778 - 0x96B69C)]
30829E:  LDRB.W          R0, [R1,#0x485]
3082A2:  LSLS            R0, R0, #0x1F
3082A4:  ITT NE
3082A6:  LDRNE.W         R0, [R1,#0x590]; this
3082AA:  CMPNE           R0, #0
3082AC:  BEQ.W           loc_308438
3082B0:  LDR.W           R2, [R0,#0x464]
3082B4:  CMP             R2, R1
3082B6:  BEQ.W           loc_3083FE
3082BA:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
3082BE:  B               loc_308438
3082C0:  BLX             j__ZN14CWeaponEffects15ClearCrossHairsEv; CWeaponEffects::ClearCrossHairs(void)
3082C4:  LDR.W           R0, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x3082D4)
3082C8:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3082D6)
3082CC:  LDR.W           R2, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x3082D8)
3082D0:  ADD             R0, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
3082D2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3082D4:  ADD             R2, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
3082D6:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent ...
3082D8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3082DA:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds ...
3082DC:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent
3082DE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3082E0:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds
3082E2:  SUBS            R5, R1, R0
3082E4:  MOVW            R1, #0xBB8
3082E8:  SUBS            R0, R2, R0
3082EA:  CMP             R0, R1
3082EC:  BHI             loc_308316
3082EE:  MOVW            R0, #0xBB9
3082F2:  CMP             R5, R0
3082F4:  BCC             loc_308316
3082F6:  LDR.W           R0, =(TheCamera_ptr - 0x308304)
3082FA:  MOVS            R1, #0; unsigned __int8
3082FC:  MOVS            R2, #0; unsigned __int8
3082FE:  MOVS            R3, #0; unsigned __int8
308300:  ADD             R0, PC; TheCamera_ptr
308302:  LDR             R4, [R0]; TheCamera
308304:  MOV             R0, R4; this
308306:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
30830A:  MOV             R0, R4; this
30830C:  MOV.W           R1, #0x40000000; float
308310:  MOVS            R2, #0; __int16
308312:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
308316:  MOVW            R0, #0xBB9
30831A:  CMP             R5, R0
30831C:  BCC.W           loc_308B94
308320:  LDR.W           R0, =(TheCamera_ptr - 0x308328)
308324:  ADD             R0, PC; TheCamera_ptr
308326:  LDR             R0, [R0]; TheCamera
308328:  LDRB.W          R0, [R0,#(byte_951FF7 - 0x951FA8)]
30832C:  CMP             R0, #0
30832E:  BNE.W           loc_308B94
308332:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30833A)
308336:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308338:  LDR             R0, [R0]; CWorld::Players ...
30833A:  LDR             R1, [R0]; CPed *
30833C:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
308340:  CMP             R0, #0
308342:  MOV             R2, R1
308344:  IT NE
308346:  MOVNE           R0, #1
308348:  CMP             R1, #0
30834A:  IT NE
30834C:  MOVNE           R2, #1
30834E:  TST             R2, R0
308350:  BNE.W           loc_3088E0
308354:  LDR.W           R0, =(_ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr - 0x30835C)
308358:  ADD             R0, PC; _ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr
30835A:  LDR             R0, [R0]; CGameLogic::bPenaltyForDeathApplies ...
30835C:  LDRB            R0, [R0]; CGameLogic::bPenaltyForDeathApplies
30835E:  CMP             R0, #0
308360:  BEQ.W           loc_3088E0
308364:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30836C)
308368:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30836A:  LDR             R0, [R0]; CWorld::Players ...
30836C:  LDRB.W          R0, [R0,#(byte_96B7EE - 0x96B69C)]
308370:  CMP             R0, #0
308372:  BEQ.W           loc_3088BE
308376:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308380)
30837A:  MOVS            R2, #0
30837C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30837E:  LDR             R0, [R0]; CWorld::Players ...
308380:  STRB.W          R2, [R0,#(byte_96B7EE - 0x96B69C)]
308384:  B               loc_3088E0
308386:  BLX             rand
30838A:  UXTH            R0, R0
30838C:  VLDR            S2, =0.000015259
308390:  VMOV            S0, R0
308394:  VMOV.F32        S4, #4.0
308398:  VCVT.F32.S32    S0, S0
30839C:  VMUL.F32        S0, S0, S2
3083A0:  VMUL.F32        S0, S0, S4
3083A4:  VCVT.S32.F32    S0, S0
3083A8:  VMOV            R0, S0
3083AC:  CBZ             R0, loc_3083C6
3083AE:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3083B8)
3083B2:  MOVS            R1, #2
3083B4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3083B6:  LDR             R0, [R0]; CWorld::Players ...
3083B8:  STRB.W          R1, [R0,#(byte_96B7F0 - 0x96B69C)]
3083BC:  CMP.W           R5, #0xFA0
3083C0:  BCS.W           loc_30818E
3083C4:  B               loc_308B94
3083C6:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3083D6)
3083CA:  MOV             R3, #0x24924925
3083D2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3083D4:  LDR             R0, [R0]; CWorld::Players ...
3083D6:  LDRH.W          R1, [R0,#(word_96B7F2 - 0x96B69C)]
3083DA:  LSRS            R2, R1, #2
3083DC:  UMULL.W         R2, R3, R2, R3
3083E0:  MOVS            R2, #1
3083E2:  STRB.W          R2, [R0,#(byte_96B7F0 - 0x96B69C)]
3083E6:  RSB.W           R2, R3, R3,LSL#3
3083EA:  SUB.W           R1, R1, R2,LSL#2
3083EE:  ADDS            R1, #1
3083F0:  STRH.W          R1, [R0,#(word_96B7F2 - 0x96B69C)]
3083F4:  CMP.W           R5, #0xFA0
3083F8:  BCS.W           loc_30818E
3083FC:  B               loc_308B94
3083FE:  ADDW            R2, R0, #0x464
308402:  MOV             R0, R1; this
308404:  MOV             R1, R2; CEntity **
308406:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
30840A:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308414)
30840E:  MOVS            R2, #0
308410:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308412:  LDR             R0, [R0]; CWorld::Players ...
308414:  LDR             R0, [R0]; CWorld::Players
308416:  LDR.W           R1, [R0,#0x590]
30841A:  STR.W           R2, [R1,#0x464]
30841E:  LDR.W           R0, [R0,#0x590]
308422:  LDRB.W          R1, [R0,#0x3A]
308426:  AND.W           R2, R1, #0xF8
30842A:  CMP             R2, #0x28 ; '('
30842C:  ITTT NE
30842E:  MOVNE           R2, #4
308430:  BFINE.W         R1, R2, #3, #0x1D; unsigned __int8
308434:  STRBNE.W        R1, [R0,#0x3A]
308438:  MOVS            R0, #0; this
30843A:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
30843E:  BLX             j__ZN8CCarCtrl27ClearInterestingVehicleListEv; CCarCtrl::ClearInterestingVehicleList(void)
308442:  BLX             j__ZN8CGarages29CloseHideOutGaragesBeforeSaveEv; CGarages::CloseHideOutGaragesBeforeSave(void)
308446:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308450)
30844A:  ADD             R5, SP, #0x58+var_38
30844C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30844E:  LDR             R4, [R0]; CWorld::Players ...
308450:  MOV             R0, R5; this
308452:  MOV             R1, R4
308454:  BLX             j__ZN11CPlayerInfo6GetPosEv; CPlayerInfo::GetPos(void)
308458:  MOVS            R1, #0
30845A:  MOV             R0, R5; this
30845C:  MOVT            R1, #0x457A; CVector *
308460:  MOVS            R2, #1; float
308462:  BLX             j__ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh; CWorld::ClearExcitingStuffFromArea(CVector const&,float,uchar)
308466:  LDR             R0, [R4]; CWorld::Players
308468:  LDR             R1, [R0,#0x14]
30846A:  ADD.W           R2, R1, #0x30 ; '0'
30846E:  CMP             R1, #0
308470:  IT EQ
308472:  ADDEQ           R2, R0, #4
308474:  VLDR            D16, [R2]
308478:  LDR             R1, [R2,#8]
30847A:  STR             R1, [SP,#0x58+var_30]
30847C:  VSTR            D16, [SP,#0x58+var_38]
308480:  LDR.W           R0, [R0,#0x794]; this
308484:  CMP             R0, #0
308486:  ITT NE
308488:  ADDNE.W         R1, SP, #0x58+var_38; CVector *
30848C:  BLXNE           j__ZN10CEntryExit33GetPositionRelativeToOutsideWorldER7CVector; CEntryExit::GetPositionRelativeToOutsideWorld(CVector &)
308490:  ADD             R2, SP, #0x58+var_38
308492:  ADD             R3, SP, #0x58+var_2C
308494:  LDM             R2, {R0-R2}
308496:  STR             R3, [SP,#0x58+var_58]
308498:  ADD             R3, SP, #0x58+var_48
30849A:  BLX             j__ZN8CRestart29FindClosestPoliceRestartPointE7CVectorPS0_Pf; CRestart::FindClosestPoliceRestartPoint(CVector,CVector*,float *)
30849E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3084A6)
3084A2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3084A4:  LDR             R0, [R0]; CWorld::Players ...
3084A6:  LDR             R1, [R0]; CWorld::Players
3084A8:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
3084AC:  CMP             R1, #0
3084AE:  IT NE
3084B0:  CMPNE           R0, #0
3084B2:  BEQ             loc_3084FE
3084B4:  LDR.W           R0, =(_ZN10CGameLogic20f2PlayerStartHeadingE_ptr - 0x3084C0)
3084B8:  VLDR            S0, =180.0
3084BC:  ADD             R0, PC; _ZN10CGameLogic20f2PlayerStartHeadingE_ptr
3084BE:  LDR             R0, [R0]; CGameLogic::f2PlayerStartHeading ...
3084C0:  VLDR            S2, [R0]
3084C4:  LDR.W           R0, =(_ZN10CGameLogic23vec2PlayerStartLocationE_ptr - 0x3084D4)
3084C8:  VMUL.F32        S0, S2, S0
3084CC:  VLDR            S2, =3.1416
3084D0:  ADD             R0, PC; _ZN10CGameLogic23vec2PlayerStartLocationE_ptr
3084D2:  LDR             R0, [R0]; CGameLogic::vec2PlayerStartLocation ...
3084D4:  VLDR            D16, [R0]
3084D8:  VDIV.F32        S0, S0, S2
3084DC:  LDR             R0, [R0,#(dword_7A205C - 0x7A2054)]
3084DE:  VSTR            D16, [SP,#0x58+var_48]
3084E2:  STR             R0, [SP,#0x58+var_40]
3084E4:  MOVS            R0, #0; int
3084E6:  VSTR            S0, [SP,#0x58+var_2C]
3084EA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3084EE:  BLX             j__ZN10CGameLogic18RestorePedsWeaponsEP4CPed; CGameLogic::RestorePedsWeapons(CPed *)
3084F2:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3084FA)
3084F6:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3084F8:  LDR             R0, [R0]; CWorld::Players ...
3084FA:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]; this
3084FE:  CBZ             R0, loc_30855E
308500:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
308504:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30850C)
308508:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30850A:  LDR             R0, [R0]; CWorld::Players ...
30850C:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
308510:  CMP             R0, #0
308512:  ITTT NE
308514:  LDRNE           R1, [R0]
308516:  LDRNE           R1, [R1,#4]
308518:  BLXNE           R1
30851A:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308524)
30851E:  MOVS            R1, #0
308520:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308522:  LDR             R4, [R0]; CWorld::Players ...
308524:  LDR             R0, [R4]; this
308526:  STR.W           R1, [R4,#(dword_96B830 - 0x96B69C)]
30852A:  MOVS            R1, #0; CPlayerPed *
30852C:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
308530:  LDR             R0, [R4]; CWorld::Players
308532:  LDR.W           R1, [R0,#0x484]
308536:  LDR.W           R2, [R0,#0x488]
30853A:  LDR.W           R3, [R0,#0x48C]
30853E:  ANDS            R1, R6
308540:  LDR.W           R5, [R0,#0x490]
308544:  ANDS            R2, R6
308546:  STR.W           R1, [R0,#0x484]
30854A:  AND.W           R3, R3, R8
30854E:  STR.W           R2, [R0,#0x488]
308552:  ANDS            R6, R5
308554:  STR.W           R3, [R0,#0x48C]
308558:  STR.W           R6, [R0,#0x490]
30855C:  B               loc_308568
30855E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308566)
308562:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308564:  LDR             R0, [R0]; CWorld::Players ...
308566:  LDR             R0, [R0]; CWorld::Players
308568:  LDR.W           R1, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x308574)
30856C:  ADD             R3, SP, #0x58+var_48
30856E:  MOVS            R5, #2
308570:  ADD             R1, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
308572:  LDR             R6, [R1]; CGameLogic::n2PlayerPedInFocus ...
308574:  LDM             R3, {R1-R3}
308576:  VLDR            S0, [SP,#0x58+var_2C]
30857A:  STR             R5, [R6]; CGameLogic::n2PlayerPedInFocus
30857C:  VSTR            S0, [SP,#0x58+var_58]
308580:  BLX             j__ZN10CGameLogic36RestorePlayerStuffDuringResurrectionEP10CPlayerPed7CVectorf; CGameLogic::RestorePlayerStuffDuringResurrection(CPlayerPed *,CVector,float)
308584:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30858C)
308588:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30858A:  LDR             R0, [R0]; CWorld::Players ...
30858C:  LDR             R0, [R0]; CWorld::Players
30858E:  LDR             R1, [R0,#0x14]
308590:  ADD.W           R4, R1, #0x30 ; '0'
308594:  CMP             R1, #0
308596:  IT EQ
308598:  ADDEQ           R4, R0, #4
30859A:  BEQ             loc_3085AE
30859C:  LDRD.W          R0, R1, [R1,#0x10]; x
3085A0:  EOR.W           R0, R0, #0x80000000; y
3085A4:  BLX             atan2f
3085A8:  VMOV            S0, R0
3085AC:  B               loc_3085B2
3085AE:  VLDR            S0, [R0,#0x10]
3085B2:  VMOV            R1, S0; CVector *
3085B6:  MOV             R0, R4; this
3085B8:  BLX             j__ZN10CGameLogic25SortOutStreamingAndMemoryERK7CVectorf; CGameLogic::SortOutStreamingAndMemory(CVector const&,float)
3085BC:  LDR.W           R0, =(TheCamera_ptr - 0x3085CA)
3085C0:  MOVS            R5, #0
3085C2:  MOVS            R1, #0; int
3085C4:  MOVS            R2, #0; int
3085C6:  ADD             R0, PC; TheCamera_ptr
3085C8:  MOVS            R3, #0; int
3085CA:  LDR             R4, [R0]; TheCamera
3085CC:  MOV             R0, R4; this
3085CE:  STR.W           R5, [R4,#(dword_9520D0 - 0x951FA8)]
3085D2:  STRD.W          R5, R5, [SP,#0x58+var_58]; int
3085D6:  BLX             j__ZN7CCamera13SetMotionBlurEiiiii; CCamera::SetMotionBlur(int,int,int,int,int)
3085DA:  MOVS            R0, #0; this
3085DC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3085E0:  MOVS            R1, #0; __int16
3085E2:  BLX             j__ZN4CPad11StopShakingEs; CPad::StopShaking(short)
3085E6:  BLX             j__ZN11CReferences24RemoveReferencesToPlayerEv; CReferences::RemoveReferencesToPlayer(void)
3085EA:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3085F8)
3085EE:  MOVS            R3, #0xA
3085F0:  LDR.W           R1, =(_ZN11CPopulation24m_CountDownToPedsAtStartE_ptr - 0x3085FE)
3085F4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3085F6:  LDR.W           R2, =(_ZN8CCarCtrl22CountDownToCarsAtStartE_ptr - 0x308602)
3085FA:  ADD             R1, PC; _ZN11CPopulation24m_CountDownToPedsAtStartE_ptr
3085FC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3085FE:  ADD             R2, PC; _ZN8CCarCtrl22CountDownToCarsAtStartE_ptr
308600:  LDR             R1, [R1]; int
308602:  LDR             R2, [R2]; CCarCtrl::CountDownToCarsAtStart ...
308604:  LDR             R0, [R0]; this
308606:  STRB            R3, [R1]; CPopulation::m_CountDownToPedsAtStart
308608:  STRB            R3, [R2]; CCarCtrl::CountDownToCarsAtStart
30860A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30860E:  STRH.W          R5, [R0,#0x110]
308612:  B               loc_308B7A
308614:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x30861C)
308618:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
30861A:  LDR             R1, [R1]; CWorld::Players ...
30861C:  LDR.W           R1, [R1,#(dword_96B754 - 0x96B69C)]
308620:  CMP             R1, #1
308622:  BLT             loc_308638
308624:  LDR.W           R3, =(_ZN6CWorld7PlayersE_ptr - 0x308630)
308628:  SUBS            R0, R1, R0
30862A:  CMP             R0, #0
30862C:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
30862E:  IT LE
308630:  MOVLE           R0, #0
308632:  LDR             R3, [R3]; CWorld::Players ...
308634:  STR.W           R0, [R3,#(dword_96B754 - 0x96B69C)]
308638:  MOV             R0, R2; this
30863A:  BLX             j__ZN4CPed12ClearWeaponsEv; CPed::ClearWeapons(void)
30863E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308646)
308642:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308644:  LDR             R0, [R0]; CWorld::Players ...
308646:  LDR             R2, [R0]; CWorld::Players
308648:  LDRB.W          R0, [R2,#0x485]
30864C:  LSLS            R0, R0, #0x1F
30864E:  ITT NE
308650:  LDRNE.W         R0, [R2,#0x590]; this
308654:  CMPNE           R0, #0
308656:  BEQ             loc_3086B4
308658:  LDR.W           R1, [R0,#0x464]
30865C:  CMP             R1, R2
30865E:  BEQ             loc_308674
308660:  MOV             R1, R2; CPed *
308662:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
308666:  B               loc_3086B4
308668:  DCFS 0.000015259
30866C:  DCFS 180.0
308670:  DCFS 3.1416
308674:  ADDW            R1, R0, #0x464; CEntity **
308678:  MOV             R0, R2; this
30867A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
30867E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308688)
308682:  MOVS            R2, #0
308684:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308686:  LDR             R0, [R0]; CWorld::Players ...
308688:  LDR             R0, [R0]; CWorld::Players
30868A:  LDR.W           R1, [R0,#0x590]
30868E:  STR.W           R2, [R1,#0x464]
308692:  LDR.W           R1, [R0,#0x590]
308696:  LDRB.W          R1, [R1,#0x3A]
30869A:  AND.W           R1, R1, #0xF8
30869E:  CMP             R1, #0x28 ; '('
3086A0:  BEQ             loc_3086B4
3086A2:  LDR.W           R0, [R0,#0x590]
3086A6:  MOVS            R2, #4
3086A8:  LDRB.W          R1, [R0,#0x3A]
3086AC:  BFI.W           R1, R2, #3, #0x1D; unsigned __int8
3086B0:  STRB.W          R1, [R0,#0x3A]
3086B4:  MOVS            R0, #0; this
3086B6:  MOVS            R4, #0
3086B8:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
3086BC:  MOVS            R0, #0; this
3086BE:  MOVS            R1, #0; char *
3086C0:  MOVS            R2, #(stderr+1); unsigned __int16 *
3086C2:  MOVS            R3, #0; bool
3086C4:  STRD.W          R4, R4, [SP,#0x58+var_58]; bool
3086C8:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
3086CC:  BLX             j__ZN8CCarCtrl27ClearInterestingVehicleListEv; CCarCtrl::ClearInterestingVehicleList(void)
3086D0:  BLX             j__ZN8CGarages29CloseHideOutGaragesBeforeSaveEv; CGarages::CloseHideOutGaragesBeforeSave(void)
3086D4:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3086DE)
3086D8:  ADD             R5, SP, #0x58+var_38
3086DA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3086DC:  LDR             R4, [R0]; CWorld::Players ...
3086DE:  MOV             R0, R5; this
3086E0:  MOV             R1, R4
3086E2:  BLX             j__ZN11CPlayerInfo6GetPosEv; CPlayerInfo::GetPos(void)
3086E6:  MOVS            R1, #0
3086E8:  MOV             R0, R5; this
3086EA:  MOVT            R1, #0x457A; CVector *
3086EE:  MOVS            R2, #1; float
3086F0:  BLX             j__ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh; CWorld::ClearExcitingStuffFromArea(CVector const&,float,uchar)
3086F4:  LDR             R0, [R4]; CWorld::Players
3086F6:  LDR             R1, [R0,#0x14]
3086F8:  ADD.W           R2, R1, #0x30 ; '0'
3086FC:  CMP             R1, #0
3086FE:  IT EQ
308700:  ADDEQ           R2, R0, #4
308702:  VLDR            D16, [R2]
308706:  LDR             R1, [R2,#8]
308708:  STR             R1, [SP,#0x58+var_30]
30870A:  VSTR            D16, [SP,#0x58+var_38]
30870E:  LDR.W           R0, [R0,#0x794]; this
308712:  CMP             R0, #0
308714:  ITT NE
308716:  ADDNE.W         R1, SP, #0x58+var_38; CVector *
30871A:  BLXNE           j__ZN10CEntryExit33GetPositionRelativeToOutsideWorldER7CVector; CEntryExit::GetPositionRelativeToOutsideWorld(CVector &)
30871E:  ADD             R2, SP, #0x58+var_38
308720:  ADD             R3, SP, #0x58+var_2C
308722:  LDM             R2, {R0-R2}
308724:  STR             R3, [SP,#0x58+var_58]
308726:  ADD             R3, SP, #0x58+var_48
308728:  BLX             j__ZN8CRestart29FindClosestPoliceRestartPointE7CVectorPS0_Pf; CRestart::FindClosestPoliceRestartPoint(CVector,CVector*,float *)
30872C:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308734)
308730:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308732:  LDR             R0, [R0]; CWorld::Players ...
308734:  LDR             R1, [R0]; CWorld::Players
308736:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
30873A:  CMP             R1, #0
30873C:  IT NE
30873E:  CMPNE           R0, #0
308740:  BEQ             loc_30878C
308742:  LDR.W           R0, =(_ZN10CGameLogic20f2PlayerStartHeadingE_ptr - 0x30874E)
308746:  VLDR            S0, =180.0
30874A:  ADD             R0, PC; _ZN10CGameLogic20f2PlayerStartHeadingE_ptr
30874C:  LDR             R0, [R0]; CGameLogic::f2PlayerStartHeading ...
30874E:  VLDR            S2, [R0]
308752:  LDR.W           R0, =(_ZN10CGameLogic23vec2PlayerStartLocationE_ptr - 0x308762)
308756:  VMUL.F32        S0, S2, S0
30875A:  VLDR            S2, =3.1416
30875E:  ADD             R0, PC; _ZN10CGameLogic23vec2PlayerStartLocationE_ptr
308760:  LDR             R0, [R0]; CGameLogic::vec2PlayerStartLocation ...
308762:  VLDR            D16, [R0]
308766:  VDIV.F32        S0, S0, S2
30876A:  LDR             R0, [R0,#(dword_7A205C - 0x7A2054)]
30876C:  VSTR            D16, [SP,#0x58+var_48]
308770:  STR             R0, [SP,#0x58+var_40]
308772:  MOVS            R0, #0; int
308774:  VSTR            S0, [SP,#0x58+var_2C]
308778:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30877C:  BLX             j__ZN10CGameLogic18RestorePedsWeaponsEP4CPed; CGameLogic::RestorePedsWeapons(CPed *)
308780:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308788)
308784:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308786:  LDR             R0, [R0]; CWorld::Players ...
308788:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]; this
30878C:  CBZ             R0, loc_3087EA
30878E:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
308792:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30879A)
308796:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308798:  LDR             R0, [R0]; CWorld::Players ...
30879A:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
30879E:  CMP             R0, #0
3087A0:  ITTT NE
3087A2:  LDRNE           R1, [R0]
3087A4:  LDRNE           R1, [R1,#4]
3087A6:  BLXNE           R1
3087A8:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3087B2)
3087AC:  MOVS            R1, #0
3087AE:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3087B0:  LDR             R4, [R0]; CWorld::Players ...
3087B2:  LDR             R0, [R4]; this
3087B4:  STR.W           R1, [R4,#(dword_96B830 - 0x96B69C)]
3087B8:  MOVS            R1, #0; CPlayerPed *
3087BA:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
3087BE:  LDR             R0, [R4]; CWorld::Players
3087C0:  LDR.W           R1, [R0,#0x484]
3087C4:  LDR.W           R2, [R0,#0x488]
3087C8:  LDR.W           R3, [R0,#0x48C]
3087CC:  ANDS            R1, R6
3087CE:  LDR.W           R5, [R0,#0x490]
3087D2:  ANDS            R2, R6
3087D4:  STR.W           R1, [R0,#0x484]
3087D8:  AND.W           R3, R3, R8
3087DC:  STR.W           R2, [R0,#0x488]
3087E0:  ANDS            R6, R5
3087E2:  STR.W           R3, [R0,#0x48C]
3087E6:  STR.W           R6, [R0,#0x490]
3087EA:  LDR.W           R0, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x3087F4)
3087EE:  MOVS            R1, #2; unsigned int
3087F0:  ADD             R0, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
3087F2:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus ...
3087F4:  STR             R1, [R0]; CGameLogic::n2PlayerPedInFocus
3087F6:  MOV.W           R0, #(elf_hash_bucket+0x1D4); this
3087FA:  BLX             j__ZN10CGameLogic8PassTimeEj; CGameLogic::PassTime(uint)
3087FE:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308808)
308802:  ADD             R3, SP, #0x58+var_48
308804:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308806:  LDM             R3, {R1-R3}
308808:  LDR             R4, [R0]; CWorld::Players ...
30880A:  VLDR            S0, [SP,#0x58+var_2C]
30880E:  LDR             R0, [R4]; CWorld::Players
308810:  VSTR            S0, [SP,#0x58+var_58]
308814:  BLX             j__ZN10CGameLogic36RestorePlayerStuffDuringResurrectionEP10CPlayerPed7CVectorf; CGameLogic::RestorePlayerStuffDuringResurrection(CPlayerPed *,CVector,float)
308818:  LDR             R0, [R4]; CWorld::Players
30881A:  LDR             R1, [R0,#0x14]
30881C:  ADD.W           R4, R1, #0x30 ; '0'
308820:  CMP             R1, #0
308822:  IT EQ
308824:  ADDEQ           R4, R0, #4
308826:  BEQ             loc_30883A
308828:  LDRD.W          R0, R1, [R1,#0x10]; x
30882C:  EOR.W           R0, R0, #0x80000000; y
308830:  BLX             atan2f
308834:  VMOV            S0, R0
308838:  B               loc_30883E
30883A:  VLDR            S0, [R0,#0x10]
30883E:  VMOV            R1, S0; CVector *
308842:  MOV             R0, R4; this
308844:  BLX             j__ZN10CGameLogic25SortOutStreamingAndMemoryERK7CVectorf; CGameLogic::SortOutStreamingAndMemory(CVector const&,float)
308848:  LDR.W           R0, =(TheCamera_ptr - 0x308856)
30884C:  MOVS            R4, #0
30884E:  MOVS            R1, #0; int
308850:  MOVS            R2, #0; int
308852:  ADD             R0, PC; TheCamera_ptr
308854:  MOVS            R3, #0; int
308856:  LDR             R0, [R0]; TheCamera ; this
308858:  STR.W           R4, [R0,#(dword_9520D0 - 0x951FA8)]
30885C:  STRD.W          R4, R4, [SP,#0x58+var_58]; int
308860:  BLX             j__ZN7CCamera13SetMotionBlurEiiiii; CCamera::SetMotionBlur(int,int,int,int,int)
308864:  MOVS            R0, #0; this
308866:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30886A:  MOVS            R1, #0; __int16
30886C:  BLX             j__ZN4CPad11StopShakingEs; CPad::StopShaking(short)
308870:  BLX             j__ZN11CReferences24RemoveReferencesToPlayerEv; CReferences::RemoveReferencesToPlayer(void)
308874:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x308882)
308878:  MOVS            R3, #0xA
30887A:  LDR.W           R1, =(_ZN11CPopulation24m_CountDownToPedsAtStartE_ptr - 0x308888)
30887E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
308880:  LDR.W           R2, =(_ZN8CCarCtrl22CountDownToCarsAtStartE_ptr - 0x30888C)
308884:  ADD             R1, PC; _ZN11CPopulation24m_CountDownToPedsAtStartE_ptr
308886:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
308888:  ADD             R2, PC; _ZN8CCarCtrl22CountDownToCarsAtStartE_ptr
30888A:  LDR             R1, [R1]; int
30888C:  LDR             R2, [R2]; CCarCtrl::CountDownToCarsAtStart ...
30888E:  LDR             R0, [R0]; this
308890:  STRB            R3, [R1]; CPopulation::m_CountDownToPedsAtStart
308892:  STRB            R3, [R2]; CCarCtrl::CountDownToCarsAtStart
308894:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
308898:  LDR.W           R1, =(_ZN8CRestart22bFadeInAfterNextArrestE_ptr - 0x3088A4)
30889C:  STRH.W          R4, [R0,#0x110]
3088A0:  ADD             R1, PC; _ZN8CRestart22bFadeInAfterNextArrestE_ptr
3088A2:  LDR             R1, [R1]; CRestart::bFadeInAfterNextArrest ...
3088A4:  LDRB            R0, [R1]; CRestart::bFadeInAfterNextArrest
3088A6:  CBZ             R0, loc_3088B0
3088A8:  LDR.W           R0, =(TheCamera_ptr - 0x3088B0)
3088AC:  ADD             R0, PC; TheCamera_ptr
3088AE:  B               loc_308B78
3088B0:  LDR.W           R0, =(_ZN8CRestart22bFadeInAfterNextArrestE_ptr - 0x3088BA)
3088B4:  MOVS            R1, #1
3088B6:  ADD             R0, PC; _ZN8CRestart22bFadeInAfterNextArrestE_ptr
3088B8:  LDR             R0, [R0]; CRestart::bFadeInAfterNextArrest ...
3088BA:  STRB            R1, [R0]; CRestart::bFadeInAfterNextArrest
3088BC:  B               loc_308B94
3088BE:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3088C6)
3088C2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3088C4:  LDR             R0, [R0]; CWorld::Players ...
3088C6:  LDR.W           R0, [R0,#(dword_96B754 - 0x96B69C)]
3088CA:  CMP             R0, #1
3088CC:  BLT             loc_3088E0
3088CE:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x3088DC)
3088D2:  SUBS            R0, #0x64 ; 'd'
3088D4:  IT LT
3088D6:  MOVLT           R0, #0
3088D8:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
3088DA:  LDR             R2, [R2]; CWorld::Players ...
3088DC:  STR.W           R0, [R2,#(dword_96B754 - 0x96B69C)]
3088E0:  LDR.W           R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x3088EE)
3088E4:  MOVS            R4, #0
3088E6:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x3088F0)
3088EA:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
3088EC:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
3088EE:  LDR             R0, [R0]; CGameLogic::GameState ...
3088F0:  LDR             R2, [R2]; CWorld::Players ...
3088F2:  STRB            R4, [R0]; CGameLogic::GameState
3088F4:  STRB.W          R4, [R2,#(byte_96B778 - 0x96B69C)]
3088F8:  LDRB.W          R0, [R1,#0x485]
3088FC:  LSLS            R0, R0, #0x1F
3088FE:  ITT NE
308900:  LDRNE.W         R0, [R1,#0x590]; this
308904:  CMPNE           R0, #0
308906:  BEQ             loc_308958
308908:  LDR.W           R2, [R0,#0x464]
30890C:  CMP             R2, R1
30890E:  BEQ             loc_308916
308910:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
308914:  B               loc_308958
308916:  ADDW            R2, R0, #0x464
30891A:  MOV             R0, R1; this
30891C:  MOV             R1, R2; CEntity **
30891E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
308922:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x30892C)
308926:  MOVS            R2, #0
308928:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30892A:  LDR             R0, [R0]; CWorld::Players ...
30892C:  LDR             R0, [R0]; CWorld::Players
30892E:  LDR.W           R1, [R0,#0x590]
308932:  STR.W           R2, [R1,#0x464]
308936:  LDR.W           R1, [R0,#0x590]
30893A:  LDRB.W          R1, [R1,#0x3A]
30893E:  AND.W           R1, R1, #0xF8
308942:  CMP             R1, #0x28 ; '('
308944:  BEQ             loc_308958
308946:  LDR.W           R0, [R0,#0x590]
30894A:  MOVS            R2, #4
30894C:  LDRB.W          R1, [R0,#0x3A]
308950:  BFI.W           R1, R2, #3, #0x1D; unsigned __int8
308954:  STRB.W          R1, [R0,#0x3A]
308958:  MOVS            R0, #0; this
30895A:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
30895E:  MOVS            R0, #0; this
308960:  MOVS            R1, #0; char *
308962:  MOVS            R2, #(stderr+1); unsigned __int16 *
308964:  MOVS            R3, #0; bool
308966:  STRD.W          R4, R4, [SP,#0x58+var_58]; bool
30896A:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
30896E:  BLX             j__ZN8CCarCtrl27ClearInterestingVehicleListEv; CCarCtrl::ClearInterestingVehicleList(void)
308972:  BLX             j__ZN8CGarages29CloseHideOutGaragesBeforeSaveEv; CGarages::CloseHideOutGaragesBeforeSave(void)
308976:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308980)
30897A:  ADD             R5, SP, #0x58+var_38
30897C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30897E:  LDR             R4, [R0]; CWorld::Players ...
308980:  MOV             R0, R5; this
308982:  MOV             R1, R4
308984:  BLX             j__ZN11CPlayerInfo6GetPosEv; CPlayerInfo::GetPos(void)
308988:  MOVS            R1, #0
30898A:  MOV             R0, R5; this
30898C:  MOVT            R1, #0x457A; CVector *
308990:  MOVS            R2, #1; float
308992:  BLX             j__ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh; CWorld::ClearExcitingStuffFromArea(CVector const&,float,uchar)
308996:  LDR             R0, [R4]; CWorld::Players
308998:  LDR             R1, [R0,#0x14]
30899A:  ADD.W           R2, R1, #0x30 ; '0'
30899E:  CMP             R1, #0
3089A0:  IT EQ
3089A2:  ADDEQ           R2, R0, #4
3089A4:  VLDR            D16, [R2]
3089A8:  LDR             R1, [R2,#8]
3089AA:  STR             R1, [SP,#0x58+var_30]
3089AC:  VSTR            D16, [SP,#0x58+var_38]
3089B0:  LDR.W           R0, [R0,#0x794]; this
3089B4:  CMP             R0, #0
3089B6:  ITT NE
3089B8:  ADDNE.W         R1, SP, #0x58+var_38; CVector *
3089BC:  BLXNE           j__ZN10CEntryExit33GetPositionRelativeToOutsideWorldER7CVector; CEntryExit::GetPositionRelativeToOutsideWorld(CVector &)
3089C0:  ADD             R2, SP, #0x58+var_38
3089C2:  ADD             R3, SP, #0x58+var_2C
3089C4:  LDM             R2, {R0-R2}
3089C6:  STR             R3, [SP,#0x58+var_58]
3089C8:  ADD             R3, SP, #0x58+var_48
3089CA:  BLX             j__ZN8CRestart31FindClosestHospitalRestartPointE7CVectorPS0_Pf; CRestart::FindClosestHospitalRestartPoint(CVector,CVector*,float *)
3089CE:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3089D6)
3089D2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3089D4:  LDR             R0, [R0]; CWorld::Players ...
3089D6:  LDR             R1, [R0]; CWorld::Players
3089D8:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
3089DC:  CMP             R1, #0
3089DE:  IT NE
3089E0:  CMPNE           R0, #0
3089E2:  BEQ             loc_308A2E
3089E4:  LDR.W           R0, =(_ZN10CGameLogic20f2PlayerStartHeadingE_ptr - 0x3089F0)
3089E8:  VLDR            S0, =180.0
3089EC:  ADD             R0, PC; _ZN10CGameLogic20f2PlayerStartHeadingE_ptr
3089EE:  LDR             R0, [R0]; CGameLogic::f2PlayerStartHeading ...
3089F0:  VLDR            S2, [R0]
3089F4:  LDR.W           R0, =(_ZN10CGameLogic23vec2PlayerStartLocationE_ptr - 0x308A04)
3089F8:  VMUL.F32        S0, S2, S0
3089FC:  VLDR            S2, =3.1416
308A00:  ADD             R0, PC; _ZN10CGameLogic23vec2PlayerStartLocationE_ptr
308A02:  LDR             R0, [R0]; CGameLogic::vec2PlayerStartLocation ...
308A04:  VLDR            D16, [R0]
308A08:  VDIV.F32        S0, S0, S2
308A0C:  LDR             R0, [R0,#(dword_7A205C - 0x7A2054)]
308A0E:  VSTR            D16, [SP,#0x58+var_48]
308A12:  STR             R0, [SP,#0x58+var_40]
308A14:  MOVS            R0, #0; int
308A16:  VSTR            S0, [SP,#0x58+var_2C]
308A1A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
308A1E:  BLX             j__ZN10CGameLogic18RestorePedsWeaponsEP4CPed; CGameLogic::RestorePedsWeapons(CPed *)
308A22:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308A2A)
308A26:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308A28:  LDR             R0, [R0]; CWorld::Players ...
308A2A:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]; this
308A2E:  CBZ             R0, loc_308A8C
308A30:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
308A34:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308A3C)
308A38:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308A3A:  LDR             R0, [R0]; CWorld::Players ...
308A3C:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
308A40:  CMP             R0, #0
308A42:  ITTT NE
308A44:  LDRNE           R1, [R0]
308A46:  LDRNE           R1, [R1,#4]
308A48:  BLXNE           R1
308A4A:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308A54)
308A4E:  MOVS            R1, #0
308A50:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308A52:  LDR             R4, [R0]; CWorld::Players ...
308A54:  LDR             R0, [R4]; this
308A56:  STR.W           R1, [R4,#(dword_96B830 - 0x96B69C)]
308A5A:  MOVS            R1, #0; CPlayerPed *
308A5C:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
308A60:  LDR             R0, [R4]; CWorld::Players
308A62:  LDR.W           R1, [R0,#0x484]
308A66:  LDR.W           R2, [R0,#0x488]
308A6A:  LDR.W           R3, [R0,#0x48C]
308A6E:  ANDS            R1, R6
308A70:  LDR.W           R5, [R0,#0x490]
308A74:  ANDS            R2, R6
308A76:  STR.W           R1, [R0,#0x484]
308A7A:  AND.W           R3, R3, R8
308A7E:  STR.W           R2, [R0,#0x488]
308A82:  ANDS            R6, R5
308A84:  STR.W           R3, [R0,#0x48C]
308A88:  STR.W           R6, [R0,#0x490]
308A8C:  LDR.W           R0, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x308A96)
308A90:  MOVS            R1, #2; unsigned int
308A92:  ADD             R0, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
308A94:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus ...
308A96:  STR             R1, [R0]; CGameLogic::n2PlayerPedInFocus
308A98:  MOV.W           R0, #(elf_hash_bucket+0x1D4); this
308A9C:  BLX             j__ZN10CGameLogic8PassTimeEj; CGameLogic::PassTime(uint)
308AA0:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x308AAE)
308AA4:  ADD             R3, SP, #0x58+var_48
308AA6:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x308AB0)
308AAA:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
308AAC:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
308AAE:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
308AB0:  LDR             R4, [R1]; CWorld::Players ...
308AB2:  MOV.W           R1, #0x194
308AB6:  LDR             R0, [R0]; CWorld::PlayerInFocus
308AB8:  SMLABB.W        R0, R0, R1, R4
308ABC:  MOVS            R1, #0
308ABE:  STRH.W          R1, [R0,#0x144]
308AC2:  LDM             R3, {R1-R3}
308AC4:  LDR             R0, [R4]; CWorld::Players
308AC6:  VLDR            S0, [SP,#0x58+var_2C]
308ACA:  VSTR            S0, [SP,#0x58+var_58]
308ACE:  BLX             j__ZN10CGameLogic36RestorePlayerStuffDuringResurrectionEP10CPlayerPed7CVectorf; CGameLogic::RestorePlayerStuffDuringResurrection(CPlayerPed *,CVector,float)
308AD2:  LDR             R0, [R4]; CWorld::Players
308AD4:  LDR             R1, [R0,#0x14]
308AD6:  ADD.W           R4, R1, #0x30 ; '0'
308ADA:  CMP             R1, #0
308ADC:  IT EQ
308ADE:  ADDEQ           R4, R0, #4
308AE0:  BEQ             loc_308AF4
308AE2:  LDRD.W          R0, R1, [R1,#0x10]; x
308AE6:  EOR.W           R0, R0, #0x80000000; y
308AEA:  BLX             atan2f
308AEE:  VMOV            S0, R0
308AF2:  B               loc_308AF8
308AF4:  VLDR            S0, [R0,#0x10]
308AF8:  VMOV            R1, S0; CVector *
308AFC:  MOV             R0, R4; this
308AFE:  BLX             j__ZN10CGameLogic25SortOutStreamingAndMemoryERK7CVectorf; CGameLogic::SortOutStreamingAndMemory(CVector const&,float)
308B02:  LDR.W           R0, =(TheCamera_ptr - 0x308B10)
308B06:  MOVS            R4, #0
308B08:  MOVS            R1, #0; int
308B0A:  MOVS            R2, #0; int
308B0C:  ADD             R0, PC; TheCamera_ptr
308B0E:  MOVS            R3, #0; int
308B10:  LDR             R0, [R0]; TheCamera ; this
308B12:  STR.W           R4, [R0,#(dword_9520D0 - 0x951FA8)]
308B16:  STRD.W          R4, R4, [SP,#0x58+var_58]; int
308B1A:  BLX             j__ZN7CCamera13SetMotionBlurEiiiii; CCamera::SetMotionBlur(int,int,int,int,int)
308B1E:  MOVS            R0, #0; this
308B20:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
308B24:  MOVS            R1, #0; __int16
308B26:  BLX             j__ZN4CPad11StopShakingEs; CPad::StopShaking(short)
308B2A:  BLX             j__ZN11CReferences24RemoveReferencesToPlayerEv; CReferences::RemoveReferencesToPlayer(void)
308B2E:  LDR.W           R0, =(_ZN11CPopulation24m_CountDownToPedsAtStartE_ptr - 0x308B3E)
308B32:  MOVS            R6, #0xA
308B34:  LDR.W           R3, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x308B44)
308B38:  MOVS            R5, #1
308B3A:  ADD             R0, PC; _ZN11CPopulation24m_CountDownToPedsAtStartE_ptr
308B3C:  LDR.W           R1, =(_ZN11CPopulation13m_bIsHospitalE_ptr - 0x308B4C)
308B40:  ADD             R3, PC; _ZN6CWorld13PlayerInFocusE_ptr
308B42:  LDR.W           R2, =(_ZN8CCarCtrl22CountDownToCarsAtStartE_ptr - 0x308B50)
308B46:  LDR             R0, [R0]; CPopulation::m_CountDownToPedsAtStart ...
308B48:  ADD             R1, PC; _ZN11CPopulation13m_bIsHospitalE_ptr
308B4A:  LDR             R3, [R3]; CWorld::PlayerInFocus ...
308B4C:  ADD             R2, PC; _ZN8CCarCtrl22CountDownToCarsAtStartE_ptr
308B4E:  LDR             R1, [R1]; int
308B50:  LDR             R2, [R2]; CCarCtrl::CountDownToCarsAtStart ...
308B52:  STRB            R6, [R0]; CPopulation::m_CountDownToPedsAtStart
308B54:  LDR             R0, [R3]; this
308B56:  STRB            R6, [R2]; CCarCtrl::CountDownToCarsAtStart
308B58:  STRB            R5, [R1]; CPopulation::m_bIsHospital
308B5A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
308B5E:  LDR.W           R1, =(_ZN8CRestart21bFadeInAfterNextDeathE_ptr - 0x308B6A)
308B62:  STRH.W          R4, [R0,#0x110]
308B66:  ADD             R1, PC; _ZN8CRestart21bFadeInAfterNextDeathE_ptr
308B68:  LDR             R1, [R1]; CRestart::bFadeInAfterNextDeath ...
308B6A:  LDRB            R0, [R1]; CRestart::bFadeInAfterNextDeath
308B6C:  CMP             R0, #0
308B6E:  BEQ.W           loc_308DAE
308B72:  LDR.W           R0, =(TheCamera_ptr - 0x308B7A)
308B76:  ADD             R0, PC; TheCamera_ptr
308B78:  LDR             R4, [R0]; TheCamera
308B7A:  MOV             R0, R4; this
308B7C:  MOVS            R1, #0; unsigned __int8
308B7E:  MOVS            R2, #0; unsigned __int8
308B80:  MOVS            R3, #0; unsigned __int8
308B82:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
308B86:  MOVS            R1, #0
308B88:  MOV             R0, R4; this
308B8A:  MOVT            R1, #0x4040; float
308B8E:  MOVS            R2, #1; __int16
308B90:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
308B94:  LDR.W           R0, =(_ZN10CGameLogic20bLimitPlayerDistanceE_ptr - 0x308B9C)
308B98:  ADD             R0, PC; _ZN10CGameLogic20bLimitPlayerDistanceE_ptr
308B9A:  LDR             R0, [R0]; CGameLogic::bLimitPlayerDistance ...
308B9C:  LDRB            R0, [R0]; CGameLogic::bLimitPlayerDistance
308B9E:  CMP             R0, #0
308BA0:  BEQ.W           loc_307D36
308BA4:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x308BAC)
308BA8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308BAA:  LDR             R0, [R0]; CWorld::Players ...
308BAC:  LDR             R2, [R0]; CWorld::Players
308BAE:  CMP             R2, #0
308BB0:  ITT NE
308BB2:  LDRNE.W         R1, [R0,#(dword_96B830 - 0x96B69C)]
308BB6:  CMPNE           R1, #0
308BB8:  BEQ.W           loc_307D36
308BBC:  LDR             R3, [R1,#0x14]
308BBE:  LDR             R6, [R2,#0x14]
308BC0:  ADD.W           R0, R3, #0x30 ; '0'
308BC4:  CMP             R3, #0
308BC6:  IT EQ
308BC8:  ADDEQ           R0, R1, #4
308BCA:  ADD.W           R1, R6, #0x30 ; '0'
308BCE:  CMP             R6, #0
308BD0:  VLDR            S0, [R0]
308BD4:  VLDR            S2, [R0,#4]
308BD8:  IT EQ
308BDA:  ADDEQ           R1, R2, #4
308BDC:  VLDR            S4, [R1]
308BE0:  VLDR            S6, [R1,#4]
308BE4:  VSUB.F32        S10, S4, S0
308BE8:  LDR.W           R2, =(_ZN10CGameLogic17MaxPlayerDistanceE_ptr - 0x308BF4)
308BEC:  VSUB.F32        S8, S6, S2
308BF0:  ADD             R2, PC; _ZN10CGameLogic17MaxPlayerDistanceE_ptr
308BF2:  LDR             R2, [R2]; CGameLogic::MaxPlayerDistance ...
308BF4:  VMUL.F32        S10, S10, S10
308BF8:  VMUL.F32        S8, S8, S8
308BFC:  VADD.F32        S8, S10, S8
308C00:  VLDR            S10, [R2]
308C04:  VSQRT.F32       S8, S8
308C08:  VCMPE.F32       S8, S10
308C0C:  VMRS            APSR_nzcv, FPSCR
308C10:  BLE.W           loc_307D36
308C14:  VSUB.F32        S2, S2, S6
308C18:  VLDR            S6, [R0,#8]
308C1C:  VLDR            S8, [R1,#8]
308C20:  VSUB.F32        S0, S0, S4
308C24:  ADD             R0, SP, #0x58+var_48; this
308C26:  VSUB.F32        S4, S6, S8
308C2A:  VSTR            S2, [SP,#0x58+var_48+4]
308C2E:  VSTR            S0, [SP,#0x58+var_48]
308C32:  VSTR            S4, [SP,#0x58+var_40]
308C36:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
308C3A:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x308C44)
308C3C:  VLDR            S16, [SP,#0x58+var_48]
308C40:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308C42:  VLDR            S18, [SP,#0x58+var_48+4]
308C46:  VLDR            S20, [SP,#0x58+var_40]
308C4A:  LDR             R0, [R0]; CWorld::Players ...
308C4C:  LDR             R4, [R0]; CWorld::Players
308C4E:  LDR.W           R0, [R4,#0x484]
308C52:  TST.W           R0, #0x100
308C56:  ITT NE
308C58:  LDRNE.W         R1, [R4,#0x590]
308C5C:  CMPNE           R1, #0
308C5E:  BNE             loc_308CA8
308C60:  LSLS            R0, R0, #0x1F
308C62:  BNE             loc_308CAA
308C64:  LDR.W           R0, [R4,#0x440]; this
308C68:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
308C6C:  CBNZ            R0, loc_308CAA
308C6E:  B               loc_308D00
308C70:  DCD _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x307D32
308C74:  DCD _ZN6CWorld7PlayersE_ptr - 0x307D4A
308C78:  DCD _ZN10CGameLogic9GameStateE_ptr - 0x307DA4
308C7C:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307DBE
308C80:  DCD _ZN10CGameLogic9GameStateE_ptr - 0x307DC0
308C84:  DCD _ZN10CGameLogic15TimeOfLastEventE_ptr - 0x307DC2
308C88:  DCD unk_7A21D8 - 0x307DDA
308C8C:  DCD TheText_ptr - 0x307DFC
308C90:  DCB "WRN_2P",0
308C97:  DCB 0
308C98:  DCD _ZN10CGameLogic17MaxPlayerDistanceE_ptr - 0x307E1E
308C9C:  DCD _ZN10CGameLogic22nPrintFocusHelpCounterE_ptr - 0x307E34
308CA0:  DCD _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x307E4E
308CA4:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x307E50
308CA8:  MOV             R4, R1
308CAA:  VLDR            S0, [R4,#0x48]
308CAE:  VLDR            S2, [R4,#0x4C]
308CB2:  VLDR            S6, =0.0
308CB6:  VMUL.F32        S10, S16, S0
308CBA:  VMUL.F32        S8, S18, S2
308CBE:  VLDR            S4, [R4,#0x50]
308CC2:  VMAX.F32        D3, D10, D3
308CC6:  VMUL.F32        S12, S6, S4
308CCA:  VADD.F32        S8, S10, S8
308CCE:  VADD.F32        S8, S8, S12
308CD2:  VCMPE.F32       S8, #0.0
308CD6:  VMRS            APSR_nzcv, FPSCR
308CDA:  BGE             loc_308CF4
308CDC:  VMUL.F32        S6, S6, S8
308CE0:  VMUL.F32        S10, S18, S8
308CE4:  VMUL.F32        S8, S16, S8
308CE8:  VSUB.F32        S4, S4, S6
308CEC:  VSUB.F32        S2, S2, S10
308CF0:  VSUB.F32        S0, S0, S8
308CF4:  VSTR            S0, [R4,#0x48]
308CF8:  VSTR            S2, [R4,#0x4C]
308CFC:  VSTR            S4, [R4,#0x50]
308D00:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x308D0E)
308D02:  VLDR            S0, [SP,#0x58+var_48]
308D06:  VLDR            S2, [SP,#0x58+var_48+4]
308D0A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
308D0C:  VLDR            S4, [SP,#0x58+var_40]
308D10:  VNEG.F32        S16, S0
308D14:  VNEG.F32        S18, S2
308D18:  LDR             R0, [R0]; CWorld::Players ...
308D1A:  VNEG.F32        S20, S4
308D1E:  LDR.W           R4, [R0,#(dword_96B830 - 0x96B69C)]
308D22:  VSTR            S16, [SP,#0x58+var_48]
308D26:  VSTR            S18, [SP,#0x58+var_48+4]
308D2A:  VSTR            S20, [SP,#0x58+var_40]
308D2E:  LDR.W           R0, [R4,#0x484]
308D32:  TST.W           R0, #0x100
308D36:  ITT NE
308D38:  LDRNE.W         R1, [R4,#0x590]
308D3C:  CMPNE           R1, #0
308D3E:  BNE             loc_308D52
308D40:  LSLS            R0, R0, #0x1F
308D42:  BNE             loc_308D54
308D44:  LDR.W           R0, [R4,#0x440]; this
308D48:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
308D4C:  CBNZ            R0, loc_308D54
308D4E:  B.W             loc_307D36
308D52:  MOV             R4, R1
308D54:  VLDR            S0, [R4,#0x48]
308D58:  VLDR            S2, [R4,#0x4C]
308D5C:  VLDR            S6, =0.0
308D60:  VMUL.F32        S10, S0, S16
308D64:  VMUL.F32        S8, S2, S18
308D68:  VLDR            S4, [R4,#0x50]
308D6C:  VMAX.F32        D3, D10, D3
308D70:  VMUL.F32        S12, S6, S4
308D74:  VADD.F32        S8, S10, S8
308D78:  VADD.F32        S8, S8, S12
308D7C:  VCMPE.F32       S8, #0.0
308D80:  VMRS            APSR_nzcv, FPSCR
308D84:  BGE             loc_308D9E
308D86:  VMUL.F32        S6, S6, S8
308D8A:  VMUL.F32        S10, S8, S18
308D8E:  VMUL.F32        S8, S8, S16
308D92:  VSUB.F32        S4, S4, S6
308D96:  VSUB.F32        S2, S2, S10
308D9A:  VSUB.F32        S0, S0, S8
308D9E:  VSTR            S0, [R4,#0x48]
308DA2:  VSTR            S2, [R4,#0x4C]
308DA6:  VSTR            S4, [R4,#0x50]
308DAA:  B.W             loc_307D36
308DAE:  LDR             R0, =(_ZN8CRestart21bFadeInAfterNextDeathE_ptr - 0x308DB4)
308DB0:  ADD             R0, PC; _ZN8CRestart21bFadeInAfterNextDeathE_ptr
308DB2:  LDR             R0, [R0]; CRestart::bFadeInAfterNextDeath ...
308DB4:  STRB            R5, [R0]; CRestart::bFadeInAfterNextDeath
308DB6:  B               loc_308B94
