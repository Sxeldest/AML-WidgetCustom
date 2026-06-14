; =========================================================
; Game Engine Function: sub_141948
; Address            : 0x141948 - 0x141B98
; =========================================================

141948:  PUSH            {R4-R7,LR}
14194A:  ADD             R7, SP, #0xC
14194C:  PUSH.W          {R8-R10}
141950:  SUB             SP, SP, #0x18
141952:  MOV             R5, R1
141954:  LDR             R1, =(aAxl - 0x141962); "AXL" ...
141956:  MOV             R9, R2
141958:  LDR             R2, =(aCnetgameInitia - 0x141964); "CNetGame initializing.." ...
14195A:  MOV             R4, R0
14195C:  MOVS            R0, #0
14195E:  ADD             R1, PC; "AXL"
141960:  ADD             R2, PC; "CNetGame initializing.."
141962:  STR.W           R0, [R4,#0x3B4]
141966:  MOVS            R0, #4; prio
141968:  MOV             R8, R3
14196A:  BLX             __android_log_print
14196E:  MOVS            R0, #0x4C ; 'L'; unsigned int
141970:  BLX             j__Znwj; operator new(uint)
141974:  STR.W           R0, [R4,#0x20C]
141978:  MOV             R0, R4; int
14197A:  MOV.W           R1, #0x100; n
14197E:  BLX             sub_22178C
141982:  ADDW            R6, R4, #0x101
141986:  MOV.W           R1, #0x100; n
14198A:  MOV             R0, R6; int
14198C:  BLX             sub_22178C
141990:  MOVS            R0, #0x50 ; 'P'
141992:  MOV             R1, R5; src
141994:  STRH            R0, [R4,#4]
141996:  MOV             R0, #0x4D2D4153
14199E:  MOVW            R2, #0x101; n
1419A2:  STR             R0, [R4]
1419A4:  MOV             R0, R6; dest
1419A6:  BLX             strncpy
1419AA:  STR.W           R9, [R4,#0x204]
1419AE:  BL              sub_17F672
1419B2:  STR.W           R0, [R4,#0x210]
1419B6:  MOV             R0, R4
1419B8:  BL              sub_141C0C
1419BC:  LDR.W           R0, [R4,#0x3B0]
1419C0:  MOVW            R1, #0x13A2
1419C4:  MOVS            R2, #0x19
1419C6:  LDR             R0, [R0]
1419C8:  ADD             R0, R1
1419CA:  MOV             R1, R8
1419CC:  BLX             __strcpy_chk
1419D0:  LDR.W           R0, [R4,#0x210]
1419D4:  BL              sub_14780C
1419D8:  LDR.W           R0, [R4,#0x210]
1419DC:  BL              sub_14E90C
1419E0:  LDR.W           R0, [R4,#0x210]
1419E4:  LDR             R1, [R0]
1419E6:  LDR             R2, [R1,#0x14]
1419E8:  LDR             R1, [R7,#arg_0]
1419EA:  BLX             R2
1419EC:  LDR             R0, =(off_234A54 - 0x1419F2)
1419EE:  ADD             R0, PC; off_234A54
1419F0:  LDR.W           R9, [R0]; dword_381A0C
1419F4:  LDR.W           R5, [R9]
1419F8:  CBNZ            R5, loc_141A02
1419FA:  BL              sub_F0FA0
1419FE:  LDR.W           R5, [R9]
141A02:  LDR.W           R6, [R4,#0x210]
141A06:  BL              sub_F97EC
141A0A:  MOV             R2, R0; s
141A0C:  MOV             R0, R5; int
141A0E:  MOV             R1, R6; int
141A10:  BL              sub_1548E4
141A14:  LDR             R0, =(off_2349A8 - 0x141A1A)
141A16:  ADD             R0, PC; off_2349A8
141A18:  LDR.W           R10, [R0]; dword_381BF4
141A1C:  LDR.W           R0, [R9]
141A20:  LDR.W           R6, [R10]
141A24:  BL              sub_155C90
141A28:  LDR             R1, =(unk_898D8 - 0x141A34)
141A2A:  MOV             R5, R0
141A2C:  ADD             R0, SP, #0x30+s
141A2E:  MOVS            R2, #0x1D
141A30:  ADD             R1, PC; unk_898D8
141A32:  BL              sub_F1E60
141A36:  ADD.W           R8, SP, #0x30+var_24
141A3A:  LDR             R1, [SP,#0x30+s]; s
141A3C:  MOV             R0, R8; int
141A3E:  BL              sub_DC6DC
141A42:  MOV             R0, R6
141A44:  MOVS            R1, #0
141A46:  MOVS            R2, #0x64 ; 'd'
141A48:  MOV             R3, R5
141A4A:  STR.W           R8, [SP,#0x30+var_30]
141A4E:  BL              sub_17C76C
141A52:  LDRB.W          R0, [SP,#0x30+var_24]
141A56:  LSLS            R0, R0, #0x1F
141A58:  ITT NE
141A5A:  LDRNE           R0, [SP,#0x30+var_1C]; void *
141A5C:  BLXNE           j__ZdlPv; operator delete(void *)
141A60:  LDR.W           R0, [R9]
141A64:  LDR.W           R6, [R10]
141A68:  BL              sub_155D34
141A6C:  LDR             R1, =(unk_8ACED - 0x141A78)
141A6E:  MOV             R5, R0
141A70:  ADD             R0, SP, #0x30+s
141A72:  MOVS            R2, #0x25 ; '%'
141A74:  ADD             R1, PC; unk_8ACED
141A76:  BL              sub_F1E60
141A7A:  LDR             R1, [SP,#0x30+s]; s
141A7C:  MOV             R0, R8; int
141A7E:  BL              sub_DC6DC
141A82:  MOV             R0, R6
141A84:  MOVS            R1, #0
141A86:  MOVS            R2, #0x64 ; 'd'
141A88:  MOV             R3, R5
141A8A:  STR.W           R8, [SP,#0x30+var_30]
141A8E:  BL              sub_17C76C
141A92:  LDRB.W          R0, [SP,#0x30+var_24]
141A96:  LSLS            R0, R0, #0x1F
141A98:  ITT NE
141A9A:  LDRNE           R0, [SP,#0x30+var_1C]; void *
141A9C:  BLXNE           j__ZdlPv; operator delete(void *)
141AA0:  LDR.W           R0, [R9]
141AA4:  LDR.W           R6, [R10]
141AA8:  BL              sub_155DD0
141AAC:  LDR             R1, =(unk_898F6 - 0x141AB8)
141AAE:  MOV             R5, R0
141AB0:  ADD             R0, SP, #0x30+s
141AB2:  MOVS            R2, #0x1D
141AB4:  ADD             R1, PC; unk_898F6
141AB6:  BL              sub_F1E60
141ABA:  LDR             R1, [SP,#0x30+s]; s
141ABC:  MOV             R0, R8; int
141ABE:  BL              sub_DC6DC
141AC2:  MOV             R0, R6
141AC4:  MOVS            R1, #0
141AC6:  MOVS            R2, #0x64 ; 'd'
141AC8:  MOV             R3, R5
141ACA:  STR.W           R8, [SP,#0x30+var_30]
141ACE:  BL              sub_17C76C
141AD2:  LDRB.W          R0, [SP,#0x30+var_24]
141AD6:  LSLS            R0, R0, #0x1F
141AD8:  ITT NE
141ADA:  LDRNE           R0, [SP,#0x30+var_1C]; void *
141ADC:  BLXNE           j__ZdlPv; operator delete(void *)
141AE0:  LDR.W           R0, [R9]
141AE4:  LDR.W           R6, [R10]
141AE8:  BL              sub_155E64
141AEC:  LDR             R1, =(unk_883C2 - 0x141AF8)
141AEE:  MOV             R5, R0
141AF0:  ADD             R0, SP, #0x30+s
141AF2:  MOVS            R2, #0x25 ; '%'
141AF4:  ADD             R1, PC; unk_883C2
141AF6:  BL              sub_F1E60
141AFA:  LDR             R1, [SP,#0x30+s]; s
141AFC:  MOV             R0, R8; int
141AFE:  BL              sub_DC6DC
141B02:  MOV             R0, R6
141B04:  MOVS            R1, #0
141B06:  MOVS            R2, #0x64 ; 'd'
141B08:  MOV             R3, R5
141B0A:  STR.W           R8, [SP,#0x30+var_30]
141B0E:  BL              sub_17C76C
141B12:  LDRB.W          R0, [SP,#0x30+var_24]
141B16:  LSLS            R0, R0, #0x1F
141B18:  ITT NE
141B1A:  LDRNE           R0, [SP,#0x30+var_1C]; void *
141B1C:  BLXNE           j__ZdlPv; operator delete(void *)
141B20:  ADD.W           R0, R4, #0x220; int
141B24:  MOV.W           R1, #0x190; n
141B28:  BLX             sub_22178C
141B2C:  LDR             R0, =(off_234970 - 0x141B36)
141B2E:  MOVS            R1, #0
141B30:  MOVS            R5, #0
141B32:  ADD             R0, PC; off_234970
141B34:  LDR             R6, [R0]; dword_23DEF0
141B36:  LDR             R0, [R6]
141B38:  BL              sub_F9478
141B3C:  LDR             R0, [R6]
141B3E:  MOVS            R1, #0
141B40:  BL              sub_F9480
141B44:  LDR.W           R0, [R4,#0x20C]
141B48:  MOVS            R1, #:lower16:(elf_gnu_hash_indexes+0x1950)
141B4A:  MOVS            R2, #0
141B4C:  MOVT            R1, #:upper16:(elf_gnu_hash_indexes+0x1950)
141B50:  MOVT            R2, #0x4270
141B54:  STR.W           R1, [R0,#0x25]
141B58:  MOVS            R1, #1
141B5A:  STRH.W          R5, [R0,#0x48]
141B5E:  STRB.W          R1, [R4,#0x214]
141B62:  STR.W           R5, [R4,#0x21C]
141B66:  STRB.W          R5, [R4,#0x209]
141B6A:  STRD.W          R5, R2, [R0,#0x1C]
141B6E:  MOV             R2, #0x3C03126F
141B76:  STR             R5, [R0,#4]
141B78:  STRB            R1, [R0,#0x18]
141B7A:  STRB            R5, [R0,#0x10]
141B7C:  STRB            R5, [R0]
141B7E:  STRH.W          R5, [R0,#0x19]
141B82:  STRB            R1, [R0,#0x1B]
141B84:  STR             R2, [R0,#0xC]
141B86:  MOV             R0, R4
141B88:  STR.W           R1, [R4,#0x218]
141B8C:  STRB.W          R5, [R4,#0x208]
141B90:  ADD             SP, SP, #0x18
141B92:  POP.W           {R8-R10}
141B96:  POP             {R4-R7,PC}
