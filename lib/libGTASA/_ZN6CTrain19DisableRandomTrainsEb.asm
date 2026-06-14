; =========================================================
; Game Engine Function: _ZN6CTrain19DisableRandomTrainsEb
; Address            : 0x57F4D0 - 0x57F4DA
; =========================================================

57F4D0:  LDR             R1, =(_ZN6CTrain20bDisableRandomTrainsE_ptr - 0x57F4D6)
57F4D2:  ADD             R1, PC; _ZN6CTrain20bDisableRandomTrainsE_ptr
57F4D4:  LDR             R1, [R1]; CTrain::bDisableRandomTrains ...
57F4D6:  STRB            R0, [R1]; CTrain::bDisableRandomTrains
57F4D8:  BX              LR
