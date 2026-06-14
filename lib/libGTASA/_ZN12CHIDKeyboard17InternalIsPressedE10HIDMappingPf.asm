; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard17InternalIsPressedE10HIDMappingPf
; Address            : 0x295290 - 0x29535C
; =========================================================

295290:  PUSH            {R4-R7,LR}
295292:  ADD             R7, SP, #0xC
295294:  PUSH.W          {R8,R9,R11}
295298:  VPUSH           {D8-D10}
29529C:  MOV             R6, R0
29529E:  MOV             R8, R2
2952A0:  LDR             R0, [R6,#8]
2952A2:  MOV             R9, R1
2952A4:  CMP             R0, #0
2952A6:  BEQ             loc_29534C
2952A8:  VMOV.F32        S18, #1.0
2952AC:  VLDR            S16, =0.0
2952B0:  VMOV.F32        S20, #-1.0
2952B4:  MOVS            R4, #0
2952B6:  MOVS            R5, #0
2952B8:  LDR             R2, [R6,#0xC]
2952BA:  ADDS            R1, R2, R4
2952BC:  LDR             R3, [R1,#4]
2952BE:  CMP             R3, R9
2952C0:  BNE             loc_295344
2952C2:  LDR             R0, [R2,R4]
2952C4:  CMP             R0, #0x63 ; 'c'
2952C6:  BGT             loc_2952CE
2952C8:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
2952CC:  B               loc_295316
2952CE:  LDR             R1, [R1,#0xC]; int
2952D0:  CMP             R1, #3
2952D2:  BCS             loc_2952DC
2952D4:  MOVS            R0, #0; int
2952D6:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
2952DA:  B               loc_295316
2952DC:  BNE             loc_2952F8
2952DE:  MOVS            R0, #0; int
2952E0:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
2952E4:  VMOV            S0, R0
2952E8:  VCMPE.F32       S0, #0.0
2952EC:  VMRS            APSR_nzcv, FPSCR
2952F0:  BGT             loc_295310
2952F2:  LDR             R0, [R6,#0xC]
2952F4:  ADD             R0, R4
2952F6:  LDR             R1, [R0,#0xC]
2952F8:  CMP             R1, #4
2952FA:  BNE             loc_295314
2952FC:  MOVS            R0, #0; int
2952FE:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
295302:  VMOV            S0, R0
295306:  VCMPE.F32       S0, #0.0
29530A:  VMRS            APSR_nzcv, FPSCR
29530E:  BGE             loc_295314
295310:  MOVS            R0, #2
295312:  B               loc_295316
295314:  MOVS            R0, #1
295316:  ORR.W           R0, R0, #1
29531A:  CMP.W           R8, #0
29531E:  BEQ             loc_29533E
295320:  VMOV.F32        S0, S16
295324:  CMP             R0, #3
295326:  BNE             loc_29533A
295328:  LDR             R1, [R6,#0xC]
29532A:  VMOV.F32        S0, S18
29532E:  ADD             R1, R4
295330:  LDRB            R1, [R1,#8]
295332:  CMP             R1, #0
295334:  IT NE
295336:  VMOVNE.F32      S0, S20
29533A:  VSTR            S0, [R8]
29533E:  CMP             R0, #3
295340:  BEQ             loc_295350
295342:  LDR             R0, [R6,#8]
295344:  ADDS            R5, #1
295346:  ADDS            R4, #0x14
295348:  CMP             R5, R0
29534A:  BCC             loc_2952B8
29534C:  MOVS            R0, #0
29534E:  B               loc_295352
295350:  MOVS            R0, #1
295352:  VPOP            {D8-D10}
295356:  POP.W           {R8,R9,R11}
29535A:  POP             {R4-R7,PC}
