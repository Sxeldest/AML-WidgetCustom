; =========================================================
; Game Engine Function: alListener3f
; Address            : 0x2552AC - 0x25546C
; =========================================================

2552AC:  PUSH            {R4-R7,LR}
2552AE:  ADD             R7, SP, #0xC
2552B0:  PUSH.W          {R8,R9,R11}
2552B4:  VPUSH           {D8-D10}
2552B8:  MOV             R9, R3
2552BA:  MOV             R4, R2
2552BC:  MOV             R6, R1
2552BE:  MOV             R5, R0
2552C0:  BLX             j_GetContextRef
2552C4:  MOV             R8, R0
2552C6:  CMP.W           R8, #0
2552CA:  BEQ             loc_255342
2552CC:  VMOV            S16, R9
2552D0:  MOVW            R0, #0x1006
2552D4:  VMOV            S18, R4
2552D8:  CMP             R5, R0
2552DA:  VMOV            S20, R6
2552DE:  BEQ             loc_25534C
2552E0:  MOVW            R0, #0x1004
2552E4:  CMP             R5, R0
2552E6:  BNE             loc_2553B6
2552E8:  VABS.F32        S2, S20
2552EC:  VLDR            S0, =+Inf
2552F0:  VCMP.F32        S2, S0
2552F4:  VMRS            APSR_nzcv, FPSCR
2552F8:  ITTT NE
2552FA:  VABSNE.F32      S2, S18
2552FE:  VCMPNE.F32      S2, S0
255302:  VMRSNE          APSR_nzcv, FPSCR
255306:  BEQ             loc_2553EC
255308:  VABS.F32        S2, S16
25530C:  VCMP.F32        S2, S0
255310:  VMRS            APSR_nzcv, FPSCR
255314:  BEQ             loc_2553EC
255316:  LDR.W           R0, [R8,#0x88]
25531A:  MOV             R4, #0x161AC
255322:  LDR             R1, [R0,R4]
255324:  LDR             R1, [R1,#0x2C]
255326:  BLX             R1
255328:  LDR.W           R0, [R8,#4]
25532C:  VSTR            S20, [R0]
255330:  LDR.W           R0, [R8,#4]
255334:  VSTR            S18, [R0,#4]
255338:  LDR.W           R0, [R8,#4]
25533C:  VSTR            S16, [R0,#8]
255340:  B               loc_2553A4
255342:  VPOP            {D8-D10}
255346:  POP.W           {R8,R9,R11}
25534A:  POP             {R4-R7,PC}
25534C:  VABS.F32        S2, S20
255350:  VLDR            S0, =+Inf
255354:  VCMP.F32        S2, S0
255358:  VMRS            APSR_nzcv, FPSCR
25535C:  ITTT NE
25535E:  VABSNE.F32      S2, S18
255362:  VCMPNE.F32      S2, S0
255366:  VMRSNE          APSR_nzcv, FPSCR
25536A:  BEQ             loc_255420
25536C:  VABS.F32        S2, S16
255370:  VCMP.F32        S2, S0
255374:  VMRS            APSR_nzcv, FPSCR
255378:  BEQ             loc_255420
25537A:  LDR.W           R0, [R8,#0x88]
25537E:  MOV             R4, #0x161AC
255386:  LDR             R1, [R0,R4]
255388:  LDR             R1, [R1,#0x2C]
25538A:  BLX             R1
25538C:  LDR.W           R0, [R8,#4]
255390:  VSTR            S20, [R0,#0xC]
255394:  LDR.W           R0, [R8,#4]
255398:  VSTR            S18, [R0,#0x10]
25539C:  LDR.W           R0, [R8,#4]
2553A0:  VSTR            S16, [R0,#0x14]
2553A4:  LDR.W           R0, [R8,#0x88]
2553A8:  MOVS            R1, #1
2553AA:  STR.W           R1, [R8,#0x54]
2553AE:  LDR             R1, [R0,R4]
2553B0:  LDR             R1, [R1,#0x30]
2553B2:  BLX             R1
2553B4:  B               loc_25545A
2553B6:  LDR             R0, =(TrapALError_ptr - 0x2553BC)
2553B8:  ADD             R0, PC; TrapALError_ptr
2553BA:  LDR             R0, [R0]; TrapALError
2553BC:  LDRB            R0, [R0]
2553BE:  CMP             R0, #0
2553C0:  ITT NE
2553C2:  MOVNE           R0, #5; sig
2553C4:  BLXNE           raise
2553C8:  LDREX.W         R0, [R8,#0x50]
2553CC:  CMP             R0, #0
2553CE:  BNE             loc_255452
2553D0:  ADD.W           R0, R8, #0x50 ; 'P'
2553D4:  MOVW            R1, #0xA002
2553D8:  DMB.W           ISH
2553DC:  STREX.W         R2, R1, [R0]
2553E0:  CBZ             R2, loc_255456
2553E2:  LDREX.W         R2, [R0]
2553E6:  CMP             R2, #0
2553E8:  BEQ             loc_2553DC
2553EA:  B               loc_255452
2553EC:  LDR             R0, =(TrapALError_ptr - 0x2553F2)
2553EE:  ADD             R0, PC; TrapALError_ptr
2553F0:  LDR             R0, [R0]; TrapALError
2553F2:  LDRB            R0, [R0]
2553F4:  CMP             R0, #0
2553F6:  ITT NE
2553F8:  MOVNE           R0, #5; sig
2553FA:  BLXNE           raise
2553FE:  LDREX.W         R0, [R8,#0x50]
255402:  CBNZ            R0, loc_255452
255404:  ADD.W           R0, R8, #0x50 ; 'P'
255408:  MOVW            R1, #0xA003
25540C:  DMB.W           ISH
255410:  STREX.W         R2, R1, [R0]
255414:  CBZ             R2, loc_255456
255416:  LDREX.W         R2, [R0]
25541A:  CMP             R2, #0
25541C:  BEQ             loc_255410
25541E:  B               loc_255452
255420:  LDR             R0, =(TrapALError_ptr - 0x255426)
255422:  ADD             R0, PC; TrapALError_ptr
255424:  LDR             R0, [R0]; TrapALError
255426:  LDRB            R0, [R0]
255428:  CMP             R0, #0
25542A:  ITT NE
25542C:  MOVNE           R0, #5; sig
25542E:  BLXNE           raise
255432:  LDREX.W         R0, [R8,#0x50]
255436:  CBNZ            R0, loc_255452
255438:  ADD.W           R0, R8, #0x50 ; 'P'
25543C:  MOVW            R1, #0xA003
255440:  DMB.W           ISH
255444:  STREX.W         R2, R1, [R0]
255448:  CBZ             R2, loc_255456
25544A:  LDREX.W         R2, [R0]
25544E:  CMP             R2, #0
255450:  BEQ             loc_255444
255452:  CLREX.W
255456:  DMB.W           ISH
25545A:  MOV             R0, R8
25545C:  VPOP            {D8-D10}
255460:  POP.W           {R8,R9,R11}
255464:  POP.W           {R4-R7,LR}
255468:  B.W             ALCcontext_DecRef
