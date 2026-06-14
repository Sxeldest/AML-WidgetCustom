; =========================================================
; Game Engine Function: sub_D9E18
; Address            : 0xD9E18 - 0xDA1E6
; =========================================================

D9E18:  PUSH            {R4-R7,LR}
D9E1A:  ADD             R7, SP, #0xC
D9E1C:  PUSH.W          {R8-R11}
D9E20:  SUB             SP, SP, #0x44
D9E22:  MOV             R9, R0
D9E24:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xD9E30)
D9E28:  MOV             R11, R1
D9E2A:  MOV             R6, R3
D9E2C:  ADD             R0, PC; __stack_chk_guard_ptr
D9E2E:  LDR             R0, [R0]; __stack_chk_guard
D9E30:  LDR             R0, [R0]
D9E32:  LDRD.W          R5, R1, [R7,#arg_4]
D9E36:  STR.W           R0, [R7,#var_24]
D9E3A:  MOVS            R0, #7
D9E3C:  ADD.W           R0, R0, R11,LSL#1
D9E40:  BIC.W           R0, R0, #7
D9E44:  SUB.W           R8, SP, R0
D9E48:  MOV             SP, R8
D9E4A:  MOVS            R3, #0
D9E4C:  MOV.W           R12, #4
D9E50:  CMP             R5, #0
D9E52:  STR             R3, [R1]
D9E54:  IT NE
D9E56:  MOVNE.W         R12, #5
D9E5A:  MOV             R0, R2
D9E5C:  CMP             R2, #1
D9E5E:  STR.W           R0, [R7,#var_34]
D9E62:  BLT.W           loc_DA164
D9E66:  ADD.W           R0, R11, R11,LSR#31
D9E6A:  MOV             R1, #0xFFFFFF9A
D9E6E:  STR.W           R6, [R7,#var_60]
D9E72:  MOV.W           LR, #0
D9E76:  MOV.W           R10, R0,ASR#1
D9E7A:  ADD.W           R0, R10, R10,LSL#1
D9E7E:  ADD.W           R0, R1, R0,LSL#1
D9E82:  STR.W           R0, [R7,#var_3C]
D9E86:  MOVS            R0, #1
D9E88:  MOVW            R1, #0x8001
D9E8C:  LSL.W           R0, R0, R12
D9E90:  MOVT            R1, #0xFFFF
D9E94:  LSRS            R4, R0, #1
D9E96:  SUB.W           R0, R8, #2
D9E9A:  STR.W           R0, [R7,#var_5C]
D9E9E:  ADD.W           R0, R8, #2
D9EA2:  STR.W           R0, [R7,#var_50]
D9EA6:  SUB.W           R0, R11, #1
D9EAA:  STR.W           R0, [R7,#var_54]
D9EAE:  MOV.W           R0, R11,LSL#2
D9EB2:  STR.W           R0, [R7,#var_44]
D9EB6:  SUB.W           R0, R10, #5
D9EBA:  STR.W           R0, [R7,#var_58]
D9EBE:  MOV.W           R0, R10,LSL#20
D9EC2:  STR.W           R0, [R7,#var_48]
D9EC6:  SBFX.W          R0, R10, #1, #0x10
D9ECA:  STR.W           R0, [R7,#var_4C]
D9ECE:  MOVS            R0, #0
D9ED0:  STR.W           R0, [R7,#var_28]
D9ED4:  STR.W           R12, [R7,#var_38]
D9ED8:  STR.W           R10, [R7,#var_30]
D9EDC:  STR.W           R4, [R7,#var_40]
D9EE0:  CMP.W           R11, #0
D9EE4:  MOV.W           R0, #0
D9EE8:  STR.W           LR, [R7,#var_2C]
D9EEC:  BLE             loc_D9F4A
D9EEE:  MOV             LR, R1
D9EF0:  MOVW            R10, #0x7FFF
D9EF4:  MOVS            R2, #0
D9EF6:  MOVS            R1, #0
D9EF8:  LDR.W           R3, [R9,R0,LSL#2]
D9EFC:  ADD.W           R2, R2, R3,ASR#12
D9F00:  ASRS            R3, R3, #0xC
D9F02:  ADDS            R5, R2, #2
D9F04:  ADD             R1, R2
D9F06:  ASRS            R6, R5, #2
D9F08:  CMP             R6, LR
D9F0A:  MOV             R6, LR
D9F0C:  IT GT
D9F0E:  ASRGT           R6, R5, #2
D9F10:  CMP             R6, R10
D9F12:  IT GE
D9F14:  MOVGE           R6, R10
D9F16:  STRH.W          R6, [R8,R0,LSL#1]
D9F1A:  SUB.W           R6, R3, R2,ASR#1
D9F1E:  SUB.W           R2, R1, R3,LSL#1
D9F22:  ADDS            R0, #1
D9F24:  MOV             R1, R6
D9F26:  CMP             R11, R0
D9F28:  BNE             loc_D9EF8
D9F2A:  MOVS            R0, #0
D9F2C:  CMP.W           R11, #1
D9F30:  STRD.W          R0, R0, [R8]
D9F34:  STRD.W          R0, R0, [R8,#8]
D9F38:  STRD.W          R0, R0, [R8,#0x10]
D9F3C:  BLT             loc_D9F5A
D9F3E:  BNE             loc_D9F62
D9F40:  MOVS            R1, #0
D9F42:  MOVS            R0, #0
D9F44:  LDR.W           R10, [R7,#var_30]
D9F48:  B               loc_D9F86
D9F4A:  STRD.W          R0, R0, [R8]
D9F4E:  MOVS            R1, #0
D9F50:  STRD.W          R0, R0, [R8,#8]
D9F54:  STRD.W          R0, R0, [R8,#0x10]
D9F58:  B               loc_D9F88
D9F5A:  MOVS            R1, #0
D9F5C:  LDR.W           R10, [R7,#var_30]
D9F60:  B               loc_D9F88
D9F62:  LDRD.W          R3, R2, [R7,#var_54]
D9F66:  MOVS            R0, #0
D9F68:  LDR.W           R10, [R7,#var_30]
D9F6C:  MOVS            R1, #0
D9F6E:  LDRSH.W         R6, [R2],#2
D9F72:  SXTH            R5, R0
D9F74:  CMP             R5, R6
D9F76:  SXTH            R5, R1
D9F78:  IT GE
D9F7A:  MOVGE           R0, R6
D9F7C:  CMP             R5, R6
D9F7E:  IT LE
D9F80:  MOVLE           R1, R6
D9F82:  SUBS            R3, #1
D9F84:  BNE             loc_D9F6E
D9F86:  SXTH            R1, R1
D9F88:  SXTH            R0, R0
D9F8A:  NEGS            R0, R0
D9F8C:  CMP             R1, R0
D9F8E:  IT GT
D9F90:  MOVGT           R0, R1
D9F92:  CMP             R0, #1
D9F94:  BLT             loc_D9FA4
D9F96:  CMP.W           R11, #1
D9F9A:  BLT             loc_D9FA8
D9F9C:  BNE             loc_D9FAE
D9F9E:  MOVS            R1, #0
D9FA0:  MOVS            R0, #0
D9FA2:  B               loc_D9FCE
D9FA4:  MOVS            R0, #1
D9FA6:  B               loc_D9FDA
D9FA8:  MOVS            R0, #0
D9FAA:  MOVS            R1, #0
D9FAC:  B               loc_D9FD0
D9FAE:  LDRD.W          R3, R2, [R7,#var_54]
D9FB2:  MOVS            R0, #0
D9FB4:  MOVS            R1, #0
D9FB6:  LDRSH.W         R6, [R2],#2
D9FBA:  SXTH            R5, R0
D9FBC:  CMP             R5, R6
D9FBE:  SXTH            R5, R1
D9FC0:  IT GE
D9FC2:  MOVGE           R0, R6
D9FC4:  CMP             R5, R6
D9FC6:  IT LE
D9FC8:  MOVLE           R1, R6
D9FCA:  SUBS            R3, #1
D9FCC:  BNE             loc_D9FB6
D9FCE:  SXTH            R1, R1
D9FD0:  SXTH            R0, R0
D9FD2:  NEGS            R0, R0
D9FD4:  CMP             R1, R0
D9FD6:  IT GT
D9FD8:  MOVGT           R0, R1
D9FDA:  CLZ.W           R0, R0
D9FDE:  SUBS            R0, #0x11
D9FE0:  BEQ             loc_DA004
D9FE2:  CMP.W           R11, #1
D9FE6:  BLT             loc_DA004
D9FE8:  MOV.W           R1, #0
D9FEC:  STRH.W          R1, [R8]
D9FF0:  LDRD.W          R2, R1, [R7,#var_54]
D9FF4:  BEQ             loc_DA004
D9FF6:  LDRH            R3, [R1]
D9FF8:  SUBS            R2, #1
D9FFA:  LSL.W           R3, R3, R0
D9FFE:  STRH.W          R3, [R1],#2
DA002:  BNE             loc_D9FF6
DA004:  CMP.W           R11, #2
DA008:  BLT             loc_DA076
DA00A:  MOVS            R1, #0
DA00C:  MOVS            R2, #0
DA00E:  MOVS            R0, #0
DA010:  ADD.W           R6, R8, R1,LSL#2
DA014:  LDRSH.W         R3, [R8,R1,LSL#2]
DA018:  LDRSH.W         R6, [R6,#2]
DA01C:  SMULBB.W        R3, R3, R3
DA020:  SMLABB.W        R3, R6, R6, R3
DA024:  SUBS            R6, R4, R2
DA026:  ADD.W           R3, R3, #0x8000
DA02A:  ADD.W           R6, R6, R3,LSR#16
DA02E:  ADD.W           R0, R0, R3,LSR#16
DA032:  ASR.W           R6, R6, R12
DA036:  ADD             R2, R6
DA038:  STRH.W          R2, [R8,R1,LSL#1]
DA03C:  ADDS            R1, #1
DA03E:  SXTH            R2, R2
DA040:  CMP             R10, R1
DA042:  BNE             loc_DA010
DA044:  CMP.W           R11, #2
DA048:  BLT             loc_DA078
DA04A:  LDR.W           R5, [R7,#var_5C]
DA04E:  MOV             R1, R10
DA050:  MOVS            R2, #0
DA052:  MOV.W           R10, #0
DA056:  LDRSH.W         R3, [R5,R1,LSL#1]
DA05A:  RSB.W           R6, R2, #4
DA05E:  ADD             R3, R6
DA060:  ADD.W           R2, R2, R3,LSR#3
DA064:  STRH.W          R2, [R5,R1,LSL#1]
DA068:  SXTH            R2, R2
DA06A:  CMP             R2, R10
DA06C:  IT GE
DA06E:  MOVGE           R10, R2
DA070:  SUBS            R1, #1
DA072:  BGT             loc_DA056
DA074:  B               loc_DA07C
DA076:  MOVS            R0, #0
DA078:  MOV.W           R10, #0
DA07C:  BLX             j_celt_sqrt
DA080:  MOV             R5, R0
DA082:  LDR.W           R0, [R7,#var_4C]
DA086:  MUL.W           R0, R10, R0
DA08A:  BLX             j_celt_sqrt
DA08E:  SMULBB.W        R0, R0, R5
DA092:  MOVS            R1, #1
DA094:  ADD.W           R1, R1, R0,ASR#1
DA098:  LDR.W           R0, [R7,#var_48]
DA09C:  BLX             sub_108848
DA0A0:  CMP.W           R11, #0x24 ; '$'
DA0A4:  BLT             loc_DA0F2
DA0A6:  LDR.W           LR, =(unk_5C9EF - 0xDA0BA)
DA0AA:  UXTH            R1, R0
DA0AC:  LDR.W           R10, [R7,#var_30]
DA0B0:  ASRS            R0, R0, #0x10
DA0B2:  LDR.W           R4, [R7,#var_58]
DA0B6:  ADD             LR, PC; unk_5C9EF
DA0B8:  LSLS            R2, R0, #1
DA0BA:  MOVS            R0, #0
DA0BC:  MOVS            R3, #0xC
DA0BE:  MOV.W           R12, #0x10000
DA0C2:  LDRH.W          R6, [R8,R3,LSL#1]
DA0C6:  ADDS            R3, #4
DA0C8:  ADD.W           R6, R12, R6,LSL#16
DA0CC:  ASRS            R6, R6, #0x10
DA0CE:  MUL.W           R5, R6, R1
DA0D2:  MULS            R6, R2
DA0D4:  ADD.W           R6, R6, R5,ASR#15
DA0D8:  CMP             R6, #0x7F
DA0DA:  MOV             R5, R6
DA0DC:  IT GE
DA0DE:  MOVGE           R5, #0x7F
DA0E0:  CMP             R6, #0
DA0E2:  MOV             R6, LR
DA0E4:  IT GT
DA0E6:  ADDGT           R6, R6, R5
DA0E8:  CMP             R3, R4
DA0EA:  LDRB            R6, [R6]
DA0EC:  ADD             R0, R6
DA0EE:  BLT             loc_DA0C2
DA0F0:  B               loc_DA0F8
DA0F2:  MOVS            R0, #0
DA0F4:  LDR.W           R10, [R7,#var_30]
DA0F8:  LDR.W           R1, [R7,#var_3C]
DA0FC:  LSLS            R0, R0, #8
DA0FE:  BLX             sub_108848
DA102:  LDR.W           LR, [R7,#var_2C]
DA106:  LDR.W           R2, [R7,#var_28]
DA10A:  CMP             R0, LR
DA10C:  ITTT GT
DA10E:  LDRGT           R1, [R7,#arg_0]
DA110:  STRGT           R2, [R1]
DA112:  MOVGT           LR, R0
DA114:  ADDS            R2, #1
DA116:  LDR.W           R0, [R7,#var_44]
DA11A:  MOV             R1, R2
DA11C:  LDR.W           R12, [R7,#var_38]
DA120:  ADD             R9, R0
DA122:  LDR.W           R0, [R7,#var_34]
DA126:  LDR.W           R4, [R7,#var_40]
DA12A:  STR.W           R1, [R7,#var_28]
DA12E:  MOVW            R1, #0x8001
DA132:  CMP             R2, R0
DA134:  MOVT            R1, #0xFFFF
DA138:  BNE.W           loc_D9EE0
DA13C:  LDR             R0, [R7,#arg_4]
DA13E:  MOVS            R4, #0
DA140:  CMP.W           LR, #0xC8
DA144:  IT GT
DA146:  MOVGT           R4, #1
DA148:  CBZ             R0, loc_DA168
DA14A:  SUB.W           R0, LR, #0xC9
DA14E:  LDR.W           R6, [R7,#var_60]
DA152:  CMP.W           R0, #0x18E
DA156:  MOV             R3, LR
DA158:  ITTTT LS
DA15A:  MOVLS           R0, #1
DA15C:  LDRLS           R1, [R7,#arg_8]
DA15E:  STRLS           R0, [R1]
DA160:  MOVLS           R4, #0
DA162:  B               loc_DA16E
DA164:  MOVS            R4, #0
DA166:  B               loc_DA16E
DA168:  MOV             R3, LR
DA16A:  LDR.W           R6, [R7,#var_60]
DA16E:  MOVS            R0, #0x1B
DA170:  MUL.W           R5, R3, R0
DA174:  MOV             R0, R5
DA176:  BLX             j_celt_sqrt
DA17A:  CMP             R0, #0x2A ; '*'
DA17C:  BGE             loc_DA182
DA17E:  MOVS            R0, #0
DA180:  B               loc_DA194
DA182:  MOV             R0, R5
DA184:  BLX             j_celt_sqrt
DA188:  MOVS            R1, #0xFFD60000
DA18E:  ADD.W           R0, R1, R0,LSL#16
DA192:  ASRS            R0, R0, #0x10
DA194:  CMP             R0, #0xA3
DA196:  MOV.W           R1, #0x1C4000
DA19A:  IT GE
DA19C:  MOVGE           R0, #0xA3
DA19E:  MOVW            R3, #0xA7F0
DA1A2:  MUL.W           R2, R0, R1
DA1A6:  MOVT            R3, #0xFDC6
DA1AA:  MLA.W           R0, R0, R1, R3
DA1AE:  MOV             R1, #0x2395810
DA1B6:  CMP             R2, R1
DA1B8:  IT LT
DA1BA:  MOVLT           R0, #0
DA1BC:  BLX             j_celt_sqrt
DA1C0:  STRH            R0, [R6]
DA1C2:  LDR             R0, =(__stack_chk_guard_ptr - 0xDA1CC)
DA1C4:  LDR.W           R1, [R7,#var_24]
DA1C8:  ADD             R0, PC; __stack_chk_guard_ptr
DA1CA:  LDR             R0, [R0]; __stack_chk_guard
DA1CC:  LDR             R0, [R0]
DA1CE:  SUBS            R0, R0, R1
DA1D0:  ITTTT EQ
DA1D2:  MOVEQ           R0, R4
DA1D4:  SUBEQ.W         R4, R7, #-var_1C
DA1D8:  MOVEQ           SP, R4
DA1DA:  POPEQ.W         {R8-R11}
DA1DE:  IT EQ
DA1E0:  POPEQ           {R4-R7,PC}
DA1E2:  BLX             __stack_chk_fail
