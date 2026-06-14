; =========================================================
; Game Engine Function: _ZNK9CPhysical12GetBoundRectEv
; Address            : 0x3FCD98 - 0x3FCDE8
; =========================================================

3FCD98:  PUSH            {R4,R5,R7,LR}
3FCD9A:  ADD             R7, SP, #8
3FCD9C:  SUB             SP, SP, #0x10
3FCD9E:  MOV             R5, R0
3FCDA0:  ADD             R0, SP, #0x18+var_14; this
3FCDA2:  MOV             R4, R1
3FCDA4:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
3FCDA8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FCDB2)
3FCDAA:  LDRSH.W         R1, [R4,#0x26]
3FCDAE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3FCDB0:  VLDR            S0, [SP,#0x18+var_14]
3FCDB4:  VLDR            S6, [SP,#0x18+var_10]
3FCDB8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3FCDBA:  LDR.W           R0, [R0,R1,LSL#2]
3FCDBE:  LDR             R0, [R0,#0x2C]
3FCDC0:  VLDR            S2, [R0,#0x24]
3FCDC4:  VSUB.F32        S4, S0, S2
3FCDC8:  VADD.F32        S0, S2, S0
3FCDCC:  VSUB.F32        S8, S6, S2
3FCDD0:  VADD.F32        S2, S2, S6
3FCDD4:  VSTR            S4, [R5]
3FCDD8:  VSTR            S2, [R5,#4]
3FCDDC:  VSTR            S0, [R5,#8]
3FCDE0:  VSTR            S8, [R5,#0xC]
3FCDE4:  ADD             SP, SP, #0x10
3FCDE6:  POP             {R4,R5,R7,PC}
