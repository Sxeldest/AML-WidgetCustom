; =========================================================
; Game Engine Function: silk_CNG
; Address            : 0x190C28 - 0x191254
; =========================================================

190C28:  PUSH            {R4-R7,LR}
190C2A:  ADD             R7, SP, #0xC
190C2C:  PUSH.W          {R8-R11}
190C30:  SUB             SP, SP, #0x9C
190C32:  MOV             R8, R0
190C34:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x190C42)
190C38:  STR.W           R2, [R7,#var_60]
190C3C:  MOV             R10, R1
190C3E:  ADD             R0, PC; __stack_chk_guard_ptr
190C40:  MOV             R11, R3
190C42:  LDR             R0, [R0]; __stack_chk_guard
190C44:  LDR             R0, [R0]
190C46:  STR.W           R0, [R7,#var_24]
190C4A:  MOVW            R0, #0x103C
190C4E:  LDR.W           R1, [R8,R0]
190C52:  LDR.W           R5, [R8,#0x90C]
190C56:  CMP             R5, R1
190C58:  BEQ             loc_190CA8
190C5A:  LDR.W           R6, [R8,#0x924]
190C5E:  ADD.W           R4, R8, R0
190C62:  MOVW            R0, #0x7FFF
190C66:  ADDS            R1, R6, #1
190C68:  BLX             sub_220A40
190C6C:  CMP             R6, #1
190C6E:  BLT             loc_190C8C
190C70:  ADDW            R1, R8, #0xFD4
190C74:  MOVS            R2, #0
190C76:  MOV             R3, R0
190C78:  STRH.W          R3, [R1,R2,LSL#1]
190C7C:  ADD             R3, R0
190C7E:  ADDS            R2, #1
190C80:  LDR.W           R6, [R8,#0x924]
190C84:  CMP             R2, R6
190C86:  BLT             loc_190C78
190C88:  LDR.W           R5, [R8,#0x90C]
190C8C:  MOVW            R1, #:lower16:unk_307880
190C90:  MOVW            R0, #0x1038
190C94:  MOVT            R1, #:upper16:unk_307880
190C98:  STR.W           R1, [R8,R0]
190C9C:  MOVW            R0, #0x1034
190CA0:  MOVS            R1, #0
190CA2:  STR.W           R1, [R8,R0]
190CA6:  STR             R5, [R4]
190CA8:  MOV.W           R0, #0x1040
190CAC:  LDR.W           R0, [R8,R0]
190CB0:  STR.W           R11, [R7,#var_5C]
190CB4:  CMP             R0, #0
190CB6:  BNE             loc_190DAC
190CB8:  MOVW            R0, #0x1044
190CBC:  ADD.W           R11, R8, #0x1040
190CC0:  LDR.W           R0, [R8,R0]
190CC4:  CMP             R0, #0
190CC6:  BNE             loc_190DA0
190CC8:  LDR.W           R0, [R8,#0x924]
190CCC:  ADDW            R9, R8, #0xAD4
190CD0:  CMP             R0, #1
190CD2:  BLT             loc_190D08
190CD4:  ADDW            R0, R8, #0xFD4
190CD8:  ADDW            R1, R8, #0x928
190CDC:  MOVS            R2, #0
190CDE:  MOVW            R3, #0x3FDC
190CE2:  LDRSH.W         R6, [R0,R2,LSL#1]
190CE6:  LDRSH.W         R5, [R1,R2,LSL#1]
190CEA:  SUBS            R5, R5, R6
190CEC:  UXTH            R4, R5
190CEE:  LSRS            R5, R5, #0x10
190CF0:  MULS            R4, R3
190CF2:  MLA.W           R6, R5, R3, R6
190CF6:  ADD.W           R6, R6, R4,LSR#16
190CFA:  STRH.W          R6, [R0,R2,LSL#1]
190CFE:  ADDS            R2, #1
190D00:  LDR.W           R6, [R8,#0x924]
190D04:  CMP             R2, R6
190D06:  BLT             loc_190CE2
190D08:  LDR.W           R0, [R8,#0x914]
190D0C:  CMP             R0, #1
190D0E:  BLT             loc_190D2E
190D10:  ADD.W           R1, R10, #0x10
190D14:  MOVS            R2, #0
190D16:  MOVS            R5, #0
190D18:  MOVS            R3, #0
190D1A:  LDR.W           R6, [R1,R2,LSL#2]
190D1E:  CMP             R6, R3
190D20:  ITT GT
190D22:  MOVGT           R5, R2
190D24:  MOVGT           R3, R6
190D26:  ADDS            R2, #1
190D28:  CMP             R2, R0
190D2A:  BLT             loc_190D1A
190D2C:  B               loc_190D30
190D2E:  MOVS            R5, #0
190D30:  LDR.W           R1, [R8,#0x91C]
190D34:  MOV             R2, #0xFFFFFFFC
190D38:  ADD.W           R0, R2, R0,LSL#2
190D3C:  MUL.W           R2, R0, R1; n
190D40:  ADD.W           R0, R8, R1,LSL#2
190D44:  ADDW            R0, R0, #0xAD4; dest
190D48:  MOV             R1, R9; src
190D4A:  BLX             j_memmove
190D4E:  LDR.W           R0, [R8,#0x91C]
190D52:  MUL.W           R1, R0, R5
190D56:  LSLS            R2, R0, #2; n
190D58:  MOV             R0, R9; dest
190D5A:  ADD.W           R1, R8, R1,LSL#2
190D5E:  ADDS            R1, #4; src
190D60:  BLX             j_memcpy
190D64:  LDR.W           R12, [R8,#0x914]
190D68:  CMP.W           R12, #1
190D6C:  BLT             loc_190DA0
190D6E:  MOVW            R1, #0x1034
190D72:  ADD.W           R3, R10, #0x10
190D76:  LDR.W           R2, [R8,R1]
190D7A:  ADD             R1, R8
190D7C:  MOVS            R6, #0
190D7E:  MOVW            R5, #0x121A
190D82:  LDR.W           R4, [R3,R6,LSL#2]
190D86:  ADDS            R6, #1
190D88:  CMP             R6, R12
190D8A:  SUB.W           R4, R4, R2
190D8E:  UXTH            R0, R4
190D90:  SMLABT.W        R2, R5, R4, R2
190D94:  MUL.W           R0, R5, R0
190D98:  ADD.W           R2, R2, R0,LSR#16
190D9C:  STR             R2, [R1]
190D9E:  BLT             loc_190D82
190DA0:  LDR.W           R0, [R11]
190DA4:  LDR.W           R11, [R7,#var_5C]
190DA8:  CMP             R0, #0
190DAA:  BEQ             loc_190E60
190DAC:  MOVS            R0, #0x47 ; 'G'
190DAE:  ADD.W           R0, R0, R11,LSL#2
190DB2:  BIC.W           R0, R0, #7
190DB6:  SUB.W           R4, SP, R0
190DBA:  MOV             SP, R4
190DBC:  MOVW            R0, #0x1084
190DC0:  MOVW            R1, #0x1098
190DC4:  LDRSH.W         R0, [R8,R0]
190DC8:  LDR.W           R1, [R8,R1]
190DCC:  UXTH            R2, R0
190DCE:  SXTH            R3, R1
190DD0:  MULS            R2, R3
190DD2:  MOVS            R3, #1
190DD4:  ASRS            R2, R2, #0x10
190DD6:  SMLABT.W        R2, R1, R0, R2
190DDA:  ADD.W           R1, R3, R1,ASR#15
190DDE:  ASRS            R1, R1, #1
190DE0:  MLA.W           R1, R1, R0, R2
190DE4:  MOVW            R0, #0x1034
190DE8:  LDR.W           R0, [R8,R0]
190DEC:  CMP.W           R1, #0x200000
190DF0:  MOV.W           R2, R1,ASR#16
190DF4:  BGE             loc_190E30
190DF6:  CMP.W           R0, #0x800000
190DFA:  BGT             loc_190E30
190DFC:  SXTH            R6, R1
190DFE:  UXTH            R3, R1
190E00:  MULS            R3, R6
190E02:  SXTH            R5, R0
190E04:  SMULBB.W        R2, R6, R2
190E08:  UXTH            R6, R0
190E0A:  MULS            R6, R5
190E0C:  ADD.W           R2, R2, R3,ASR#16
190E10:  MOVS            R3, #1
190E12:  ADD.W           R5, R3, R1,ASR#15
190E16:  ADD.W           R3, R3, R0,ASR#15
190E1A:  ASRS            R5, R5, #1
190E1C:  ASRS            R3, R3, #1
190E1E:  MLA.W           R1, R5, R1, R2
190E22:  ASRS            R2, R6, #0x10
190E24:  SMLABT.W        R2, R0, R0, R2
190E28:  MLA.W           R0, R3, R0, R2
190E2C:  MOVS            R2, #8
190E2E:  B               loc_190E3A
190E30:  SMULBB.W        R1, R2, R2
190E34:  MOVS            R2, #0x10
190E36:  SMULTT.W        R0, R0, R0
190E3A:  SUB.W           R1, R0, R1,LSL#5
190E3E:  STR.W           R2, [R7,#var_48]
190E42:  CMP             R1, #1
190E44:  BLT             loc_190E5A
190E46:  CLZ.W           R0, R1
190E4A:  RSBS.W          R2, R0, #0x18
190E4E:  BEQ             loc_190E7C
190E50:  CMP.W           R2, #0xFFFFFFFF
190E54:  BLE             loc_190E70
190E56:  RORS            R1, R2
190E58:  B               loc_190E7C
190E5A:  MOV.W           R9, #0
190E5E:  B               loc_190EAC
190E60:  LDR.W           R1, [R8,#0x924]
190E64:  ADDW            R0, R8, #0xFF4; int
190E68:  LSLS            R1, R1, #2; n
190E6A:  BLX             sub_22178C
190E6E:  B               loc_191234
190E70:  NEGS            R3, R2
190E72:  ADDS            R2, #0x20 ; ' '
190E74:  LSL.W           R3, R1, R3
190E78:  LSRS            R1, R2
190E7A:  ORRS            R1, R3
190E7C:  AND.W           R1, R1, #0x7F
190E80:  MOV.W           R2, #0xD50000
190E84:  TST.W           R0, #1
190E88:  MOV.W           R0, R0,LSR#1
190E8C:  MUL.W           R1, R2, R1
190E90:  MOV.W           R2, #0x8000
190E94:  IT EQ
190E96:  MOVWEQ          R2, #0xB486
190E9A:  LSR.W           R0, R2, R0
190E9E:  UXTH            R2, R0
190EA0:  LSRS            R1, R1, #0x10
190EA2:  MULS            R2, R1
190EA4:  SMLABT.W        R0, R1, R0, R0
190EA8:  ADD.W           R9, R0, R2,LSR#16
190EAC:  ADD.W           R0, R4, #0x40 ; '@'
190EB0:  MOV             R10, R4
190EB2:  MOVS            R2, #0xFF
190EB4:  MOV             R1, R2
190EB6:  CMP             R1, R11
190EB8:  MOV.W           R2, R1,ASR#1
190EBC:  BGT             loc_190EB4
190EBE:  MOVW            R3, #0x1038
190EC2:  ADD.W           R12, R8, R3
190EC6:  LDR.W           R2, [R8,R3]
190ECA:  CMP.W           R11, #1
190ECE:  BLT             loc_190EFA
190ED0:  MOVW            R5, #0x636B
190ED4:  MOVW            R4, #0x8435
190ED8:  MOVT            R5, #0x3619
190EDC:  MOVT            R4, #0xBB3
190EE0:  MOV             R6, R11
190EE2:  MLA.W           R2, R2, R4, R5
190EE6:  SUBS            R6, #1
190EE8:  AND.W           R3, R1, R2,ASR#24
190EEC:  ADD.W           R3, R8, R3,LSL#2
190EF0:  LDR.W           R3, [R3,#0xAD4]
190EF4:  STR.W           R3, [R0],#4
190EF8:  BNE             loc_190EE2
190EFA:  STR.W           R2, [R12]
190EFE:  MOVW            R0, #0x1048
190F02:  LDR.W           R3, [R8,R0]
190F06:  ADDW            R1, R8, #0xFD4
190F0A:  LDR.W           R2, [R8,#0x924]
190F0E:  SUB.W           R0, R7, #-var_44
190F12:  BLX             j_silk_NLSF2A
190F16:  ADDW            R1, R8, #0xFF4
190F1A:  STR.W           R1, [R7,#var_B8]
190F1E:  MOV             R12, R10
190F20:  CMP.W           R11, #1
190F24:  LDM             R1!, {R2-R6}
190F26:  STM.W           R12!, {R2-R6}
190F2A:  LDM             R1!, {R2-R6}
190F2C:  STM.W           R12!, {R2-R6}
190F30:  LDM.W           R1, {R0,R2-R6}
190F34:  STM.W           R12, {R0,R2-R6}
190F38:  MOV             R12, R10
190F3A:  BLT.W           loc_191218
190F3E:  LDR.W           R0, [R7,#var_48]
190F42:  MOVS            R1, #1
190F44:  LDR.W           R10, [R12,#0x1C]
190F48:  MOV.W           LR, #0
190F4C:  LDR.W           R2, [R12,#0x24]
190F50:  LSL.W           R0, R9, R0
190F54:  LDR.W           R9, [R12,#0x2C]
190F58:  ADD.W           R1, R1, R0,ASR#21
190F5C:  LDR.W           R5, [R12,#0x34]
190F60:  LDR.W           R4, [R12,#0x3C]
190F64:  ASRS            R1, R1, #1
190F66:  STR.W           R1, [R7,#var_64]
190F6A:  SBFX.W          R0, R0, #6, #0x10
190F6E:  STR.W           R0, [R7,#var_68]
190F72:  LDRSH.W         R3, [R7,#var_26]
190F76:  LDR.W           R1, [R8,#0x924]
190F7A:  MOV.W           R8, #0x40 ; '@'
190F7E:  STR.W           R3, [R7,#var_A0]
190F82:  LDRSH.W         R3, [R7,#var_28]
190F86:  STR.W           R3, [R7,#var_A4]
190F8A:  LDRSH.W         R3, [R7,#var_2A]
190F8E:  STR.W           R3, [R7,#var_A8]
190F92:  LDRSH.W         R3, [R7,#var_2C]
190F96:  STR.W           R3, [R7,#var_AC]
190F9A:  LDRSH.W         R3, [R7,#var_2E]
190F9E:  STR.W           R3, [R7,#var_B0]
190FA2:  LDRSH.W         R3, [R7,#var_30]
190FA6:  STR.W           R3, [R7,#var_B4]
190FAA:  LDRSH.W         R3, [R7,#var_32]
190FAE:  STR.W           R3, [R7,#var_70]
190FB2:  LDRSH.W         R3, [R7,#var_34]
190FB6:  STR.W           R3, [R7,#var_74]
190FBA:  LDRSH.W         R3, [R7,#var_36]
190FBE:  STR.W           R3, [R7,#var_78]
190FC2:  LDRSH.W         R3, [R7,#var_38]
190FC6:  STR.W           R3, [R7,#var_7C]
190FCA:  LDRSH.W         R3, [R7,#var_3A]
190FCE:  STR.W           R3, [R7,#var_80]
190FD2:  LDRSH.W         R3, [R7,#var_3C]
190FD6:  STR.W           R3, [R7,#var_84]
190FDA:  LDRSH.W         R3, [R7,#var_44]
190FDE:  STR.W           R3, [R7,#var_88]
190FE2:  LDRSH.W         R3, [R7,#var_42]
190FE6:  STR.W           R3, [R7,#var_8C]
190FEA:  LDRSH.W         R3, [R7,#var_40]
190FEE:  STR.W           R3, [R7,#var_90]
190FF2:  LDRSH.W         R3, [R7,#var_3E]
190FF6:  STR.W           R1, [R7,#var_6C]
190FFA:  ASRS            R1, R1, #1
190FFC:  STR.W           R3, [R7,#var_94]
191000:  STRD.W          R12, R1, [R7,#var_9C]
191004:  LDR.W           R1, [R7,#var_88]
191008:  UXTH            R3, R4
19100A:  ADD.W           R11, R12, LR,LSL#2
19100E:  LDR.W           R6, [R7,#var_98]
191012:  STR.W           R8, [R7,#var_54]
191016:  MULS            R3, R1
191018:  LDR.W           R0, [R11,#0x38]
19101C:  STR.W           R0, [R7,#var_48]
191020:  SMLABT.W        R4, R1, R4, R6
191024:  LDR.W           R6, [R7,#var_8C]
191028:  UXTH            R1, R0
19102A:  LDR.W           R8, [R11,#0x20]
19102E:  STR.W           R8, [R7,#var_58]
191032:  MULS            R1, R6
191034:  ADD.W           R3, R4, R3,ASR#16
191038:  SMLATB.W        R3, R0, R6, R3
19103C:  LDR.W           R6, [R7,#var_90]
191040:  UXTH            R4, R5
191042:  LDR.W           R0, [R11,#0x28]
191046:  STR.W           R0, [R7,#var_50]
19104A:  MUL.W           R12, R4, R6
19104E:  LDR.W           R4, [R11,#0x18]
191052:  ADD.W           R1, R3, R1,ASR#16
191056:  SMLATB.W        R3, R5, R6, R1
19105A:  LDR.W           R6, [R11,#0x30]
19105E:  LDR.W           R1, [R7,#var_94]
191062:  STR.W           R6, [R7,#var_4C]
191066:  UXTH            R5, R6
191068:  MULS            R5, R1
19106A:  ADD.W           R3, R3, R12,ASR#16
19106E:  SMLATB.W        R3, R6, R1, R3
191072:  LDR.W           R1, [R7,#var_84]
191076:  ADD.W           R3, R3, R5,ASR#16
19107A:  UXTH.W          R5, R9
19107E:  MULS            R5, R1
191080:  SMLATB.W        R3, R9, R1, R3
191084:  LDR.W           R1, [R7,#var_80]
191088:  ADD.W           R3, R3, R5,ASR#16
19108C:  UXTH            R5, R0
19108E:  MULS            R5, R1
191090:  SMLATB.W        R3, R0, R1, R3
191094:  LDR.W           R1, [R7,#var_7C]
191098:  LDR.W           R0, [R7,#var_9C]
19109C:  ADD.W           R3, R3, R5,ASR#16
1910A0:  UXTH            R5, R2
1910A2:  MULS            R5, R1
1910A4:  SMLATB.W        R2, R2, R1, R3
1910A8:  LDR.W           R1, [R7,#var_78]
1910AC:  UXTH.W          R3, R8
1910B0:  MULS            R3, R1
1910B2:  ADD.W           R2, R2, R5,ASR#16
1910B6:  SMLATB.W        R2, R8, R1, R2
1910BA:  LDR.W           R1, [R7,#var_74]
1910BE:  LDR.W           R8, [R7,#var_54]
1910C2:  ADD.W           R2, R2, R3,ASR#16
1910C6:  UXTH.W          R3, R10
1910CA:  MULS            R3, R1
1910CC:  SMLATB.W        R2, R10, R1, R2
1910D0:  LDR.W           R1, [R7,#var_70]
1910D4:  ADD.W           R2, R2, R3,ASR#16
1910D8:  UXTH            R3, R4
1910DA:  MULS            R3, R1
1910DC:  SMLATB.W        R2, R4, R1, R2
1910E0:  LDR.W           R1, [R7,#var_6C]
1910E4:  CMP             R1, #0x10
1910E6:  ADD.W           R2, R2, R3,ASR#16
1910EA:  BNE             loc_191164
1910EC:  LDRD.W          R12, R9, [R11,#4]
1910F0:  LDRD.W          R5, R4, [R11,#0xC]
1910F4:  LDR.W           R1, [R11,#0x14]
1910F8:  LDR.W           R6, [R7,#var_B4]
1910FC:  UXTH            R3, R1
1910FE:  MULS            R3, R6
191100:  SMLABT.W        R1, R6, R1, R2
191104:  UXTH            R2, R4
191106:  LDR.W           R6, [R7,#var_AC]
19110A:  ADD.W           R1, R1, R3,ASR#16
19110E:  LDR.W           R3, [R7,#var_B0]
191112:  MULS            R2, R3
191114:  SMLATB.W        R1, R4, R3, R1
191118:  UXTH            R3, R5
19111A:  MULS            R3, R6
19111C:  LDR.W           R4, [R7,#var_A8]
191120:  ADD.W           R1, R1, R2,ASR#16
191124:  UXTH.W          R2, R9
191128:  SMLATB.W        R1, R5, R6, R1
19112C:  LDR.W           R5, [R7,#var_A4]
191130:  MULS            R2, R4
191132:  LDR.W           R6, [R7,#var_A0]
191136:  ADD.W           R1, R1, R3,ASR#16
19113A:  UXTH.W          R3, R12
19113E:  SMLATB.W        R1, R9, R4, R1
191142:  ADD.W           R4, R0, R8
191146:  MULS            R3, R5
191148:  LDR.W           R4, [R4,#-0x40]
19114C:  ADD.W           R1, R1, R2,ASR#16
191150:  SMLATB.W        R1, R12, R5, R1
191154:  UXTH            R2, R4
191156:  MULS            R2, R6
191158:  ADD.W           R1, R1, R3,ASR#16
19115C:  SMLATB.W        R1, R4, R6, R1
191160:  ADD.W           R2, R1, R2,ASR#16
191164:  CMP.W           R2, #0xF8000000
191168:  LDR.W           R5, [R0,R8]
19116C:  IT LE
19116E:  MOVLE.W         R2, #0xF8000000
191172:  MOV             R1, #0x7FFFFFF
191176:  CMP             R2, R1
191178:  MOV             R12, R0
19117A:  IT GE
19117C:  MOVGE           R2, R1
19117E:  ADD.W           R4, R5, R2,LSL#4
191182:  LSLS            R2, R2, #4
191184:  CMP             R4, #0
191186:  BLT             loc_191196
191188:  AND.W           R1, R2, R5
19118C:  CMP             R1, #0
19118E:  IT LT
191190:  MOVLT.W         R4, #0x80000000
191194:  B               loc_1911A4
191196:  ORR.W           R1, R2, R5
19119A:  CMP.W           R1, #0xFFFFFFFF
19119E:  IT GT
1911A0:  MOVGT           R4, #0x7FFFFFFF
1911A4:  LDR.W           R9, [R7,#var_4C]
1911A8:  UXTH            R2, R4
1911AA:  LDRD.W          R11, R10, [R7,#var_5C]
1911AE:  MOVW            R5, #0x8000
1911B2:  LDR.W           R1, [R7,#var_64]
1911B6:  MOVT            R5, #0xFFFF
1911BA:  LDR.W           R3, [R7,#var_68]
1911BE:  MOVW            R0, #0x7FFF
1911C2:  LDR.W           R6, [R7,#var_60]
1911C6:  MULS            R1, R4
1911C8:  STR.W           R4, [R12,R8]
1911CC:  MULS            R2, R3
1911CE:  ADD.W           R8, R8, #4
1911D2:  SMLABT.W        R1, R3, R4, R1
1911D6:  LDRSH.W         R3, [R6,LR,LSL#1]
1911DA:  ADD.W           R1, R1, R2,ASR#16
1911DE:  MOVS            R2, #1
1911E0:  ADD.W           R1, R2, R1,ASR#7
1911E4:  ASRS            R2, R1, #1
1911E6:  CMP             R2, R5
1911E8:  MOV             R2, R5
1911EA:  IT GT
1911EC:  ASRGT           R2, R1, #1
1911EE:  CMP             R2, R0
1911F0:  IT GE
1911F2:  MOVGE           R2, R0
1911F4:  ADDS            R1, R2, R3
1911F6:  CMP             R1, R5
1911F8:  IT LE
1911FA:  MOVLE           R1, R5
1911FC:  CMP             R1, R0
1911FE:  IT GE
191200:  MOVGE           R1, R0
191202:  STRH.W          R1, [R6,LR,LSL#1]
191206:  ADD.W           LR, LR, #1
19120A:  CMP             R11, LR
19120C:  LDR.W           R2, [R7,#var_50]
191210:  LDR.W           R5, [R7,#var_48]
191214:  BNE.W           loc_191004
191218:  ADD.W           R0, R12, R11,LSL#2
19121C:  LDR.W           R12, [R7,#var_B8]
191220:  LDM             R0!, {R1-R3,R5,R6}
191222:  STM.W           R12!, {R1-R3,R5,R6}
191226:  LDM             R0!, {R1-R3,R5,R6}
191228:  STM.W           R12!, {R1-R3,R5,R6}
19122C:  LDM.W           R0, {R1-R6}
191230:  STM.W           R12, {R1-R6}
191234:  LDR             R0, =(__stack_chk_guard_ptr - 0x19123E)
191236:  LDR.W           R1, [R7,#var_24]
19123A:  ADD             R0, PC; __stack_chk_guard_ptr
19123C:  LDR             R0, [R0]; __stack_chk_guard
19123E:  LDR             R0, [R0]
191240:  SUBS            R0, R0, R1
191242:  ITTTT EQ
191244:  SUBEQ.W         R4, R7, #-var_1C
191248:  MOVEQ           SP, R4
19124A:  POPEQ.W         {R8-R11}
19124E:  POPEQ           {R4-R7,PC}
191250:  BLX             __stack_chk_fail
