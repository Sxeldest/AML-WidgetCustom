; =========================================================
; Game Engine Function: _Z9NvAPKInitP8_jobject
; Address            : 0x270D08 - 0x270F18
; =========================================================

270D08:  PUSH            {R4-R7,LR}
270D0A:  ADD             R7, SP, #0xC
270D0C:  PUSH.W          {R8-R11}
270D10:  SUB             SP, SP, #4
270D12:  MOV             R4, R0
270D14:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
270D18:  MOV             R5, R0
270D1A:  MOV             R1, R4
270D1C:  LDR             R0, [R5]
270D1E:  LDR             R2, [R0,#0x54]
270D20:  MOV             R0, R5
270D22:  BLX             R2
270D24:  MOV             R1, R0; assetManager
270D26:  MOV             R0, R5; env
270D28:  BLX             AAssetManager_fromJava
270D2C:  LDR             R1, =(dword_6D81C4 - 0x270D36)
270D2E:  MOV             R8, R0
270D30:  LDR             R0, =(dword_6D81D4 - 0x270D38)
270D32:  ADD             R1, PC; dword_6D81C4
270D34:  ADD             R0, PC; dword_6D81D4
270D36:  LDR.W           R10, [R1,#(dword_6D81C8 - 0x6D81C4)]
270D3A:  STR.W           R8, [R0]
270D3E:  CMP.W           R10, #0
270D42:  BEQ             loc_270D64
270D44:  LDR             R0, =(dword_6D81C4 - 0x270D50)
270D46:  ADR.W           R9, aAssetfileTxt; "assetfile.txt"
270D4A:  MOVS            R4, #0
270D4C:  ADD             R0, PC; dword_6D81C4
270D4E:  LDR             R6, [R0,#(dword_6D81CC - 0x6D81C4)]
270D50:  LDR.W           R5, [R6,R4,LSL#2]
270D54:  MOV             R0, R9; char *
270D56:  MOV             R1, R5; char *
270D58:  BLX             strcasecmp
270D5C:  CBZ             R0, loc_270D66
270D5E:  ADDS            R4, #1
270D60:  CMP             R4, R10
270D62:  BCC             loc_270D50
270D64:  ADR             R5, aAssetfileTxt; "assetfile.txt"
270D66:  MOV             R0, R8; mgr
270D68:  MOV             R1, R5; filename
270D6A:  MOVS            R2, #0; mode
270D6C:  MOV.W           R10, #0
270D70:  BLX             AAssetManager_open
270D74:  MOV             R6, R0
270D76:  CMP             R6, #0
270D78:  BEQ.W           loc_270F10
270D7C:  MOV             R0, R6; asset
270D7E:  BLX             AAsset_getLength
270D82:  MOV             R8, R0
270D84:  ADD.W           R0, R8, #1; byte_count
270D88:  BLX             malloc
270D8C:  MOV             R5, R0
270D8E:  MOV             R0, R6; asset
270D90:  BLX             AAsset_getLength
270D94:  MOV             R9, R0
270D96:  MOV             R0, R6; asset
270D98:  BLX             AAsset_getLength
270D9C:  MOV             R4, R0
270D9E:  MOV             R0, R6; asset
270DA0:  BLX             AAsset_getRemainingLength
270DA4:  SUBS            R0, R0, R4
270DA6:  MOV             R1, R5; buf
270DA8:  ADD.W           R2, R0, R9
270DAC:  MOV             R0, R6; asset
270DAE:  CMP             R8, R2
270DB0:  IT LE
270DB2:  MOVLE           R2, R8; count
270DB4:  BLX             AAsset_read
270DB8:  LDR             R0, =(dword_6D81C4 - 0x270DC2)
270DBA:  CMP.W           R8, #0
270DBE:  ADD             R0, PC; dword_6D81C4
270DC0:  STR.W           R10, [R0,#(dword_6D81C8 - 0x6D81C4)]
270DC4:  BEQ             loc_270E8E
270DC6:  LDR             R3, =(dword_6D81C4 - 0x270DD6)
270DC8:  MOVS            R2, #0
270DCA:  LDR.W           R12, =(dword_6D81C4 - 0x270DDC)
270DCE:  MOV.W           R10, #0
270DD2:  ADD             R3, PC; dword_6D81C4
270DD4:  MOV.W           R11, #0
270DD8:  ADD             R12, PC; dword_6D81C4
270DDA:  MOVS            R0, #0
270DDC:  MOV             R4, R5
270DDE:  LDRB.W          R1, [R5,R11]
270DE2:  CMP             R1, #0xD
270DE4:  IT NE
270DE6:  CMPNE           R1, #0xA
270DE8:  BNE             loc_270E48
270DEA:  CMP             R0, #0
270DEC:  STRB.W          R2, [R5,R11]
270DF0:  BNE             loc_270E7C
270DF2:  LDR             R1, [R3]
270DF4:  ADD.W           R0, R10, #1
270DF8:  CMP             R1, R0
270DFA:  BCS             loc_270E4C
270DFC:  MOVW            R1, #0xAAAB
270E00:  LSLS            R0, R0, #2
270E02:  MOVT            R1, #0xAAAA
270E06:  STR             R4, [SP,#0x20+var_20]
270E08:  UMULL.W         R0, R1, R0, R1
270E0C:  MOVS            R0, #3
270E0E:  ADD.W           R9, R0, R1,LSR#1
270E12:  MOV.W           R0, R9,LSL#2; byte_count
270E16:  BLX             malloc
270E1A:  MOV             R6, R0
270E1C:  LDR             R0, =(dword_6D81C4 - 0x270E22)
270E1E:  ADD             R0, PC; dword_6D81C4
270E20:  LDR             R4, [R0,#(dword_6D81CC - 0x6D81C4)]
270E22:  CMP             R4, #0
270E24:  BEQ             loc_270E54
270E26:  MOV.W           R2, R10,LSL#2; size_t
270E2A:  MOV             R0, R6; void *
270E2C:  MOV             R1, R4; void *
270E2E:  BLX             memcpy_0
270E32:  MOV             R0, R4; p
270E34:  BLX             free
270E38:  LDR             R0, =(dword_6D81C4 - 0x270E42)
270E3A:  LDR.W           R12, =(dword_6D81C4 - 0x270E44)
270E3E:  ADD             R0, PC; dword_6D81C4
270E40:  ADD             R12, PC; dword_6D81C4
270E42:  LDR.W           R10, [R0,#(dword_6D81C8 - 0x6D81C4)]
270E46:  B               loc_270E5A
270E48:  MOVS            R0, #0
270E4A:  B               loc_270E84
270E4C:  LDR             R0, =(dword_6D81C4 - 0x270E52)
270E4E:  ADD             R0, PC; dword_6D81C4
270E50:  LDR             R6, [R0,#(dword_6D81CC - 0x6D81C4)]
270E52:  B               loc_270E6C
270E54:  LDR.W           R12, =(dword_6D81C4 - 0x270E5C)
270E58:  ADD             R12, PC; dword_6D81C4
270E5A:  LDR             R0, =(dword_6D81C4 - 0x270E66)
270E5C:  MOVS            R2, #0
270E5E:  LDR             R3, =(dword_6D81C4 - 0x270E68)
270E60:  LDR             R4, [SP,#0x20+var_20]
270E62:  ADD             R0, PC; dword_6D81C4
270E64:  ADD             R3, PC; dword_6D81C4
270E66:  STR             R6, [R0,#(dword_6D81CC - 0x6D81C4)]
270E68:  STR.W           R9, [R0]
270E6C:  STR.W           R4, [R6,R10,LSL#2]
270E70:  LDR.W           R0, [R12,#(dword_6D81C8 - 0x6D81C4)]
270E74:  ADD.W           R10, R0, #1
270E78:  STR.W           R10, [R12,#(dword_6D81C8 - 0x6D81C4)]
270E7C:  ADD.W           R0, R5, R11
270E80:  ADDS            R4, R0, #1
270E82:  MOVS            R0, #1
270E84:  ADD.W           R11, R11, #1
270E88:  CMP             R8, R11
270E8A:  BNE             loc_270DDE
270E8C:  B               loc_270E94
270E8E:  MOV             R4, R5
270E90:  MOV.W           R8, #0
270E94:  SUBS            R0, R5, R4
270E96:  CMP             R0, #3
270E98:  BLT             loc_270F10
270E9A:  LDR             R0, =(dword_6D81C4 - 0x270EA6)
270E9C:  MOVS            R1, #0
270E9E:  STRB.W          R1, [R5,R8]
270EA2:  ADD             R0, PC; dword_6D81C4
270EA4:  LDR             R1, [R0]
270EA6:  ADD.W           R0, R10, #1
270EAA:  CMP             R1, R0
270EAC:  BCS             loc_270EFC
270EAE:  MOVW            R1, #0xAAAB
270EB2:  LSLS            R0, R0, #2
270EB4:  MOVT            R1, #0xAAAA
270EB8:  UMULL.W         R0, R1, R0, R1
270EBC:  MOVS            R0, #3
270EBE:  ADD.W           R8, R0, R1,LSR#1
270EC2:  MOV.W           R0, R8,LSL#2; byte_count
270EC6:  BLX             malloc
270ECA:  MOV             R6, R0
270ECC:  LDR             R0, =(dword_6D81C4 - 0x270ED2)
270ECE:  ADD             R0, PC; dword_6D81C4
270ED0:  LDR             R5, [R0,#(dword_6D81CC - 0x6D81C4)]
270ED2:  CMP             R5, #0
270ED4:  BEQ             loc_270EF0
270ED6:  MOV.W           R2, R10,LSL#2; size_t
270EDA:  MOV             R0, R6; void *
270EDC:  MOV             R1, R5; void *
270EDE:  BLX             memcpy_0
270EE2:  MOV             R0, R5; p
270EE4:  BLX             free
270EE8:  LDR             R0, =(dword_6D81C4 - 0x270EEE)
270EEA:  ADD             R0, PC; dword_6D81C4
270EEC:  LDR.W           R10, [R0,#(dword_6D81C8 - 0x6D81C4)]
270EF0:  LDR             R0, =(dword_6D81C4 - 0x270EF6)
270EF2:  ADD             R0, PC; dword_6D81C4
270EF4:  STR             R6, [R0,#(dword_6D81CC - 0x6D81C4)]
270EF6:  STR.W           R8, [R0]
270EFA:  B               loc_270F02
270EFC:  LDR             R0, =(dword_6D81C4 - 0x270F02)
270EFE:  ADD             R0, PC; dword_6D81C4
270F00:  LDR             R6, [R0,#(dword_6D81CC - 0x6D81C4)]
270F02:  LDR             R0, =(dword_6D81C4 - 0x270F0C)
270F04:  STR.W           R4, [R6,R10,LSL#2]
270F08:  ADD             R0, PC; dword_6D81C4
270F0A:  LDR             R1, [R0,#(dword_6D81C8 - 0x6D81C4)]
270F0C:  ADDS            R1, #1
270F0E:  STR             R1, [R0,#(dword_6D81C8 - 0x6D81C4)]
270F10:  ADD             SP, SP, #4
270F12:  POP.W           {R8-R11}
270F16:  POP             {R4-R7,PC}
