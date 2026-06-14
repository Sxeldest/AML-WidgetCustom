; =========================================================
; Game Engine Function: pitch_downsample
; Address            : 0xC1D18 - 0xC2012
; =========================================================

C1D18:  PUSH            {R4-R7,LR}
C1D1A:  ADD             R7, SP, #0xC
C1D1C:  PUSH.W          {R8-R11}
C1D20:  SUB             SP, SP, #0x34; int
C1D22:  MOV             R10, R1
C1D24:  LDR             R1, =(__stack_chk_guard_ptr - 0xC1D2C)
C1D26:  CMP             R2, #1
C1D28:  ADD             R1, PC; __stack_chk_guard_ptr
C1D2A:  LDR             R1, [R1]; __stack_chk_guard
C1D2C:  LDR             R1, [R1]
C1D2E:  STR             R1, [SP,#0x50+var_20]
C1D30:  LDR.W           R12, [R0]
C1D34:  BLT             loc_C1D54
C1D36:  MOVS            R6, #0
C1D38:  MOV             LR, R12
C1D3A:  MOV             R4, R2
C1D3C:  MOVS            R1, #0
C1D3E:  LDR.W           R5, [LR],#4
C1D42:  CMP             R6, R5
C1D44:  IT GE
C1D46:  MOVGE           R6, R5
C1D48:  CMP             R1, R5
C1D4A:  IT LE
C1D4C:  MOVLE           R1, R5
C1D4E:  SUBS            R4, #1
C1D50:  BNE             loc_C1D3E
C1D52:  B               loc_C1D58
C1D54:  MOVS            R1, #0
C1D56:  MOVS            R6, #0
C1D58:  RSB.W           LR, R6, #0
C1D5C:  CMP             R1, LR
C1D5E:  IT GT
C1D60:  MOVGT           LR, R1
C1D62:  CMP             R3, #2
C1D64:  BNE             loc_C1D9C
C1D66:  CMP             R2, #1
C1D68:  BLT             loc_C1D8A
C1D6A:  LDR.W           R8, [R0,#4]
C1D6E:  MOVS            R5, #0
C1D70:  MOV             R4, R2
C1D72:  MOVS            R1, #0
C1D74:  LDR.W           R6, [R8],#4
C1D78:  CMP             R5, R6
C1D7A:  IT GE
C1D7C:  MOVGE           R5, R6
C1D7E:  CMP             R1, R6
C1D80:  IT LE
C1D82:  MOVLE           R1, R6
C1D84:  SUBS            R4, #1
C1D86:  BNE             loc_C1D74
C1D88:  B               loc_C1D8E
C1D8A:  MOVS            R1, #0
C1D8C:  MOVS            R5, #0
C1D8E:  NEGS            R4, R5
C1D90:  CMP             R1, R4
C1D92:  IT GT
C1D94:  MOVGT           R4, R1
C1D96:  CMP             LR, R4
C1D98:  IT LE
C1D9A:  MOVLE           LR, R4
C1D9C:  MOV.W           R9, #0
C1DA0:  CMP             R3, #2
C1DA2:  IT EQ
C1DA4:  MOVEQ.W         R9, #1
C1DA8:  CMP.W           LR, #1
C1DAC:  IT LE
C1DAE:  MOVLE.W         LR, #1
C1DB2:  LDR.W           R8, [R12,#4]
C1DB6:  CLZ.W           R1, LR
C1DBA:  MOV.W           R11, R2,ASR#1
C1DBE:  RSB.W           R1, R1, #0x15
C1DC2:  CMP             R1, #0
C1DC4:  IT GT
C1DC6:  ADDGT           R9, R1
C1DC8:  CMP.W           R11, #2
C1DCC:  BLT             loc_C1E14
C1DCE:  LDRD.W          R1, R2, [R12,#8]
C1DD2:  CMP.W           R11, #2
C1DD6:  ADD             R2, R8
C1DD8:  ADD.W           R1, R1, R2,ASR#1
C1DDC:  MOV.W           R1, R1,ASR#1
C1DE0:  ASR.W           R1, R1, R9
C1DE4:  STRH.W          R1, [R10,#2]
C1DE8:  BEQ             loc_C1E14
C1DEA:  ADD.W           R2, R12, #0xC
C1DEE:  SUB.W           R1, R11, #2
C1DF2:  ADD.W           R5, R10, #4
C1DF6:  LDRD.W          LR, R6, [R2]
C1DFA:  SUBS            R1, #1
C1DFC:  LDR.W           R4, [R2,#8]!
C1E00:  ADD             R4, LR
C1E02:  ADD.W           R6, R6, R4,ASR#1
C1E06:  MOV.W           R6, R6,ASR#1
C1E0A:  ASR.W           R6, R6, R9
C1E0E:  STRH.W          R6, [R5],#2
C1E12:  BNE             loc_C1DF6
C1E14:  LDR.W           R1, [R12]
C1E18:  CMP             R3, #2
C1E1A:  LDR.W           LR, [R7,#arg_0]
C1E1E:  ADD.W           R1, R1, R8,ASR#1
C1E22:  MOV.W           R1, R1,ASR#1
C1E26:  ASR.W           R2, R1, R9
C1E2A:  STRH.W          R2, [R10]
C1E2E:  BNE             loc_C1EA6
C1E30:  LDR.W           R8, [R0,#4]
C1E34:  CMP.W           R11, #2
C1E38:  LDR.W           R12, [R8,#4]
C1E3C:  BLT             loc_C1E92
C1E3E:  LDRD.W          R3, R6, [R8,#8]
C1E42:  CMP.W           R11, #2
C1E46:  ADD             R6, R12
C1E48:  LDRH.W          R5, [R10,#2]
C1E4C:  ADD.W           R3, R3, R6,ASR#1
C1E50:  MOV.W           R3, R3,ASR#1
C1E54:  ASR.W           R3, R3, R9
C1E58:  ADD             R3, R5
C1E5A:  STRH.W          R3, [R10,#2]
C1E5E:  BEQ             loc_C1E92
C1E60:  SUB.W           R2, R11, #2
C1E64:  MOVS            R3, #0
C1E66:  ADD.W           R6, R8, R3,LSL#3
C1E6A:  ADD.W           R1, R10, R3,LSL#1
C1E6E:  LDRD.W          R5, R4, [R6,#0xC]
C1E72:  ADDS            R3, #1
C1E74:  LDR             R6, [R6,#0x14]
C1E76:  CMP             R2, R3
C1E78:  LDRH            R0, [R1,#4]
C1E7A:  ADD             R5, R6
C1E7C:  ADD.W           R4, R4, R5,ASR#1
C1E80:  MOV.W           R4, R4,ASR#1
C1E84:  ASR.W           R4, R4, R9
C1E88:  ADD             R0, R4
C1E8A:  STRH            R0, [R1,#4]
C1E8C:  BNE             loc_C1E66
C1E8E:  LDRH.W          R2, [R10]
C1E92:  LDR.W           R0, [R8]
C1E96:  ADD.W           R0, R0, R12,ASR#1
C1E9A:  ASRS            R0, R0, #1
C1E9C:  ASR.W           R0, R0, R9
C1EA0:  ADD             R0, R2
C1EA2:  STRH.W          R0, [R10]
C1EA6:  ADD             R5, SP, #0x50+var_34
C1EA8:  MOVS            R0, #4
C1EAA:  STMEA.W         SP, {R0,R11,LR}
C1EAE:  MOV             R0, R10; src
C1EB0:  MOV             R1, R5; int
C1EB2:  MOVS            R2, #0; int
C1EB4:  MOVS            R3, #0; int
C1EB6:  BLX             j__celt_autocorr
C1EBA:  ADD             R3, SP, #0x50+var_34
C1EBC:  LDM             R3, {R0-R3}
C1EBE:  ADD.W           R0, R0, R0,ASR#13
C1EC2:  STR             R0, [SP,#0x50+var_34]
C1EC4:  UBFX.W          R0, R1, #0xE, #2
C1EC8:  SUBS            R0, R1, R0
C1ECA:  ASRS            R1, R1, #0x10
C1ECC:  SUB.W           R0, R0, R1,LSL#2
C1ED0:  STR             R0, [SP,#0x50+var_30]
C1ED2:  UBFX.W          R0, R2, #0xC, #4
C1ED6:  ASRS            R1, R2, #0x10
C1ED8:  SUBS            R0, R2, R0
C1EDA:  MOVS            R2, #4
C1EDC:  SUB.W           R0, R0, R1,LSL#4
C1EE0:  LDR             R1, [SP,#0x50+var_24]
C1EE2:  STR             R0, [SP,#0x50+var_2C]
C1EE4:  UBFX.W          R0, R1, #0xA, #6
C1EE8:  SUBS            R0, R1, R0
C1EEA:  ASRS            R1, R1, #0x10
C1EEC:  SUB.W           R0, R0, R1,LSL#6
C1EF0:  STR             R0, [SP,#0x50+var_24]
C1EF2:  UXTH            R0, R3
C1EF4:  ASRS            R1, R3, #0x10
C1EF6:  LSLS            R0, R0, #3
C1EF8:  ADD.W           R1, R1, R1,LSL#3
C1EFC:  UXTAH.W         R0, R0, R3
C1F00:  NEGS            R1, R1
C1F02:  LSLS            R0, R0, #1
C1F04:  SUB.W           R0, R3, R0,LSR#15
C1F08:  ADD.W           R0, R0, R1,LSL#2
C1F0C:  STR             R0, [SP,#0x50+var_28]
C1F0E:  ADD             R0, SP, #0x50+var_3C
C1F10:  MOV             R1, R5
C1F12:  BLX             j__celt_lpc
C1F16:  LDRSH.W         R0, [SP,#0x50+var_3C]
C1F1A:  MOVW            R5, #0x7332
C1F1E:  LDRSH.W         R2, [SP,#0x50+var_38]
C1F22:  MOVW            R6, #0x5D4D
C1F26:  LDRSH.W         R1, [SP,#0x50+var_3A]
C1F2A:  CMP.W           R11, #1
C1F2E:  LDRSH.W         R3, [SP,#0x50+var_36]
C1F32:  SMULBB.W        R0, R0, R5
C1F36:  MOVW            R5, #0x67AC
C1F3A:  SMULBB.W        R2, R2, R6
C1F3E:  MOVW            R6, #0x53F8
C1F42:  SMULBB.W        R1, R1, R5
C1F46:  SMULBB.W        R6, R3, R6
C1F4A:  MOV.W           R3, R0,LSR#15
C1F4E:  STRH.W          R3, [SP,#0x50+var_3C]
C1F52:  MOV.W           R0, R1,LSR#15
C1F56:  MOV.W           R1, R2,LSR#15
C1F5A:  MOV.W           R2, R6,LSR#15
C1F5E:  STRH.W          R0, [SP,#0x50+var_3A]
C1F62:  STRH.W          R1, [SP,#0x50+var_38]
C1F66:  STRH.W          R2, [SP,#0x50+var_36]
C1F6A:  BLT             loc_C1FF8
C1F6C:  SXTH            R6, R2
C1F6E:  MOVW            R5, #0xCCCC
C1F72:  MULS            R6, R5
C1F74:  MOVS            R5, #0xCCD0000
C1F7A:  ADD.W           R5, R5, R3,LSL#16
C1F7E:  SXTH            R3, R3
C1F80:  MOVW            R4, #0x6666
C1F84:  SMULBB.W        R3, R3, R4
C1F88:  MOV.W           R12, R5,ASR#16
C1F8C:  SXTH            R5, R1
C1F8E:  MOV.W           LR, R6,ASR#16
C1F92:  STR             R3, [SP,#0x50+var_40]
C1F94:  SXTH            R3, R0
C1F96:  SMULBB.W        R3, R3, R4
C1F9A:  SMULBB.W        R4, R5, R4
C1F9E:  ADD.W           R1, R1, R3,LSR#15
C1FA2:  MOVS            R3, #0
C1FA4:  ADD.W           R2, R2, R4,LSR#15
C1FA8:  MOVS            R4, #0
C1FAA:  SXTH.W          R9, R1
C1FAE:  LDR             R1, [SP,#0x50+var_40]
C1FB0:  SXTH.W          R8, R2
C1FB4:  MOVS            R2, #0
C1FB6:  ADD.W           R0, R0, R1,LSR#15
C1FBA:  MOVS            R1, #0
C1FBC:  SXTH            R5, R0
C1FBE:  MOVS            R0, #0
C1FC0:  MUL.W           R6, R0, R8
C1FC4:  SUBS.W          R11, R11, #1
C1FC8:  MLA.W           R4, R4, LR, R6
C1FCC:  LDRSH.W         R6, [R10]
C1FD0:  MLA.W           R4, R1, R9, R4
C1FD4:  MLA.W           R4, R2, R5, R4
C1FD8:  MLA.W           R4, R3, R12, R4
C1FDC:  ADD.W           R4, R4, R6,LSL#12
C1FE0:  ADD.W           R4, R4, #0x800
C1FE4:  MOV.W           R4, R4,LSR#12
C1FE8:  STRH.W          R4, [R10],#2
C1FEC:  MOV             R4, R0
C1FEE:  MOV             R0, R1
C1FF0:  MOV             R1, R2
C1FF2:  MOV             R2, R3
C1FF4:  MOV             R3, R6
C1FF6:  BNE             loc_C1FC0
C1FF8:  LDR             R0, =(__stack_chk_guard_ptr - 0xC2000)
C1FFA:  LDR             R1, [SP,#0x50+var_20]
C1FFC:  ADD             R0, PC; __stack_chk_guard_ptr
C1FFE:  LDR             R0, [R0]; __stack_chk_guard
C2000:  LDR             R0, [R0]
C2002:  SUBS            R0, R0, R1
C2004:  ITTT EQ
C2006:  ADDEQ           SP, SP, #0x34 ; '4'
C2008:  POPEQ.W         {R8-R11}
C200C:  POPEQ           {R4-R7,PC}
C200E:  BLX             __stack_chk_fail
