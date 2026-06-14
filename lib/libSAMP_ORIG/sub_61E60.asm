; =========================================================
; Game Engine Function: sub_61E60
; Address            : 0x61E60 - 0x62022
; =========================================================

61E60:  PUSH            {R4-R7,LR}
61E62:  ADD             R7, SP, #0xC
61E64:  PUSH.W          {R11}
61E68:  LDR             R0, =(byte_1A3AC8 - 0x61E6E)
61E6A:  ADD             R0, PC; byte_1A3AC8
61E6C:  LDRB            R0, [R0]
61E6E:  DMB.W           ISH
61E72:  LSLS            R0, R0, #0x1F
61E74:  BEQ.W           loc_61FDA
61E78:  LDR             R4, =(unk_1A3AB0 - 0x61E7E)
61E7A:  ADD             R4, PC; unk_1A3AB0
61E7C:  MOV             R0, R4
61E7E:  BL              sub_677BC
61E82:  LDR             R1, =(aSampOrig - 0x61E8C); "SAMP_ORIG" ...
61E84:  MOVS            R0, #4; prio
61E86:  MOV             R2, R4; fmt
61E88:  ADD             R1, PC; "SAMP_ORIG"
61E8A:  BLX             __android_log_print
61E8E:  LDR             R0, =(off_1A39F0 - 0x61E94)
61E90:  ADD             R0, PC; off_1A39F0
61E92:  LDR             R0, [R0]
61E94:  BLX             R0
61E96:  BL              sub_6CA28
61E9A:  LDR             R0, =(off_114B1C - 0x61EA0)
61E9C:  ADD             R0, PC; off_114B1C
61E9E:  LDR             R0, [R0]; byte_1A4484
61EA0:  LDRB            R0, [R0]
61EA2:  CBZ             R0, loc_61EAC
61EA4:  BL              sub_80788
61EA8:  BL              sub_808AC
61EAC:  LDR             R0, =(off_114AB0 - 0x61EBE)
61EAE:  MOV             R6, #0x23DC44
61EB6:  MOV.W           R1, #0x1000
61EBA:  ADD             R0, PC; off_114AB0
61EBC:  MOVS            R2, #7
61EBE:  LDR             R5, [R0]; dword_1A4408
61EC0:  LDR             R0, [R5]
61EC2:  ADDS            R4, R0, R6
61EC4:  MOV             R0, R4
61EC6:  BL              sub_AF9C0
61ECA:  CBZ             R0, loc_61EDA
61ECC:  MOV             R0, R4
61ECE:  MOV.W           R1, #0x1000
61ED2:  MOVS            R2, #3
61ED4:  BL              sub_AF9C0
61ED8:  B               loc_61EEA
61EDA:  LDR             R1, =(aMemory - 0x61EE6); "Memory" ...
61EDC:  MOVS            R0, #4; prio
61EDE:  LDR             R2, =(aProtectaddrPro - 0x61EE8); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
61EE0:  MOV             R3, R4
61EE2:  ADD             R1, PC; "Memory"
61EE4:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
61EE6:  BLX             __android_log_print
61EEA:  LDR             R0, =(off_114B20 - 0x61EF4)
61EEC:  MOVS            R2, #7
61EEE:  LDR             R1, [R5]
61EF0:  ADD             R0, PC; off_114B20
61EF2:  LDR             R0, [R0]; byte_1A4482
61EF4:  LDRB            R0, [R0]
61EF6:  STRB            R0, [R1,R6]
61EF8:  MOV             R6, #0x237518
61F00:  ADDS            R4, R1, R6
61F02:  MOV.W           R1, #0x1000
61F06:  MOV             R0, R4
61F08:  BL              sub_AF9C0
61F0C:  CBZ             R0, loc_61F1C
61F0E:  MOV             R0, R4
61F10:  MOV.W           R1, #0x1000
61F14:  MOVS            R2, #3
61F16:  BL              sub_AF9C0
61F1A:  B               loc_61F2C
61F1C:  LDR             R1, =(aMemory - 0x61F28); "Memory" ...
61F1E:  MOVS            R0, #4; prio
61F20:  LDR             R2, =(aProtectaddrPro - 0x61F2A); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
61F22:  MOV             R3, R4
61F24:  ADD             R1, PC; "Memory"
61F26:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
61F28:  BLX             __android_log_print
61F2C:  LDR             R0, =(off_114B24 - 0x61F36)
61F2E:  MOVS            R2, #7
61F30:  LDR             R1, [R5]
61F32:  ADD             R0, PC; off_114B24
61F34:  LDR             R0, [R0]; dword_116D08
61F36:  LDR             R0, [R0]
61F38:  STR             R0, [R1,R6]
61F3A:  MOV             R6, #0x238F08
61F42:  LDR             R0, [R5]
61F44:  MOV.W           R1, #0x1000
61F48:  ADDS            R4, R0, R6
61F4A:  MOV             R0, R4
61F4C:  BL              sub_AF9C0
61F50:  CBZ             R0, loc_61F60
61F52:  MOV             R0, R4
61F54:  MOV.W           R1, #0x1000
61F58:  MOVS            R2, #3
61F5A:  BL              sub_AF9C0
61F5E:  B               loc_61F70
61F60:  LDR             R1, =(aMemory - 0x61F6C); "Memory" ...
61F62:  MOVS            R0, #4; prio
61F64:  LDR             R2, =(aProtectaddrPro - 0x61F6E); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
61F66:  MOV             R3, R4
61F68:  ADD             R1, PC; "Memory"
61F6A:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
61F6C:  BLX             __android_log_print
61F70:  LDR             R0, =(off_114B28 - 0x61F78)
61F72:  LDR             R1, [R5]
61F74:  ADD             R0, PC; off_114B28
61F76:  LDR             R0, [R0]; dword_116D10
61F78:  LDRD.W          R2, R0, [R0]
61F7C:  STR             R2, [R1,R6]
61F7E:  ADD             R1, R6
61F80:  MOVS            R2, #7
61F82:  STR             R0, [R1,#4]
61F84:  MOV.W           R1, #0x1000
61F88:  LDR             R0, [R5]
61F8A:  ADD             R0, R6
61F8C:  ADD.W           R4, R0, #0x10
61F90:  MOV             R0, R4
61F92:  BL              sub_AF9C0
61F96:  CBZ             R0, loc_61FA6
61F98:  MOV             R0, R4
61F9A:  MOV.W           R1, #0x1000
61F9E:  MOVS            R2, #3
61FA0:  BL              sub_AF9C0
61FA4:  B               loc_61FB6
61FA6:  LDR             R1, =(aMemory - 0x61FB2); "Memory" ...
61FA8:  MOVS            R0, #4; prio
61FAA:  LDR             R2, =(aProtectaddrPro - 0x61FB4); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
61FAC:  MOV             R3, R4
61FAE:  ADD             R1, PC; "Memory"
61FB0:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
61FB2:  BLX             __android_log_print
61FB6:  LDR             R0, =(off_114B2C - 0x61FC2)
61FB8:  VMOV.F32        S0, #13.0
61FBC:  LDR             R1, [R5]
61FBE:  ADD             R0, PC; off_114B2C
61FC0:  ADD             R1, R6
61FC2:  LDR             R0, [R0]; dword_116D18
61FC4:  VLDR            S2, [R0,#4]
61FC8:  LDR             R0, [R0]
61FCA:  VDIV.F32        S0, S2, S0
61FCE:  STR             R0, [R1,#0x10]
61FD0:  VSTR            S0, [R1,#0x14]
61FD4:  POP.W           {R11}
61FD8:  POP             {R4-R7,PC}
61FDA:  LDR             R0, =(byte_1A3AC8 - 0x61FE0)
61FDC:  ADD             R0, PC; byte_1A3AC8 ; __guard *
61FDE:  BLX             j___cxa_guard_acquire
61FE2:  CMP             R0, #0
61FE4:  BEQ.W           loc_61E78
61FE8:  LDR             R1, =(unk_1A3AB0 - 0x61FF6)
61FEA:  ADR             R0, dword_62030
61FEC:  MOVS            R3, #0x5A ; 'Z'
61FEE:  VLD1.64         {D16-D17}, [R0@128]
61FF2:  ADD             R1, PC; unk_1A3AB0 ; obj
61FF4:  MOVW            R6, #0x3532
61FF8:  LDR             R0, =(loc_66C4C+1 - 0x62012)
61FFA:  MOVT            R6, #0x3135
61FFE:  LDR             R2, =(off_110560 - 0x62014)
62000:  STRB            R3, [R1,#(byte_1A3AC6 - 0x1A3AB0)]
62002:  MOVW            R3, #0x7372
62006:  STRH            R3, [R1,#(word_1A3AC4 - 0x1A3AB0)]
62008:  MOV             R3, R1
6200A:  VST1.8          {D16-D17}, [R3@128]!
6200E:  ADD             R0, PC; loc_66C4C ; lpfunc
62010:  ADD             R2, PC; off_110560 ; lpdso_handle
62012:  STR             R6, [R3]
62014:  BLX             __cxa_atexit
62018:  LDR             R0, =(byte_1A3AC8 - 0x6201E)
6201A:  ADD             R0, PC; byte_1A3AC8 ; __guard *
6201C:  BLX             j___cxa_guard_release
62020:  B               loc_61E78
