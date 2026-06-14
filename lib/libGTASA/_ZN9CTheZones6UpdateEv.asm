; =========================================================
; Game Engine Function: _ZN9CTheZones6UpdateEv
; Address            : 0x42CF04 - 0x42CF76
; =========================================================

42CF04:  PUSH            {R7,LR}
42CF06:  MOV             R7, SP
42CF08:  LDR             R0, =(byte_98F0EC - 0x42CF0E)
42CF0A:  ADD             R0, PC; byte_98F0EC
42CF0C:  LDRB            R0, [R0]
42CF0E:  DMB.W           ISH
42CF12:  TST.W           R0, #1
42CF16:  BNE             loc_42CF3E
42CF18:  LDR             R0, =(byte_98F0EC - 0x42CF1E)
42CF1A:  ADD             R0, PC; byte_98F0EC ; __guard *
42CF1C:  BLX             j___cxa_guard_acquire
42CF20:  CBZ             R0, loc_42CF3E
42CF22:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x42CF2E)
42CF24:  MOVW            R3, #0x1388
42CF28:  LDR             R1, =(dword_98F0E8 - 0x42CF30)
42CF2A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
42CF2C:  ADD             R1, PC; dword_98F0E8
42CF2E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
42CF30:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds
42CF32:  LDR             R0, =(byte_98F0EC - 0x42CF3C)
42CF34:  SUBS            R2, R2, R3
42CF36:  STR             R2, [R1]
42CF38:  ADD             R0, PC; byte_98F0EC ; __guard *
42CF3A:  BLX             j___cxa_guard_release
42CF3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x42CF46)
42CF40:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x42CF48)
42CF42:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
42CF44:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
42CF46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
42CF48:  LDR             R1, [R1]; CGame::currArea ...
42CF4A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
42CF4C:  LDR             R1, [R1]; CGame::currArea
42CF4E:  CBNZ            R1, loc_42CF6E
42CF50:  LDR             R1, =(dword_98F0E8 - 0x42CF56)
42CF52:  ADD             R1, PC; dword_98F0E8
42CF54:  LDR             R1, [R1]
42CF56:  SUBS            R0, R0, R1; this
42CF58:  MOVW            R1, #0x1389
42CF5C:  CMP             R0, R1
42CF5E:  IT CC
42CF60:  POPCC           {R7,PC}
42CF62:  BLX             j__ZN9CTheZones24SetCurrentZoneAsUnlockedEv; CTheZones::SetCurrentZoneAsUnlocked(void)
42CF66:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x42CF6C)
42CF68:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
42CF6A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
42CF6C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
42CF6E:  LDR             R1, =(dword_98F0E8 - 0x42CF74)
42CF70:  ADD             R1, PC; dword_98F0E8
42CF72:  STR             R0, [R1]
42CF74:  POP             {R7,PC}
