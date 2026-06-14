; =========================================================
; Game Engine Function: _Z11BackPressedv
; Address            : 0x2972B4 - 0x2973C4
; =========================================================

2972B4:  PUSH            {R7,LR}
2972B6:  MOV             R7, SP
2972B8:  LDR             R0, =(gMobileMenu_ptr - 0x2972BE)
2972BA:  ADD             R0, PC; gMobileMenu_ptr
2972BC:  LDR             R0, [R0]; gMobileMenu
2972BE:  LDRB.W          R0, [R0,#(byte_6E00DA - 0x6E006C)]
2972C2:  CBZ             R0, loc_2972DC
2972C4:  LDR             R0, =(lastDevice_ptr - 0x2972CC)
2972C6:  LDR             R1, =(gMobileMenu_ptr - 0x2972CE)
2972C8:  ADD             R0, PC; lastDevice_ptr
2972CA:  ADD             R1, PC; gMobileMenu_ptr
2972CC:  LDR             R0, [R0]; lastDevice
2972CE:  LDR             R1, [R1]; gMobileMenu
2972D0:  LDR             R0, [R0]
2972D2:  ADD.W           R1, R1, R0,LSL#2
2972D6:  LDR.W           R1, [R1,#0x90]
2972DA:  CBZ             R1, loc_2972FE
2972DC:  MOVS            R0, #0
2972DE:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
2972E2:  CMP             R0, #0
2972E4:  BEQ             loc_2973C0
2972E6:  MOVS            R0, #0x41 ; 'A'
2972E8:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2972EC:  CMP             R0, #1
2972EE:  BNE             loc_2972FA
2972F0:  MOVS            R0, #0x41 ; 'A'
2972F2:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2972F6:  CMP             R0, #0
2972F8:  BNE             loc_2973C0
2972FA:  MOVS            R0, #0
2972FC:  POP             {R7,PC}
2972FE:  LDR             R1, =(RsGlobal_ptr - 0x29730C)
297300:  VMOV.F32        S8, #12.5
297304:  VLDR            S2, =0.0
297308:  ADD             R1, PC; RsGlobal_ptr
29730A:  VLDR            S10, =-240.0
29730E:  LDR             R1, [R1]; RsGlobal
297310:  VLDR            S0, [R1,#4]
297314:  VLDR            S4, [R1,#8]
297318:  VCVT.F32.S32    S6, S0
29731C:  LDR             R1, =(gMobileMenu_ptr - 0x297326)
29731E:  VCVT.F32.S32    S0, S4
297322:  ADD             R1, PC; gMobileMenu_ptr
297324:  LDR             R1, [R1]; gMobileMenu
297326:  ADD.W           R1, R1, R0,LSL#3
29732A:  VMUL.F32        S4, S6, S2
29732E:  VMAX.F32        D2, D2, D4
297332:  VSUB.F32        S8, S6, S4
297336:  VLDR            S4, =480.0
29733A:  VMUL.F32        S6, S6, S10
29733E:  VMOV.F32        S10, #16.0
297342:  VMUL.F32        S8, S8, S4
297346:  VADD.F32        S6, S8, S6
29734A:  VLDR            S8, =320.0
29734E:  VDIV.F32        S6, S6, S0
297352:  VADD.F32        S6, S6, S8
297356:  VLDR            S8, [R1,#0x70]
29735A:  VADD.F32        S6, S6, S10
29735E:  VCMPE.F32       S8, S6
297362:  VMRS            APSR_nzcv, FPSCR
297366:  BGT             loc_2972DC
297368:  VLDR            S10, =-100.0
29736C:  VADD.F32        S6, S6, S10
297370:  VCMPE.F32       S8, S6
297374:  VMRS            APSR_nzcv, FPSCR
297378:  BLT             loc_2972DC
29737A:  VMUL.F32        S2, S0, S2
29737E:  LDR             R1, =(gMobileMenu_ptr - 0x297384)
297380:  ADD             R1, PC; gMobileMenu_ptr
297382:  LDR             R1, [R1]; gMobileMenu
297384:  ADD.W           R0, R1, R0,LSL#3
297388:  VSUB.F32        S2, S0, S2
29738C:  VMUL.F32        S2, S2, S4
297390:  VDIV.F32        S0, S2, S0
297394:  VMOV.F32        S2, #10.0
297398:  VADD.F32        S0, S0, S2
29739C:  VLDR            S2, =-50.0
2973A0:  VMIN.F32        D0, D0, D2
2973A4:  VADD.F32        S4, S0, S2
2973A8:  VLDR            S2, [R0,#0x74]
2973AC:  VCMPE.F32       S2, S4
2973B0:  VMRS            APSR_nzcv, FPSCR
2973B4:  BLT             loc_2972DC
2973B6:  VCMPE.F32       S2, S0
2973BA:  VMRS            APSR_nzcv, FPSCR
2973BE:  BGT             loc_2972DC
2973C0:  MOVS            R0, #1
2973C2:  POP             {R7,PC}
