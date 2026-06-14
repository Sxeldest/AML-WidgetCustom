; =========================================================
; Game Engine Function: sub_273F10
; Address            : 0x273F10 - 0x273F84
; =========================================================

273F10:  PUSH            {R4,R6,R7,LR}
273F12:  ADD             R7, SP, #8
273F14:  SUB             SP, SP, #0x18
273F16:  LDR             R4, =(dword_6D8200 - 0x273F1C)
273F18:  ADD             R4, PC; dword_6D8200
273F1A:  ADD.W           R0, R4, #8; mutex
273F1E:  BLX             pthread_mutex_lock
273F22:  LDRD.W          R1, R12, [R4]
273F26:  CMP             R12, R1
273F28:  BEQ             loc_273F6C
273F2A:  LDR             R2, =(dword_6D8200 - 0x273F32)
273F2C:  MOV             R3, R12
273F2E:  ADD             R2, PC; dword_6D8200
273F30:  ADD.W           R0, R3, R3,LSL#1
273F34:  ADD.W           R0, R2, R0,LSL#3
273F38:  LDR.W           R4, [R0,#0x28]!
273F3C:  SUBS            R4, #6
273F3E:  CMP             R4, #3
273F40:  BLS             loc_273F4C
273F42:  ADDS            R0, R3, #1
273F44:  UXTB            R3, R0
273F46:  CMP             R3, R1
273F48:  BNE             loc_273F30
273F4A:  B               loc_273F6C
273F4C:  LDR             R1, =(dword_6D8200 - 0x273F5A)
273F4E:  ADD.W           R2, R12, R12,LSL#1
273F52:  VLD1.32         {D16-D17}, [R0]!
273F56:  ADD             R1, PC; dword_6D8200
273F58:  ADD.W           R1, R1, R2,LSL#3
273F5C:  VLDR            D18, [R0]
273F60:  ADD.W           R0, R1, #0x28 ; '('
273F64:  VST1.32         {D16-D17}, [R0]!
273F68:  VSTR            D18, [R0]
273F6C:  LDR             R0, =(dword_6D8200 - 0x273F72)
273F6E:  ADD             R0, PC; dword_6D8200
273F70:  ADDS            R0, #8; mutex
273F72:  BLX             pthread_mutex_unlock
273F76:  MOVS            R0, #9
273F78:  STR             R0, [SP,#0x20+var_20]
273F7A:  MOV             R0, SP
273F7C:  BL              sub_27C4F0
273F80:  ADD             SP, SP, #0x18
273F82:  POP             {R4,R6,R7,PC}
