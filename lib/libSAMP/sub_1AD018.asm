; =========================================================
; Game Engine Function: sub_1AD018
; Address            : 0x1AD018 - 0x1AD29C
; =========================================================

1AD018:  PUSH            {R4-R7,LR}
1AD01A:  ADD             R7, SP, #0xC
1AD01C:  PUSH.W          {R8-R11}
1AD020:  SUB             SP, SP, #0x3C
1AD022:  MOV             R9, R0
1AD024:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AD02E)
1AD026:  STR.W           R2, [R7,#var_38]
1AD02A:  ADD             R0, PC; __stack_chk_guard_ptr
1AD02C:  LDR             R2, [R7,#arg_0]
1AD02E:  LDR             R0, [R0]; __stack_chk_guard
1AD030:  CMP             R2, #4
1AD032:  LDR             R0, [R0]
1AD034:  STR.W           R0, [R7,#var_24]
1AD038:  STR.W           R3, [R7,#var_3C]
1AD03C:  BNE             loc_1AD078
1AD03E:  LDR             R2, =(silk_nb_cbk_searchs_stage3_ptr - 0x1AD04E)
1AD040:  ADD.W           R5, R1, R3,LSL#3
1AD044:  LDR             R0, [R7,#arg_4]
1AD046:  SUB.W           R4, SP, #0x58 ; 'X'
1AD04A:  ADD             R2, PC; silk_nb_cbk_searchs_stage3_ptr
1AD04C:  LDR             R2, [R2]; silk_nb_cbk_searchs_stage3
1AD04E:  LDRSB.W         R10, [R2,R0]
1AD052:  MOV             SP, R4
1AD054:  CMP.W           R10, #0
1AD058:  BLE.W           loc_1AD1B4
1AD05C:  LDR             R1, =(silk_CB_lags_stage3_ptr - 0x1AD064)
1AD05E:  LDR             R2, =(silk_Lag_range_stage3_ptr - 0x1AD066)
1AD060:  ADD             R1, PC; silk_CB_lags_stage3_ptr
1AD062:  ADD             R2, PC; silk_Lag_range_stage3_ptr
1AD064:  LDR             R1, [R1]; silk_CB_lags_stage3
1AD066:  STR.W           R1, [R7,#var_28]
1AD06A:  LDR             R1, [R2]; silk_Lag_range_stage3
1AD06C:  ADD.W           R0, R1, R0,LSL#3
1AD070:  STR.W           R0, [R7,#var_48]
1AD074:  MOVS            R0, #0x22 ; '"'
1AD076:  B               loc_1AD0A6
1AD078:  SUB.W           R0, SP, #0x58 ; 'X'
1AD07C:  MOV             R6, R0
1AD07E:  MOV             SP, R0
1AD080:  CMP             R2, #0
1AD082:  BLE.W           loc_1AD27C
1AD086:  LDR             R0, =(silk_CB_lags_stage3_10_ms_ptr - 0x1AD096)
1AD088:  ADD.W           R5, R1, R3,LSL#3
1AD08C:  LDR             R2, =(silk_Lag_range_stage3_10_ms_ptr - 0x1AD09A)
1AD08E:  MOV.W           R10, #0xC
1AD092:  ADD             R0, PC; silk_CB_lags_stage3_10_ms_ptr
1AD094:  MOV             R4, R6
1AD096:  ADD             R2, PC; silk_Lag_range_stage3_10_ms_ptr
1AD098:  LDR             R0, [R0]; silk_CB_lags_stage3_10_ms
1AD09A:  STR.W           R0, [R7,#var_28]
1AD09E:  LDR             R0, [R2]; silk_Lag_range_stage3_10_ms
1AD0A0:  STR.W           R0, [R7,#var_48]
1AD0A4:  MOVS            R0, #0xC
1AD0A6:  STR.W           R0, [R7,#var_4C]
1AD0AA:  LDR.W           R1, [R7,#var_38]
1AD0AE:  STR.W           R4, [R7,#var_40]
1AD0B2:  STR.W           R10, [R7,#var_44]
1AD0B6:  MVNS            R0, R1
1AD0B8:  ADD.W           R8, R5, R0,LSL#1
1AD0BC:  SUBS            R0, R3, #1
1AD0BE:  SUBS            R0, R0, R1
1AD0C0:  MOVS            R1, #0
1AD0C2:  ADD.W           R11, R5, R0,LSL#1
1AD0C6:  LSLS            R0, R3, #1
1AD0C8:  STR.W           R0, [R7,#var_50]
1AD0CC:  ADDS            R0, R4, #4
1AD0CE:  STR.W           R0, [R7,#var_58]
1AD0D2:  ADD.W           R0, R10, R10,LSL#2
1AD0D6:  LSLS            R0, R0, #2
1AD0D8:  STR.W           R0, [R7,#var_54]
1AD0DC:  LDR.W           R6, [R7,#var_48]
1AD0E0:  MOV             R2, R3
1AD0E2:  LDR.W           R0, [R7,#var_38]
1AD0E6:  LDR             R3, [R7,#arg_8]
1AD0E8:  LDRSB.W         R4, [R6,R1,LSL#1]
1AD0EC:  STR.W           R5, [R7,#var_2C]
1AD0F0:  ADD             R0, R4
1AD0F2:  SUB.W           R0, R5, R0,LSL#1
1AD0F6:  MOV             R5, R1
1AD0F8:  MOV             R1, R0
1AD0FA:  BLX             j_silk_inner_prod_aligned
1AD0FE:  MOVS            R1, #1
1AD100:  LDR.W           R12, [R7,#var_40]
1AD104:  ORR.W           R1, R1, R5,LSL#1
1AD108:  STR.W           R5, [R7,#var_34]
1AD10C:  LDRSB           R2, [R6,R1]
1AD10E:  STR.W           R0, [R12]
1AD112:  CMP             R2, R4
1AD114:  BLE             loc_1AD14C
1AD116:  LDR.W           R3, [R7,#var_58]
1AD11A:  NEGS            R1, R4
1AD11C:  NEGS            R2, R2
1AD11E:  LDRSH.W         R5, [R11,R1,LSL#1]
1AD122:  LDRSH.W         R6, [R8,R1,LSL#1]
1AD126:  SUBS            R1, #1
1AD128:  MLS.W           R0, R5, R5, R0
1AD12C:  SMLABB.W        R6, R6, R6, R0
1AD130:  CMP.W           R0, #0xFFFFFFFF
1AD134:  MOV             R0, R6
1AD136:  IT GT
1AD138:  MOVGT           R0, #0x7FFFFFFF
1AD13C:  CMP.W           R6, #0xFFFFFFFF
1AD140:  IT GT
1AD142:  MOVGT           R0, R6
1AD144:  CMP             R2, R1
1AD146:  STR.W           R0, [R3],#4
1AD14A:  BNE             loc_1AD11E
1AD14C:  LDR.W           R1, [R7,#var_28]
1AD150:  SUB.W           R12, R12, R4,LSL#2
1AD154:  MOV             R2, R10
1AD156:  MOV             R5, R9
1AD158:  STR.W           R9, [R7,#var_30]
1AD15C:  LDRSB.W         R6, [R1],#1
1AD160:  MOV             R3, R5
1AD162:  SUBS            R2, #1
1AD164:  ADD.W           R5, R5, #0x14
1AD168:  ADD.W           LR, R12, R6,LSL#2
1AD16C:  LDM.W           LR, {R0,R4,R6,R9,R10}
1AD170:  STM.W           R3, {R0,R4,R6,R9,R10}
1AD174:  BNE             loc_1AD15C
1AD176:  LDR.W           R0, [R7,#var_28]
1AD17A:  LDR.W           R1, [R7,#var_4C]
1AD17E:  LDR.W           R9, [R7,#var_30]
1AD182:  ADD             R0, R1
1AD184:  STR.W           R0, [R7,#var_28]
1AD188:  LDR.W           R0, [R7,#var_54]
1AD18C:  LDR.W           R3, [R7,#var_3C]
1AD190:  ADD             R9, R0
1AD192:  LDR.W           R0, [R7,#var_50]
1AD196:  LDR.W           R5, [R7,#var_2C]
1AD19A:  LDR.W           R1, [R7,#var_34]
1AD19E:  ADD             R11, R0
1AD1A0:  ADD             R8, R0
1AD1A2:  LDR             R0, [R7,#arg_0]
1AD1A4:  LDR.W           R10, [R7,#var_44]
1AD1A8:  ADDS            R1, #1
1AD1AA:  ADD.W           R5, R5, R3,LSL#1
1AD1AE:  CMP             R1, R0
1AD1B0:  BNE             loc_1AD0DC
1AD1B2:  B               loc_1AD27C
1AD1B4:  LSLS            R2, R3, #2
1AD1B6:  LDR.W           R6, [R7,#var_38]
1AD1BA:  SUBS            R2, #1
1AD1BC:  MOV.W           R10, #0
1AD1C0:  SUBS            R2, R2, R6
1AD1C2:  STR.W           R4, [R7,#var_40]
1AD1C6:  ADD.W           R11, R1, R2,LSL#1
1AD1CA:  ADD.W           R2, R3, R3,LSL#2
1AD1CE:  SUBS            R2, #1
1AD1D0:  SUBS            R2, R2, R6
1AD1D2:  ADD.W           R6, R1, R2,LSL#1
1AD1D6:  LSLS            R1, R3, #1
1AD1D8:  STR.W           R1, [R7,#var_28]
1AD1DC:  ADDS            R1, R4, #4
1AD1DE:  STR.W           R1, [R7,#var_34]
1AD1E2:  LDR             R1, =(silk_Lag_range_stage3_ptr - 0x1AD1E8)
1AD1E4:  ADD             R1, PC; silk_Lag_range_stage3_ptr
1AD1E6:  LDR             R1, [R1]; silk_Lag_range_stage3
1AD1E8:  ADD.W           R0, R1, R0,LSL#3
1AD1EC:  STR.W           R0, [R7,#var_30]
1AD1F0:  LDR.W           R1, [R7,#var_30]
1AD1F4:  MOVS            R0, #1
1AD1F6:  ORR.W           R0, R0, R10,LSL#1
1AD1FA:  MOV             R2, R3
1AD1FC:  LDR             R3, [R7,#arg_8]
1AD1FE:  LDRSB.W         R9, [R1,R10,LSL#1]
1AD202:  LDRSB.W         R8, [R1,R0]
1AD206:  LDR.W           R0, [R7,#var_38]
1AD20A:  STR.W           R5, [R7,#var_2C]
1AD20E:  ADD             R0, R9
1AD210:  SUB.W           R0, R5, R0,LSL#1
1AD214:  MOV             R1, R0
1AD216:  BLX             j_silk_inner_prod_aligned
1AD21A:  LDR.W           R1, [R7,#var_40]
1AD21E:  CMP             R8, R9
1AD220:  STR             R0, [R1]
1AD222:  BLE             loc_1AD25E
1AD224:  LDR.W           R3, [R7,#var_34]
1AD228:  RSB.W           R1, R8, #0
1AD22C:  RSB.W           R2, R9, #0
1AD230:  LDRSH.W         R5, [R6,R2,LSL#1]
1AD234:  LDRSH.W         R4, [R11,R2,LSL#1]
1AD238:  SUBS            R2, #1
1AD23A:  MLS.W           R0, R5, R5, R0
1AD23E:  SMLABB.W        R5, R4, R4, R0
1AD242:  CMP.W           R0, #0xFFFFFFFF
1AD246:  MOV             R0, R5
1AD248:  IT GT
1AD24A:  MOVGT           R0, #0x7FFFFFFF
1AD24E:  CMP.W           R5, #0xFFFFFFFF
1AD252:  IT GT
1AD254:  MOVGT           R0, R5
1AD256:  CMP             R1, R2
1AD258:  STR.W           R0, [R3],#4
1AD25C:  BNE             loc_1AD230
1AD25E:  LDR.W           R0, [R7,#var_28]
1AD262:  ADD.W           R10, R10, #1
1AD266:  LDR.W           R3, [R7,#var_3C]
1AD26A:  LDR.W           R5, [R7,#var_2C]
1AD26E:  ADD             R11, R0
1AD270:  ADD             R6, R0
1AD272:  LDR             R0, [R7,#arg_0]
1AD274:  ADD.W           R5, R5, R3,LSL#1
1AD278:  CMP             R10, R0
1AD27A:  BNE             loc_1AD1F0
1AD27C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AD286)
1AD27E:  LDR.W           R1, [R7,#var_24]
1AD282:  ADD             R0, PC; __stack_chk_guard_ptr
1AD284:  LDR             R0, [R0]; __stack_chk_guard
1AD286:  LDR             R0, [R0]
1AD288:  SUBS            R0, R0, R1
1AD28A:  ITTTT EQ
1AD28C:  SUBEQ.W         R4, R7, #-var_1C
1AD290:  MOVEQ           SP, R4
1AD292:  POPEQ.W         {R8-R11}
1AD296:  POPEQ           {R4-R7,PC}
1AD298:  BLX             __stack_chk_fail
