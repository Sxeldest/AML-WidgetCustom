; =========================================================
; Game Engine Function: _ZNK8CVehicle11CanBeDrivenEv
; Address            : 0x58FEB0 - 0x58FF1C
; =========================================================

58FEB0:  MOV             R1, R0
58FEB2:  LDR.W           R0, [R1,#0x5A4]
58FEB6:  CMP             R0, #0xB
58FEB8:  BEQ             loc_58FEC4
58FEBA:  CMP             R0, #6
58FEBC:  BNE             loc_58FEC8
58FEBE:  LDRB.W          R0, [R1,#0x5D4]
58FEC2:  CBZ             R0, loc_58FEC8
58FEC4:  MOVS            R0, #0
58FEC6:  BX              LR
58FEC8:  LDRB.W          R2, [R1,#0x430]
58FECC:  MOVS            R0, #0
58FECE:  CMP.W           R0, R2,LSR#7
58FED2:  IT NE
58FED4:  BXNE            LR
58FED6:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58FEE0)
58FED8:  LDRSH.W         R1, [R1,#0x26]
58FEDC:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58FEDE:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
58FEE0:  LDR.W           R1, [R2,R1,LSL#2]
58FEE4:  LDR             R2, [R1,#0x54]
58FEE6:  LDR             R1, [R1,#0x74]
58FEE8:  CMP             R2, #5
58FEEA:  IT NE
58FEEC:  ADDNE           R1, #0x30 ; '0'
58FEEE:  VLDR            S0, [R1]
58FEF2:  VLDR            S2, [R1,#4]
58FEF6:  VMUL.F32        S0, S0, S0
58FEFA:  VLDR            S4, [R1,#8]
58FEFE:  VMUL.F32        S2, S2, S2
58FF02:  VMUL.F32        S4, S4, S4
58FF06:  VADD.F32        S0, S0, S2
58FF0A:  VADD.F32        S0, S0, S4
58FF0E:  VCMPE.F32       S0, #0.0
58FF12:  VMRS            APSR_nzcv, FPSCR
58FF16:  IT GT
58FF18:  MOVGT           R0, #1
58FF1A:  BX              LR
