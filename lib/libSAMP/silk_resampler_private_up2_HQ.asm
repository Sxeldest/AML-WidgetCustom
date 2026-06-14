; =========================================================
; Game Engine Function: silk_resampler_private_up2_HQ
; Address            : 0x193118 - 0x19326E
; =========================================================

193118:  CMP             R3, #1
19311A:  IT LT
19311C:  BXLT            LR
19311E:  PUSH            {R4-R7,LR}
193120:  ADD             R7, SP, #0x14+var_8
193122:  PUSH.W          {R8-R11}
193126:  SUB             SP, SP, #0x20 ; ' '
193128:  LDRD.W          R8, R6, [R0]
19312C:  ADD.W           R9, R1, #2
193130:  STR             R6, [SP,#0x44+var_28]
193132:  LDRD.W          LR, R10, [R0,#8]
193136:  LDR             R4, [R0,#0x10]
193138:  STR             R0, [SP,#0x44+var_44]
19313A:  LDR             R5, [R0,#0x14]
19313C:  STR             R3, [SP,#0x44+var_2C]
19313E:  MOVW            R1, #0x1AC6
193142:  LDRSH.W         R11, [R2],#2
193146:  STR             R2, [SP,#0x44+var_30]
193148:  MOVW            R2, #0x8000
19314C:  RSB.W           R0, R10, R11,LSL#10
193150:  MOVT            R2, #0xFFFF
193154:  UXTH            R6, R0
193156:  MULS            R6, R1
193158:  LSRS            R6, R6, #0x10
19315A:  SMLATB.W        R0, R0, R1, R6
19315E:  MOVW            R1, #0x64A9
193162:  STR             R0, [SP,#0x44+var_34]
193164:  ADD             R0, R10
193166:  STR             R0, [SP,#0x44+var_38]
193168:  SUBS            R0, R0, R4
19316A:  MOV.W           R10, #1
19316E:  UXTH            R6, R0
193170:  MULS            R6, R1
193172:  LSRS            R6, R6, #0x10
193174:  SMLATB.W        R0, R0, R1, R6
193178:  MOV             R1, #0xFFFFD8F6
193180:  MOV             R6, LR
193182:  LDR.W           LR, [SP,#0x44+var_28]
193186:  STR             R0, [SP,#0x44+var_3C]
193188:  ADD             R4, R0
19318A:  SUBS            R0, R4, R5
19318C:  UXTH            R5, R0
19318E:  MULS            R5, R1
193190:  ASRS            R5, R5, #0x10
193192:  SMLATB.W        R1, R0, R1, R5
193196:  ADD             R0, R4
193198:  STR             R1, [SP,#0x44+var_40]
19319A:  ADDS            R5, R1, R4
19319C:  ADD.W           R5, R10, R5,ASR#9
1931A0:  ASRS            R1, R5, #1
1931A2:  CMP             R1, R2
1931A4:  MOV             R1, R2
1931A6:  MOVW            R2, #0x7FFF
1931AA:  IT GT
1931AC:  ASRGT           R1, R5, #1
1931AE:  CMP             R1, R2
1931B0:  IT GE
1931B2:  MOVGE           R1, R2
1931B4:  MOVW            R2, #0x6D2
1931B8:  STRH.W          R1, [R9]
1931BC:  RSB.W           R1, R8, R11,LSL#10
1931C0:  UXTH            R5, R1
1931C2:  MULS            R5, R2
1931C4:  LSRS            R5, R5, #0x10
1931C6:  SMLATB.W        R12, R1, R2, R5
1931CA:  MOVW            R1, #0x3A8A
1931CE:  MOV             R2, #0xFFFF98AB
1931D6:  ADD             R8, R12
1931D8:  SUB.W           R5, R8, LR
1931DC:  UXTH            R3, R5
1931DE:  MULS            R3, R1
1931E0:  LSRS            R3, R3, #0x10
1931E2:  SMLATB.W        R3, R5, R1, R3
1931E6:  ADD.W           R5, R3, LR
1931EA:  MOVW            LR, #0x8000
1931EE:  SUBS            R1, R5, R6
1931F0:  MOVT            LR, #0xFFFF
1931F4:  UXTH            R6, R1
1931F6:  MULS            R6, R2
1931F8:  ASRS            R6, R6, #0x10
1931FA:  SMLATB.W        R6, R1, R2, R6
1931FE:  ADDS            R2, R6, R5
193200:  ADD.W           R2, R10, R2,ASR#9
193204:  MOV.W           R10, R2,ASR#1
193208:  CMP             R10, LR
19320A:  MOV             R10, LR
19320C:  IT GT
19320E:  MOVGT.W         R10, R2,ASR#1
193212:  MOVW            R2, #0x7FFF
193216:  CMP             R10, R2
193218:  IT GE
19321A:  MOVGE           R10, R2
19321C:  STRH.W          R10, [R9,#-2]
193220:  ADD.W           R9, R9, #4
193224:  LDR             R2, [SP,#0x44+var_40]
193226:  ADD             R2, R0
193228:  ADDS            R0, R1, R5
19322A:  ADD.W           LR, R0, R6
19322E:  LDRD.W          R1, R0, [SP,#0x44+var_3C]
193232:  MOV             R5, R2
193234:  ADDS            R4, R1, R0
193236:  ADD.W           R0, R3, R8
19323A:  STR             R0, [SP,#0x44+var_28]
19323C:  ADD.W           R8, R12, R11,LSL#10
193240:  LDR             R0, [SP,#0x44+var_34]
193242:  LDRD.W          R2, R3, [SP,#0x44+var_30]
193246:  ADD.W           R10, R0, R11,LSL#10
19324A:  SUBS            R3, #1
19324C:  BNE.W           loc_19313C
193250:  LDR             R0, [SP,#0x44+var_44]
193252:  STR.W           R8, [R0]
193256:  LDR             R1, [SP,#0x44+var_28]
193258:  STRD.W          R1, LR, [R0,#4]
19325C:  STRD.W          R10, R4, [R0,#0xC]
193260:  STR             R5, [R0,#0x14]
193262:  ADD             SP, SP, #0x20 ; ' '
193264:  POP.W           {R8-R11}
193268:  POP.W           {R4-R7,LR}
19326C:  BX              LR
