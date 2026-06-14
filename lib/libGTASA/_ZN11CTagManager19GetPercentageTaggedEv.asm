; =========================================================
; Game Engine Function: _ZN11CTagManager19GetPercentageTaggedEv
; Address            : 0x36224C - 0x36227E
; =========================================================

36224C:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x362254)
36224E:  LDR             R1, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x362256)
362250:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
362252:  ADD             R1, PC; _ZN11CTagManager12ms_numTaggedE_ptr
362254:  LDR             R0, [R0]; CTagManager::ms_numTags ...
362256:  LDR             R1, [R1]; CTagManager::ms_numTagged ...
362258:  VLDR            S0, [R0]
36225C:  VLDR            S2, [R1]
362260:  VCVT.F32.U32    S0, S0
362264:  VCVT.F32.U32    S2, S2
362268:  VDIV.F32        S0, S2, S0
36226C:  VLDR            S2, =100.0
362270:  VMUL.F32        S0, S0, S2
362274:  VCVT.S32.F32    S0, S0
362278:  VMOV            R0, S0
36227C:  BX              LR
