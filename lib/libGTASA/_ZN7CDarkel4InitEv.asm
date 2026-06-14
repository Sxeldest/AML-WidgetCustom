; =========================================================
; Game Engine Function: _ZN7CDarkel4InitEv
; Address            : 0x303634 - 0x303640
; =========================================================

303634:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x30363C)
303636:  MOVS            R1, #0
303638:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
30363A:  LDR             R0, [R0]; CDarkel::Status ...
30363C:  STRH            R1, [R0]; CDarkel::Status
30363E:  BX              LR
