; =========================================================
; Game Engine Function: sub_26440C
; Address            : 0x26440C - 0x264476
; =========================================================

26440C:  PUSH            {R4,R6,R7,LR}
26440E:  ADD             R7, SP, #8
264410:  MOV             R4, R1
264412:  CMP             R2, #3
264414:  BEQ             loc_264424
264416:  CMP             R2, #2
264418:  BEQ             loc_26442C
26441A:  CMP             R2, #1
26441C:  BNE             loc_26443A
26441E:  VLDR            S0, [R0,#0x84]
264422:  B               loc_264430
264424:  LDR.W           R0, [R0,#0x8C]
264428:  STR             R0, [R3]
26442A:  POP             {R4,R6,R7,PC}
26442C:  VLDR            S0, [R0,#0x88]
264430:  VCVT.S32.F32    S0, S0
264434:  VSTR            S0, [R3]
264438:  POP             {R4,R6,R7,PC}
26443A:  LDR             R0, =(TrapALError_ptr - 0x264440)
26443C:  ADD             R0, PC; TrapALError_ptr
26443E:  LDR             R0, [R0]; TrapALError
264440:  LDRB            R0, [R0]
264442:  CMP             R0, #0
264444:  ITT NE
264446:  MOVNE           R0, #5; sig
264448:  BLXNE           raise
26444C:  LDREX.W         R0, [R4,#0x50]
264450:  CBNZ            R0, loc_26446C
264452:  ADD.W           R0, R4, #0x50 ; 'P'
264456:  MOVW            R1, #0xA002
26445A:  DMB.W           ISH
26445E:  STREX.W         R2, R1, [R0]
264462:  CBZ             R2, loc_264470
264464:  LDREX.W         R2, [R0]
264468:  CMP             R2, #0
26446A:  BEQ             loc_26445E
26446C:  CLREX.W
264470:  DMB.W           ISH
264474:  POP             {R4,R6,R7,PC}
