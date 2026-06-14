; =========================================================
; Game Engine Function: _ZN12CAudioEngine21IsAmbienceRadioActiveEv
; Address            : 0x3BD81C - 0x3BD826
; =========================================================

3BD81C:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BD822)
3BD81E:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BD820:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BD822:  B.W             j_j__ZN23CAEAmbienceTrackManager21IsAmbienceRadioActiveEv; j_CAEAmbienceTrackManager::IsAmbienceRadioActive(void)
