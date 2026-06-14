; =========================================================
; Game Engine Function: _ZN6CTimer23GetCyclesPerMillisecondEv
; Address            : 0x420FBC - 0x420FC6
; =========================================================

420FBC:  LDR             R0, =(timerDef_ptr - 0x420FC2)
420FBE:  ADD             R0, PC; timerDef_ptr
420FC0:  LDR             R0, [R0]; timerDef
420FC2:  LDR             R0, [R0,#(dword_96B51C - 0x96B518)]
420FC4:  BX              LR
