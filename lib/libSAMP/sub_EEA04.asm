; =========================================================
; Game Engine Function: sub_EEA04
; Address            : 0xEEA04 - 0xEEA44
; =========================================================

EEA04:  PUSH            {R4,R6,R7,LR}
EEA06:  ADD             R7, SP, #8
EEA08:  LDRB            R1, [R0,#4]
EEA0A:  CMP             R1, #0
EEA0C:  IT NE
EEA0E:  POPNE           {R4,R6,R7,PC}
EEA10:  LDR             R0, =(byte_23DECC - 0xEEA16)
EEA12:  ADD             R0, PC; byte_23DECC
EEA14:  LDRB            R0, [R0]
EEA16:  DMB.W           ISH
EEA1A:  LDR             R4, =(dword_23DEC8 - 0xEEA20)
EEA1C:  ADD             R4, PC; dword_23DEC8
EEA1E:  LSLS            R0, R0, #0x1F
EEA20:  BEQ             loc_EEA26
EEA22:  LDR             R0, [R4]
EEA24:  POP             {R4,R6,R7,PC}
EEA26:  LDR             R0, =(byte_23DECC - 0xEEA2C)
EEA28:  ADD             R0, PC; byte_23DECC ; __guard *
EEA2A:  BLX             j___cxa_guard_acquire
EEA2E:  CMP             R0, #0
EEA30:  BEQ             loc_EEA22
EEA32:  BLX             j__ZNSt6__ndk16locale7classicEv; std::locale::classic(void)
EEA36:  LDR             R1, =(byte_23DECC - 0xEEA3E)
EEA38:  STR             R0, [R4]
EEA3A:  ADD             R1, PC; byte_23DECC
EEA3C:  MOV             R0, R1; __guard *
EEA3E:  BLX             j___cxa_guard_release
EEA42:  B               loc_EEA22
