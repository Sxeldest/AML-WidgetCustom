; =========================================================
; Game Engine Function: _ZN7CWidget15ClearTapHistoryEv
; Address            : 0x2B2A7E - 0x2B2A98
; =========================================================

2B2A7E:  MOVS            R1, #0
2B2A80:  VMOV.I32        Q8, #0
2B2A84:  STRD.W          R1, R1, [R0,#0x70]
2B2A88:  ADD.W           R1, R0, #0x60 ; '`'
2B2A8C:  ADDS            R0, #0x50 ; 'P'
2B2A8E:  VST1.32         {D16-D17}, [R1]
2B2A92:  VST1.32         {D16-D17}, [R0]
2B2A96:  BX              LR
