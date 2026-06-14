; =========================================================
; Game Engine Function: _ZN25CAEWaterCannonAudioEntity15ClearSplashInfoEv
; Address            : 0x3B93A4 - 0x3B93B6
; =========================================================

3B93A4:  MOVS            R1, #0
3B93A6:  VMOV.I32        Q8, #0
3B93AA:  STRB.W          R1, [R0,#0x7D]
3B93AE:  ADDS            R0, #0x80
3B93B0:  VST1.32         {D16-D17}, [R0]
3B93B4:  BX              LR
