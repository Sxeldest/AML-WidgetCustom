; =========================================================
; Game Engine Function: sub_140170
; Address            : 0x140170 - 0x140418
; =========================================================

140170:  PUSH            {R4-R7,LR}
140172:  ADD             R7, SP, #0xC
140174:  PUSH.W          {R8-R11}
140178:  SUB             SP, SP, #4
14017A:  VPUSH           {D8-D9}
14017E:  SUB.W           SP, SP, #0x200
140182:  MOV             R4, R0
140184:  ADD             R0, SP, #0x230+var_148
140186:  BL              sub_17D4A8
14018A:  LDR             R0, [R4,#0x1C]
14018C:  MOVS            R1, #1
14018E:  ADD             R2, SP, #0x230+var_198
140190:  STR             R1, [SP,#0x230+var_230]
140192:  ADD.W           R1, SP, #0x230+var_196
140196:  ADD.W           R3, SP, #0x230+var_199
14019A:  BL              sub_104BA4
14019E:  MOV             R10, R0
1401A0:  ADD             R0, SP, #0x230+s2
1401A2:  ADDS            R6, R0, #6
1401A4:  ADR             R0, dword_140428
1401A6:  VLD1.64         {D8-D9}, [R0]
1401AA:  ADD.W           R1, R6, #0xC
1401AE:  LDR             R0, [R4,#0x1C]
1401B0:  VST1.32         {D8-D9}, [R1]
1401B4:  ADD             R1, SP, #0x230+var_188
1401B6:  BL              sub_F8910
1401BA:  LDR             R0, [R4,#0x1C]
1401BC:  ADD             R1, SP, #0x230+var_194
1401BE:  BL              sub_F8994
1401C2:  VLDR            S0, [SP,#0x230+var_158]
1401C6:  ADD.W           LR, SP, #0x230+var_184
1401CA:  VLDR            S2, [SP,#0x230+var_154]
1401CE:  VMOV            R0, S0
1401D2:  VLDR            S4, [SP,#0x230+var_150]
1401D6:  VMOV            R1, S2
1401DA:  STR             R4, [SP,#0x230+var_1F4]
1401DC:  VMOV            R5, S4
1401E0:  LDRB.W          R11, [SP,#0x230+var_199]
1401E4:  LDRB.W          R4, [SP,#0x230+var_1BC]
1401E8:  LDM.W           LR, {R2,R3,LR}
1401EC:  LDRH.W          R8, [SP,#0x230+var_198]
1401F0:  LDRH.W          R9, [SP,#0x230+var_196]
1401F4:  STRH.W          R9, [SP,#0x230+s2]
1401F8:  STRH.W          R10, [SP,#0x230+var_1DC]
1401FC:  STRH.W          R8, [SP,#0x230+var_1DE]
140200:  LDR.W           R12, [SP,#0x230+var_178]
140204:  LDR.W           R9, [SP,#0x230+var_170]
140208:  LDR.W           R8, [SP,#0x230+var_16C]
14020C:  LDR.W           R10, [SP,#0x230+var_14C]
140210:  STR             R0, [R6]
140212:  LDR             R0, [SP,#0x230+var_188]
140214:  STR             R0, [SP,#0x230+var_1F8]
140216:  AND.W           R0, R4, #0x3F ; '?'
14021A:  ORR.W           R0, R0, R11,LSL#6
14021E:  ADD.W           R11, SP, #0x230+var_164
140222:  STR             R1, [R6,#4]
140224:  LDR             R1, [SP,#0x230+var_168]
140226:  STR             R5, [R6,#8]
140228:  STRB.W          R0, [SP,#0x230+var_1BC]
14022C:  ADD             R0, SP, #0x230+var_1F0
14022E:  LDM.W           R11, {R4,R6,R11}
140232:  LDR             R5, [SP,#0x230+var_174]
140234:  VST1.64         {D8-D9}, [R0]
140238:  STRD.W          R8, R1, [SP,#0x230+var_220]
14023C:  LDR             R1, [SP,#0x230+var_1F8]
14023E:  STR             R4, [SP,#0x230+var_218]
140240:  STR.W           R10, [SP,#0x230+var_200]
140244:  STR.W           R11, [SP,#0x230+var_210]
140248:  VSTR            S0, [SP,#0x230+var_20C]
14024C:  VSTR            S2, [SP,#0x230+var_208]
140250:  VSTR            S4, [SP,#0x230+var_204]
140254:  STRD.W          LR, R12, [SP,#0x230+var_230]
140258:  STRD.W          R5, R9, [SP,#0x230+var_228]
14025C:  LDR             R4, [SP,#0x230+var_1F4]
14025E:  STR             R6, [SP,#0x230+var_214]
140260:  BL              sub_17D12C
140264:  ADD             R5, SP, #0x230+var_1F0
140266:  MOV             R0, R5
140268:  BL              sub_17D2F2
14026C:  ADD             R0, SP, #0x230+s2
14026E:  VLD1.64         {D16-D17}, [R5]
140272:  ADD.W           R6, R0, #0x12
140276:  MOV             R8, R4
140278:  LDR.W           R1, [R8,#0xB0]!
14027C:  VST1.16         {D16-D17}, [R6]
140280:  LDR             R0, [R6]
140282:  BL              sub_108700
140286:  VMOV            S0, R0
14028A:  VLDR            D8, =0.00001
14028E:  VCVT.F64.F32    D16, S0
140292:  VCMP.F64        D16, D8
140296:  VMRS            APSR_nzcv, FPSCR
14029A:  BPL             loc_1402F8
14029C:  LDR.W           R1, [R4,#0xB4]
1402A0:  LDR             R0, [R6,#4]
1402A2:  BL              sub_108700
1402A6:  VMOV            S0, R0
1402AA:  VCVT.F64.F32    D16, S0
1402AE:  VCMP.F64        D16, D8
1402B2:  VMRS            APSR_nzcv, FPSCR
1402B6:  BPL             loc_1402F8
1402B8:  LDR.W           R1, [R4,#0xB8]
1402BC:  LDR             R0, [R6,#8]
1402BE:  BL              sub_108700
1402C2:  VMOV            S0, R0
1402C6:  VCVT.F64.F32    D16, S0
1402CA:  VCMP.F64        D16, D8
1402CE:  VMRS            APSR_nzcv, FPSCR
1402D2:  BPL             loc_1402F8
1402D4:  LDR.W           R1, [R4,#0xBC]
1402D8:  LDR             R0, [R6,#0xC]
1402DA:  BL              sub_108700
1402DE:  VMOV            S0, R0
1402E2:  VCVT.F64.F32    D16, S0
1402E6:  VCMP.F64        D16, D8
1402EA:  VMRS            APSR_nzcv, FPSCR
1402EE:  BPL             loc_1402F8
1402F0:  VLD1.16         {D16-D17}, [R8]
1402F4:  VST1.16         {D16-D17}, [R6]
1402F8:  LDR             R0, [R4,#0x1C]
1402FA:  BL              sub_1042D8
1402FE:  VMOV            S0, R0
140302:  LDR             R0, [R4,#0x1C]
140304:  VCVT.U32.F32    S0, S0
140308:  VMOV            R1, S0
14030C:  STRB.W          R1, [SP,#0x230+var_1BE]
140310:  BL              sub_104300
140314:  VMOV            S0, R0
140318:  LDRB.W          R5, [SP,#0x230+var_1BC]
14031C:  LDR             R0, [R4,#0x1C]
14031E:  VCVT.U32.F32    S0, S0
140322:  VMOV            R1, S0
140326:  STRB.W          R1, [SP,#0x230+var_1BD]
14032A:  BL              sub_104648
14032E:  EORS            R0, R5
140330:  LDRB.W          R1, [SP,#0x230+var_1BC]
140334:  AND.W           R0, R0, #0x3F ; '?'
140338:  EORS            R0, R1
14033A:  STRB.W          R0, [SP,#0x230+var_1BC]
14033E:  MOV             R0, R4
140340:  BL              sub_1408D0
140344:  ADD             R3, SP, #0x230+var_194
140346:  STRB.W          R0, [SP,#0x230+var_1BB]
14034A:  LDRB            R0, [R4,#9]
14034C:  LDM             R3, {R1-R3}
14034E:  STR             R1, [R6,#0x14]
140350:  STR             R2, [R6,#0x18]
140352:  STR             R3, [R6,#0x1C]
140354:  CBZ             R0, loc_140368
140356:  LDRH.W          R0, [R4,#0x1A2]
14035A:  VLDR            S0, [R4,#0x194]
14035E:  VLDR            S2, [R4,#0x198]
140362:  VLDR            S4, [R4,#0x19C]
140366:  B               loc_140376
140368:  VLDR            S0, =0.0
14036C:  MOVS            R0, #0
14036E:  VMOV.F32        S2, S0
140372:  VMOV.F32        S4, S0
140376:  VMOV            R1, S4
14037A:  MOVS            R5, #1
14037C:  VMOV            R2, S2
140380:  STRB.W          R5, [R4,#0x2C]
140384:  VMOV            R3, S0
140388:  LDR             R5, [R4,#0x28]
14038A:  STRH.W          R0, [SP,#0x230+var_1A2]
14038E:  STR             R5, [SP,#0x230+var_1A0]
140390:  STR             R1, [R6,#0x28]
140392:  STR             R2, [R6,#0x24]
140394:  STR             R3, [R6,#0x20]
140396:  BL              sub_F0B30
14039A:  LDR.W           R1, [R4,#0x1C4]
14039E:  SUB.W           R5, R8, #0x12
1403A2:  SUBS            R0, R0, R1
1403A4:  CMP.W           R0, #0x1F4
1403A8:  BHI             loc_1403B6
1403AA:  ADD             R1, SP, #0x230+s2; s2
1403AC:  MOV             R0, R5; s1
1403AE:  MOVS            R2, #0x44 ; 'D'; n
1403B0:  BLX             memcmp
1403B4:  CBZ             R0, loc_140402
1403B6:  BL              sub_F0B30
1403BA:  STR.W           R0, [R4,#0x1C4]
1403BE:  MOVS            R0, #0xCF
1403C0:  STRB.W          R0, [R7,#var_31]
1403C4:  ADD             R0, SP, #0x230+var_148
1403C6:  SUB.W           R1, R7, #-var_31
1403CA:  MOVS            R2, #8
1403CC:  MOVS            R3, #1
1403CE:  BL              sub_17D628
1403D2:  ADD             R0, SP, #0x230+var_148
1403D4:  ADD             R1, SP, #0x230+s2
1403D6:  MOVS            R2, #0x44 ; 'D'
1403D8:  BL              sub_17D566
1403DC:  LDR             R0, =(off_23496C - 0x1403E2)
1403DE:  ADD             R0, PC; off_23496C
1403E0:  LDR             R0, [R0]; dword_23DEF4
1403E2:  LDR             R0, [R0]
1403E4:  LDR.W           R0, [R0,#0x210]
1403E8:  LDR             R1, [R0]
1403EA:  LDR             R6, [R1,#0x20]
1403EC:  MOVS            R1, #1
1403EE:  MOVS            R2, #1
1403F0:  STR             R1, [SP,#0x230+var_230]
1403F2:  ADD             R1, SP, #0x230+var_148
1403F4:  MOVS            R3, #7
1403F6:  BLX             R6
1403F8:  ADD             R1, SP, #0x230+s2; src
1403FA:  MOV             R0, R5; dest
1403FC:  MOVS            R2, #0x44 ; 'D'; n
1403FE:  BLX             j_memcpy
140402:  ADD             R0, SP, #0x230+var_148
140404:  BL              sub_17D542
140408:  ADD.W           SP, SP, #0x200
14040C:  VPOP            {D8-D9}
140410:  ADD             SP, SP, #4
140412:  POP.W           {R8-R11}
140416:  POP             {R4-R7,PC}
