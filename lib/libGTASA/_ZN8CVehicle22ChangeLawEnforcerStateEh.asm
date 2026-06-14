; =========================================================
; Game Engine Function: _ZN8CVehicle22ChangeLawEnforcerStateEh
; Address            : 0x585454 - 0x58549A
; =========================================================

585454:  LDR.W           R3, [R0,#0x42C]
585458:  CMP             R1, #0
58545A:  LDR.W           R12, [R0,#0x430]
58545E:  ADDW            R0, R0, #0x42C
585462:  AND.W           R2, R3, #1
585466:  BEQ             loc_58547E
585468:  CBNZ            R2, locret_585498
58546A:  LDR             R1, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x585478)
58546C:  ORR.W           R2, R3, #1
585470:  STRD.W          R2, R12, [R0]
585474:  ADD             R1, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
585476:  LDR             R1, [R1]; CCarCtrl::NumLawEnforcerCars ...
585478:  LDR             R0, [R1]; CCarCtrl::NumLawEnforcerCars
58547A:  ADDS            R0, #1
58547C:  B               loc_585496
58547E:  CMP             R2, #0
585480:  IT EQ
585482:  BXEQ            LR
585484:  LDR             R1, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x585492)
585486:  BIC.W           R2, R3, #1
58548A:  STRD.W          R2, R12, [R0]
58548E:  ADD             R1, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
585490:  LDR             R1, [R1]; CCarCtrl::NumLawEnforcerCars ...
585492:  LDR             R0, [R1]; CCarCtrl::NumLawEnforcerCars
585494:  SUBS            R0, #1
585496:  STR             R0, [R1]; CCarCtrl::NumLawEnforcerCars
585498:  BX              LR
