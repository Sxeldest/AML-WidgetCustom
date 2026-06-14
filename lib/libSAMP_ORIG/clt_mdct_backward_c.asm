; =========================================================
; Game Engine Function: clt_mdct_backward_c
; Address            : 0xC3C8C - 0xC3F26
; =========================================================

C3C8C:  PUSH            {R4-R7,LR}
C3C8E:  ADD             R7, SP, #0xC
C3C90:  PUSH.W          {R8-R11}
C3C94:  SUB             SP, SP, #0x2C
C3C96:  MOV             R9, R1
C3C98:  LDR             R1, [R0]
C3C9A:  LDR             R5, [R0,#0x18]
C3C9C:  LDRD.W          R12, R4, [R7,#arg_0]
C3CA0:  CMP             R4, #1
C3CA2:  MOV.W           R6, R1,ASR#1
C3CA6:  STR             R3, [SP,#0x48+var_44]
C3CA8:  BLT             loc_C3CBA
C3CAA:  MOV             R3, R4
C3CAC:  MOV             R1, R6
C3CAE:  SUBS            R3, #1
C3CB0:  ADD.W           R5, R5, R1,LSL#1
C3CB4:  MOV.W           R6, R1,ASR#1
C3CB8:  BNE             loc_C3CAC
C3CBA:  MOV.W           R3, R12,ASR#1
C3CBE:  ADD.W           R0, R0, R4,LSL#2
C3CC2:  STR             R6, [SP,#0x48+var_40]
C3CC4:  ADD.W           R11, R2, R3,LSL#2
C3CC8:  STR             R5, [SP,#0x48+var_2C]
C3CCA:  STR             R2, [SP,#0x48+var_3C]
C3CCC:  STR             R3, [SP,#0x48+var_48]
C3CCE:  LDR             R0, [R0,#8]
C3CD0:  STR             R0, [SP,#0x48+var_38]
C3CD2:  ASRS            R0, R1, #2
C3CD4:  CMP             R0, #1
C3CD6:  STR             R0, [SP,#0x48+var_28]
C3CD8:  BLT             loc_C3D86
C3CDA:  LDR             R1, [SP,#0x48+var_40]
C3CDC:  MOVS            R3, #0
C3CDE:  LDR             R0, [R7,#arg_8]
C3CE0:  SUBS            R2, R1, #1
C3CE2:  MULS            R2, R0
C3CE4:  SUB.W           R1, R3, R0,LSL#3
C3CE8:  STR             R1, [SP,#0x48+var_30]
C3CEA:  LDR             R1, [SP,#0x48+var_38]
C3CEC:  LSLS            R0, R0, #3
C3CEE:  LDR.W           LR, [R1,#0x30]
C3CF2:  STR             R0, [SP,#0x48+var_34]
C3CF4:  ADD.W           R2, R9, R2,LSL#2
C3CF8:  LDRD.W          R4, R8, [SP,#0x48+var_2C]
C3CFC:  STR.W           R9, [SP,#0x48+var_20]
C3D00:  SUBS.W          R8, R8, #1
C3D04:  LDR.W           R12, [R9]
C3D08:  LDR             R0, [SP,#0x48+var_28]
C3D0A:  UXTH.W          R1, R12
C3D0E:  LDRSH.W         R0, [R4,R0,LSL#1]
C3D12:  STR             R1, [SP,#0x48+var_24]
C3D14:  LDR             R6, [R2]
C3D16:  LDRSH.W         R5, [R4]
C3D1A:  ADD.W           R4, R4, #2
C3D1E:  MUL.W           R9, R1, R0
C3D22:  MOV             R1, R11
C3D24:  UXTH.W          R10, R6
C3D28:  MUL.W           R11, R10, R5
C3D2C:  SMULTB.W        R3, R12, R0
C3D30:  SMLATB.W        R3, R6, R5, R3
C3D34:  MOV.W           R6, R6,ASR#16
C3D38:  MOV.W           R9, R9,ASR#15
C3D3C:  ADD.W           R9, R9, R11,ASR#15
C3D40:  MOV             R11, R1
C3D42:  MOV.W           R1, #4
C3D46:  ADD.W           R9, R9, R3,LSL#1
C3D4A:  LDRSH.W         R3, [LR],#2
C3D4E:  ORR.W           R1, R1, R3,LSL#3
C3D52:  STR.W           R9, [R11,R1]
C3D56:  SMULTB.W        R1, R12, R5
C3D5A:  MLS.W           R1, R6, R0, R1
C3D5E:  LDR             R6, [SP,#0x48+var_24]
C3D60:  LDR.W           R9, [SP,#0x48+var_20]
C3D64:  MUL.W           R0, R10, R0
C3D68:  MUL.W           R6, R5, R6
C3D6C:  MOV.W           R6, R6,ASR#15
C3D70:  SUB.W           R0, R6, R0,ASR#15
C3D74:  ADD.W           R0, R0, R1,LSL#1
C3D78:  STR.W           R0, [R11,R3,LSL#3]
C3D7C:  LDR             R0, [SP,#0x48+var_30]
C3D7E:  ADD             R2, R0
C3D80:  LDR             R0, [SP,#0x48+var_34]
C3D82:  ADD             R9, R0
C3D84:  BNE             loc_C3CFC
C3D86:  LDR             R0, [SP,#0x48+var_38]
C3D88:  MOV             R1, R11
C3D8A:  BLX             j_opus_fft_impl
C3D8E:  LDR             R0, [SP,#0x48+var_28]
C3D90:  LDR.W           LR, [SP,#0x48+var_2C]
C3D94:  ADDS            R0, #1
C3D96:  ASRS            R0, R0, #1
C3D98:  CMP             R0, #1
C3D9A:  BLT             loc_C3E9A
C3D9C:  LDR             R1, [SP,#0x48+var_28]
C3D9E:  ADD.W           R11, R11, #4
C3DA2:  LDR             R2, [SP,#0x48+var_40]
C3DA4:  MOV.W           R10, #0
C3DA8:  MOV.W           R12, #0
C3DAC:  NEGS            R0, R0
C3DAE:  ADD.W           R1, LR, R1,LSL#1
C3DB2:  STR             R1, [SP,#0x48+var_28]
C3DB4:  SUBS            R1, #2
C3DB6:  STR             R1, [SP,#0x48+var_30]
C3DB8:  ADD.W           R1, LR, R2,LSL#1
C3DBC:  STR             R0, [SP,#0x48+var_38]
C3DBE:  SUBS            R1, #2
C3DC0:  STR             R1, [SP,#0x48+var_34]
C3DC2:  LDR             R1, [SP,#0x48+var_48]
C3DC4:  ADD             R1, R2
C3DC6:  LDR             R2, [SP,#0x48+var_3C]
C3DC8:  ADD.W           R1, R2, R1,LSL#2
C3DCC:  SUBS            R6, R1, #4
C3DCE:  LDR             R1, [SP,#0x48+var_28]
C3DD0:  LDR.W           R5, [R11,#-4]
C3DD4:  LDRSH.W         R2, [LR,R10]
C3DD8:  LDRSH.W         R4, [R1,R10]
C3DDC:  LDR.W           R1, [R11]
C3DE0:  ADD.W           R10, R10, #2
C3DE4:  SMULTB.W        R3, R5, R4
C3DE8:  SMLATB.W        R0, R1, R2, R3
C3DEC:  UXTH.W          R8, R1
C3DF0:  MUL.W           R9, R8, R2
C3DF4:  STR             R0, [SP,#0x48+var_20]
C3DF6:  UXTH            R0, R5
C3DF8:  MUL.W           LR, R0, R4
C3DFC:  STR             R0, [SP,#0x48+var_24]
C3DFE:  LDR             R0, [SP,#0x48+var_20]
C3E00:  SMULTB.W        R1, R1, R4
C3E04:  ASRS            R5, R5, #0x10
C3E06:  MLS.W           R1, R5, R2, R1
C3E0A:  MOV.W           LR, LR,ASR#15
C3E0E:  ADD.W           R3, LR, R9,ASR#15
C3E12:  ADD.W           LR, R3, R0,LSL#1
C3E16:  LDR.W           R9, [R6,#-4]
C3E1A:  LDR             R3, [R6]
C3E1C:  MUL.W           R5, R8, R4
C3E20:  STR.W           LR, [R11,#-4]
C3E24:  LDR             R0, [SP,#0x48+var_24]
C3E26:  UXTH.W          R8, R9
C3E2A:  MULS            R2, R0
C3E2C:  ASRS            R5, R5, #0xF
C3E2E:  SUB.W           R2, R5, R2,ASR#15
C3E32:  ADD.W           R1, R2, R1,LSL#1
C3E36:  STR             R1, [R6]
C3E38:  LDR             R2, [SP,#0x48+var_34]
C3E3A:  LDR             R1, [SP,#0x48+var_30]
C3E3C:  LDRSH.W         R2, [R2,R12,LSL#1]
C3E40:  LDRSH.W         R1, [R1,R12,LSL#1]
C3E44:  SUB.W           R12, R12, #1
C3E48:  SMULTB.W        R5, R9, R2
C3E4C:  SMLATB.W        R0, R3, R1, R5
C3E50:  MUL.W           R5, R8, R2
C3E54:  MOV.W           LR, R5,ASR#15
C3E58:  UXTH            R5, R3
C3E5A:  MUL.W           R4, R5, R1
C3E5E:  SMULTB.W        R3, R3, R2
C3E62:  MULS            R2, R5
C3E64:  ADD.W           R4, LR, R4,ASR#15
C3E68:  ADD.W           R0, R4, R0,LSL#1
C3E6C:  MOV.W           R4, R9,ASR#16
C3E70:  MLS.W           R3, R4, R1, R3
C3E74:  STR.W           R0, [R6,#-4]
C3E78:  ASRS            R2, R2, #0xF
C3E7A:  MUL.W           R1, R8, R1
C3E7E:  LDR.W           LR, [SP,#0x48+var_2C]
C3E82:  SUBS            R6, #8
C3E84:  SUB.W           R1, R2, R1,ASR#15
C3E88:  ADD.W           R1, R1, R3,LSL#1
C3E8C:  STR.W           R1, [R11]
C3E90:  LDR             R1, [SP,#0x48+var_38]
C3E92:  ADD.W           R11, R11, #8
C3E96:  CMP             R1, R12
C3E98:  BNE             loc_C3DCE
C3E9A:  LDR             R1, [R7,#arg_0]
C3E9C:  LDR.W           R12, [SP,#0x48+var_44]
C3EA0:  LDR.W           LR, [SP,#0x48+var_3C]
C3EA4:  CMP             R1, #2
C3EA6:  BLT             loc_C3F1E
C3EA8:  ADD.W           R0, R1, R1,LSR#31
C3EAC:  SUBS            R1, #1
C3EAE:  MOVS            R3, #0
C3EB0:  ADD.W           R8, LR, R1,LSL#2
C3EB4:  ASRS            R2, R0, #1
C3EB6:  ADD.W           R0, R12, R1,LSL#1
C3EBA:  STR             R0, [SP,#0x48+var_20]
C3EBC:  NEGS            R0, R2
C3EBE:  STR             R0, [SP,#0x48+var_24]
C3EC0:  LDR             R0, [SP,#0x48+var_20]
C3EC2:  LDR.W           R4, [LR]
C3EC6:  LDRSH.W         R5, [R12],#2
C3ECA:  LDRSH.W         R6, [R0,R3,LSL#1]
C3ECE:  LDR.W           R0, [R8,R3,LSL#2]
C3ED2:  UXTH.W          R11, R4
C3ED6:  SMULTB.W        R2, R4, R6
C3EDA:  ASRS            R1, R0, #0x10
C3EDC:  MLS.W           R9, R1, R5, R2
C3EE0:  MUL.W           R1, R11, R6
C3EE4:  MOV.W           R10, R1,ASR#15
C3EE8:  UXTH            R1, R0
C3EEA:  MUL.W           R2, R1, R5
C3EEE:  SMULTB.W        R0, R0, R6
C3EF2:  MULS            R1, R6
C3EF4:  SMLATB.W        R0, R4, R5, R0
C3EF8:  MUL.W           R4, R11, R5
C3EFC:  SUB.W           R2, R10, R2,ASR#15
C3F00:  ADD.W           R2, R2, R9,LSL#1
C3F04:  STR.W           R2, [LR],#4
C3F08:  ASRS            R1, R1, #0xF
C3F0A:  ADD.W           R1, R1, R4,ASR#15
C3F0E:  ADD.W           R0, R1, R0,LSL#1
C3F12:  STR.W           R0, [R8,R3,LSL#2]
C3F16:  SUBS            R3, #1
C3F18:  LDR             R0, [SP,#0x48+var_24]
C3F1A:  CMP             R0, R3
C3F1C:  BNE             loc_C3EC0
C3F1E:  ADD             SP, SP, #0x2C ; ','
C3F20:  POP.W           {R8-R11}
C3F24:  POP             {R4-R7,PC}
