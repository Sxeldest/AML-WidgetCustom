; =========================================================
; Game Engine Function: _ZN7CDarkel18ResetOnPlayerDeathEv
; Address            : 0x303EE0 - 0x303F3E
; =========================================================

303EE0:  PUSH            {R7,LR}; unsigned int
303EE2:  MOV             R7, SP
303EE4:  SUB             SP, SP, #8
303EE6:  MOVS            R0, #0
303EE8:  MOVS            R1, #0; char *
303EEA:  STRD.W          R0, R0, [SP,#0x10+var_10]; bool
303EEE:  MOVS            R0, #0; this
303EF0:  MOVS            R2, #(stderr+1); unsigned __int16 *
303EF2:  MOVS            R3, #0; bool
303EF4:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
303EF8:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x303EFE)
303EFA:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
303EFC:  LDR             R0, [R0]; CDarkel::Status ...
303EFE:  LDRH            R0, [R0]; CDarkel::Status
303F00:  CMP             R0, #4
303F02:  IT NE
303F04:  CMPNE           R0, #1
303F06:  BNE             loc_303F3A
303F08:  LDR             R0, =(_ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr - 0x303F12)
303F0A:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x303F16)
303F0C:  LDR             R1, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x303F18)
303F0E:  ADD             R0, PC; _ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr
303F10:  LDR             R3, =(_ZN7CDarkel6StatusE_ptr - 0x303F1C)
303F12:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
303F14:  ADD             R1, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
303F16:  LDR             R0, [R0]; CPopulation::m_AllRandomPedsThisType ...
303F18:  ADD             R3, PC; _ZN7CDarkel6StatusE_ptr
303F1A:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
303F1C:  LDR.W           R12, [R1]; CDarkel::TimeOfFrenzyStart ...
303F20:  MOV.W           R1, #0xFFFFFFFF
303F24:  LDR             R3, [R3]; CDarkel::Status ...
303F26:  STR             R1, [R0]; CPopulation::m_AllRandomPedsThisType
303F28:  MOVS            R1, #3
303F2A:  LDR             R0, [R2]; this
303F2C:  STRH            R1, [R3]; CDarkel::Status
303F2E:  STR.W           R0, [R12]; CDarkel::TimeOfFrenzyStart
303F32:  ADD             SP, SP, #8
303F34:  POP.W           {R7,LR}
303F38:  B               _ZN7CDarkel33DealWithWeaponChangeAtEndOfFrenzyEv; CDarkel::DealWithWeaponChangeAtEndOfFrenzy(void)
303F3A:  ADD             SP, SP, #8
303F3C:  POP             {R7,PC}
