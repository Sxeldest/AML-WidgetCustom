; =========================================================
; Game Engine Function: _ZN7CDarkel10ReadStatusEv
; Address            : 0x303EB0 - 0x303EBA
; =========================================================

303EB0:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x303EB6)
303EB2:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
303EB4:  LDR             R0, [R0]; CDarkel::Status ...
303EB6:  LDRH            R0, [R0]; CDarkel::Status
303EB8:  BX              LR
