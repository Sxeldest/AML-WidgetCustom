; =========================================================
; Game Engine Function: _ZN8CVehicle26GetPlaneOrdnanceRateOfFireE13eOrdnanceType
; Address            : 0x58F88C - 0x58F90C
; =========================================================

58F88C:  LDR.W           R2, [R0,#0x5A4]
58F890:  CMP             R2, #3
58F892:  BEQ             loc_58F89E
58F894:  CMP             R2, #4
58F896:  BNE             loc_58F8B6
58F898:  ADDW            R2, R0, #0x9EC
58F89C:  B               loc_58F8A2
58F89E:  ADDW            R2, R0, #0xA24
58F8A2:  LDRB            R2, [R2]
58F8A4:  VLDR            S2, =0.0625
58F8A8:  VMOV            S0, R2
58F8AC:  VCVT.F32.U32    S0, S0
58F8B0:  VMUL.F32        S0, S0, S2
58F8B4:  B               loc_58F8BA
58F8B6:  VMOV.F32        S0, #1.0
58F8BA:  LDRSH.W         R0, [R0,#0x26]
58F8BE:  CMP.W           R0, #0x1DC
58F8C2:  BGE             loc_58F8DA
58F8C4:  MOVW            R1, #0x1A9
58F8C8:  CMP             R0, R1
58F8CA:  BEQ             loc_58F8EC
58F8CC:  MOVW            R1, #0x1BF
58F8D0:  CMP             R0, R1
58F8D2:  BEQ             loc_58F8E6
58F8D4:  VLDR            S2, =350.0
58F8D8:  B               loc_58F8FE
58F8DA:  CMP.W           R0, #0x208
58F8DE:  BEQ             loc_58F8F2
58F8E0:  CMP.W           R0, #0x1DC
58F8E4:  BNE             loc_58F8D4
58F8E6:  VLDR            S2, =1000.0
58F8EA:  B               loc_58F8FE
58F8EC:  VLDR            S2, =500.0
58F8F0:  B               loc_58F8FE
58F8F2:  ADR             R0, dword_58F914
58F8F4:  CMP             R1, #1
58F8F6:  IT EQ
58F8F8:  ADDEQ           R0, #4
58F8FA:  VLDR            S2, [R0]
58F8FE:  VDIV.F32        S0, S2, S0
58F902:  VCVT.S32.F32    S0, S0
58F906:  VMOV            R0, S0
58F90A:  BX              LR
