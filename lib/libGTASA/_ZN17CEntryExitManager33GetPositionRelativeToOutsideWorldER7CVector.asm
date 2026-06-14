; =========================================================
; Game Engine Function: _ZN17CEntryExitManager33GetPositionRelativeToOutsideWorldER7CVector
; Address            : 0x306A40 - 0x306AF0
; =========================================================

306A40:  PUSH            {R7,LR}
306A42:  MOV             R7, SP
306A44:  LDR             R1, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x306A4A)
306A46:  ADD             R1, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
306A48:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn ...
306A4A:  LDR.W           LR, [R1]; CEntryExitManager::ms_entryExitStackPosn
306A4E:  CMP.W           LR, #0
306A52:  IT EQ
306A54:  POPEQ           {R7,PC}
306A56:  LDR             R2, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x306A60)
306A58:  VMOV.F32        S0, #0.5
306A5C:  ADD             R2, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
306A5E:  LDR.W           R12, [R2]; CEntryExitManager::ms_entryExitStack ...
306A62:  ADD.W           R2, R12, LR,LSL#2
306A66:  SUB.W           LR, LR, #1
306A6A:  LDR.W           R2, [R2,#-4]
306A6E:  LDR             R3, [R2,#0x38]
306A70:  CMP             R3, #0
306A72:  IT EQ
306A74:  MOVEQ           R3, R2
306A76:  LDRB.W          R1, [R3,#0x32]
306A7A:  CBZ             R1, loc_306AE8
306A7C:  VLDR            S2, [R2,#8]
306A80:  VLDR            S6, [R2,#0x10]
306A84:  VLDR            S4, [R2,#0xC]
306A88:  VLDR            S8, [R2,#0x14]
306A8C:  VADD.F32        S2, S2, S6
306A90:  VLDR            S10, [R2,#0x18]
306A94:  VADD.F32        S4, S4, S8
306A98:  VLDR            S12, [R0,#8]
306A9C:  VLDR            S6, [R0]
306AA0:  VLDR            S8, [R0,#4]
306AA4:  VADD.F32        S10, S10, S12
306AA8:  VMUL.F32        S2, S2, S0
306AAC:  VMUL.F32        S4, S4, S0
306AB0:  VADD.F32        S2, S6, S2
306AB4:  VADD.F32        S4, S4, S8
306AB8:  VSTR            S2, [R0]
306ABC:  VSTR            S4, [R0,#4]
306AC0:  VSTR            S10, [R0,#8]
306AC4:  VLDR            S6, [R3,#0x20]
306AC8:  VLDR            S8, [R3,#0x24]
306ACC:  VLDR            S12, [R3,#0x28]
306AD0:  VSUB.F32        S2, S2, S6
306AD4:  VSUB.F32        S4, S4, S8
306AD8:  VSUB.F32        S6, S10, S12
306ADC:  VSTR            S2, [R0]
306AE0:  VSTR            S4, [R0,#4]
306AE4:  VSTR            S6, [R0,#8]
306AE8:  CMP.W           LR, #0
306AEC:  BNE             loc_306A62
306AEE:  POP             {R7,PC}
