; =========================================================
; Game Engine Function: sub_106FAC
; Address            : 0x106FAC - 0x106FBE
; =========================================================

106FAC:  LDR             R2, =(_ZTSZN10CPlayerPed10GiveWeaponEiiE3$_2 - 0x106FB6); type descriptor name
106FAE:  LDR             R3, [R1,#4]
106FB0:  MOVS            R1, #0
106FB2:  ADD             R2, PC; type descriptor name
106FB4:  CMP             R3, R2
106FB6:  IT EQ
106FB8:  ADDEQ           R1, R0, #4
106FBA:  MOV             R0, R1
106FBC:  BX              LR
