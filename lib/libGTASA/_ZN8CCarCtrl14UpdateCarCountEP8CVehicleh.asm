; =========================================================
; Game Engine Function: _ZN8CCarCtrl14UpdateCarCountEP8CVehicleh
; Address            : 0x2FB67C - 0x2FB738
; =========================================================

2FB67C:  LDRB.W          R2, [R0,#0x4A8]
2FB680:  CBZ             R1, loc_2FB6B2
2FB682:  SUBS            R1, R2, #1; switch 4 cases
2FB684:  CMP             R1, #3
2FB686:  IT HI
2FB688:  BXHI            LR
2FB68A:  TBB.W           [PC,R1]; switch jump
2FB68E:  DCB 2; jump table for switch statement
2FB68F:  DCB 0x26
2FB690:  DCB 0x29
2FB691:  DCB 0x2C
2FB692:  LDRB.W          R0, [R0,#0x42C]; jumptable 002FB68A case 1
2FB696:  LSLS            R0, R0, #0x1F
2FB698:  BEQ             loc_2FB6AC
2FB69A:  LDR             R0, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x2FB6A0)
2FB69C:  ADD             R0, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
2FB69E:  LDR             R0, [R0]; CCarCtrl::NumLawEnforcerCars ...
2FB6A0:  LDR             R1, [R0]; CCarCtrl::NumLawEnforcerCars
2FB6A2:  SUBS            R1, #1
2FB6A4:  CMP             R1, #0
2FB6A6:  IT LE
2FB6A8:  MOVLE           R1, #0
2FB6AA:  STR             R1, [R0]; CCarCtrl::NumLawEnforcerCars
2FB6AC:  LDR             R0, =(_ZN8CCarCtrl13NumRandomCarsE_ptr - 0x2FB6B2)
2FB6AE:  ADD             R0, PC; _ZN8CCarCtrl13NumRandomCarsE_ptr
2FB6B0:  B               loc_2FB6EA
2FB6B2:  SUBS            R1, R2, #1; switch 4 cases
2FB6B4:  CMP             R1, #3
2FB6B6:  BHI             def_2FB6B8; jumptable 002FB6B8 default case
2FB6B8:  TBB.W           [PC,R1]; switch jump
2FB6BC:  DCB 2; jump table for switch statement
2FB6BD:  DCB 0x24
2FB6BE:  DCB 0x1E
2FB6BF:  DCB 0x21
2FB6C0:  LDRB.W          R0, [R0,#0x42C]; jumptable 002FB6B8 case 1
2FB6C4:  LSLS            R0, R0, #0x1F
2FB6C6:  BEQ             loc_2FB6D4
2FB6C8:  LDR             R0, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x2FB6CE)
2FB6CA:  ADD             R0, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
2FB6CC:  LDR             R0, [R0]; CCarCtrl::NumLawEnforcerCars ...
2FB6CE:  LDR             R1, [R0]; CCarCtrl::NumLawEnforcerCars
2FB6D0:  ADDS            R1, #1
2FB6D2:  STR             R1, [R0]; CCarCtrl::NumLawEnforcerCars
2FB6D4:  LDR             R0, =(_ZN8CCarCtrl13NumRandomCarsE_ptr - 0x2FB6DA)
2FB6D6:  ADD             R0, PC; _ZN8CCarCtrl13NumRandomCarsE_ptr
2FB6D8:  B               loc_2FB72E
2FB6DA:  LDR             R0, =(_ZN8CCarCtrl14NumMissionCarsE_ptr - 0x2FB6E0); jumptable 002FB68A case 2
2FB6DC:  ADD             R0, PC; _ZN8CCarCtrl14NumMissionCarsE_ptr
2FB6DE:  B               loc_2FB6EA
2FB6E0:  LDR             R0, =(_ZN8CCarCtrl13NumParkedCarsE_ptr - 0x2FB6E6); jumptable 002FB68A case 3
2FB6E2:  ADD             R0, PC; _ZN8CCarCtrl13NumParkedCarsE_ptr
2FB6E4:  B               loc_2FB6EA
2FB6E6:  LDR             R0, =(_ZN8CCarCtrl20NumPermanentVehiclesE_ptr - 0x2FB6EC); jumptable 002FB68A case 4
2FB6E8:  ADD             R0, PC; _ZN8CCarCtrl20NumPermanentVehiclesE_ptr
2FB6EA:  LDR             R0, [R0]; CCarCtrl::NumRandomCars
2FB6EC:  LDR             R1, [R0]; CCarCtrl::NumRandomCars
2FB6EE:  SUBS            R1, #1
2FB6F0:  CMP             R1, #0
2FB6F2:  IT LE
2FB6F4:  MOVLE           R1, #0
2FB6F6:  B               loc_2FB734
2FB6F8:  LDR             R0, =(_ZN8CCarCtrl13NumParkedCarsE_ptr - 0x2FB6FE); jumptable 002FB6B8 case 3
2FB6FA:  ADD             R0, PC; _ZN8CCarCtrl13NumParkedCarsE_ptr
2FB6FC:  B               loc_2FB72E
2FB6FE:  LDR             R0, =(_ZN8CCarCtrl20NumPermanentVehiclesE_ptr - 0x2FB704); jumptable 002FB6B8 case 4
2FB700:  ADD             R0, PC; _ZN8CCarCtrl20NumPermanentVehiclesE_ptr
2FB702:  B               loc_2FB72E
2FB704:  LDR.W           R1, [R0,#0x42C]; jumptable 002FB6B8 case 2
2FB708:  TST.W           R1, #1
2FB70C:  BEQ             loc_2FB72A
2FB70E:  LDR             R3, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x2FB720)
2FB710:  BIC.W           R1, R1, #1
2FB714:  LDR.W           R2, [R0,#0x430]
2FB718:  ADDW            R0, R0, #0x42C
2FB71C:  ADD             R3, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
2FB71E:  LDR             R3, [R3]; CCarCtrl::NumLawEnforcerCars ...
2FB720:  STRD.W          R1, R2, [R0]
2FB724:  LDR             R0, [R3]; CCarCtrl::NumLawEnforcerCars
2FB726:  SUBS            R0, #1
2FB728:  STR             R0, [R3]; CCarCtrl::NumLawEnforcerCars
2FB72A:  LDR             R0, =(_ZN8CCarCtrl14NumMissionCarsE_ptr - 0x2FB730)
2FB72C:  ADD             R0, PC; _ZN8CCarCtrl14NumMissionCarsE_ptr
2FB72E:  LDR             R0, [R0]; CCarCtrl::NumRandomCars
2FB730:  LDR             R1, [R0]; CCarCtrl::NumRandomCars
2FB732:  ADDS            R1, #1
2FB734:  STR             R1, [R0]; CCarCtrl::NumRandomCars
2FB736:  BX              LR; jumptable 002FB6B8 default case
