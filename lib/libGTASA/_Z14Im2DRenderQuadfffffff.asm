; =========================================================
; Game Engine Function: _Z14Im2DRenderQuadfffffff
; Address            : 0x5B78FC - 0x5B798A
; =========================================================

5B78FC:  PUSH            {R7,LR}
5B78FE:  MOV             R7, SP
5B7900:  SUB             SP, SP, #0x70
5B7902:  VMOV.F32        S4, #1.0
5B7906:  VLDR            S2, [R7,#0x10]
5B790A:  VLDR            S0, [R7,#0xC]
5B790E:  MOV.W           R12, #0xFFFFFFFF
5B7912:  VLDR            S6, [R7,#8]
5B7916:  STRD.W          R0, R1, [SP,#0x78+var_78]
5B791A:  STR.W           R12, [SP,#0x78+var_68]
5B791E:  STRD.W          R0, R3, [SP,#0x78+var_5C]
5B7922:  MOVS            R0, #4
5B7924:  STRD.W          R2, R1, [SP,#0x78+var_40]
5B7928:  MOV             R1, SP
5B792A:  VADD.F32        S4, S2, S4
5B792E:  STR.W           R12, [SP,#0x78+var_4C]
5B7932:  VSTR            S6, [SP,#0x78+var_70]
5B7936:  VSTR            S0, [SP,#0x78+var_6C]
5B793A:  VSTR            S2, [SP,#0x78+var_64]
5B793E:  VSTR            S2, [SP,#0x78+var_60]
5B7942:  VSTR            S6, [SP,#0x78+var_54]
5B7946:  VSTR            S0, [SP,#0x78+var_50]
5B794A:  VSTR            S2, [SP,#0x78+var_48]
5B794E:  VSTR            S4, [SP,#0x78+var_44]
5B7952:  STR.W           R12, [SP,#0x78+var_30]
5B7956:  VSTR            S6, [SP,#0x78+var_38]
5B795A:  VSTR            S0, [SP,#0x78+var_34]
5B795E:  VSTR            S2, [SP,#0x78+var_28]
5B7962:  VSTR            S4, [SP,#0x78+var_2C]
5B7966:  STRD.W          R2, R3, [SP,#0x78+var_24]
5B796A:  MOVS            R2, #4
5B796C:  VSTR            S6, [SP,#0x78+var_1C]
5B7970:  STR.W           R12, [SP,#0x78+var_14]
5B7974:  VSTR            S0, [SP,#0x78+var_18]
5B7978:  VSTR            S4, [SP,#0x78+var_10]
5B797C:  VSTR            S4, [SP,#0x78+var_C]
5B7980:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5B7984:  MOVS            R0, #1
5B7986:  ADD             SP, SP, #0x70 ; 'p'
5B7988:  POP             {R7,PC}
