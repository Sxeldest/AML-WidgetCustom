; =========================================================
; Game Engine Function: sub_106EE8
; Address            : 0x106EE8 - 0x106EFA
; =========================================================

106EE8:  LDR             R2, =(_ZTSZN10CPlayerPed12ClearWeaponsEvE3$_1 - 0x106EF2); type descriptor name
106EEA:  LDR             R3, [R1,#4]
106EEC:  MOVS            R1, #0
106EEE:  ADD             R2, PC; type descriptor name
106EF0:  CMP             R3, R2
106EF2:  IT EQ
106EF4:  ADDEQ           R1, R0, #4
106EF6:  MOV             R0, R1
106EF8:  BX              LR
