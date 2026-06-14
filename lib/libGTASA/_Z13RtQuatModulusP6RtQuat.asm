; =========================================================
; Game Engine Function: _Z13RtQuatModulusP6RtQuat
; Address            : 0x21165A - 0x21168E
; =========================================================

21165A:  VLDR            S0, [R0]
21165E:  VLDR            S2, [R0,#4]
211662:  VMUL.F32        S0, S0, S0
211666:  VLDR            S4, [R0,#8]
21166A:  VMUL.F32        S2, S2, S2
21166E:  VLDR            S6, [R0,#0xC]
211672:  VMUL.F32        S4, S4, S4
211676:  VADD.F32        S0, S0, S2
21167A:  VMUL.F32        S2, S6, S6
21167E:  VADD.F32        S0, S0, S4
211682:  VADD.F32        S0, S2, S0
211686:  VMOV            R0, S0; float
21168A:  B.W             j_j__Z7_rwSqrtf; j__rwSqrt(float)
