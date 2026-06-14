; =========================================================
; Game Engine Function: _ZN7CDarkel14FailKillFrenzyEv
; Address            : 0x303F54 - 0x303FD6
; =========================================================

303F54:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x303F5A)
303F56:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
303F58:  LDR             R0, [R0]; CDarkel::Status ...
303F5A:  LDRH            R0, [R0]; CDarkel::Status
303F5C:  CMP             R0, #4
303F5E:  BNE             loc_303F7A
303F60:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x303F6C)
303F62:  MOVS            R3, #3
303F64:  LDR             R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x303F6E)
303F66:  LDR             R2, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x303F70)
303F68:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
303F6A:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
303F6C:  ADD             R2, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
303F6E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
303F70:  LDR             R1, [R1]; CGameLogic::GameState ...
303F72:  LDR             R2, [R2]; CGameLogic::TimeOfLastEvent ...
303F74:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
303F76:  STRB            R3, [R1]; CGameLogic::GameState
303F78:  STR             R0, [R2]; CGameLogic::TimeOfLastEvent
303F7A:  PUSH            {R7,LR}; unsigned int
303F7C:  MOV             R7, SP
303F7E:  SUB             SP, SP, #8
303F80:  MOVS            R0, #0
303F82:  MOVS            R1, #0; char *
303F84:  STRD.W          R0, R0, [SP,#0x10+var_10]; bool
303F88:  MOVS            R0, #0; this
303F8A:  MOVS            R2, #(stderr+1); unsigned __int16 *
303F8C:  MOVS            R3, #0; bool
303F8E:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
303F92:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x303F98)
303F94:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
303F96:  LDR             R0, [R0]; CDarkel::Status ...
303F98:  LDRH            R0, [R0]; CDarkel::Status
303F9A:  CMP             R0, #4
303F9C:  ADD             SP, SP, #8
303F9E:  POP.W           {R7,LR}
303FA2:  IT NE
303FA4:  CMPNE           R0, #1
303FA6:  BNE             locret_303FD4
303FA8:  LDR             R0, =(_ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr - 0x303FB2)
303FAA:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x303FB6)
303FAC:  LDR             R1, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x303FB8)
303FAE:  ADD             R0, PC; _ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr
303FB0:  LDR             R3, =(_ZN7CDarkel6StatusE_ptr - 0x303FBC)
303FB2:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
303FB4:  ADD             R1, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
303FB6:  LDR             R0, [R0]; CPopulation::m_AllRandomPedsThisType ...
303FB8:  ADD             R3, PC; _ZN7CDarkel6StatusE_ptr
303FBA:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
303FBC:  LDR.W           R12, [R1]; CDarkel::TimeOfFrenzyStart ...
303FC0:  MOV.W           R1, #0xFFFFFFFF
303FC4:  LDR             R3, [R3]; CDarkel::Status ...
303FC6:  STR             R1, [R0]; CPopulation::m_AllRandomPedsThisType
303FC8:  MOVS            R1, #3
303FCA:  LDR             R0, [R2]; this
303FCC:  STRH            R1, [R3]; CDarkel::Status
303FCE:  STR.W           R0, [R12]; CDarkel::TimeOfFrenzyStart
303FD2:  B               _ZN7CDarkel33DealWithWeaponChangeAtEndOfFrenzyEv; CDarkel::DealWithWeaponChangeAtEndOfFrenzy(void)
303FD4:  BX              LR
