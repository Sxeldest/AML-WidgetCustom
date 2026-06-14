; =========================================================
; Game Engine Function: _ZN27CTaskComplexDestroyCarMelee13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4E62B8 - 0x4E63DC
; =========================================================

4E62B8:  PUSH            {R4-R7,LR}
4E62BA:  ADD             R7, SP, #0xC
4E62BC:  PUSH.W          {R8}
4E62C0:  SUB             SP, SP, #0x10
4E62C2:  MOV             R4, R3
4E62C4:  MOV             R5, R1
4E62C6:  MOV             R6, R0
4E62C8:  CMP             R2, #1
4E62CA:  BEQ             loc_4E62EA
4E62CC:  CMP             R2, #2
4E62CE:  BNE             loc_4E6328
4E62D0:  LDR             R0, [R6,#8]
4E62D2:  MOVS            R2, #2
4E62D4:  MOV             R3, R4
4E62D6:  LDR             R1, [R0]
4E62D8:  LDR.W           R12, [R1,#0x1C]
4E62DC:  MOV             R1, R5
4E62DE:  ADD             SP, SP, #0x10
4E62E0:  POP.W           {R8}
4E62E4:  POP.W           {R4-R7,LR}
4E62E8:  BX              R12
4E62EA:  CBZ             R4, loc_4E6318
4E62EC:  LDR             R0, [R4]
4E62EE:  LDR             R1, [R0,#8]
4E62F0:  MOV             R0, R4
4E62F2:  BLX             R1
4E62F4:  CMP             R0, #1
4E62F6:  BNE             loc_4E6302
4E62F8:  LDR             R0, [R6,#0x10]
4E62FA:  CBZ             R0, loc_4E6302
4E62FC:  LDR             R1, [R4,#0x14]
4E62FE:  CMP             R1, R0
4E6300:  BEQ             loc_4E6336
4E6302:  LDR             R0, [R4]
4E6304:  LDR             R1, [R0,#8]
4E6306:  MOV             R0, R4
4E6308:  BLX             R1
4E630A:  CMP             R0, #0x38 ; '8'
4E630C:  BNE             loc_4E6318
4E630E:  LDR             R0, [R6,#0x10]
4E6310:  CBZ             R0, loc_4E6318
4E6312:  LDR             R1, [R4,#0x10]
4E6314:  CMP             R1, R0
4E6316:  BEQ             loc_4E632C
4E6318:  LDR             R0, [R6,#8]
4E631A:  MOVS            R2, #1
4E631C:  MOV             R3, R4
4E631E:  LDR             R1, [R0]
4E6320:  LDR             R6, [R1,#0x1C]
4E6322:  MOV             R1, R5
4E6324:  BLX             R6
4E6326:  B               loc_4E632E
4E6328:  MOVS            R0, #1
4E632A:  STRB            R0, [R6,#0xC]
4E632C:  MOVS            R0, #0
4E632E:  ADD             SP, SP, #0x10
4E6330:  POP.W           {R8}
4E6334:  POP             {R4-R7,PC}
4E6336:  VLDR            D16, [R0,#0x48]
4E633A:  VSTR            D16, [SP,#0x20+var_20]
4E633E:  VLDR            S0, [SP,#0x20+var_20]
4E6342:  VLDR            S2, [SP,#0x20+var_20+4]
4E6346:  VMUL.F32        S0, S0, S0
4E634A:  LDR             R0, [R0,#0x50]
4E634C:  VMUL.F32        S2, S2, S2
4E6350:  STR             R0, [SP,#0x20+var_18]
4E6352:  VLDR            S4, [SP,#0x20+var_18]
4E6356:  VMUL.F32        S4, S4, S4
4E635A:  VADD.F32        S0, S0, S2
4E635E:  VADD.F32        S0, S0, S4
4E6362:  VCMP.F32        S0, #0.0
4E6366:  VMRS            APSR_nzcv, FPSCR
4E636A:  BEQ             loc_4E632C
4E636C:  VLDR            S2, =0.0225
4E6370:  VCMPE.F32       S0, S2
4E6374:  VMRS            APSR_nzcv, FPSCR
4E6378:  BGE             loc_4E6302
4E637A:  MOV             R0, SP
4E637C:  ORR.W           R8, R0, #4
4E6380:  MOV             R0, SP; this
4E6382:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4E6386:  LDR             R0, [R6,#0x10]
4E6388:  LDR             R1, [R5,#0x14]
4E638A:  LDR             R2, [R0,#0x14]
4E638C:  ADD.W           R3, R1, #0x30 ; '0'
4E6390:  CMP             R1, #0
4E6392:  IT EQ
4E6394:  ADDEQ           R3, R5, #4
4E6396:  ADD.W           R1, R2, #0x30 ; '0'
4E639A:  CMP             R2, #0
4E639C:  VLDR            S0, [R3]
4E63A0:  IT EQ
4E63A2:  ADDEQ           R1, R0, #4
4E63A4:  VLDR            D16, [R3,#4]
4E63A8:  VLDR            S2, [R1]
4E63AC:  VLDR            D17, [R1,#4]
4E63B0:  VSUB.F32        S0, S0, S2
4E63B4:  VLDR            S2, [SP,#0x20+var_20]
4E63B8:  VSUB.F32        D16, D16, D17
4E63BC:  VLDR            D17, [R8]
4E63C0:  VMUL.F32        S0, S0, S2
4E63C4:  VMUL.F32        D1, D16, D17
4E63C8:  VADD.F32        S0, S0, S2
4E63CC:  VADD.F32        S0, S0, S3
4E63D0:  VCMPE.F32       S0, #0.0
4E63D4:  VMRS            APSR_nzcv, FPSCR
4E63D8:  BLE             loc_4E6302
4E63DA:  B               loc_4E632C
