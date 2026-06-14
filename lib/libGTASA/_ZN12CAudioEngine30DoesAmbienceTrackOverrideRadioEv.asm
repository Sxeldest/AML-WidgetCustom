; =========================================================
; Game Engine Function: _ZN12CAudioEngine30DoesAmbienceTrackOverrideRadioEv
; Address            : 0x3BD80C - 0x3BD816
; =========================================================

3BD80C:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BD812)
3BD80E:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BD810:  LDR             R0, [R0]; AEAmbienceTrackManager
3BD812:  LDRB            R0, [R0]
3BD814:  BX              LR
