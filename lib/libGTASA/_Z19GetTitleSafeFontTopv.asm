; =========================================================
; Game Engine Function: _Z19GetTitleSafeFontTopv
; Address            : 0x2977D0 - 0x29783E
; =========================================================

2977D0:  PUSH            {R4,R6,R7,LR}
2977D2:  ADD             R7, SP, #8
2977D4:  VPUSH           {D8-D9}
2977D8:  LDR             R0, =(RsGlobal_ptr - 0x2977E2)
2977DA:  VLDR            S2, =1.35
2977DE:  ADD             R0, PC; RsGlobal_ptr
2977E0:  VLDR            S16, =480.0
2977E4:  LDR             R4, [R0]; RsGlobal
2977E6:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
2977E8:  VMOV            S0, R0
2977EC:  VCVT.F32.S32    S0, S0
2977F0:  VMUL.F32        S0, S0, S2
2977F4:  VDIV.F32        S0, S0, S16
2977F8:  VMOV            R0, S0; this
2977FC:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
297800:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
297802:  VLDR            S2, =-0.0
297806:  VMOV            S0, R0
29780A:  MOVS            R0, #0; this
29780C:  VCVT.F32.S32    S0, S0
297810:  VMUL.F32        S2, S0, S2
297814:  VADD.F32        S18, S0, S2
297818:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
29781C:  VMOV            S0, R0
297820:  VLDR            S2, [R4,#8]
297824:  VSUB.F32        S0, S18, S0
297828:  VCVT.F32.S32    S2, S2
29782C:  VMUL.F32        S0, S0, S16
297830:  VDIV.F32        S0, S0, S2
297834:  VMOV            R0, S0
297838:  VPOP            {D8-D9}
29783C:  POP             {R4,R6,R7,PC}
