; =========================================================
; Game Engine Function: _ZN7CDarkel25ResetModelsKilledByPlayerEi
; Address            : 0x3048E0 - 0x3048FC
; =========================================================

3048E0:  LDR             R1, =(_ZN7CDarkel15RegisteredKillsE_ptr - 0x3048E8)
3048E2:  MOVS            R2, #0
3048E4:  ADD             R1, PC; _ZN7CDarkel15RegisteredKillsE_ptr
3048E6:  LDR             R1, [R1]; CDarkel::RegisteredKills ...
3048E8:  ADD.W           R0, R1, R0,LSL#1
3048EC:  MOVS            R1, #0
3048EE:  STRH.W          R1, [R0,R2,LSL#2]
3048F2:  ADDS            R2, #1
3048F4:  CMP.W           R2, #0x320
3048F8:  BNE             loc_3048EE
3048FA:  BX              LR
