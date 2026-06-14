; =========================================================
; Game Engine Function: sub_106E68
; Address            : 0x106E68 - 0x106E7A
; =========================================================

106E68:  LDR             R2, =(_ZTSZN10CPlayerPed7SetDeadEvE3$_0 - 0x106E72); type descriptor name
106E6A:  LDR             R3, [R1,#4]
106E6C:  MOVS            R1, #0
106E6E:  ADD             R2, PC; type descriptor name
106E70:  CMP             R3, R2
106E72:  IT EQ
106E74:  ADDEQ           R1, R0, #4
106E76:  MOV             R0, R1
106E78:  BX              LR
