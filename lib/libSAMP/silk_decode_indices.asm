; =========================================================
; Game Engine Function: silk_decode_indices
; Address            : 0x19415C - 0x194416
; =========================================================

19415C:  PUSH            {R4-R7,LR}
19415E:  ADD             R7, SP, #0xC
194160:  PUSH.W          {R8-R11}
194164:  SUB             SP, SP, #0x34
194166:  MOV             R4, R0
194168:  LDR             R0, =(__stack_chk_guard_ptr - 0x194172)
19416A:  LDR             R5, [R7,#arg_0]
19416C:  MOV             R9, R1
19416E:  ADD             R0, PC; __stack_chk_guard_ptr
194170:  CMP             R3, #0
194172:  LDR             R0, [R0]; __stack_chk_guard
194174:  LDR             R0, [R0]
194176:  STR             R0, [SP,#0x50+var_20]
194178:  BNE             loc_194188
19417A:  ADD.W           R0, R4, R2,LSL#2
19417E:  LDR.W           R0, [R0,#0x964]
194182:  CMP             R0, #0
194184:  BEQ.W           loc_194406
194188:  LDR             R0, =(silk_type_offset_VAD_iCDF_ptr - 0x194190)
19418A:  MOVS            R2, #8
19418C:  ADD             R0, PC; silk_type_offset_VAD_iCDF_ptr
19418E:  LDR             R1, [R0]; silk_type_offset_VAD_iCDF
194190:  MOV             R0, R9
194192:  BLX             j_ec_dec_icdf
194196:  ADDS            R0, #2
194198:  AND.W           R1, R0, #1
19419C:  LSRS            R0, R0, #1
19419E:  CMP             R5, #2
1941A0:  STRB.W          R1, [R4,#0xACE]
1941A4:  STRB.W          R0, [R4,#0xACD]
1941A8:  BNE             loc_1941BA
1941AA:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0x1941B2)
1941AC:  MOVS            R2, #8
1941AE:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
1941B0:  LDR             R1, [R0]; silk_delta_gain_iCDF
1941B2:  MOV             R0, R9
1941B4:  BLX             j_ec_dec_icdf
1941B8:  B               loc_1941E8
1941BA:  LDR             R1, =(silk_gain_iCDF_ptr - 0x1941C4)
1941BC:  LSLS            R0, R0, #0x18
1941BE:  MOVS            R2, #8
1941C0:  ADD             R1, PC; silk_gain_iCDF_ptr
1941C2:  LDR             R1, [R1]; silk_gain_iCDF
1941C4:  ADD.W           R1, R1, R0,ASR#21
1941C8:  MOV             R0, R9
1941CA:  BLX             j_ec_dec_icdf
1941CE:  LDR             R1, =(silk_uniform8_iCDF_ptr - 0x1941DC)
1941D0:  LSLS            R0, R0, #3
1941D2:  STRB.W          R0, [R4,#0xAB0]
1941D6:  MOV             R0, R9
1941D8:  ADD             R1, PC; silk_uniform8_iCDF_ptr
1941DA:  MOVS            R2, #8
1941DC:  LDR             R1, [R1]; silk_uniform8_iCDF
1941DE:  BLX             j_ec_dec_icdf
1941E2:  LDRB.W          R1, [R4,#0xAB0]
1941E6:  ADD             R0, R1
1941E8:  STRB.W          R0, [R4,#0xAB0]
1941EC:  LDR.W           R0, [R4,#0x914]
1941F0:  CMP             R0, #2
1941F2:  BLT             loc_194218
1941F4:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0x1941FE)
1941F6:  MOVW            R5, #0xAB1
1941FA:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
1941FC:  LDR             R6, [R0]; silk_delta_gain_iCDF
1941FE:  MOV             R0, R9
194200:  MOV             R1, R6
194202:  MOVS            R2, #8
194204:  BLX             j_ec_dec_icdf
194208:  STRB            R0, [R4,R5]
19420A:  SUBW            R0, R5, #0xAAF
19420E:  ADDS            R5, #1
194210:  LDR.W           R1, [R4,#0x914]
194214:  CMP             R0, R1
194216:  BLT             loc_1941FE
194218:  LDR.W           R0, [R4,#0xAAC]
19421C:  LDRSB.W         R1, [R4,#0xACD]
194220:  LDRSH.W         R2, [R0]
194224:  LDR             R0, [R0,#0x10]
194226:  ASRS            R1, R1, #1
194228:  SMLABB.W        R1, R1, R2, R0
19422C:  MOV             R0, R9
19422E:  MOVS            R2, #8
194230:  BLX             j_ec_dec_icdf
194234:  STRB.W          R0, [R4,#0xAB8]
194238:  ADD.W           R11, SP, #0x50+var_40
19423C:  LDR.W           R2, [R4,#0xAAC]
194240:  SXTB            R3, R0
194242:  MOV             R1, SP
194244:  MOV             R0, R11
194246:  BLX             j_silk_NLSF_unpack
19424A:  LDR.W           R0, [R4,#0xAAC]
19424E:  LDRSH.W         R1, [R0,#2]
194252:  CMP             R1, #1
194254:  BLT             loc_1942B2
194256:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0x194264)
194258:  ADDW            R6, R4, #0xAB9
19425C:  MOV.W           R10, #0
194260:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
194262:  LDR.W           R8, [R1]; silk_NLSF_EXT_iCDF
194266:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0x19426C)
194268:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
19426A:  LDR             R5, [R1]; silk_NLSF_EXT_iCDF
19426C:  LDRSH.W         R1, [R11,R10,LSL#1]
194270:  MOVS            R2, #8
194272:  LDR             R0, [R0,#0x1C]
194274:  ADD             R1, R0
194276:  MOV             R0, R9
194278:  BLX             j_ec_dec_icdf
19427C:  CMP             R0, #8
19427E:  BEQ             loc_194290
194280:  CBNZ            R0, loc_19429C
194282:  MOV             R0, R9
194284:  MOV             R1, R5
194286:  MOVS            R2, #8
194288:  BLX             j_ec_dec_icdf
19428C:  NEGS            R0, R0
19428E:  B               loc_19429C
194290:  MOV             R0, R9
194292:  MOV             R1, R8
194294:  MOVS            R2, #8
194296:  BLX             j_ec_dec_icdf
19429A:  ADDS            R0, #8
19429C:  ADDS            R0, #0xFC
19429E:  STRB.W          R0, [R6,R10]
1942A2:  ADD.W           R10, R10, #1
1942A6:  LDR.W           R0, [R4,#0xAAC]
1942AA:  LDRSH.W         R1, [R0,#2]
1942AE:  CMP             R10, R1
1942B0:  BLT             loc_19426C
1942B2:  LDR.W           R0, [R4,#0x914]
1942B6:  CMP             R0, #4
1942B8:  BNE             loc_1942CA
1942BA:  LDR             R0, =(silk_NLSF_interpolation_factor_iCDF_ptr - 0x1942C2)
1942BC:  MOVS            R2, #8
1942BE:  ADD             R0, PC; silk_NLSF_interpolation_factor_iCDF_ptr
1942C0:  LDR             R1, [R0]; silk_NLSF_interpolation_factor_iCDF
1942C2:  MOV             R0, R9
1942C4:  BLX             j_ec_dec_icdf
1942C8:  B               loc_1942CC
1942CA:  MOVS            R0, #4
1942CC:  LDRB.W          R1, [R4,#0xACD]
1942D0:  LDR.W           R10, [R7,#arg_0]
1942D4:  CMP             R1, #2
1942D6:  STRB.W          R0, [R4,#0xACF]
1942DA:  BNE             loc_1943D4
1942DC:  CMP.W           R10, #2
1942E0:  ITT EQ
1942E2:  LDREQ.W         R0, [R4,#0x95C]
1942E6:  CMPEQ           R0, #2
1942E8:  BEQ             loc_194316
1942EA:  LDR             R0, =(silk_pitch_lag_iCDF_ptr - 0x1942F2)
1942EC:  MOVS            R2, #8
1942EE:  ADD             R0, PC; silk_pitch_lag_iCDF_ptr
1942F0:  LDR             R1, [R0]; silk_pitch_lag_iCDF
1942F2:  MOV             R0, R9
1942F4:  BLX             j_ec_dec_icdf
1942F8:  LDR.W           R2, [R4,#0x90C]
1942FC:  LDR.W           R1, [R4,#0x94C]
194300:  LSRS            R2, R2, #1
194302:  MULS            R0, R2
194304:  MOVS            R2, #8
194306:  STRH.W          R0, [R4,#0xACA]
19430A:  MOV             R0, R9
19430C:  BLX             j_ec_dec_icdf
194310:  LDRH.W          R1, [R4,#0xACA]
194314:  B               loc_194334
194316:  LDR             R0, =(silk_pitch_delta_iCDF_ptr - 0x19431E)
194318:  MOVS            R2, #8
19431A:  ADD             R0, PC; silk_pitch_delta_iCDF_ptr
19431C:  LDR             R1, [R0]; silk_pitch_delta_iCDF
19431E:  MOV             R0, R9
194320:  BLX             j_ec_dec_icdf
194324:  LSLS            R1, R0, #0x10
194326:  CMP             R1, #1
194328:  BLT             loc_1942EA
19432A:  LDRH.W          R1, [R4,#0x960]
19432E:  ADD             R0, R1
194330:  MOVW            R1, #0xFFF7
194334:  ADD             R0, R1
194336:  STRH.W          R0, [R4,#0xACA]
19433A:  LDR.W           R1, [R4,#0x950]
19433E:  MOVS            R2, #8
194340:  STRH.W          R0, [R4,#0x960]
194344:  MOV             R0, R9
194346:  BLX             j_ec_dec_icdf
19434A:  LDR             R1, =(silk_LTP_per_index_iCDF_ptr - 0x194358)
19434C:  MOVS            R2, #8
19434E:  STRB.W          R0, [R4,#0xACC]
194352:  MOV             R0, R9
194354:  ADD             R1, PC; silk_LTP_per_index_iCDF_ptr
194356:  LDR             R1, [R1]; silk_LTP_per_index_iCDF
194358:  BLX             j_ec_dec_icdf
19435C:  LDR.W           R1, [R4,#0x914]
194360:  STRB.W          R0, [R4,#0xAD0]
194364:  CMP             R1, #1
194366:  BLT             loc_1943B4
194368:  LDR             R1, =(silk_LTP_gain_iCDF_ptrs_ptr - 0x194374)
19436A:  LSLS            R0, R0, #0x18
19436C:  ASRS            R0, R0, #0x16
19436E:  MOVS            R2, #8
194370:  ADD             R1, PC; silk_LTP_gain_iCDF_ptrs_ptr
194372:  LDR             R1, [R1]; silk_LTP_gain_iCDF_ptrs
194374:  LDR             R1, [R1,R0]
194376:  MOV             R0, R9
194378:  BLX             j_ec_dec_icdf
19437C:  LDR.W           R1, [R4,#0x914]
194380:  STRB.W          R0, [R4,#0xAB4]
194384:  CMP             R1, #2
194386:  BLT             loc_1943B4
194388:  LDR             R0, =(silk_LTP_gain_iCDF_ptrs_ptr - 0x194394)
19438A:  ADDW            R8, R4, #0xAB5
19438E:  MOVS            R6, #0
194390:  ADD             R0, PC; silk_LTP_gain_iCDF_ptrs_ptr
194392:  LDR             R5, [R0]; silk_LTP_gain_iCDF_ptrs
194394:  LDRSB.W         R0, [R4,#0xAD0]
194398:  MOVS            R2, #8
19439A:  LDR.W           R1, [R5,R0,LSL#2]
19439E:  MOV             R0, R9
1943A0:  BLX             j_ec_dec_icdf
1943A4:  STRB.W          R0, [R8,R6]
1943A8:  ADDS            R0, R6, #2
1943AA:  ADDS            R6, #1
1943AC:  LDR.W           R1, [R4,#0x914]
1943B0:  CMP             R0, R1
1943B2:  BLT             loc_194394
1943B4:  CMP.W           R10, #0
1943B8:  BEQ             loc_1943BE
1943BA:  MOVS            R0, #0
1943BC:  B               loc_1943CC
1943BE:  LDR             R0, =(silk_LTPscale_iCDF_ptr - 0x1943C6)
1943C0:  MOVS            R2, #8
1943C2:  ADD             R0, PC; silk_LTPscale_iCDF_ptr
1943C4:  LDR             R1, [R0]; silk_LTPscale_iCDF
1943C6:  MOV             R0, R9
1943C8:  BLX             j_ec_dec_icdf
1943CC:  LDRB.W          R1, [R4,#0xACD]
1943D0:  STRB.W          R0, [R4,#0xAD1]
1943D4:  LDR             R0, =(silk_uniform4_iCDF_ptr - 0x1943E2)
1943D6:  SXTB            R1, R1
1943D8:  STR.W           R1, [R4,#0x95C]
1943DC:  MOVS            R2, #8
1943DE:  ADD             R0, PC; silk_uniform4_iCDF_ptr
1943E0:  LDR             R1, [R0]; silk_uniform4_iCDF
1943E2:  MOV             R0, R9
1943E4:  BLX             j_ec_dec_icdf
1943E8:  STRB.W          R0, [R4,#0xAD2]
1943EC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1943F4)
1943EE:  LDR             R1, [SP,#0x50+var_20]
1943F0:  ADD             R0, PC; __stack_chk_guard_ptr
1943F2:  LDR             R0, [R0]; __stack_chk_guard
1943F4:  LDR             R0, [R0]
1943F6:  SUBS            R0, R0, R1
1943F8:  ITTT EQ
1943FA:  ADDEQ           SP, SP, #0x34 ; '4'
1943FC:  POPEQ.W         {R8-R11}
194400:  POPEQ           {R4-R7,PC}
194402:  BLX             __stack_chk_fail
194406:  LDR             R0, =(silk_type_offset_no_VAD_iCDF_ptr - 0x19440E)
194408:  MOVS            R2, #8
19440A:  ADD             R0, PC; silk_type_offset_no_VAD_iCDF_ptr
19440C:  LDR             R1, [R0]; silk_type_offset_no_VAD_iCDF
19440E:  MOV             R0, R9
194410:  BLX             j_ec_dec_icdf
194414:  B               loc_194198
