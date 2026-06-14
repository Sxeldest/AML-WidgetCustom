; =========================================================
; Game Engine Function: _ZN12CLoadMonitor10BeginFrameEv
; Address            : 0x3F4F66 - 0x3F4F76
; =========================================================

3F4F66:  MOVS            R1, #1
3F4F68:  VMOV.I32        Q8, #0
3F4F6C:  STR.W           R1, [R0],#0x3C
3F4F70:  VST1.32         {D16-D17}, [R0]
3F4F74:  BX              LR
