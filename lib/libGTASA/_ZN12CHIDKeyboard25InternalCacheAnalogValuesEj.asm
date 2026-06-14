; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard25InternalCacheAnalogValuesEj
; Address            : 0x29552A - 0x2955A8
; =========================================================

29552A:  PUSH            {R4-R7,LR}
29552C:  ADD             R7, SP, #0xC
29552E:  PUSH.W          {R11}
295532:  MOV             R4, R0
295534:  LDR             R0, [R4,#8]
295536:  CBZ             R0, loc_2955A2
295538:  MOVS            R5, #0
29553A:  MOVS            R6, #0xC
29553C:  LDR             R1, [R4,#0xC]
29553E:  ADDS            R0, R1, R6
295540:  LDR.W           R0, [R0,#-0xC]
295544:  CMP             R0, #0x63 ; 'c'
295546:  BGT             loc_295550
295548:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
29554C:  CBNZ            R0, loc_295598
29554E:  B               loc_29555E
295550:  LDR             R1, [R1,R6]; int
295552:  CMP             R1, #3
295554:  BCS             loc_295574
295556:  MOVS            R0, #0; int
295558:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
29555C:  CBNZ            R0, loc_295598
29555E:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
295562:  VMOV            D16, R0, R1
295566:  LDR             R0, [R4,#0xC]
295568:  VCVT.F32.F64    S0, D16
29556C:  ADD             R0, R6
29556E:  VSTR            S0, [R0,#4]
295572:  B               loc_295598
295574:  BNE             loc_29558E
295576:  MOVS            R0, #0; int
295578:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
29557C:  VMOV            S0, R0
295580:  VCMPE.F32       S0, #0.0
295584:  VMRS            APSR_nzcv, FPSCR
295588:  BGT             loc_295598
29558A:  LDR             R0, [R4,#0xC]
29558C:  LDR             R1, [R0,R6]
29558E:  CMP             R1, #4
295590:  BNE             loc_295598
295592:  MOVS            R0, #0; int
295594:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
295598:  LDR             R0, [R4,#8]
29559A:  ADDS            R5, #1
29559C:  ADDS            R6, #0x14
29559E:  CMP             R5, R0
2955A0:  BCC             loc_29553C
2955A2:  POP.W           {R11}
2955A6:  POP             {R4-R7,PC}
