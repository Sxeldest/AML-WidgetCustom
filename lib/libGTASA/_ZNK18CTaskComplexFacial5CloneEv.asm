; =========================================================
; Game Engine Function: _ZNK18CTaskComplexFacial5CloneEv
; Address            : 0x543AB4 - 0x543B0E
; =========================================================

543AB4:  PUSH            {R4,R6,R7,LR}
543AB6:  ADD             R7, SP, #8
543AB8:  MOVS            R0, #dword_20; this
543ABA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
543ABE:  MOV             R4, R0
543AC0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
543AC4:  LDR             R0, =(_ZTV18CTaskComplexFacial_ptr - 0x543AD0)
543AC6:  MOV.W           R1, #0xFFFFFFFF
543ACA:  STR             R1, [R4,#0x10]
543ACC:  ADD             R0, PC; _ZTV18CTaskComplexFacial_ptr
543ACE:  STR             R1, [R4,#0x18]
543AD0:  LDR             R0, [R0]; `vtable for'CTaskComplexFacial ...
543AD2:  ADDS            R0, #8
543AD4:  STR             R0, [R4]
543AD6:  BLX             rand
543ADA:  UXTH            R0, R0
543ADC:  VLDR            S2, =0.000015259
543AE0:  VMOV            S0, R0
543AE4:  MOVS            R0, #0
543AE6:  VCVT.F32.S32    S0, S0
543AEA:  VMUL.F32        S0, S0, S2
543AEE:  VLDR            S2, =100.0
543AF2:  VMUL.F32        S0, S0, S2
543AF6:  VCVT.S32.F32    S0, S0
543AFA:  STRH.W          R0, [R4,#0xD]
543AFE:  VMOV            R1, S0
543B02:  CMP             R1, #0x46 ; 'F'
543B04:  IT GT
543B06:  MOVGT           R0, #1
543B08:  STRB            R0, [R4,#0xC]
543B0A:  MOV             R0, R4
543B0C:  POP             {R4,R6,R7,PC}
