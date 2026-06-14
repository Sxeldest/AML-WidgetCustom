; =========================================================
; Game Engine Function: FreeALConfig
; Address            : 0x250BCC - 0x250C6E
; =========================================================

250BCC:  PUSH            {R4-R7,LR}
250BCE:  ADD             R7, SP, #0xC
250BD0:  PUSH.W          {R8-R11}
250BD4:  SUB             SP, SP, #4
250BD6:  LDR             R0, =(dword_6D6410 - 0x250BDC)
250BD8:  ADD             R0, PC; dword_6D6410
250BDA:  LDR             R0, [R0]
250BDC:  CBZ             R0, loc_250C52
250BDE:  LDR.W           R8, =(dword_6D640C - 0x250BF2)
250BE2:  MOV.W           R11, #0
250BE6:  LDR.W           R9, =(dword_6D640C - 0x250BF6)
250BEA:  LDR.W           R10, =(dword_6D6410 - 0x250BF8)
250BEE:  ADD             R8, PC; dword_6D640C
250BF0:  LDR             R6, =(dword_6D640C - 0x250BFA)
250BF2:  ADD             R9, PC; dword_6D640C
250BF4:  ADD             R10, PC; dword_6D6410
250BF6:  ADD             R6, PC; dword_6D640C
250BF8:  LDR.W           R0, [R8]
250BFC:  ADD.W           R5, R11, R11,LSL#1
250C00:  ADD.W           R1, R0, R5,LSL#2
250C04:  LDRD.W          R0, R1, [R1,#4]
250C08:  CBZ             R1, loc_250C36
250C0A:  MOVS            R4, #0
250C0C:  LDR.W           R0, [R0,R4,LSL#3]; p
250C10:  BLX             free
250C14:  LDR             R0, [R6]
250C16:  ADD.W           R0, R0, R5,LSL#2
250C1A:  LDR             R0, [R0,#4]
250C1C:  ADD.W           R0, R0, R4,LSL#3
250C20:  LDR             R0, [R0,#4]; p
250C22:  BLX             free
250C26:  LDR             R0, [R6]
250C28:  ADDS            R4, #1
250C2A:  ADD.W           R1, R0, R5,LSL#2
250C2E:  LDRD.W          R0, R1, [R1,#4]; p
250C32:  CMP             R4, R1
250C34:  BCC             loc_250C0C
250C36:  BLX             free
250C3A:  LDR.W           R0, [R9]
250C3E:  LDR.W           R0, [R0,R5,LSL#2]; p
250C42:  BLX             free
250C46:  LDR.W           R0, [R10]
250C4A:  ADD.W           R11, R11, #1
250C4E:  CMP             R11, R0
250C50:  BCC             loc_250BF8
250C52:  LDR             R4, =(dword_6D640C - 0x250C58)
250C54:  ADD             R4, PC; dword_6D640C
250C56:  LDR             R0, [R4]; p
250C58:  BLX             free
250C5C:  LDR             R0, =(dword_6D6410 - 0x250C66)
250C5E:  MOVS            R1, #0
250C60:  STR             R1, [R4]
250C62:  ADD             R0, PC; dword_6D6410
250C64:  STR             R1, [R0]
250C66:  ADD             SP, SP, #4
250C68:  POP.W           {R8-R11}
250C6C:  POP             {R4-R7,PC}
