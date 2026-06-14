; =========================================================
; Game Engine Function: _ZN8CGarages21CameraShouldBeOutsideEv
; Address            : 0x3141B8 - 0x3141C2
; =========================================================

3141B8:  LDR             R0, =(_ZN8CGarages19bCamShouldBeOutsideE_ptr - 0x3141BE)
3141BA:  ADD             R0, PC; _ZN8CGarages19bCamShouldBeOutsideE_ptr
3141BC:  LDR             R0, [R0]; CGarages::bCamShouldBeOutside ...
3141BE:  LDRB            R0, [R0]; CGarages::bCamShouldBeOutside
3141C0:  BX              LR
