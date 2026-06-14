; =========================================================
; Game Engine Function: _ZN27CAEPoliceScannerAudioEntity13EnableScannerEv
; Address            : 0x39F590 - 0x39F59C
; =========================================================

39F590:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr - 0x39F598)
39F592:  MOVS            R1, #0
39F594:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr
39F596:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled ...
39F598:  STRB            R1, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled
39F59A:  BX              LR
