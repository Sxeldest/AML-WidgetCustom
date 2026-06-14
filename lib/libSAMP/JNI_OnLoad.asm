; =========================================================
; Game Engine Function: JNI_OnLoad
; Address            : 0xF0DB0 - 0xF0E88
; =========================================================

F0DB0:  PUSH            {R4,R6,R7,LR}
F0DB2:  ADD             R7, SP, #8
F0DB4:  SUB             SP, SP, #8
F0DB6:  MOV             R4, R0
F0DB8:  BLX             j_JNI_OnLoad_alc
F0DBC:  LDR             R0, =(dword_23DF30 - 0xF0DC6)
F0DBE:  LDR             R1, =(aAxl - 0xF0DC8); "AXL" ...
F0DC0:  LDR             R2, =(aSaMpLibraryLoa - 0xF0DCA); "SA-MP library loaded! Build time: Dec 3"... ...
F0DC2:  ADD             R0, PC; dword_23DF30
F0DC4:  ADD             R1, PC; "AXL"
F0DC6:  ADD             R2, PC; "SA-MP library loaded! Build time: Dec 3"...
F0DC8:  STR             R4, [R0]
F0DCA:  MOVS            R0, #4; prio
F0DCC:  BLX             __android_log_print
F0DD0:  MOVS            R0, #0
F0DD2:  BL              sub_F0ED8
F0DD6:  LDR             R0, =(aLibgtasaSo - 0xF0DDC); "libGTASA.so" ...
F0DD8:  ADD             R0, PC; "libGTASA.so"
F0DDA:  BL              sub_163FF8
F0DDE:  LDR             R1, =(dword_23DF24 - 0xF0DE6)
F0DE0:  CMP             R0, #0
F0DE2:  ADD             R1, PC; dword_23DF24
F0DE4:  STR             R0, [R1]
F0DE6:  BEQ             loc_F0E66
F0DE8:  LDR             R0, =(aLibsampSo_0 - 0xF0DEE); "libsamp.so" ...
F0DEA:  ADD             R0, PC; "libsamp.so"
F0DEC:  BL              sub_163FF8
F0DF0:  LDR             R1, =(dword_23DF28 - 0xF0DF6)
F0DF2:  ADD             R1, PC; dword_23DF28
F0DF4:  STR             R0, [R1]
F0DF6:  CBZ             R0, loc_F0E70
F0DF8:  MOVS            R0, #0
F0DFA:  BL              sub_ED150
F0DFE:  LDR             R4, =(aAxl - 0xF0E08); "AXL" ...
F0E00:  MOVS            R0, #4; prio
F0E02:  LDR             R2, =(aLoadingBassLib - 0xF0E0A); "Loading bass library.." ...
F0E04:  ADD             R4, PC; "AXL"
F0E06:  ADD             R2, PC; "Loading bass library.."
F0E08:  MOV             R1, R4; tag
F0E0A:  BLX             __android_log_print
F0E0E:  BL              sub_16447C
F0E12:  LDR             R2, =(aLoadingVoiceLi - 0xF0E1C); "Loading voice library.." ...
F0E14:  MOVS            R0, #4; prio
F0E16:  MOV             R1, R4; tag
F0E18:  ADD             R2, PC; "Loading voice library.."
F0E1A:  BLX             __android_log_print
F0E1E:  BL              sub_F0FA0
F0E22:  LDR             R2, =(aLoadingChatIco - 0xF0E2C); "Loading chat icon system.." ...
F0E24:  MOVS            R0, #4; prio
F0E26:  MOV             R1, R4; tag
F0E28:  ADD             R2, PC; "Loading chat icon system.."
F0E2A:  BLX             __android_log_print
F0E2E:  BL              sub_F1050
F0E32:  BL              sub_1039C4
F0E36:  BL              sub_1005C8
F0E3A:  BL              sub_11C58C
F0E3E:  MOVS            R0, #0x58 ; 'X'; unsigned int
F0E40:  BLX             j__Znwj; operator new(uint)
F0E44:  MOV             R4, R0
F0E46:  BL              sub_F9364
F0E4A:  LDR             R0, =(dword_23DEF0 - 0xF0E50)
F0E4C:  ADD             R0, PC; dword_23DEF0
F0E4E:  STR             R4, [R0]
F0E50:  MOVS            R0, #1
F0E52:  BL              sub_ED150
F0E56:  LDR             R2, =(sub_F07C4+1 - 0xF0E62)
F0E58:  ADD             R0, SP, #0x10+newthread; newthread
F0E5A:  MOVS            R1, #0; attr
F0E5C:  MOVS            R3, #0; arg
F0E5E:  ADD             R2, PC; sub_F07C4 ; start_routine
F0E60:  BLX             pthread_create
F0E64:  B               loc_F0E7E
F0E66:  LDR             R1, =(aAxl - 0xF0E6E); "AXL" ...
F0E68:  LDR             R2, =(aLibgtasaSoAddr - 0xF0E70); "libGTASA.so address was not found! " ...
F0E6A:  ADD             R1, PC; "AXL"
F0E6C:  ADD             R2, PC; "libGTASA.so address was not found! "
F0E6E:  B               loc_F0E78
F0E70:  LDR             R1, =(aAxl - 0xF0E78); "AXL" ...
F0E72:  LDR             R2, =(aLibsampSoAddre - 0xF0E7A); "libsamp.so address was not found! " ...
F0E74:  ADD             R1, PC; "AXL"
F0E76:  ADD             R2, PC; "libsamp.so address was not found! "
F0E78:  MOVS            R0, #6; prio
F0E7A:  BLX             __android_log_print
F0E7E:  MOVS            R0, #0x10004
F0E84:  ADD             SP, SP, #8
F0E86:  POP             {R4,R6,R7,PC}
