; =========================================================
; Game Engine Function: _ZN8CTrailer15ResetSuspensionEv
; Address            : 0x57BCFC - 0x57BD3C
; =========================================================

57BCFC:  PUSH            {R4,R6,R7,LR}
57BCFE:  ADD             R7, SP, #8
57BD00:  MOV             R4, R0
57BD02:  BLX             j__ZN11CAutomobile15ResetSuspensionEv; CAutomobile::ResetSuspension(void)
57BD06:  VMOV.F32        S0, #1.0
57BD0A:  MOV.W           R0, #0x3F800000
57BD0E:  STR.W           R0, [R4,#0x9F4]
57BD12:  STR.W           R0, [R4,#0x9F8]
57BD16:  ADD.W           R0, R4, #0xA00
57BD1A:  LDR.W           R1, [R4,#0x4D0]
57BD1E:  CBZ             R1, loc_57BD36
57BD20:  VLDR            S2, =-1000.0
57BD24:  VLDR            S4, [R0]
57BD28:  VCMPE.F32       S4, S2
57BD2C:  VMRS            APSR_nzcv, FPSCR
57BD30:  IT GT
57BD32:  VLDRGT          S0, =0.0
57BD36:  VSTR            S0, [R0]
57BD3A:  POP             {R4,R6,R7,PC}
