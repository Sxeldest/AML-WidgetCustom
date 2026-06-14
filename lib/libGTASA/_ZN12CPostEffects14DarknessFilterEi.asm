; =========================================================
; Game Engine Function: _ZN12CPostEffects14DarknessFilterEi
; Address            : 0x5B406C - 0x5B411C
; =========================================================

5B406C:  PUSH            {R4,R5,R7,LR}
5B406E:  ADD             R7, SP, #8
5B4070:  VPUSH           {D8-D9}
5B4074:  MOV             R4, R0
5B4076:  BLX.W           j__ZN12CPostEffects30ImmediateModeRenderStatesStoreEv; CPostEffects::ImmediateModeRenderStatesStore(void)
5B407A:  BLX.W           j__ZN12CPostEffects28ImmediateModeRenderStatesSetEv; CPostEffects::ImmediateModeRenderStatesSet(void)
5B407E:  LDR             R0, =(RsGlobal_ptr - 0x5B4088)
5B4080:  MOVS            R1, #0
5B4082:  MOVS            R5, #0
5B4084:  ADD             R0, PC; RsGlobal_ptr
5B4086:  LDR             R0, [R0]; RsGlobal
5B4088:  VLDR            S0, [R0,#4]
5B408C:  VLDR            S2, [R0,#8]
5B4090:  MOVS            R0, #1
5B4092:  VCVT.F32.S32    S16, S2
5B4096:  VCVT.F32.S32    S18, S0
5B409A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B409E:  LDR             R0, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5B40A4)
5B40A0:  ADD             R0, PC; _ZN12CPostEffects6ms_imfE_ptr
5B40A2:  LDR             R0, [R0]; CPostEffects::ms_imf ...
5B40A4:  STR.W           R5, [R0,#(dword_A4771C - 0xA47690)]
5B40A8:  MOV             R1, R0
5B40AA:  STR.W           R5, [R0,#(dword_A47738 - 0xA47690)]
5B40AE:  STRH.W          R5, [R0,#(dword_A47728 - 0xA47690)]
5B40B2:  STRB.W          R5, [R0,#(dword_A47728+2 - 0xA47690)]
5B40B6:  LDR             R2, [R0]; CPostEffects::ms_imf
5B40B8:  STRB.W          R4, [R0,#(dword_A47728+3 - 0xA47690)]
5B40BC:  STRH.W          R5, [R0,#(dword_A47744 - 0xA47690)]
5B40C0:  STRB.W          R5, [R0,#(dword_A47744+2 - 0xA47690)]
5B40C4:  STRB.W          R4, [R0,#(dword_A47744+3 - 0xA47690)]
5B40C8:  STR.W           R5, [R0,#(dword_A47750 - 0xA47690)]
5B40CC:  STRH.W          R5, [R0,#(dword_A47760 - 0xA47690)]
5B40D0:  STRB.W          R5, [R0,#(dword_A47760+2 - 0xA47690)]
5B40D4:  STRB.W          R4, [R0,#(dword_A47760+3 - 0xA47690)]
5B40D8:  STR.W           R2, [R0,#(dword_A47720 - 0xA47690)]
5B40DC:  STR.W           R2, [R0,#(dword_A4773C - 0xA47690)]
5B40E0:  STR.W           R2, [R0,#(dword_A47758 - 0xA47690)]
5B40E4:  VSTR            S18, [R0,#0xA4]
5B40E8:  VSTR            S16, [R0,#0xC4]
5B40EC:  STR.W           R5, [R1,#(dword_A47718 - 0xA47690)]!
5B40F0:  STR.W           R2, [R0,#(dword_A47774 - 0xA47690)]
5B40F4:  MOVS            R2, #4
5B40F6:  STRH.W          R5, [R0,#(dword_A4777C - 0xA47690)]
5B40FA:  STRB.W          R5, [R0,#(dword_A4777C+2 - 0xA47690)]
5B40FE:  STRB.W          R4, [R0,#(dword_A4777C+3 - 0xA47690)]
5B4102:  VSTR            S18, [R0,#0xDC]
5B4106:  VSTR            S16, [R0,#0xE0]
5B410A:  MOVS            R0, #4
5B410C:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5B4110:  VPOP            {D8-D9}
5B4114:  POP.W           {R4,R5,R7,LR}
5B4118:  B.W             _ZN12CPostEffects32ImmediateModeRenderStatesReStoreEv; CPostEffects::ImmediateModeRenderStatesReStore(void)
