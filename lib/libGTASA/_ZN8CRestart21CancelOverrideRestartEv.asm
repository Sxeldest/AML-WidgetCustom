; =========================================================
; Game Engine Function: _ZN8CRestart21CancelOverrideRestartEv
; Address            : 0x324EC8 - 0x324ED4
; =========================================================

324EC8:  LDR             R0, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x324ED0)
324ECA:  MOVS            R1, #0
324ECC:  ADD             R0, PC; _ZN8CRestart16bOverrideRestartE_ptr
324ECE:  LDR             R0, [R0]; CRestart::bOverrideRestart ...
324ED0:  STRB            R1, [R0]; CRestart::bOverrideRestart
324ED2:  BX              LR
