; =========================================================
; Game Engine Function: sub_199F08
; Address            : 0x199F08 - 0x19A194
; =========================================================

199F08:  PUSH            {R4-R7,LR}
199F0A:  ADD             R7, SP, #0xC
199F0C:  PUSH.W          {R8-R11}
199F10:  SUB             SP, SP, #0x44
199F12:  STR             R3, [SP,#0x60+var_3C]
199F14:  MOV             R5, R2
199F16:  STRD.W          R0, R1, [SP,#0x60+var_38]
199F1A:  LDR             R0, =(__stack_chk_guard_ptr - 0x199F22)
199F1C:  LDR             R1, [R7,#arg_8]
199F1E:  ADD             R0, PC; __stack_chk_guard_ptr
199F20:  LDR             R6, [R7,#arg_20]
199F22:  LDR             R4, [R7,#arg_4]
199F24:  LDR             R0, [R0]; __stack_chk_guard
199F26:  LDR             R0, [R0]
199F28:  STR             R0, [SP,#0x60+var_20]
199F2A:  MOVS            R0, #0
199F2C:  STRD.W          R0, R0, [SP,#0x60+var_28]
199F30:  ADDS            R0, R1, #3
199F32:  CMP             R0, R4
199F34:  BGT             loc_199F40
199F36:  LDR             R0, [R7,#arg_14]
199F38:  MOV             R1, R6
199F3A:  MOVS            R2, #3
199F3C:  BLX             j_ec_enc_bit_logp
199F40:  CBZ             R6, loc_199F4A
199F42:  MOVS            R1, #0
199F44:  MOVW            R2, #0x1333
199F48:  B               loc_199F5C
199F4A:  LDR             R1, =(unk_B3CBC - 0x199F54)
199F4C:  LDR             R2, =(unk_B3C9C - 0x199F56)
199F4E:  LDR             R0, [R7,#arg_1C]
199F50:  ADD             R1, PC; unk_B3CBC
199F52:  ADD             R2, PC; unk_B3C9C
199F54:  LDRH.W          R1, [R1,R0,LSL#1]
199F58:  LDRH.W          R2, [R2,R0,LSL#1]
199F5C:  LDR             R0, [SP,#0x60+var_34]
199F5E:  CMP             R0, R5
199F60:  BGE.W           loc_19A16A
199F64:  LDR             R0, [SP,#0x60+var_38]
199F66:  SXTH            R2, R2
199F68:  LDR             R3, [R7,#arg_18]
199F6A:  SXTH            R1, R1
199F6C:  LDR.W           LR, [R7,#arg_0]
199F70:  MOV.W           R11, #0
199F74:  LDR             R0, [R0,#8]
199F76:  STR             R2, [SP,#0x60+var_40]
199F78:  ADD.W           R2, R3, R3,LSL#1
199F7C:  LDR             R6, [SP,#0x60+var_34]
199F7E:  STR             R2, [SP,#0x60+var_5C]
199F80:  ADD.W           R2, R4, #0x20 ; ' '
199F84:  ADD             R4, SP, #0x60+var_28
199F86:  STR             R2, [SP,#0x60+var_44]
199F88:  STR             R1, [SP,#0x60+var_48]
199F8A:  STR             R5, [SP,#0x60+var_58]
199F8C:  LDR             R2, [R7,#arg_28]
199F8E:  CMP             R6, #1
199F90:  MOV.W           R1, #0
199F94:  MOV.W           R9, #0
199F98:  IT GT
199F9A:  MOVGT           R1, #1
199F9C:  CMP             R2, #0
199F9E:  IT NE
199FA0:  MOVNE           R2, #1
199FA2:  CMP             R6, #0x14
199FA4:  AND.W           R1, R1, R2
199FA8:  LDR             R2, [SP,#0x60+var_5C]
199FAA:  STR             R1, [SP,#0x60+var_30]
199FAC:  SUB.W           R1, R5, R6
199FB0:  MUL.W           R1, R2, R1
199FB4:  MOV.W           R2, #1
199FB8:  STR             R1, [SP,#0x60+var_4C]
199FBA:  MOV             R1, R6
199FBC:  IT GE
199FBE:  MOVGE           R1, #0x14
199FC0:  ORR.W           R2, R2, R1,LSL#1
199FC4:  LSLS            R1, R1, #1
199FC6:  STR             R2, [SP,#0x60+var_50]
199FC8:  STR             R1, [SP,#0x60+var_54]
199FCA:  MLA.W           R0, R0, R9, R6
199FCE:  MOV             R1, #0xFFFFDC00
199FD6:  LDRSH.W         R2, [LR,R0,LSL#1]
199FDA:  CMN.W           R2, #0x2400
199FDE:  IT GT
199FE0:  MOVGT           R1, R2
199FE2:  LDR             R3, [SP,#0x60+var_48]
199FE4:  LDR.W           R10, [R4,R9,LSL#2]
199FE8:  MULS            R3, R1
199FEA:  LDR             R1, [SP,#0x60+var_3C]
199FEC:  LDRSH.W         R1, [R1,R0,LSL#1]
199FF0:  ADD.W           R0, R3, #0x80
199FF4:  LSLS            R3, R1, #7
199FF6:  SUB.W           R3, R3, R0,ASR#8
199FFA:  SUB.W           R4, R3, R10
199FFE:  ADD.W           R3, R4, #0x10000
19A002:  ASRS            R5, R3, #0x11
19A004:  CMP.W           R5, #0xFFFFFFFF
19A008:  STR             R5, [SP,#0x60+var_2C]
19A00A:  BGT             loc_19A032
19A00C:  LDR             R3, [R7,#arg_24]
19A00E:  SUBS            R2, R2, R3
19A010:  MOVW            R3, #0x9000
19A014:  CMN.W           R2, #0x7000
19A018:  MOVT            R3, #0xFFFF
19A01C:  IT LE
19A01E:  MOVLE           R2, R3
19A020:  SXTH            R2, R2
19A022:  CMP             R2, R1
19A024:  ITTTT GT
19A026:  SUBGT           R1, R2, R1
19A028:  ADDGT.W         R1, R5, R1,ASR#10
19A02C:  ANDGT.W         R5, R1, R1,ASR#31
19A030:  STRGT           R5, [SP,#0x60+var_2C]
19A032:  LDR             R1, [R7,#arg_14]
19A034:  LDR             R3, [SP,#0x60+var_44]
19A036:  MOV             R2, R1
19A038:  LDR             R1, [R2,#0x14]
19A03A:  LDR             R2, [R2,#0x1C]
19A03C:  SUBS            R1, R3, R1
19A03E:  CLZ.W           R2, R2
19A042:  SUBS            R2, R1, R2
19A044:  LDR             R1, [SP,#0x60+var_34]
19A046:  CMP             R6, R1
19A048:  MOV             R1, R5
19A04A:  BEQ             loc_19A074
19A04C:  LDR             R1, [SP,#0x60+var_4C]
19A04E:  SUBS            R3, R2, R1
19A050:  MOV             R1, R5
19A052:  CMP             R3, #0x17
19A054:  BGT             loc_19A074
19A056:  CMP             R5, #1
19A058:  MOV.W           R1, #1
19A05C:  IT LT
19A05E:  MOVLT           R1, R5
19A060:  CMP             R3, #0xF
19A062:  STR             R1, [SP,#0x60+var_2C]
19A064:  BGT             loc_19A074
19A066:  CMP.W           R1, #0xFFFFFFFF
19A06A:  MOV.W           R3, #0xFFFFFFFF
19A06E:  IT LE
19A070:  MOVLE           R1, R3
19A072:  STR             R1, [SP,#0x60+var_2C]
19A074:  LDR             R3, [SP,#0x60+var_30]
19A076:  MOV.W           R8, R0,ASR#8
19A07A:  CMP             R3, #1
19A07C:  ITT EQ
19A07E:  ANDEQ.W         R1, R1, R1,ASR#31
19A082:  STREQ           R1, [SP,#0x60+var_2C]
19A084:  CMP             R2, #0xF
19A086:  BLT             loc_19A0A6
19A088:  LDR             R0, [R7,#arg_C]
19A08A:  LDR             R2, [SP,#0x60+var_50]
19A08C:  MOV             R1, R0
19A08E:  LDR             R0, [SP,#0x60+var_54]
19A090:  LDRB            R0, [R1,R0]
19A092:  LDRB            R1, [R1,R2]
19A094:  LSLS            R2, R0, #7
19A096:  LDR             R0, [R7,#arg_14]
19A098:  LSLS            R3, R1, #6
19A09A:  ADD             R1, SP, #0x60+var_2C
19A09C:  BLX             j_ec_laplace_encode
19A0A0:  LDR.W           LR, [R7,#arg_0]
19A0A4:  B               loc_19A0FA
19A0A6:  CMP             R2, #2
19A0A8:  BLT             loc_19A0DA
19A0AA:  CMP             R1, #1
19A0AC:  MOV.W           R0, #1
19A0B0:  IT GE
19A0B2:  MOVGE           R1, R0
19A0B4:  MOV.W           R0, #0xFFFFFFFF
19A0B8:  CMP.W           R1, #0xFFFFFFFF
19A0BC:  LDR             R2, =(unk_C27A5 - 0x19A0D2)
19A0BE:  IT LE
19A0C0:  MOVLE           R1, R0
19A0C2:  MOVS            R3, #2
19A0C4:  LSLS            R0, R1, #1
19A0C6:  STR             R1, [SP,#0x60+var_2C]
19A0C8:  EOR.W           R1, R0, R1,ASR#31
19A0CC:  LDR             R0, [R7,#arg_14]
19A0CE:  ADD             R2, PC; unk_C27A5
19A0D0:  BLX             j_ec_enc_icdf
19A0D4:  LDR.W           LR, [R7,#arg_0]
19A0D8:  B               loc_19A0FA
19A0DA:  CMP             R2, #1
19A0DC:  BNE             loc_19A0F4
19A0DE:  AND.W           R0, R1, R1,ASR#31
19A0E2:  STR             R0, [SP,#0x60+var_2C]
19A0E4:  NEGS            R1, R0
19A0E6:  LDR             R0, [R7,#arg_14]
19A0E8:  MOVS            R2, #1
19A0EA:  BLX             j_ec_enc_bit_logp
19A0EE:  LDR.W           LR, [R7,#arg_0]
19A0F2:  B               loc_19A0FA
19A0F4:  MOV.W           R0, #0xFFFFFFFF
19A0F8:  STR             R0, [SP,#0x60+var_2C]
19A0FA:  LDR             R0, [SP,#0x60+var_38]
19A0FC:  ADD.W           R3, R4, #0x40 ; '@'
19A100:  LDR             R2, [SP,#0x60+var_2C]
19A102:  MOV             R12, R6
19A104:  LDR             R4, [SP,#0x60+var_40]
19A106:  LSRS            R3, R3, #7
19A108:  LDR             R0, [R0,#8]
19A10A:  SUB.W           R3, R3, R2,LSL#10
19A10E:  MLA.W           R1, R0, R9, R6
19A112:  LSLS            R6, R2, #0x12
19A114:  SMULTB.W        R6, R6, R4
19A118:  LDR             R4, [R7,#arg_10]
19A11A:  STRH.W          R3, [R4,R1,LSL#1]
19A11E:  ADD.W           R3, R10, R8
19A122:  MOVS            R4, #0
19A124:  ADD.W           R3, R3, R2,LSL#17
19A128:  MOVT            R4, #0xFFC8
19A12C:  CMN.W           R3, #0x380000
19A130:  IT LE
19A132:  MOVLE           R3, R4
19A134:  ADD             R4, SP, #0x60+var_28
19A136:  ADDS            R3, #0x40 ; '@'
19A138:  LSRS            R3, R3, #7
19A13A:  STRH.W          R3, [LR,R1,LSL#1]
19A13E:  RSB.W           R1, R6, R2,LSL#17
19A142:  ADD             R1, R10
19A144:  STR.W           R1, [R4,R9,LSL#2]
19A148:  SUBS            R1, R5, R2
19A14A:  IT MI
19A14C:  NEGMI           R1, R1
19A14E:  ADD.W           R9, R9, #1
19A152:  ADD             R11, R1
19A154:  LDR             R1, [R7,#arg_18]
19A156:  MOV             R6, R12
19A158:  CMP             R9, R1
19A15A:  BLT.W           loc_199FCA
19A15E:  LDR             R5, [SP,#0x60+var_58]
19A160:  ADDS            R6, #1
19A162:  CMP             R6, R5
19A164:  BNE.W           loc_199F8C
19A168:  B               loc_19A16E
19A16A:  MOV.W           R11, #0
19A16E:  LDR             R0, [R7,#arg_28]
19A170:  CMP             R0, #0
19A172:  LDR             R0, =(__stack_chk_guard_ptr - 0x19A180)
19A174:  IT NE
19A176:  MOVNE.W         R11, #0
19A17A:  LDR             R1, [SP,#0x60+var_20]
19A17C:  ADD             R0, PC; __stack_chk_guard_ptr
19A17E:  LDR             R0, [R0]; __stack_chk_guard
19A180:  LDR             R0, [R0]
19A182:  SUBS            R0, R0, R1
19A184:  ITTTT EQ
19A186:  MOVEQ           R0, R11
19A188:  ADDEQ           SP, SP, #0x44 ; 'D'
19A18A:  POPEQ.W         {R8-R11}
19A18E:  POPEQ           {R4-R7,PC}
19A190:  BLX             __stack_chk_fail
