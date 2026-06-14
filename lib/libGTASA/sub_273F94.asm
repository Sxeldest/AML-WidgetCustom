; =========================================================
; Game Engine Function: sub_273F94
; Address            : 0x273F94 - 0x274008
; =========================================================

273F94:  PUSH            {R4,R6,R7,LR}
273F96:  ADD             R7, SP, #8
273F98:  SUB             SP, SP, #0x18
273F9A:  LDR             R4, =(dword_6D8200 - 0x273FA0)
273F9C:  ADD             R4, PC; dword_6D8200
273F9E:  ADD.W           R0, R4, #8; mutex
273FA2:  BLX             pthread_mutex_lock
273FA6:  LDRD.W          R1, R12, [R4]
273FAA:  CMP             R12, R1
273FAC:  BEQ             loc_273FF0
273FAE:  LDR             R2, =(dword_6D8200 - 0x273FB6)
273FB0:  MOV             R3, R12
273FB2:  ADD             R2, PC; dword_6D8200
273FB4:  ADD.W           R0, R3, R3,LSL#1
273FB8:  ADD.W           R0, R2, R0,LSL#3
273FBC:  LDR.W           R4, [R0,#0x28]!
273FC0:  SUBS            R4, #6
273FC2:  CMP             R4, #3
273FC4:  BLS             loc_273FD0
273FC6:  ADDS            R0, R3, #1
273FC8:  UXTB            R3, R0
273FCA:  CMP             R3, R1
273FCC:  BNE             loc_273FB4
273FCE:  B               loc_273FF0
273FD0:  LDR             R1, =(dword_6D8200 - 0x273FDE)
273FD2:  ADD.W           R2, R12, R12,LSL#1
273FD6:  VLD1.32         {D16-D17}, [R0]!
273FDA:  ADD             R1, PC; dword_6D8200
273FDC:  ADD.W           R1, R1, R2,LSL#3
273FE0:  VLDR            D18, [R0]
273FE4:  ADD.W           R0, R1, #0x28 ; '('
273FE8:  VST1.32         {D16-D17}, [R0]!
273FEC:  VSTR            D18, [R0]
273FF0:  LDR             R0, =(dword_6D8200 - 0x273FF6)
273FF2:  ADD             R0, PC; dword_6D8200
273FF4:  ADDS            R0, #8; mutex
273FF6:  BLX             pthread_mutex_unlock
273FFA:  MOVS            R0, #8
273FFC:  STR             R0, [SP,#0x20+var_20]
273FFE:  MOV             R0, SP
274000:  BL              sub_27C4F0
274004:  ADD             SP, SP, #0x18
274006:  POP             {R4,R6,R7,PC}
