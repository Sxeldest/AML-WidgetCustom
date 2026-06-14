; =========================================================
; Game Engine Function: _ZN9CQuadBike20ProcessControlInputsEh
; Address            : 0x57AB44 - 0x57ABEA
; =========================================================

57AB44:  PUSH            {R4,R5,R7,LR}
57AB46:  ADD             R7, SP, #8
57AB48:  MOV             R4, R1
57AB4A:  MOV             R5, R0
57AB4C:  BLX             j__ZN11CAutomobile20ProcessControlInputsEh; CAutomobile::ProcessControlInputs(uchar)
57AB50:  MOV             R0, R4; this
57AB52:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
57AB56:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
57AB5A:  NEGS            R0, R0
57AB5C:  VLDR            S2, =0.0078125
57AB60:  ADD.W           R5, R5, #0x9B0
57AB64:  VLDR            S4, =0.2
57AB68:  VMOV            S0, R0
57AB6C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57AB7A)
57AB6E:  VMOV.F32        S6, #-1.0
57AB72:  VCVT.F32.S32    S0, S0
57AB76:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57AB78:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
57AB7A:  VMUL.F32        S0, S0, S2
57AB7E:  VLDR            S2, [R5]
57AB82:  VSUB.F32        S0, S0, S2
57AB86:  VMUL.F32        S0, S0, S4
57AB8A:  VLDR            S4, [R0]
57AB8E:  MOV             R0, R4; this
57AB90:  VMUL.F32        S0, S4, S0
57AB94:  VMOV.F32        S4, #1.0
57AB98:  VADD.F32        S0, S2, S0
57AB9C:  VMOV.F32        S2, S6
57ABA0:  VCMPE.F32       S0, S4
57ABA4:  VMRS            APSR_nzcv, FPSCR
57ABA8:  VCMPE.F32       S0, S6
57ABAC:  IT GE
57ABAE:  VMOVGE.F32      S2, S4
57ABB2:  VMRS            APSR_nzcv, FPSCR
57ABB6:  VCMPE.F32       S0, S4
57ABBA:  IT GT
57ABBC:  VMOVGT.F32      S6, S2
57ABC0:  VMOV.F32        S2, S6
57ABC4:  IT GT
57ABC6:  VMOVGT.F32      S2, S0
57ABCA:  VMRS            APSR_nzcv, FPSCR
57ABCE:  IT GE
57ABD0:  VMOVGE.F32      S2, S6
57ABD4:  VSTR            S2, [R5]
57ABD8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
57ABDC:  LDRH.W          R0, [R0,#0x110]
57ABE0:  CMP             R0, #0
57ABE2:  ITT NE
57ABE4:  MOVNE           R0, #0
57ABE6:  STRNE           R0, [R5]
57ABE8:  POP             {R4,R5,R7,PC}
