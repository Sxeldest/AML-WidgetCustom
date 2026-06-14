; =========================================================
; Game Engine Function: sub_FF624
; Address            : 0xFF624 - 0xFF648
; =========================================================

FF624:  PUSH            {R7,LR}
FF626:  MOV             R7, SP
FF628:  CBZ             R0, loc_FF636
FF62A:  LDR             R2, =(off_25B1AC - 0xFF630)
FF62C:  ADD             R2, PC; off_25B1AC
FF62E:  LDR             R2, [R2]
FF630:  POP.W           {R7,LR}
FF634:  BX              R2
FF636:  LDR             R1, =(aAxl - 0xFF640); "AXL" ...
FF638:  MOVS            R0, #6; prio
FF63A:  LDR             R2, =(aCatomicmodelin - 0xFF642); "CAtomicModelInfo::SetupVehicleUpgradeFl"... ...
FF63C:  ADD             R1, PC; "AXL"
FF63E:  ADD             R2, PC; "CAtomicModelInfo::SetupVehicleUpgradeFl"...
FF640:  BLX             __android_log_print
FF644:  MOVS            R0, #0
FF646:  POP             {R7,PC}
