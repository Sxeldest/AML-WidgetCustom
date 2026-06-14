; =========================================================
; Game Engine Function: _ZN13CWidgetSlider14GetWidgetValueEv
; Address            : 0x2C776C - 0x2C780A
; =========================================================

2C776C:  PUSH            {R4,R6,R7,LR}
2C776E:  ADD             R7, SP, #8
2C7770:  VPUSH           {D8-D9}
2C7774:  MOV             R4, R0
2C7776:  LDRB.W          R0, [R4,#0x22C]
2C777A:  VLDR            S0, [R4,#0x224]
2C777E:  LSLS            R0, R0, #0x1E
2C7780:  BMI             loc_2C7798
2C7782:  VMOV.F32        S2, #1.0
2C7786:  VCMP.F32        S0, S2
2C778A:  VMRS            APSR_nzcv, FPSCR
2C778E:  BNE             loc_2C77A6
2C7790:  LDR.W           R0, [R4,#0x90]
2C7794:  SUBS            R0, #1
2C7796:  B               loc_2C77AA
2C7798:  VMOV.F32        S16, #1.0
2C779C:  VCMP.F32        S0, S16
2C77A0:  VMRS            APSR_nzcv, FPSCR
2C77A4:  BNE             loc_2C77B4
2C77A6:  LDR.W           R0, [R4,#0x228]
2C77AA:  ADD.W           R0, R4, R0,LSL#2
2C77AE:  VLDR            S0, [R0,#0x94]
2C77B2:  B               loc_2C7800
2C77B4:  LDR.W           R0, [R4,#0x90]
2C77B8:  VMOV.F32        S2, #-1.0
2C77BC:  VMOV            S4, R0
2C77C0:  VMOV            R0, S0; x
2C77C4:  VCVT.F32.S32    S4, S4
2C77C8:  VADD.F32        S2, S4, S2
2C77CC:  VDIV.F32        S18, S16, S2
2C77D0:  VMOV            R1, S18; y
2C77D4:  BLX             fmodf
2C77D8:  VDIV.F32        S0, S16, S18
2C77DC:  LDR.W           R1, [R4,#0x228]
2C77E0:  VMOV            S2, R0
2C77E4:  ADD.W           R0, R4, R1,LSL#2
2C77E8:  VLDR            S4, [R0,#0x94]
2C77EC:  VMUL.F32        S0, S2, S0
2C77F0:  VLDR            S6, [R0,#0x98]
2C77F4:  VSUB.F32        S2, S6, S4
2C77F8:  VMUL.F32        S0, S2, S0
2C77FC:  VADD.F32        S0, S4, S0
2C7800:  VMOV            R0, S0
2C7804:  VPOP            {D8-D9}
2C7808:  POP             {R4,R6,R7,PC}
