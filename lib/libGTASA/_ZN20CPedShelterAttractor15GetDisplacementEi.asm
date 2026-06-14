; =========================================================
; Game Engine Function: _ZN20CPedShelterAttractor15GetDisplacementEi
; Address            : 0x4A9264 - 0x4A9430
; =========================================================

4A9264:  PUSH            {R4-R7,LR}
4A9266:  ADD             R7, SP, #0xC
4A9268:  PUSH.W          {R8-R11}
4A926C:  SUB             SP, SP, #4
4A926E:  VPUSH           {D8-D13}
4A9272:  SUB             SP, SP, #0x20
4A9274:  STR             R0, [SP,#0x70+var_6C]
4A9276:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A927C)
4A9278:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A927A:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A927C:  LDR             R0, [R0,#(dword_9EE2CC - 0x9EE2C8)]
4A927E:  CMP             R0, #0
4A9280:  BNE.W           loc_4A9410
4A9284:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A9296)
4A9286:  VMOV.F32        S22, #1.0
4A928A:  VLDR            S16, =4.6566e-10
4A928E:  MOV.W           R8, #0
4A9292:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A9294:  VLDR            S18, =6.2832
4A9298:  VLDR            S20, =0.0
4A929C:  MOV.W           R11, #0
4A92A0:  LDR             R4, [R0]; CPedShelterAttractor::ms_displacements ...
4A92A2:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A92A8)
4A92A4:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A92A6:  LDR.W           R10, [R0]; CPedShelterAttractor::ms_displacements ...
4A92AA:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A92B0)
4A92AC:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A92AE:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A92B0:  STR             R0, [SP,#0x70+var_54]
4A92B2:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A92B8)
4A92B4:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A92B6:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A92B8:  STR             R0, [SP,#0x70+var_5C]
4A92BA:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A92C0)
4A92BC:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A92BE:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A92C0:  STR             R0, [SP,#0x70+var_60]
4A92C2:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A92C8)
4A92C4:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A92C6:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A92C8:  STR             R0, [SP,#0x70+var_68]
4A92CA:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A92D0)
4A92CC:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A92CE:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A92D0:  STR             R0, [SP,#0x70+var_58]
4A92D2:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A92D8)
4A92D4:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A92D6:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A92D8:  STR             R0, [SP,#0x70+var_64]
4A92DA:  BLX             rand
4A92DE:  VMOV            S0, R0
4A92E2:  VCVT.F32.S32    S0, S0
4A92E6:  VMUL.F32        S0, S0, S16
4A92EA:  VMUL.F32        S0, S0, S18
4A92EE:  VADD.F32        S0, S0, S20
4A92F2:  VMOV            R5, S0
4A92F6:  MOV             R0, R5; x
4A92F8:  BLX             cosf
4A92FC:  MOV             R6, R0
4A92FE:  MOV             R0, R5; x
4A9300:  BLX             sinf
4A9304:  MOV             R5, R0
4A9306:  BLX             rand
4A930A:  VMOV            S0, R0
4A930E:  VMOV            S2, R5
4A9312:  VCVT.F32.S32    S0, S0
4A9316:  LDR.W           R9, [R4,#(dword_9EE2CC - 0x9EE2C8)]
4A931A:  VMOV            S4, R6
4A931E:  CMP.W           R9, #1
4A9322:  VMUL.F32        S0, S0, S16
4A9326:  VADD.F32        S0, S0, S0
4A932A:  VADD.F32        S0, S0, S20
4A932E:  VMUL.F32        S24, S2, S0
4A9332:  VMUL.F32        S26, S4, S0
4A9336:  BLT             loc_4A9388
4A9338:  LDR.W           R0, [R10,#(dword_9EE2D0 - 0x9EE2C8)]
4A933C:  MOVS            R1, #0
4A933E:  MOVS            R2, #0
4A9340:  ADD.W           R3, R1, R1,LSL#1
4A9344:  ADD.W           R3, R0, R3,LSL#2
4A9348:  VLDR            S0, [R3]
4A934C:  VLDR            S2, [R3,#4]
4A9350:  VSUB.F32        S0, S0, S26
4A9354:  VLDR            S4, [R3,#8]
4A9358:  VSUB.F32        S2, S2, S24
4A935C:  VMUL.F32        S4, S4, S4
4A9360:  VMUL.F32        S0, S0, S0
4A9364:  VMUL.F32        S2, S2, S2
4A9368:  VADD.F32        S0, S0, S2
4A936C:  VADD.F32        S0, S4, S0
4A9370:  VCMPE.F32       S0, S22
4A9374:  VMRS            APSR_nzcv, FPSCR
4A9378:  ITT LT
4A937A:  MOVLT           R2, #1
4A937C:  MOVLT           R1, R9
4A937E:  ADDS            R1, #1
4A9380:  CMP             R1, R9
4A9382:  BLT             loc_4A9340
4A9384:  LSLS            R0, R2, #0x1F
4A9386:  BNE             loc_4A92DA
4A9388:  LDR             R0, [SP,#0x70+var_54]
4A938A:  LDR             R1, [R0]
4A938C:  ADD.W           R0, R9, #1
4A9390:  CMP             R1, R0
4A9392:  BCS             loc_4A93E2
4A9394:  MOVW            R1, #0xAAAB
4A9398:  LSLS            R0, R0, #2
4A939A:  MOVT            R1, #0xAAAA
4A939E:  UMULL.W         R0, R1, R0, R1
4A93A2:  MOVS            R0, #3
4A93A4:  ADD.W           R8, R0, R1,LSR#1
4A93A8:  ADD.W           R0, R8, R8,LSL#1
4A93AC:  LSLS            R0, R0, #2; byte_count
4A93AE:  BLX             malloc
4A93B2:  MOV             R5, R0
4A93B4:  LDR             R0, [SP,#0x70+var_5C]
4A93B6:  LDR             R6, [R0,#8]
4A93B8:  CBZ             R6, loc_4A93D4
4A93BA:  ADD.W           R0, R9, R9,LSL#1
4A93BE:  MOV             R1, R6; src
4A93C0:  LSLS            R2, R0, #2; n
4A93C2:  MOV             R0, R5; dest
4A93C4:  BLX             memmove_1
4A93C8:  MOV             R0, R6; p
4A93CA:  BLX             free
4A93CE:  LDR             R0, [SP,#0x70+var_68]
4A93D0:  LDR.W           R9, [R0,#4]
4A93D4:  LDR             R0, [SP,#0x70+var_60]
4A93D6:  STR             R5, [R0,#8]
4A93D8:  STR.W           R8, [R0]
4A93DC:  MOV.W           R8, #0
4A93E0:  B               loc_4A93E6
4A93E2:  LDR             R0, [SP,#0x70+var_64]
4A93E4:  LDR             R5, [R0,#8]
4A93E6:  ADD.W           R0, R9, R9,LSL#1
4A93EA:  ADD.W           R11, R11, #1
4A93EE:  CMP.W           R11, #5
4A93F2:  ADD.W           R0, R5, R0,LSL#2
4A93F6:  STR.W           R8, [R0,#8]
4A93FA:  VSTR            S26, [R0]
4A93FE:  VSTR            S24, [R0,#4]
4A9402:  LDR             R1, [SP,#0x70+var_58]
4A9404:  LDR             R0, [R1,#4]
4A9406:  ADD.W           R0, R0, #1
4A940A:  STR             R0, [R1,#4]
4A940C:  BNE.W           loc_4A92DA
4A9410:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x4A9418)
4A9412:  LDR             R1, [SP,#0x70+var_6C]
4A9414:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
4A9416:  LDR             R0, [R0]; CPedShelterAttractor::ms_displacements ...
4A9418:  ADD.W           R1, R1, R1,LSL#1
4A941C:  LDR             R0, [R0,#(dword_9EE2D0 - 0x9EE2C8)]
4A941E:  ADD.W           R0, R0, R1,LSL#2
4A9422:  ADD             SP, SP, #0x20 ; ' '
4A9424:  VPOP            {D8-D13}
4A9428:  ADD             SP, SP, #4
4A942A:  POP.W           {R8-R11}
4A942E:  POP             {R4-R7,PC}
