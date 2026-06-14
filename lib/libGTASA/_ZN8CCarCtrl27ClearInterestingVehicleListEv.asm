; =========================================================
; Game Engine Function: _ZN8CCarCtrl27ClearInterestingVehicleListEv
; Address            : 0x2FAD18 - 0x2FAD26
; =========================================================

2FAD18:  LDR             R0, =(apCarsToKeep_ptr - 0x2FAD20)
2FAD1A:  MOVS            R1, #0
2FAD1C:  ADD             R0, PC; apCarsToKeep_ptr
2FAD1E:  LDR             R0, [R0]; apCarsToKeep
2FAD20:  STRD.W          R1, R1, [R0]
2FAD24:  BX              LR
