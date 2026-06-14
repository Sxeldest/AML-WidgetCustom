; =========================================================
; Game Engine Function: sub_100F88
; Address            : 0x100F88 - 0x100F9A
; =========================================================

100F88:  LDR             R2, =(_ZTSZ37CTaskSimpleUseGun_SetPedPosition_hookjP9_PED_TYPEE3$_2 - 0x100F92); type descriptor name
100F8A:  LDR             R3, [R1,#4]
100F8C:  MOVS            R1, #0
100F8E:  ADD             R2, PC; type descriptor name
100F90:  CMP             R3, R2
100F92:  IT EQ
100F94:  ADDEQ           R1, R0, #4
100F96:  MOV             R0, R1
100F98:  BX              LR
