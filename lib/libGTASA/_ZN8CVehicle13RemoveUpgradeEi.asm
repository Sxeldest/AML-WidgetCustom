; =========================================================
; Game Engine Function: _ZN8CVehicle13RemoveUpgradeEi
; Address            : 0x58D078 - 0x58D086
; =========================================================

58D078:  MOV             R2, R1
58D07A:  LDR             R1, =(_Z15RemoveUpgradeCBP8RpAtomicPv_ptr - 0x58D082)
58D07C:  LDR             R0, [R0,#0x18]
58D07E:  ADD             R1, PC; _Z15RemoveUpgradeCBP8RpAtomicPv_ptr
58D080:  LDR             R1, [R1]; RemoveUpgradeCB(RpAtomic *,void *)
58D082:  B.W             sub_18E45C
