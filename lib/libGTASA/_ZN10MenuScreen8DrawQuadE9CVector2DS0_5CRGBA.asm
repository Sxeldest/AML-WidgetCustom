; =========================================================
; Game Engine Function: _ZN10MenuScreen8DrawQuadE9CVector2DS0_5CRGBA
; Address            : 0x2987DC - 0x298938
; =========================================================

2987DC:  PUSH            {R4-R7,LR}
2987DE:  ADD             R7, SP, #0xC
2987E0:  PUSH.W          {R8,R9,R11}
2987E4:  VPUSH           {D8-D9}
2987E8:  SUB             SP, SP, #0x10
2987EA:  MOV             R4, SP
2987EC:  BFC.W           R4, #0, #4
2987F0:  MOV             SP, R4
2987F2:  MOV             R6, R1
2987F4:  LDR             R1, [R7,#arg_4]
2987F6:  MOV             R8, R2
2987F8:  MOV             R5, R3
2987FA:  MOV.W           R9, #0
2987FE:  LDRB            R2, [R1,#3]
298800:  VMOV            S0, R2
298804:  VCVT.F32.U32    S0, S0
298808:  VLDR            S2, [R0,#8]
29880C:  LDR             R0, =(RsGlobal_ptr - 0x298812)
29880E:  ADD             R0, PC; RsGlobal_ptr
298810:  LDR             R0, [R0]; RsGlobal
298812:  VMUL.F32        S0, S2, S0
298816:  VCVT.U32.F32    S0, S0
29881A:  VMOV            R2, S0
29881E:  STRB            R2, [R1,#3]
298820:  LDR             R4, [R1]
298822:  MOVS            R1, #0
298824:  VLDR            S0, [R0,#4]
298828:  VLDR            S2, [R0,#8]
29882C:  MOV             R0, SP
29882E:  VDUP.32         Q8, R4
298832:  VCVT.F32.S32    S16, S0
298836:  VCVT.F32.S32    S18, S2
29883A:  VST1.64         {D16-D17}, [R0@128,#0x38+var_38]
29883E:  MOVS            R0, #1
298840:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
298844:  VMOV            S2, R6
298848:  VLDR            S0, =-320.0
29884C:  VMOV            S4, R5
298850:  VLDR            S8, [R7,#arg_0]
298854:  VADD.F32        S2, S2, S0
298858:  VLDR            S6, =480.0
29885C:  VADD.F32        S0, S4, S0
298860:  LDR             R0, =(maVertices_ptr - 0x298870)
298862:  VMOV            S4, R8
298866:  LSRS            R2, R4, #8
298868:  VMUL.F32        S8, S8, S18
29886C:  ADD             R0, PC; maVertices_ptr
29886E:  VMUL.F32        S4, S4, S18
298872:  LSRS            R3, R4, #0x10
298874:  VMOV.F32        S10, #0.5
298878:  LDR             R1, [R0]; maVertices
29887A:  MOV.W           R0, #0x3F800000
29887E:  LSRS            R6, R4, #0x18
298880:  VMUL.F32        S2, S2, S18
298884:  VMUL.F32        S0, S0, S18
298888:  STRD.W          R0, R0, [R1,#(dword_6E0140 - 0x6E0138)]
29888C:  STRD.W          R9, R9, [R1,#(dword_6E014C - 0x6E0138)]
298890:  STRB            R4, [R1,#(byte_6E0148 - 0x6E0138)]
298892:  VDIV.F32        S4, S4, S6
298896:  STRB            R2, [R1,#(byte_6E0149 - 0x6E0138)]
298898:  STRB            R3, [R1,#(byte_6E014A - 0x6E0138)]
29889A:  STRB            R6, [R1,#(byte_6E014B - 0x6E0138)]
29889C:  STRB.W          R6, [R1,#(byte_6E0167 - 0x6E0138)]
2988A0:  STRB.W          R3, [R1,#(byte_6E0166 - 0x6E0138)]
2988A4:  STRB.W          R2, [R1,#(byte_6E0165 - 0x6E0138)]
2988A8:  STRB.W          R4, [R1,#(byte_6E0164 - 0x6E0138)]
2988AC:  STRD.W          R0, R9, [R1,#(dword_6E0168 - 0x6E0138)]
2988B0:  STRD.W          R0, R0, [R1,#(dword_6E015C - 0x6E0138)]
2988B4:  VDIV.F32        S2, S2, S6
2988B8:  VDIV.F32        S0, S0, S6
2988BC:  VDIV.F32        S6, S8, S6
2988C0:  VMUL.F32        S8, S16, S10
2988C4:  VADD.F32        S2, S8, S2
2988C8:  VADD.F32        S0, S8, S0
2988CC:  VSTR            S2, [R1]
2988D0:  VSTR            S4, [R1,#4]
2988D4:  VSTR            S0, [R1,#0x1C]
2988D8:  VSTR            S4, [R1,#0x20]
2988DC:  VSTR            S2, [R1,#0x38]
2988E0:  STRD.W          R0, R0, [R1,#(dword_6E0178 - 0x6E0138)]
2988E4:  STRD.W          R9, R0, [R1,#(dword_6E0184 - 0x6E0138)]
2988E8:  STRB.W          R4, [R1,#(byte_6E0180 - 0x6E0138)]
2988EC:  STRB.W          R2, [R1,#(byte_6E0181 - 0x6E0138)]
2988F0:  STRB.W          R3, [R1,#(byte_6E0182 - 0x6E0138)]
2988F4:  STRB.W          R6, [R1,#(byte_6E0183 - 0x6E0138)]
2988F8:  VSTR            S6, [R1,#0x3C]
2988FC:  STRD.W          R0, R0, [R1,#(dword_6E0194 - 0x6E0138)]
298900:  STRD.W          R0, R0, [R1,#(dword_6E01A0 - 0x6E0138)]
298904:  LDRB.W          R0, [SP,#0x38+var_29]
298908:  STRB.W          R4, [R1,#(byte_6E019C - 0x6E0138)]
29890C:  STRB.W          R2, [R1,#(byte_6E019D - 0x6E0138)]
298910:  MOVS            R2, #4
298912:  STRB.W          R3, [R1,#(byte_6E019E - 0x6E0138)]
298916:  VSTR            S0, [R1,#0x54]
29891A:  VSTR            S6, [R1,#0x58]
29891E:  STRB.W          R0, [R1,#(byte_6E019F - 0x6E0138)]
298922:  MOVS            R0, #4
298924:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
298928:  SUB.W           R4, R7, #-var_28
29892C:  MOV             SP, R4
29892E:  VPOP            {D8-D9}
298932:  POP.W           {R8,R9,R11}
298936:  POP             {R4-R7,PC}
