; =========================================================
; Game Engine Function: _ZN5CBoat19ModifyHandlingValueERKb
; Address            : 0x56C784 - 0x56C7B2
; =========================================================

56C784:  LDRB.W          R2, [R0,#0x650]
56C788:  CMP             R2, #4
56C78A:  IT NE
56C78C:  BXNE            LR
56C78E:  VMOV.F32        S2, #-1.0
56C792:  LDRB            R1, [R1]
56C794:  VMOV.F32        S0, #1.0
56C798:  CMP             R1, #0
56C79A:  IT EQ
56C79C:  VMOVEQ.F32      S0, S2
56C7A0:  LDR.W           R0, [R0,#0x388]
56C7A4:  VLDR            S2, [R0,#0xA0]
56C7A8:  VADD.F32        S0, S2, S0
56C7AC:  VSTR            S0, [R0,#0xA0]
56C7B0:  BX              LR
