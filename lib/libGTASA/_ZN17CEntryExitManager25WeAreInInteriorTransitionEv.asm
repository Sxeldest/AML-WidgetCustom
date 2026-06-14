; =========================================================
; Game Engine Function: _ZN17CEntryExitManager25WeAreInInteriorTransitionEv
; Address            : 0x3069B4 - 0x3069C4
; =========================================================

3069B4:  LDR             R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x3069BA)
3069B6:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
3069B8:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
3069BA:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState
3069BC:  CMP             R0, #0
3069BE:  IT NE
3069C0:  MOVNE           R0, #1
3069C2:  BX              LR
