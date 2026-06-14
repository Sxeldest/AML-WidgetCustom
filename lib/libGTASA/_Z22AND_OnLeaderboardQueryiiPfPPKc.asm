; =========================================================
; Game Engine Function: _Z22AND_OnLeaderboardQueryiiPfPPKc
; Address            : 0x26EE48 - 0x26EF6E
; =========================================================

26EE48:  PUSH            {R4-R7,LR}
26EE4A:  ADD             R7, SP, #0xC
26EE4C:  PUSH.W          {R8-R11}
26EE50:  SUB             SP, SP, #4
26EE52:  MOV             R9, R0
26EE54:  LDR             R0, =(gameServiceMutex_ptr - 0x26EE5E)
26EE56:  MOV             R8, R3
26EE58:  MOV             R11, R2
26EE5A:  ADD             R0, PC; gameServiceMutex_ptr
26EE5C:  MOV             R5, R1
26EE5E:  LDR             R0, [R0]; gameServiceMutex
26EE60:  LDR             R0, [R0]; mutex
26EE62:  BLX             pthread_mutex_lock
26EE66:  MOVS            R0, #0x10; unsigned int
26EE68:  BLX             _Znwj; operator new(uint)
26EE6C:  MOV             R4, R0
26EE6E:  CMP             R5, #1
26EE70:  MOV.W           R0, #0
26EE74:  STRD.W          R9, R5, [R4]
26EE78:  STRD.W          R0, R0, [R4,#8]
26EE7C:  BLT             loc_26EEDE
26EE7E:  MOVS            R0, #4
26EE80:  UMULL.W         R9, R0, R5, R0
26EE84:  CMP             R0, #0
26EE86:  IT NE
26EE88:  MOVNE           R0, #1
26EE8A:  CMP             R0, #0
26EE8C:  IT NE
26EE8E:  MOVNE.W         R9, #0xFFFFFFFF
26EE92:  MOV             R0, R9; unsigned int
26EE94:  BLX             _Znaj; operator new[](uint)
26EE98:  MOV             R10, R0
26EE9A:  MOV             R0, R9; unsigned int
26EE9C:  STR.W           R10, [R4,#8]
26EEA0:  BLX             _Znaj; operator new[](uint)
26EEA4:  STR             R0, [R4,#0xC]
26EEA6:  LDR.W           R0, [R11]
26EEAA:  STR.W           R0, [R10]
26EEAE:  LDR.W           R0, [R8]; char *
26EEB2:  BLX             j_strdup
26EEB6:  LDR             R1, [R4,#0xC]
26EEB8:  CMP             R5, #1
26EEBA:  STR             R0, [R1]
26EEBC:  BEQ             loc_26EEDE
26EEBE:  MOVS            R6, #1
26EEC0:  LDR             R0, [R4,#8]
26EEC2:  LDR.W           R1, [R11,R6,LSL#2]
26EEC6:  STR.W           R1, [R0,R6,LSL#2]
26EECA:  LDR.W           R0, [R8,R6,LSL#2]; char *
26EECE:  BLX             j_strdup
26EED2:  LDR             R1, [R4,#0xC]
26EED4:  STR.W           R0, [R1,R6,LSL#2]
26EED8:  ADDS            R6, #1
26EEDA:  CMP             R5, R6
26EEDC:  BNE             loc_26EEC0
26EEDE:  LDR             R0, =(queries_ptr - 0x26EEE4)
26EEE0:  ADD             R0, PC; queries_ptr
26EEE2:  LDR             R0, [R0]; queries
26EEE4:  LDRD.W          R1, R5, [R0]
26EEE8:  ADDS            R0, R5, #1
26EEEA:  CMP             R1, R0
26EEEC:  BCS             loc_26EF3E
26EEEE:  MOVW            R1, #0xAAAB
26EEF2:  LSLS            R0, R0, #2
26EEF4:  MOVT            R1, #0xAAAA
26EEF8:  UMULL.W         R0, R1, R0, R1
26EEFC:  MOVS            R0, #3
26EEFE:  ADD.W           R9, R0, R1,LSR#1
26EF02:  MOV.W           R0, R9,LSL#2; byte_count
26EF06:  BLX             malloc
26EF0A:  MOV             R8, R0
26EF0C:  LDR             R0, =(queries_ptr - 0x26EF12)
26EF0E:  ADD             R0, PC; queries_ptr
26EF10:  LDR             R0, [R0]; queries
26EF12:  LDR             R6, [R0,#(dword_6D715C - 0x6D7154)]
26EF14:  CBZ             R6, loc_26EF2E
26EF16:  LSLS            R2, R5, #2; size_t
26EF18:  MOV             R0, R8; void *
26EF1A:  MOV             R1, R6; void *
26EF1C:  BLX             memcpy_0
26EF20:  MOV             R0, R6; p
26EF22:  BLX             free
26EF26:  LDR             R0, =(queries_ptr - 0x26EF2C)
26EF28:  ADD             R0, PC; queries_ptr
26EF2A:  LDR             R0, [R0]; queries
26EF2C:  LDR             R5, [R0,#(dword_6D7158 - 0x6D7154)]
26EF2E:  LDR             R0, =(queries_ptr - 0x26EF34)
26EF30:  ADD             R0, PC; queries_ptr
26EF32:  LDR             R0, [R0]; queries
26EF34:  STR.W           R8, [R0,#(dword_6D715C - 0x6D7154)]
26EF38:  STR.W           R9, [R0]
26EF3C:  B               loc_26EF48
26EF3E:  LDR             R0, =(queries_ptr - 0x26EF44)
26EF40:  ADD             R0, PC; queries_ptr
26EF42:  LDR             R0, [R0]; queries
26EF44:  LDR.W           R8, [R0,#(dword_6D715C - 0x6D7154)]
26EF48:  LDR             R1, =(queries_ptr - 0x26EF50)
26EF4A:  LDR             R0, =(gameServiceMutex_ptr - 0x26EF56)
26EF4C:  ADD             R1, PC; queries_ptr
26EF4E:  STR.W           R4, [R8,R5,LSL#2]
26EF52:  ADD             R0, PC; gameServiceMutex_ptr
26EF54:  LDR             R1, [R1]; queries
26EF56:  LDR             R0, [R0]; gameServiceMutex
26EF58:  LDR             R2, [R1,#(dword_6D7158 - 0x6D7154)]
26EF5A:  LDR             R0, [R0]; mutex
26EF5C:  ADDS            R2, #1
26EF5E:  STR             R2, [R1,#(dword_6D7158 - 0x6D7154)]
26EF60:  ADD             SP, SP, #4
26EF62:  POP.W           {R8-R11}
26EF66:  POP.W           {R4-R7,LR}
26EF6A:  B.W             j_pthread_mutex_unlock
