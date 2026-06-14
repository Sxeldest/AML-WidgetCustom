; =========================================================
; Game Engine Function: sub_68E3C
; Address            : 0x68E3C - 0x68F4A
; =========================================================

68E3C:  PUSH            {R4-R7,LR}
68E3E:  ADD             R7, SP, #0xC
68E40:  PUSH.W          {R8}
68E44:  SUB             SP, SP, #8
68E46:  LDR             R0, =(off_114BA0 - 0x68E4C)
68E48:  ADD             R0, PC; off_114BA0
68E4A:  LDR             R0, [R0]; dword_1A4400
68E4C:  LDR             R0, [R0]
68E4E:  LDR             R1, =(__stack_chk_guard_ptr - 0x68E54)
68E50:  ADD             R1, PC; __stack_chk_guard_ptr
68E52:  LDR             R1, [R1]; __stack_chk_guard
68E54:  LDR             R1, [R1]
68E56:  STR             R1, [SP,#0x18+var_14]
68E58:  CBZ             R0, loc_68E6C
68E5A:  LDR             R1, [R0]
68E5C:  MOVS            R2, #0x10004
68E62:  LDR             R3, [R1,#0x18]
68E64:  MOV             R1, SP
68E66:  BLX             R3
68E68:  LDR             R0, [SP,#0x18+var_18]
68E6A:  B               loc_68EEE
68E6C:  LDR             R0, =(byte_1A4240 - 0x68E72)
68E6E:  ADD             R0, PC; byte_1A4240
68E70:  LDRB            R0, [R0]
68E72:  DMB.W           ISH
68E76:  LDR             R4, =(dword_1A4234 - 0x68E7C)
68E78:  ADD             R4, PC; dword_1A4234
68E7A:  LSLS            R0, R0, #0x1F
68E7C:  BEQ             loc_68F08
68E7E:  LDRB            R0, [R4,#(byte_1A423E - 0x1A4234)]
68E80:  CBZ             R0, loc_68EDE
68E82:  LDRB            R1, [R4]
68E84:  EOR.W           R0, R0, #0x5A ; 'Z'
68E88:  LDRB            R2, [R4,#(dword_1A4234+1 - 0x1A4234)]
68E8A:  EOR.W           R1, R1, #0x5A ; 'Z'
68E8E:  LDRB            R3, [R4,#(dword_1A4234+2 - 0x1A4234)]
68E90:  STRB            R1, [R4]
68E92:  EOR.W           R1, R2, #0x5A ; 'Z'
68E96:  LDRB.W          R12, [R4,#(dword_1A4234+3 - 0x1A4234)]
68E9A:  STRB            R1, [R4,#(dword_1A4234+1 - 0x1A4234)]
68E9C:  EOR.W           R1, R3, #0x5A ; 'Z'
68EA0:  LDRB            R5, [R4,#(dword_1A4238 - 0x1A4234)]
68EA2:  STRB            R1, [R4,#(dword_1A4234+2 - 0x1A4234)]
68EA4:  EOR.W           R1, R12, #0x5A ; 'Z'
68EA8:  LDRB.W          LR, [R4,#(dword_1A4238+1 - 0x1A4234)]
68EAC:  STRB            R1, [R4,#(dword_1A4234+3 - 0x1A4234)]
68EAE:  EOR.W           R1, R5, #0x5A ; 'Z'
68EB2:  LDRB.W          R8, [R4,#(dword_1A4238+2 - 0x1A4234)]
68EB6:  STRB            R1, [R4,#(dword_1A4238 - 0x1A4234)]
68EB8:  EOR.W           R1, LR, #0x5A ; 'Z'
68EBC:  LDRB            R2, [R4,#(dword_1A4238+3 - 0x1A4234)]
68EBE:  STRB            R1, [R4,#(dword_1A4238+1 - 0x1A4234)]
68EC0:  EOR.W           R1, R8, #0x5A ; 'Z'
68EC4:  LDRB            R3, [R4,#(word_1A423C - 0x1A4234)]
68EC6:  LDRB            R6, [R4,#(word_1A423C+1 - 0x1A4234)]
68EC8:  STRB            R1, [R4,#(dword_1A4238+2 - 0x1A4234)]
68ECA:  EOR.W           R1, R2, #0x5A ; 'Z'
68ECE:  STRB            R1, [R4,#(dword_1A4238+3 - 0x1A4234)]
68ED0:  EOR.W           R1, R3, #0x5A ; 'Z'
68ED4:  STRB            R0, [R4,#(byte_1A423E - 0x1A4234)]
68ED6:  EOR.W           R0, R6, #0x5A ; 'Z'
68EDA:  STRB            R1, [R4,#(word_1A423C - 0x1A4234)]
68EDC:  STRB            R0, [R4,#(word_1A423C+1 - 0x1A4234)]
68EDE:  LDR             R1, =(aSampOrig - 0x68EE8); "SAMP_ORIG" ...
68EE0:  MOVS            R0, #4; prio
68EE2:  LDR             R2, =(dword_1A4234 - 0x68EEA)
68EE4:  ADD             R1, PC; "SAMP_ORIG"
68EE6:  ADD             R2, PC; dword_1A4234 ; fmt
68EE8:  BLX             __android_log_print
68EEC:  MOVS            R0, #0
68EEE:  LDR             R1, [SP,#0x18+var_14]
68EF0:  LDR             R2, =(__stack_chk_guard_ptr - 0x68EF6)
68EF2:  ADD             R2, PC; __stack_chk_guard_ptr
68EF4:  LDR             R2, [R2]; __stack_chk_guard
68EF6:  LDR             R2, [R2]
68EF8:  CMP             R2, R1
68EFA:  ITTT EQ
68EFC:  ADDEQ           SP, SP, #8
68EFE:  POPEQ.W         {R8}
68F02:  POPEQ           {R4-R7,PC}
68F04:  BLX             __stack_chk_fail
68F08:  LDR             R0, =(byte_1A4240 - 0x68F0E)
68F0A:  ADD             R0, PC; byte_1A4240 ; __guard *
68F0C:  BLX             j___cxa_guard_acquire
68F10:  CMP             R0, #0
68F12:  BEQ             loc_68E7E
68F14:  MOVS            R1, #0x5A ; 'Z'
68F16:  LDR             R0, =(sub_6ACF2+1 - 0x68F2E)
68F18:  LDR             R2, =(off_110560 - 0x68F3A)
68F1A:  STRB            R1, [R4,#(byte_1A423E - 0x1A4234)]
68F1C:  MOVW            R1, #0x372C
68F20:  STRH            R1, [R4,#(word_1A423C - 0x1A4234)]
68F22:  MOV             R1, #0x7A3B2C3B
68F2A:  ADD             R0, PC; sub_6ACF2 ; lpfunc
68F2C:  STR             R1, [R4,#(dword_1A4238 - 0x1A4234)]
68F2E:  MOV             R1, #0x307A3514
68F36:  ADD             R2, PC; off_110560 ; lpdso_handle
68F38:  STR             R1, [R4]
68F3A:  MOV             R1, R4; obj
68F3C:  BLX             __cxa_atexit
68F40:  LDR             R0, =(byte_1A4240 - 0x68F46)
68F42:  ADD             R0, PC; byte_1A4240 ; __guard *
68F44:  BLX             j___cxa_guard_release
68F48:  B               loc_68E7E
