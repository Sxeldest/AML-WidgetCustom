; =========================================================
; Game Engine Function: _Z12CheckForPumpv
; Address            : 0x1E8CE8 - 0x1E8D56
; =========================================================

1E8CE8:  PUSH            {R4,R6,R7,LR}
1E8CEA:  ADD             R7, SP, #8
1E8CEC:  LDR             R0, =(byte_6BD170 - 0x1E8CF2)
1E8CEE:  ADD             R0, PC; byte_6BD170
1E8CF0:  LDRB            R0, [R0]
1E8CF2:  DMB.W           ISH
1E8CF6:  TST.W           R0, #1
1E8CFA:  BNE             loc_1E8D1A
1E8CFC:  LDR             R0, =(byte_6BD170 - 0x1E8D02)
1E8CFE:  ADD             R0, PC; byte_6BD170 ; __guard *
1E8D00:  BLX             j___cxa_guard_acquire
1E8D04:  CBZ             R0, loc_1E8D1A
1E8D06:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
1E8D0A:  LDR             R2, =(dword_6BD16C - 0x1E8D12)
1E8D0C:  LDR             R1, =(byte_6BD170 - 0x1E8D14)
1E8D0E:  ADD             R2, PC; dword_6BD16C
1E8D10:  ADD             R1, PC; byte_6BD170
1E8D12:  STR             R0, [R2]
1E8D14:  MOV             R0, R1; __guard *
1E8D16:  BLX             j___cxa_guard_release
1E8D1A:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
1E8D1E:  MOV             R4, R0
1E8D20:  LDR             R0, =(dword_6BD16C - 0x1E8D26)
1E8D22:  ADD             R0, PC; dword_6BD16C
1E8D24:  LDR             R0, [R0]
1E8D26:  SUBS            R0, R4, R0
1E8D28:  CMP             R0, #0x22 ; '"'
1E8D2A:  IT CC
1E8D2C:  POPCC           {R4,R6,R7,PC}
1E8D2E:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x1E8D34)
1E8D30:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
1E8D32:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
1E8D34:  LDRB            R0, [R0]; this
1E8D36:  CBZ             R0, loc_1E8D3E
1E8D38:  BLX             j__ZN14CLoadingScreen15DisplayPCScreenEv; CLoadingScreen::DisplayPCScreen(void)
1E8D3C:  B               loc_1E8D4E
1E8D3E:  LDR             R0, =(bLoadingScene_ptr - 0x1E8D44)
1E8D40:  ADD             R0, PC; bLoadingScene_ptr
1E8D42:  LDR             R0, [R0]; bLoadingScene
1E8D44:  LDRB            R0, [R0]
1E8D46:  CMP             R0, #0
1E8D48:  IT NE
1E8D4A:  BLXNE           j__Z16Pump_SwapBuffersv; Pump_SwapBuffers(void)
1E8D4E:  LDR             R0, =(dword_6BD16C - 0x1E8D54)
1E8D50:  ADD             R0, PC; dword_6BD16C
1E8D52:  STR             R4, [R0]
1E8D54:  POP             {R4,R6,R7,PC}
