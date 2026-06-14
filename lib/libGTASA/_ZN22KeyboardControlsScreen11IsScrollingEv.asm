; =========================================================
; Game Engine Function: _ZN22KeyboardControlsScreen11IsScrollingEv
; Address            : 0x2A34B0 - 0x2A350E
; =========================================================

2A34B0:  PUSH            {R4,R6,R7,LR}
2A34B2:  ADD             R7, SP, #8
2A34B4:  VPUSH           {D8-D9}
2A34B8:  VLDR            S16, [R0,#0x40]
2A34BC:  MOVS            R4, #0
2A34BE:  VCMP.F32        S16, #0.0
2A34C2:  VMRS            APSR_nzcv, FPSCR
2A34C6:  BEQ             loc_2A3506
2A34C8:  LDR             R1, =(lastDevice_ptr - 0x2A34D0)
2A34CA:  LDR             R2, =(gMobileMenu_ptr - 0x2A34D4)
2A34CC:  ADD             R1, PC; lastDevice_ptr
2A34CE:  LDR             R3, [R0]
2A34D0:  ADD             R2, PC; gMobileMenu_ptr
2A34D2:  LDR             R1, [R1]; lastDevice
2A34D4:  LDR             R2, [R2]; gMobileMenu
2A34D6:  LDR             R3, [R3,#0x44]
2A34D8:  LDR             R1, [R1]
2A34DA:  ADD.W           R1, R2, R1,LSL#3
2A34DE:  VLDR            S18, [R1,#0x74]
2A34E2:  MOVS            R1, #0
2A34E4:  BLX             R3
2A34E6:  VSUB.F32        S2, S18, S16
2A34EA:  VMOV.F32        S0, #0.5
2A34EE:  VMOV            S4, R0
2A34F2:  VABS.F32        S2, S2
2A34F6:  VMUL.F32        S0, S4, S0
2A34FA:  VCMPE.F32       S2, S0
2A34FE:  VMRS            APSR_nzcv, FPSCR
2A3502:  IT GT
2A3504:  MOVGT           R4, #1
2A3506:  MOV             R0, R4
2A3508:  VPOP            {D8-D9}
2A350C:  POP             {R4,R6,R7,PC}
