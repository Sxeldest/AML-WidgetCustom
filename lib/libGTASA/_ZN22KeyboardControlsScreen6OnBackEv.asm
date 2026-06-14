; =========================================================
; Game Engine Function: _ZN22KeyboardControlsScreen6OnBackEv
; Address            : 0x2A3360 - 0x2A33AA
; =========================================================

2A3360:  LDR             R0, =(byte_6E01A8 - 0x2A3366)
2A3362:  ADD             R0, PC; byte_6E01A8
2A3364:  LDRB            R0, [R0]
2A3366:  CBZ             R0, loc_2A3372
2A3368:  LDR             R0, =(byte_6E01A8 - 0x2A3370)
2A336A:  MOVS            R1, #0
2A336C:  ADD             R0, PC; byte_6E01A8
2A336E:  STRB            R1, [R0]
2A3370:  BX              LR
2A3372:  LDR             R0, =(gMobileMenu_ptr - 0x2A3378)
2A3374:  ADD             R0, PC; gMobileMenu_ptr
2A3376:  LDR             R0, [R0]; gMobileMenu
2A3378:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
2A337A:  CMP             R0, #2
2A337C:  BCC             loc_2A339C
2A337E:  PUSH            {R7,LR}
2A3380:  MOV             R7, SP
2A3382:  LDR             R1, =(gMobileMenu_ptr - 0x2A3388)
2A3384:  ADD             R1, PC; gMobileMenu_ptr
2A3386:  LDR             R1, [R1]; gMobileMenu
2A3388:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A338A:  ADD.W           R1, R1, R0,LSL#2
2A338E:  LDRD.W          R0, R1, [R1,#-8]
2A3392:  LDR             R2, [R0]
2A3394:  LDR             R2, [R2,#0x14]
2A3396:  BLX             R2
2A3398:  POP.W           {R7,LR}
2A339C:  LDR             R0, =(gMobileMenu_ptr - 0x2A33A6)
2A339E:  MOVS            R1, #0; bool
2A33A0:  MOVS            R2, #0; bool
2A33A2:  ADD             R0, PC; gMobileMenu_ptr
2A33A4:  LDR             R0, [R0]; gMobileMenu ; this
2A33A6:  B.W             j_j__ZN10MobileMenu15RemoveTopScreenEbb; j_MobileMenu::RemoveTopScreen(bool,bool)
