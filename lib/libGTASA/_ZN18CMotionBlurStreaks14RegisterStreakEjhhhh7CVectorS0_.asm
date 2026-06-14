; =========================================================
; Game Engine Function: _ZN18CMotionBlurStreaks14RegisterStreakEjhhhh7CVectorS0_
; Address            : 0x5C0250 - 0x5C036C
; =========================================================

5C0250:  PUSH            {R4-R7,LR}
5C0252:  ADD             R7, SP, #0xC
5C0254:  PUSH.W          {R8-R11}
5C0258:  LDR             R6, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C0262)
5C025A:  LDRD.W          R12, LR, [R7,#arg_14]
5C025E:  ADD             R6, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0260:  LDRD.W          R9, R5, [R7,#arg_C]
5C0264:  LDRD.W          R10, R11, [R7,#arg_4]
5C0268:  LDR             R6, [R6]; CMotionBlurStreaks::aStreaks ...
5C026A:  LDR.W           R8, [R7,#arg_0]
5C026E:  LDR             R6, [R6]; CMotionBlurStreaks::aStreaks
5C0270:  CMP             R6, R0
5C0272:  BNE             loc_5C0278
5C0274:  MOVS            R0, #0
5C0276:  B               loc_5C02B4
5C0278:  LDR             R4, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C027E)
5C027A:  ADD             R4, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C027C:  LDR             R4, [R4]; CMotionBlurStreaks::aStreaks ...
5C027E:  LDR             R4, [R4,#(dword_A56654 - 0xA56600)]
5C0280:  CMP             R4, R0
5C0282:  BNE             loc_5C0288
5C0284:  MOVS            R0, #1
5C0286:  B               loc_5C02B4
5C0288:  LDR             R5, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C028E)
5C028A:  ADD             R5, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C028C:  LDR             R5, [R5]; CMotionBlurStreaks::aStreaks ...
5C028E:  LDR.W           R12, [R5,#(dword_A566A8 - 0xA56600)]
5C0292:  CMP             R12, R0
5C0294:  BNE             loc_5C029A
5C0296:  MOVS            R0, #2
5C0298:  B               loc_5C02AE
5C029A:  LDR             R5, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C02A0)
5C029C:  ADD             R5, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C029E:  LDR             R5, [R5]; CMotionBlurStreaks::aStreaks ...
5C02A0:  LDR.W           LR, [R5,#(dword_A566FC - 0xA56600)]
5C02A4:  CMP             LR, R0
5C02A6:  BNE             loc_5C02E6
5C02A8:  MOVS            R0, #3
5C02AA:  LDR.W           LR, [R7,#arg_18]
5C02AE:  LDR             R5, [R7,#arg_14]
5C02B0:  MOV             R12, R5
5C02B2:  LDR             R5, [R7,#arg_10]
5C02B4:  LDR             R6, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C02BC)
5C02B6:  MOVS            R4, #0x54 ; 'T'
5C02B8:  ADD             R6, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C02BA:  LDR             R6, [R6]; CMotionBlurStreaks::aStreaks ...
5C02BC:  SMLABB.W        R0, R0, R4, R6
5C02C0:  STRB            R2, [R0,#5]
5C02C2:  STRB            R1, [R0,#4]
5C02C4:  ADD.W           R1, R0, #0x2C ; ','
5C02C8:  STRB            R3, [R0,#6]
5C02CA:  STRB.W          R8, [R0,#7]
5C02CE:  STRD.W          R10, R11, [R0,#8]
5C02D2:  STR.W           R9, [R0,#0x10]
5C02D6:  STM.W           R1, {R5,R12,LR}
5C02DA:  MOVS            R1, #1
5C02DC:  STRB.W          R1, [R0,#0x50]
5C02E0:  POP.W           {R8-R11}
5C02E4:  POP             {R4-R7,PC}
5C02E6:  MOVS            R5, #0
5C02E8:  CBZ             R6, loc_5C0306
5C02EA:  CBZ             R4, loc_5C0312
5C02EC:  CMP.W           R12, #0
5C02F0:  BEQ             loc_5C0320
5C02F2:  CMP.W           LR, #0
5C02F6:  BNE             loc_5C0366
5C02F8:  LDR             R6, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C0300)
5C02FA:  MOVS            R4, #3
5C02FC:  ADD             R6, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C02FE:  LDR             R6, [R6]; CMotionBlurStreaks::aStreaks ...
5C0300:  ADD.W           R12, R6, #0xFC
5C0304:  B               loc_5C032C
5C0306:  LDR             R6, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C030E)
5C0308:  MOVS            R4, #0
5C030A:  ADD             R6, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C030C:  LDR.W           R12, [R6]; CMotionBlurStreaks::aStreaks ...
5C0310:  B               loc_5C032C
5C0312:  LDR             R6, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C031A)
5C0314:  MOVS            R4, #1
5C0316:  ADD             R6, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0318:  LDR             R6, [R6]; CMotionBlurStreaks::aStreaks ...
5C031A:  ADD.W           R12, R6, #0x54 ; 'T'
5C031E:  B               loc_5C032C
5C0320:  LDR             R6, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C0328)
5C0322:  MOVS            R4, #2
5C0324:  ADD             R6, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0326:  LDR             R6, [R6]; CMotionBlurStreaks::aStreaks ...
5C0328:  ADD.W           R12, R6, #0xA8
5C032C:  LDR             R6, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C033A)
5C032E:  MOV.W           LR, #0x54 ; 'T'
5C0332:  STR.W           R0, [R12]; CMotionBlurStreaks::aStreaks ...
5C0336:  ADD             R6, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0338:  LDR             R0, [R7,#arg_10]
5C033A:  LDR             R6, [R6]; CMotionBlurStreaks::aStreaks ...
5C033C:  SMLABB.W        R6, R4, LR, R6
5C0340:  STRB            R2, [R6,#5]
5C0342:  STRB            R1, [R6,#4]
5C0344:  STRB            R3, [R6,#6]
5C0346:  STRB.W          R8, [R6,#7]
5C034A:  STRD.W          R10, R11, [R6,#8]
5C034E:  STR.W           R9, [R6,#0x10]
5C0352:  STR             R0, [R6,#0x2C]
5C0354:  LDR             R0, [R7,#arg_14]
5C0356:  STR             R0, [R6,#0x30]
5C0358:  LDR             R0, [R7,#arg_18]
5C035A:  STR             R0, [R6,#0x34]
5C035C:  MOVS            R0, #1
5C035E:  STRH.W          R5, [R6,#0x51]
5C0362:  STRB.W          R0, [R6,#0x50]
5C0366:  POP.W           {R8-R11}
5C036A:  POP             {R4-R7,PC}
