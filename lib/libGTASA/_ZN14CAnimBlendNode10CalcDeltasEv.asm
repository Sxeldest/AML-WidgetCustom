; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode10CalcDeltasEv
; Address            : 0x38AD28 - 0x38ADDE
; =========================================================

38AD28:  PUSH            {R4,R6,R7,LR}
38AD2A:  ADD             R7, SP, #8
38AD2C:  VPUSH           {D8}
38AD30:  MOV             R4, R0
38AD32:  LDR             R0, [R4,#0x10]
38AD34:  LDRH            R1, [R0,#4]
38AD36:  TST.W           R1, #1
38AD3A:  BEQ             loc_38ADD8
38AD3C:  LDRSH.W         R3, [R4,#0xA]
38AD40:  ANDS.W          R1, R1, #2
38AD44:  LDRSH.W         R2, [R4,#8]
38AD48:  VMOV.F32        S16, #1.0
38AD4C:  LDR             R0, [R0,#8]
38AD4E:  ADD.W           R1, R3, R3,LSL#2
38AD52:  MOV.W           R1, R1,LSL#2
38AD56:  IT NE
38AD58:  LSLNE           R1, R3, #5
38AD5A:  ADD.W           R3, R2, R2,LSL#2
38AD5E:  MOV.W           R3, R3,LSL#2
38AD62:  IT NE
38AD64:  LSLNE           R3, R2, #5
38AD66:  ADDS            R2, R0, R3
38AD68:  ADD             R0, R1
38AD6A:  VLDR            S0, [R2]
38AD6E:  VLDR            S8, [R0]
38AD72:  VLDR            S2, [R2,#4]
38AD76:  VLDR            S10, [R0,#4]
38AD7A:  VMUL.F32        S0, S8, S0
38AD7E:  VLDR            S4, [R2,#8]
38AD82:  VMUL.F32        S2, S10, S2
38AD86:  VLDR            S12, [R0,#8]
38AD8A:  VLDR            S6, [R2,#0xC]
38AD8E:  VMUL.F32        S4, S12, S4
38AD92:  VLDR            S14, [R0,#0xC]
38AD96:  VADD.F32        S0, S0, S2
38AD9A:  VMUL.F32        S2, S14, S6
38AD9E:  VADD.F32        S0, S0, S4
38ADA2:  VADD.F32        S0, S0, S2
38ADA6:  VMIN.F32        D0, D0, D8
38ADAA:  VMOV            R0, S0; x
38ADAE:  BLX             acosf
38ADB2:  VMOV            S0, R0; x
38ADB6:  STR             R0, [R4]
38ADB8:  VCMP.F32        S0, #0.0
38ADBC:  VMRS            APSR_nzcv, FPSCR
38ADC0:  BEQ             loc_38ADD0
38ADC2:  BLX             sinf
38ADC6:  VMOV            S0, R0
38ADCA:  VDIV.F32        S0, S16, S0
38ADCE:  B               loc_38ADD4
38ADD0:  VLDR            S0, =0.0
38ADD4:  VSTR            S0, [R4,#4]
38ADD8:  VPOP            {D8}
38ADDC:  POP             {R4,R6,R7,PC}
