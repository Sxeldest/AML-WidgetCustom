; =========================================================
; Game Engine Function: _ZN11CAutomobile14FindWheelWidthEb
; Address            : 0x55FE7C - 0x55FF28
; =========================================================

55FE7C:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55FE88)
55FE7E:  CMP             R1, #0
55FE80:  LDRSH.W         R12, [R0,#0x26]
55FE84:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55FE86:  VLDR            S0, =0.7
55FE8A:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
55FE8C:  LDR.W           R2, [R2,R12,LSL#2]
55FE90:  ADD.W           R3, R2, #0x58 ; 'X'
55FE94:  IT NE
55FE96:  ADDNE.W         R3, R2, #0x5C ; '\'
55FE9A:  LDR.W           R2, [R0,#0x390]
55FE9E:  VLDR            S2, [R3]
55FEA2:  UXTH.W          R0, R12
55FEA6:  CMP             R1, #1
55FEA8:  VDIV.F32        S0, S2, S0
55FEAC:  VMOV.F32        S2, #0.25
55FEB0:  VMUL.F32        S0, S0, S2
55FEB4:  BNE             loc_55FED0
55FEB6:  TST.W           R2, #0xF000
55FEBA:  BEQ             loc_55FEF4
55FEBC:  LSLS            R1, R2, #0x13
55FEBE:  BMI             loc_55FEFA
55FEC0:  LSLS            R1, R2, #0x12
55FEC2:  BMI             loc_55FF00
55FEC4:  LSLS            R1, R2, #0x11
55FEC6:  BMI             loc_55FF06
55FEC8:  VMOV.F32        S2, #1.25
55FECC:  LSLS            R1, R2, #0x10
55FECE:  B               loc_55FEE8
55FED0:  TST.W           R2, #0xF00
55FED4:  BEQ             loc_55FEF4
55FED6:  LSLS            R1, R2, #0x17
55FED8:  BMI             loc_55FEFA
55FEDA:  LSLS            R1, R2, #0x16
55FEDC:  BMI             loc_55FF00
55FEDE:  LSLS            R1, R2, #0x15
55FEE0:  BMI             loc_55FF06
55FEE2:  VMOV.F32        S2, #1.25
55FEE6:  LSLS            R1, R2, #0x14
55FEE8:  VMUL.F32        S2, S0, S2
55FEEC:  IT PL
55FEEE:  VMOVPL.F32      S2, S0
55FEF2:  B               loc_55FF0E
55FEF4:  VMOV.F32        S2, S0
55FEF8:  B               loc_55FF0E
55FEFA:  VLDR            S2, =0.65
55FEFE:  B               loc_55FF0A
55FF00:  VLDR            S2, =0.8
55FF04:  B               loc_55FF0A
55FF06:  VLDR            S2, =1.1
55FF0A:  VMUL.F32        S2, S0, S2
55FF0E:  VMOV.F32        S0, #1.5
55FF12:  MOVW            R1, #0x23B
55FF16:  CMP             R0, R1
55FF18:  VMUL.F32        S0, S2, S0
55FF1C:  IT EQ
55FF1E:  VMOVEQ.F32      S2, S0
55FF22:  VMOV            R0, S2
55FF26:  BX              LR
