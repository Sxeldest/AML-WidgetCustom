; =========================================================
; Game Engine Function: alGetSource3f
; Address            : 0x259264 - 0x25938E
; =========================================================

259264:  PUSH            {R4-R7,LR}
259266:  ADD             R7, SP, #0xC
259268:  PUSH.W          {R8,R9,R11}
25926C:  SUB             SP, SP, #0x18
25926E:  MOV             R8, R3
259270:  MOV             R9, R2
259272:  MOV             R5, R1
259274:  MOV             R6, R0
259276:  BLX             j_GetContextRef
25927A:  MOV             R4, R0
25927C:  CMP             R4, #0
25927E:  BEQ.W           loc_259386
259282:  ADD.W           R0, R4, #8
259286:  MOV             R1, R6
259288:  BLX             j_LookupUIntMapKey
25928C:  CBZ             R0, loc_2592DC
25928E:  CMP.W           R9, #0
259292:  IT NE
259294:  CMPNE.W         R8, #0
259298:  BEQ             loc_259312
25929A:  LDR             R6, [R7,#arg_0]
25929C:  CBZ             R6, loc_259312
25929E:  MOVW            R1, #0x1004
2592A2:  SUBS            R1, R5, R1
2592A4:  CMP             R1, #3
2592A6:  BCS             loc_259346
2592A8:  MOV             R3, SP
2592AA:  MOV             R1, R4
2592AC:  MOV             R2, R5
2592AE:  BL              sub_258E98
2592B2:  CMP             R0, #0
2592B4:  BNE             loc_259380
2592B6:  VLDR            D16, [SP,#0x30+var_30]
2592BA:  VCVT.F32.F64    S0, D16
2592BE:  VSTR            S0, [R9]
2592C2:  VLDR            D16, [SP,#0x30+var_28]
2592C6:  VCVT.F32.F64    S0, D16
2592CA:  VSTR            S0, [R8]
2592CE:  VLDR            D16, [SP,#0x30+var_20]
2592D2:  VCVT.F32.F64    S0, D16
2592D6:  VSTR            S0, [R6]
2592DA:  B               loc_259380
2592DC:  LDR             R0, =(TrapALError_ptr - 0x2592E2)
2592DE:  ADD             R0, PC; TrapALError_ptr
2592E0:  LDR             R0, [R0]; TrapALError
2592E2:  LDRB            R0, [R0]
2592E4:  CMP             R0, #0
2592E6:  ITT NE
2592E8:  MOVNE           R0, #5; sig
2592EA:  BLXNE           raise
2592EE:  LDREX.W         R0, [R4,#0x50]
2592F2:  CMP             R0, #0
2592F4:  BNE             loc_259378
2592F6:  ADD.W           R0, R4, #0x50 ; 'P'
2592FA:  MOVW            R1, #0xA001
2592FE:  DMB.W           ISH
259302:  STREX.W         R2, R1, [R0]
259306:  CBZ             R2, loc_25937C
259308:  LDREX.W         R2, [R0]
25930C:  CMP             R2, #0
25930E:  BEQ             loc_259302
259310:  B               loc_259378
259312:  LDR             R0, =(TrapALError_ptr - 0x259318)
259314:  ADD             R0, PC; TrapALError_ptr
259316:  LDR             R0, [R0]; TrapALError
259318:  LDRB            R0, [R0]
25931A:  CMP             R0, #0
25931C:  ITT NE
25931E:  MOVNE           R0, #5; sig
259320:  BLXNE           raise
259324:  LDREX.W         R0, [R4,#0x50]
259328:  CBNZ            R0, loc_259378
25932A:  ADD.W           R0, R4, #0x50 ; 'P'
25932E:  MOVW            R1, #0xA003
259332:  DMB.W           ISH
259336:  STREX.W         R2, R1, [R0]
25933A:  CBZ             R2, loc_25937C
25933C:  LDREX.W         R2, [R0]
259340:  CMP             R2, #0
259342:  BEQ             loc_259336
259344:  B               loc_259378
259346:  LDR             R0, =(TrapALError_ptr - 0x25934C)
259348:  ADD             R0, PC; TrapALError_ptr
25934A:  LDR             R0, [R0]; TrapALError
25934C:  LDRB            R0, [R0]
25934E:  CMP             R0, #0
259350:  ITT NE
259352:  MOVNE           R0, #5; sig
259354:  BLXNE           raise
259358:  LDREX.W         R0, [R4,#0x50]
25935C:  CBNZ            R0, loc_259378
25935E:  ADD.W           R0, R4, #0x50 ; 'P'
259362:  MOVW            R1, #0xA002
259366:  DMB.W           ISH
25936A:  STREX.W         R2, R1, [R0]
25936E:  CBZ             R2, loc_25937C
259370:  LDREX.W         R2, [R0]
259374:  CMP             R2, #0
259376:  BEQ             loc_25936A
259378:  CLREX.W
25937C:  DMB.W           ISH
259380:  MOV             R0, R4
259382:  BLX             j_ALCcontext_DecRef
259386:  ADD             SP, SP, #0x18
259388:  POP.W           {R8,R9,R11}
25938C:  POP             {R4-R7,PC}
