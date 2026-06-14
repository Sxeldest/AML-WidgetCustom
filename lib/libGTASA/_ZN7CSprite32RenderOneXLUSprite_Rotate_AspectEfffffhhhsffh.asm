; =========================================================
; Game Engine Function: _ZN7CSprite32RenderOneXLUSprite_Rotate_AspectEfffffhhhsffh
; Address            : 0x5C681C - 0x5C6AF2
; =========================================================

5C681C:  PUSH            {R4-R7,LR}
5C681E:  ADD             R7, SP, #0xC
5C6820:  PUSH.W          {R8-R11}
5C6824:  SUB             SP, SP, #4
5C6826:  VPUSH           {D8-D11}
5C682A:  SUB             SP, SP, #8
5C682C:  MOV             R4, R1
5C682E:  LDR             R1, [R7,#arg_1C]
5C6830:  STR             R1, [SP,#0x48+var_44]
5C6832:  VMOV            S16, R2
5C6836:  VLDR            S2, =2.3
5C683A:  VLDR            S0, [R7,#arg_18]
5C683E:  LDRD.W          R10, R9, [R7,#arg_C]
5C6842:  VCMPE.F32       S16, S2
5C6846:  LDRD.W          R11, R8, [R7,#arg_4]
5C684A:  VMRS            APSR_nzcv, FPSCR
5C684E:  VLDR            S18, [R7,#arg_0]
5C6852:  BGE             loc_5C689C
5C6854:  VLDR            S2, =1.3
5C6858:  VCMPE.F32       S16, S2
5C685C:  VMRS            APSR_nzcv, FPSCR
5C6860:  BLT.W           loc_5C69D2
5C6864:  VLDR            S2, =-1.3
5C6868:  VLDR            S4, =255.0
5C686C:  VADD.F32        S2, S16, S2
5C6870:  VMUL.F32        S2, S2, S4
5C6874:  VCVT.S32.F32    S2, S2
5C6878:  VMOV            R1, S2
5C687C:  MUL.W           R2, R9, R1
5C6880:  MUL.W           R6, R10, R1
5C6884:  MUL.W           R5, R8, R1
5C6888:  MUL.W           R1, R11, R1
5C688C:  MOV.W           R9, R2,LSR#8
5C6890:  MOV.W           R10, R6,LSR#8
5C6894:  MOV.W           R8, R5,LSR#8
5C6898:  MOV.W           R11, R1,LSR#8
5C689C:  VMOV            R5, S0
5C68A0:  VMOV            S22, R0
5C68A4:  VMOV            S20, R3
5C68A8:  MOV             R0, R5; x
5C68AA:  BLX.W           sinf
5C68AE:  MOV             R6, R0
5C68B0:  MOV             R0, R5; x
5C68B2:  BLX.W           cosf
5C68B6:  VMOV            S0, R0
5C68BA:  VMOV            S2, R6
5C68BE:  VNEG.F32        S4, S0
5C68C2:  VADD.F32        S8, S2, S0
5C68C6:  VSUB.F32        S14, S0, S2
5C68CA:  VSUB.F32        S10, S2, S0
5C68CE:  VSUB.F32        S12, S4, S2
5C68D2:  VMUL.F32        S0, S8, S20
5C68D6:  VMUL.F32        S2, S14, S20
5C68DA:  VMUL.F32        S4, S10, S20
5C68DE:  VMUL.F32        S1, S12, S20
5C68E2:  VADD.F32        S0, S0, S22
5C68E6:  VADD.F32        S2, S2, S22
5C68EA:  VADD.F32        S6, S4, S22
5C68EE:  VADD.F32        S4, S1, S22
5C68F2:  VCMPE.F32       S0, #0.0
5C68F6:  VMRS            APSR_nzcv, FPSCR
5C68FA:  BGE             loc_5C691A
5C68FC:  VCMPE.F32       S2, #0.0
5C6900:  VMRS            APSR_nzcv, FPSCR
5C6904:  ITT LT
5C6906:  VCMPELT.F32     S4, #0.0
5C690A:  VMRSLT          APSR_nzcv, FPSCR
5C690E:  BGE             loc_5C691A
5C6910:  VCMPE.F32       S6, #0.0
5C6914:  VMRS            APSR_nzcv, FPSCR
5C6918:  BLT             loc_5C69D2
5C691A:  VMUL.F32        S14, S14, S18
5C691E:  VMUL.F32        S3, S8, S18
5C6922:  VMUL.F32        S5, S10, S18
5C6926:  VMUL.F32        S12, S12, S18
5C692A:  VMOV            S1, R4
5C692E:  VADD.F32        S8, S14, S1
5C6932:  VADD.F32        S10, S3, S1
5C6936:  VADD.F32        S14, S5, S1
5C693A:  VADD.F32        S12, S12, S1
5C693E:  VCMPE.F32       S8, #0.0
5C6942:  VMRS            APSR_nzcv, FPSCR
5C6946:  BGE             loc_5C6966
5C6948:  VCMPE.F32       S12, #0.0
5C694C:  VMRS            APSR_nzcv, FPSCR
5C6950:  ITT LT
5C6952:  VCMPELT.F32     S14, #0.0
5C6956:  VMRSLT          APSR_nzcv, FPSCR
5C695A:  BGE             loc_5C6966
5C695C:  VCMPE.F32       S10, #0.0
5C6960:  VMRS            APSR_nzcv, FPSCR
5C6964:  BLT             loc_5C69D2
5C6966:  LDR             R0, =(RsGlobal_ptr - 0x5C696C)
5C6968:  ADD             R0, PC; RsGlobal_ptr
5C696A:  LDR             R0, [R0]; RsGlobal
5C696C:  VLDR            S1, [R0,#4]
5C6970:  VCVT.F32.S32    S1, S1
5C6974:  VCMPE.F32       S0, S1
5C6978:  VMRS            APSR_nzcv, FPSCR
5C697C:  BLE             loc_5C699C
5C697E:  VCMPE.F32       S2, S1
5C6982:  VMRS            APSR_nzcv, FPSCR
5C6986:  ITT GT
5C6988:  VCMPEGT.F32     S4, S1
5C698C:  VMRSGT          APSR_nzcv, FPSCR
5C6990:  BLE             loc_5C699C
5C6992:  VCMPE.F32       S6, S1
5C6996:  VMRS            APSR_nzcv, FPSCR
5C699A:  BGT             loc_5C69D2
5C699C:  LDR             R0, =(RsGlobal_ptr - 0x5C69A2)
5C699E:  ADD             R0, PC; RsGlobal_ptr
5C69A0:  LDR             R0, [R0]; RsGlobal
5C69A2:  VLDR            S1, [R0,#8]
5C69A6:  VCVT.F32.S32    S1, S1
5C69AA:  VCMPE.F32       S8, S1
5C69AE:  VMRS            APSR_nzcv, FPSCR
5C69B2:  ITT GT
5C69B4:  VCMPEGT.F32     S12, S1
5C69B8:  VMRSGT          APSR_nzcv, FPSCR
5C69BC:  BLE             loc_5C69E0
5C69BE:  VCMPE.F32       S14, S1
5C69C2:  VMRS            APSR_nzcv, FPSCR
5C69C6:  ITT GT
5C69C8:  VCMPEGT.F32     S10, S1
5C69CC:  VMRSGT          APSR_nzcv, FPSCR
5C69D0:  BLE             loc_5C69E0
5C69D2:  ADD             SP, SP, #8
5C69D4:  VPOP            {D8-D11}
5C69D8:  ADD             SP, SP, #4
5C69DA:  POP.W           {R8-R11}
5C69DE:  POP             {R4-R7,PC}
5C69E0:  LDR             R0, =(_ZN5CDraw12ms_fFarClipZE_ptr - 0x5C69F0)
5C69E2:  VMOV.F32        S9, #-1.0
5C69E6:  LDR             R1, =(_ZN5CDraw13ms_fNearClipZE_ptr - 0x5C69F6)
5C69E8:  SXTH.W          R2, R9
5C69EC:  ADD             R0, PC; _ZN5CDraw12ms_fFarClipZE_ptr
5C69EE:  UXTB.W          R3, R10
5C69F2:  ADD             R1, PC; _ZN5CDraw13ms_fNearClipZE_ptr
5C69F4:  UXTB.W          R6, R11
5C69F8:  LDR             R0, [R0]; CDraw::ms_fFarClipZ ...
5C69FA:  SMULBB.W        R3, R3, R2
5C69FE:  LDR             R1, [R1]; CDraw::ms_fNearClipZ ...
5C6A00:  SMULBB.W        R6, R6, R2
5C6A04:  VLDR            S1, [R0]
5C6A08:  UXTB.W          R0, R8
5C6A0C:  VLDR            S3, [R1]
5C6A10:  SMULBB.W        R2, R0, R2
5C6A14:  VADD.F32        S5, S1, S1
5C6A18:  LDR             R1, =(dword_A7C1F4 - 0x5C6A2A)
5C6A1A:  VSUB.F32        S7, S1, S3
5C6A1E:  MOV.W           R0, #0x3F800000
5C6A22:  VADD.F32        S1, S1, S3
5C6A26:  ADD             R1, PC; dword_A7C1F4
5C6A28:  LSRS            R6, R6, #8
5C6A2A:  LSRS            R3, R3, #8
5C6A2C:  LSRS            R2, R2, #8
5C6A2E:  VSTR            S6, [R1,#0x1C]
5C6A32:  VSTR            S4, [R1]
5C6A36:  VSTR            S2, [R1,#0x38]
5C6A3A:  VMUL.F32        S3, S5, S3
5C6A3E:  VLDR            S5, =0.95
5C6A42:  VSTR            S0, [R1,#0x54]
5C6A46:  VDIV.F32        S1, S1, S7
5C6A4A:  VMUL.F32        S5, S16, S5
5C6A4E:  VSTR            S14, [R1,#4]
5C6A52:  VDIV.F32        S3, S3, S7
5C6A56:  VADD.F32        S5, S5, S9
5C6A5A:  VSTR            S10, [R1,#0x20]
5C6A5E:  VSTR            S12, [R1,#0x3C]
5C6A62:  VSTR            S8, [R1,#0x58]
5C6A66:  STR             R0, [R1,#(dword_A7C200 - 0xA7C1F4)]
5C6A68:  STR             R0, [R1,#(dword_A7C21C - 0xA7C1F4)]
5C6A6A:  STR             R0, [R1,#(dword_A7C238 - 0xA7C1F4)]
5C6A6C:  STR             R0, [R1,#(dword_A7C254 - 0xA7C1F4)]
5C6A6E:  VMUL.F32        S1, S5, S1
5C6A72:  STRB            R2, [R1,#(byte_A7C205 - 0xA7C1F4)]
5C6A74:  VNEG.F32        S5, S5
5C6A78:  STRB            R6, [R1,#(byte_A7C204 - 0xA7C1F4)]
5C6A7A:  STRB            R3, [R1,#(byte_A7C206 - 0xA7C1F4)]
5C6A7C:  LDR             R5, [SP,#0x48+var_44]
5C6A7E:  STRB            R5, [R1,#(byte_A7C207 - 0xA7C1F4)]
5C6A80:  STRB.W          R2, [R1,#(byte_A7C221 - 0xA7C1F4)]
5C6A84:  STRB.W          R6, [R1,#(byte_A7C220 - 0xA7C1F4)]
5C6A88:  VSUB.F32        S1, S3, S1
5C6A8C:  STRB.W          R3, [R1,#(byte_A7C222 - 0xA7C1F4)]
5C6A90:  STRB.W          R5, [R1,#(byte_A7C223 - 0xA7C1F4)]
5C6A94:  VDIV.F32        S1, S1, S5
5C6A98:  VSTR            S1, [R1,#8]
5C6A9C:  VSTR            S1, [R1,#0x24]
5C6AA0:  VSTR            S1, [R1,#0x40]
5C6AA4:  VSTR            S1, [R1,#0x5C]
5C6AA8:  STRB.W          R2, [R1,#(byte_A7C23D - 0xA7C1F4)]
5C6AAC:  STRB.W          R6, [R1,#(byte_A7C23C - 0xA7C1F4)]
5C6AB0:  STRB.W          R3, [R1,#(byte_A7C23E - 0xA7C1F4)]
5C6AB4:  STRB.W          R5, [R1,#(byte_A7C23F - 0xA7C1F4)]
5C6AB8:  STRB.W          R2, [R1,#(byte_A7C259 - 0xA7C1F4)]
5C6ABC:  MOVS            R2, #0
5C6ABE:  STRB.W          R6, [R1,#(byte_A7C258 - 0xA7C1F4)]
5C6AC2:  STRB.W          R3, [R1,#(byte_A7C25A - 0xA7C1F4)]
5C6AC6:  STRB.W          R5, [R1,#(byte_A7C25B - 0xA7C1F4)]
5C6ACA:  STRD.W          R2, R2, [R1,#(dword_A7C208 - 0xA7C1F4)]
5C6ACE:  STRD.W          R2, R0, [R1,#(dword_A7C224 - 0xA7C1F4)]
5C6AD2:  STRD.W          R0, R2, [R1,#(dword_A7C240 - 0xA7C1F4)]
5C6AD6:  MOVS            R2, #4
5C6AD8:  STRD.W          R0, R0, [R1,#(dword_A7C25C - 0xA7C1F4)]
5C6ADC:  MOVS            R0, #4
5C6ADE:  ADD             SP, SP, #8
5C6AE0:  VPOP            {D8-D11}
5C6AE4:  ADD             SP, SP, #4
5C6AE6:  POP.W           {R8-R11}
5C6AEA:  POP.W           {R4-R7,LR}
5C6AEE:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
