; =========================================================
; Game Engine Function: _ZN8CRestart19OverrideNextRestartERK7CVectorf
; Address            : 0x324E90 - 0x324EBC
; =========================================================

324E90:  LDR             R2, =(_ZN8CRestart16OverridePositionE_ptr - 0x324E9C)
324E92:  LDR             R3, =(_ZN8CRestart15OverrideHeadingE_ptr - 0x324E9E)
324E94:  LDR.W           R12, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x324EA4)
324E98:  ADD             R2, PC; _ZN8CRestart16OverridePositionE_ptr
324E9A:  ADD             R3, PC; _ZN8CRestart15OverrideHeadingE_ptr
324E9C:  VLDR            D16, [R0]
324EA0:  ADD             R12, PC; _ZN8CRestart16bOverrideRestartE_ptr
324EA2:  LDR             R2, [R2]; CRestart::OverridePosition ...
324EA4:  LDR             R3, [R3]; CRestart::OverrideHeading ...
324EA6:  LDR.W           R12, [R12]; CRestart::bOverrideRestart ...
324EAA:  LDR             R0, [R0,#8]
324EAC:  STR             R0, [R2,#(dword_7B6F08 - 0x7B6F00)]
324EAE:  MOVS            R0, #1
324EB0:  VSTR            D16, [R2]
324EB4:  STR             R1, [R3]; CRestart::OverrideHeading
324EB6:  STRB.W          R0, [R12]; CRestart::bOverrideRestart
324EBA:  BX              LR
