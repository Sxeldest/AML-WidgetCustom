; =========================================================
; Game Engine Function: _ZN7CDarkel13FrenzyOnGoingEv
; Address            : 0x303EC0 - 0x303EDA
; =========================================================

303EC0:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x303EC8)
303EC2:  MOVS            R1, #0
303EC4:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
303EC6:  LDR             R0, [R0]; CDarkel::Status ...
303EC8:  LDRH            R0, [R0]; CDarkel::Status
303ECA:  CMP             R0, #4
303ECC:  IT EQ
303ECE:  MOVEQ           R1, #1
303ED0:  CMP             R0, #1
303ED2:  IT NE
303ED4:  MOVNE           R0, #0
303ED6:  ORRS            R0, R1
303ED8:  BX              LR
