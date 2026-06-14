; =========================================================
; Game Engine Function: _Z7GetZValf
; Address            : 0x5C5730 - 0x5C5786
; =========================================================

5C5730:  LDR             R1, =(_ZN5CDraw12ms_fFarClipZE_ptr - 0x5C573C)
5C5732:  VMOV.F32        S10, #-1.0
5C5736:  LDR             R2, =(_ZN5CDraw13ms_fNearClipZE_ptr - 0x5C5742)
5C5738:  ADD             R1, PC; _ZN5CDraw12ms_fFarClipZE_ptr
5C573A:  VLDR            S8, =0.95
5C573E:  ADD             R2, PC; _ZN5CDraw13ms_fNearClipZE_ptr
5C5740:  LDR             R1, [R1]; CDraw::ms_fFarClipZ ...
5C5742:  LDR             R2, [R2]; CDraw::ms_fNearClipZ ...
5C5744:  VLDR            S0, [R1]
5C5748:  VLDR            S2, [R2]
5C574C:  VADD.F32        S4, S0, S0
5C5750:  VSUB.F32        S6, S0, S2
5C5754:  VADD.F32        S0, S0, S2
5C5758:  VMUL.F32        S2, S4, S2
5C575C:  VMOV            S4, R0
5C5760:  VDIV.F32        S0, S0, S6
5C5764:  VMUL.F32        S4, S4, S8
5C5768:  VDIV.F32        S2, S2, S6
5C576C:  VADD.F32        S4, S4, S10
5C5770:  VMUL.F32        S0, S4, S0
5C5774:  VNEG.F32        S4, S4
5C5778:  VSUB.F32        S0, S2, S0
5C577C:  VDIV.F32        S0, S0, S4
5C5780:  VMOV            R0, S0
5C5784:  BX              LR
