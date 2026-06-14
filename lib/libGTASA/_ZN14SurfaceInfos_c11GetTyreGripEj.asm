; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c11GetTyreGripEj
; Address            : 0x41DE12 - 0x41DE34
; =========================================================

41DE12:  ADD.W           R1, R1, R1,LSL#1
41DE16:  VMOV.F32        S0, #10.0
41DE1A:  ADD.W           R0, R0, R1,LSL#2
41DE1E:  LDRSB.W         R0, [R0,#0x90]
41DE22:  VMOV            S2, R0
41DE26:  VCVT.F32.S32    S2, S2
41DE2A:  VDIV.F32        S0, S2, S0
41DE2E:  VMOV            R0, S0
41DE32:  BX              LR
