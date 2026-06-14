; =========================================================
; Game Engine Function: sub_CF028
; Address            : 0xCF028 - 0xCF236
; =========================================================

CF028:  PUSH            {R4-R7,LR}
CF02A:  ADD             R7, SP, #0xC
CF02C:  PUSH.W          {R8-R11}
CF030:  SUB             SP, SP, #0x34
CF032:  MOV             R6, R0
CF034:  LDR             R0, =(__stack_chk_guard_ptr - 0xCF03E)
CF036:  MOV             R11, R3
CF038:  LDR             R3, [R7,#arg_0]
CF03A:  ADD             R0, PC; __stack_chk_guard_ptr
CF03C:  CMP             R3, #4
CF03E:  LDR             R0, [R0]; __stack_chk_guard
CF040:  LDR             R0, [R0]
CF042:  STR.W           R0, [R7,#var_24]
CF046:  BNE             loc_CF090
CF048:  LDR             R0, =(silk_nb_cbk_searchs_stage3_ptr - 0xCF05A)
CF04A:  ADD.W           R3, R1, R11,LSL#3
CF04E:  LDR.W           R12, [R7,#arg_4]
CF052:  SUB.W           R4, SP, #0x58 ; 'X'
CF056:  ADD             R0, PC; silk_nb_cbk_searchs_stage3_ptr
CF058:  NEGS            R2, R2
CF05A:  STRD.W          R2, R4, [R7,#var_38]
CF05E:  LDR             R1, [R0]; silk_nb_cbk_searchs_stage3
CF060:  MOV             SP, R4
CF062:  LDRSB.W         R10, [R1,R12]
CF066:  SUB.W           R1, SP, #0x58 ; 'X'
CF06A:  STR.W           R1, [R7,#var_2C]
CF06E:  MOV             SP, R1
CF070:  CMP.W           R10, #0
CF074:  BLE.W           loc_CF19C
CF078:  LDR             R1, =(silk_CB_lags_stage3_ptr - 0xCF07E)
CF07A:  ADD             R1, PC; silk_CB_lags_stage3_ptr
CF07C:  LDR             R5, [R1]; silk_CB_lags_stage3
CF07E:  LDR             R1, =(silk_Lag_range_stage3_ptr - 0xCF084)
CF080:  ADD             R1, PC; silk_Lag_range_stage3_ptr
CF082:  LDR             R1, [R1]; silk_Lag_range_stage3
CF084:  ADD.W           R0, R1, R12,LSL#3
CF088:  STR.W           R0, [R7,#var_44]
CF08C:  MOVS            R0, #0x22 ; '"'
CF08E:  B               loc_CF0CA
CF090:  SUB.W           R0, SP, #0x58 ; 'X'
CF094:  STR.W           R0, [R7,#var_2C]
CF098:  MOV             SP, R0
CF09A:  CMP             R3, #1
CF09C:  BLT.W           loc_CF216
CF0A0:  LDR             R0, =(silk_Lag_range_stage3_10_ms_ptr - 0xCF0B6)
CF0A2:  ADD.W           R3, R1, R11,LSL#3
CF0A6:  NEGS            R1, R2
CF0A8:  LDR             R4, =(silk_CB_lags_stage3_10_ms_ptr - 0xCF0BC)
CF0AA:  STR.W           R1, [R7,#var_38]
CF0AE:  SUB.W           R1, SP, #0x58 ; 'X'
CF0B2:  ADD             R0, PC; silk_Lag_range_stage3_10_ms_ptr
CF0B4:  MOV.W           R10, #0xC
CF0B8:  ADD             R4, PC; silk_CB_lags_stage3_10_ms_ptr
CF0BA:  STR.W           R1, [R7,#var_34]
CF0BE:  MOV             SP, R1
CF0C0:  LDR             R0, [R0]; silk_Lag_range_stage3_10_ms
CF0C2:  STR.W           R0, [R7,#var_44]
CF0C6:  MOVS            R0, #0xC
CF0C8:  LDR             R5, [R4]; silk_CB_lags_stage3_10_ms
CF0CA:  STR.W           R0, [R7,#var_48]
CF0CE:  ADD.W           R0, R10, R10,LSL#2
CF0D2:  MOV.W           R8, #0
CF0D6:  LSLS            R0, R0, #2
CF0D8:  STR.W           R0, [R7,#var_4C]
CF0DC:  STRD.W          R10, R11, [R7,#var_40]
CF0E0:  MOVS            R0, #1
CF0E2:  LDR.W           R1, [R7,#var_44]
CF0E6:  ORR.W           R0, R0, R8,LSL#1
CF0EA:  LDRSB.W         R9, [R1,R8,LSL#1]
CF0EE:  LDRSB           R4, [R1,R0]
CF0F0:  SUB             SP, SP, #8
CF0F2:  RSB.W           R0, R9, #1
CF0F6:  LDR.W           R2, [R7,#var_2C]
CF0FA:  ADD             R0, R4
CF0FC:  STR             R0, [SP,#0x108+var_108]
CF0FE:  LDR             R0, [R7,#arg_8]
CF100:  STR             R0, [SP,#0x108+var_104]
CF102:  LDR.W           R0, [R7,#var_38]
CF106:  STR.W           R3, [R7,#var_28]
CF10A:  ADD.W           R0, R3, R0,LSL#1
CF10E:  SUB.W           R1, R0, R4,LSL#1
CF112:  MOV             R0, R3
CF114:  MOV             R3, R11
CF116:  BLX             j_celt_pitch_xcorr_c
CF11A:  ADD             SP, SP, #8
CF11C:  CMP             R9, R4
CF11E:  BGT             loc_CF142
CF120:  SUB.W           R0, R4, R9
CF124:  LDR.W           R1, [R7,#var_2C]
CF128:  LDR.W           R2, [R7,#var_34]
CF12C:  ADD.W           R0, R1, R0,LSL#2
CF130:  SUB.W           R1, R9, #1
CF134:  LDR.W           R3, [R0],#-4
CF138:  ADDS            R1, #1
CF13A:  STR.W           R3, [R2],#4
CF13E:  CMP             R1, R4
CF140:  BLT             loc_CF134
CF142:  LDR.W           R0, [R7,#var_34]
CF146:  MOV             R2, R10
CF148:  MOV             R11, R6
CF14A:  STR.W           R5, [R7,#var_30]
CF14E:  SUB.W           R12, R0, R9,LSL#2
CF152:  MOV             R9, R5
CF154:  LDRSB.W         R4, [R9],#1
CF158:  MOV             R3, R6
CF15A:  SUBS            R2, #1
CF15C:  ADD.W           R6, R6, #0x14
CF160:  ADD.W           LR, R12, R4,LSL#2
CF164:  LDM.W           LR, {R0,R1,R4,R5,R10}
CF168:  STM.W           R3, {R0,R1,R4,R5,R10}
CF16C:  BNE             loc_CF154
CF16E:  LDR.W           R5, [R7,#var_30]
CF172:  MOV             R6, R11
CF174:  LDR.W           R0, [R7,#var_48]
CF178:  ADD.W           R8, R8, #1
CF17C:  LDR.W           R11, [R7,#var_3C]
CF180:  ADD             R5, R0
CF182:  LDR.W           R0, [R7,#var_4C]
CF186:  LDR.W           R3, [R7,#var_28]
CF18A:  ADD             R6, R0
CF18C:  LDR             R0, [R7,#arg_0]
CF18E:  LDR.W           R10, [R7,#var_40]
CF192:  ADD.W           R3, R3, R11,LSL#1
CF196:  CMP             R8, R0
CF198:  BNE             loc_CF0E0
CF19A:  B               loc_CF216
CF19C:  LDR             R1, =(silk_Lag_range_stage3_ptr - 0xCF1A8)
CF19E:  MOVS            R6, #0
CF1A0:  MOV.W           R8, #1
CF1A4:  ADD             R1, PC; silk_Lag_range_stage3_ptr
CF1A6:  LDR             R1, [R1]; silk_Lag_range_stage3
CF1A8:  ADD.W           R9, R1, R12,LSL#3
CF1AC:  ORR.W           R0, R8, R6,LSL#1
CF1B0:  LDRSB.W         R10, [R9,R6,LSL#1]
CF1B4:  LDRSB.W         R4, [R9,R0]
CF1B8:  SUB             SP, SP, #8
CF1BA:  RSB.W           R0, R10, #1
CF1BE:  LDR.W           R2, [R7,#var_2C]
CF1C2:  ADD             R0, R4
CF1C4:  STR             R0, [SP,#0x108+var_108]
CF1C6:  LDR             R0, [R7,#arg_8]
CF1C8:  MOV             R5, R3
CF1CA:  STR             R0, [SP,#0x108+var_104]
CF1CC:  LDR.W           R0, [R7,#var_38]
CF1D0:  ADD.W           R0, R3, R0,LSL#1
CF1D4:  SUB.W           R1, R0, R4,LSL#1
CF1D8:  MOV             R0, R3
CF1DA:  MOV             R3, R11
CF1DC:  BLX             j_celt_pitch_xcorr_c
CF1E0:  ADD             SP, SP, #8
CF1E2:  CMP             R10, R4
CF1E4:  BGT             loc_CF208
CF1E6:  SUB.W           R0, R4, R10
CF1EA:  LDR.W           R1, [R7,#var_2C]
CF1EE:  LDR.W           R2, [R7,#var_34]
CF1F2:  ADD.W           R0, R1, R0,LSL#2
CF1F6:  SUB.W           R1, R10, #1
CF1FA:  LDR.W           R3, [R0],#-4
CF1FE:  ADDS            R1, #1
CF200:  STR.W           R3, [R2],#4
CF204:  CMP             R1, R4
CF206:  BLT             loc_CF1FA
CF208:  MOV             R3, R5
CF20A:  LDR             R0, [R7,#arg_0]
CF20C:  ADDS            R6, #1
CF20E:  ADD.W           R3, R3, R11,LSL#1
CF212:  CMP             R6, R0
CF214:  BNE             loc_CF1AC
CF216:  LDR             R0, =(__stack_chk_guard_ptr - 0xCF220)
CF218:  LDR.W           R1, [R7,#var_24]
CF21C:  ADD             R0, PC; __stack_chk_guard_ptr
CF21E:  LDR             R0, [R0]; __stack_chk_guard
CF220:  LDR             R0, [R0]
CF222:  SUBS            R0, R0, R1
CF224:  ITTTT EQ
CF226:  SUBEQ.W         R4, R7, #-var_1C
CF22A:  MOVEQ           SP, R4
CF22C:  POPEQ.W         {R8-R11}
CF230:  POPEQ           {R4-R7,PC}
CF232:  BLX             __stack_chk_fail
