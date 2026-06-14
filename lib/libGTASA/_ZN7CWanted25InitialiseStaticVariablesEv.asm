; =========================================================
; Game Engine Function: _ZN7CWanted25InitialiseStaticVariablesEv
; Address            : 0x42150C - 0x42152E
; =========================================================

42150C:  LDR             R0, =(_ZN7CWanted19nMaximumWantedLevelE_ptr - 0x421518)
42150E:  MOVW            R3, #0x23F0
421512:  LDR             R1, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x42151C)
421514:  ADD             R0, PC; _ZN7CWanted19nMaximumWantedLevelE_ptr
421516:  LDR             R2, =(_ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr - 0x42151E)
421518:  ADD             R1, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
42151A:  ADD             R2, PC; _ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr
42151C:  LDR             R0, [R0]; CWanted::nMaximumWantedLevel ...
42151E:  LDR             R1, [R1]; CWanted::MaximumWantedLevel ...
421520:  LDR             R2, [R2]; CWanted::bUseNewsHeliInAdditionToPolice ...
421522:  STR             R3, [R0]; CWanted::nMaximumWantedLevel
421524:  MOVS            R0, #6
421526:  STR             R0, [R1]; CWanted::MaximumWantedLevel
421528:  MOVS            R0, #0
42152A:  STRB            R0, [R2]; CWanted::bUseNewsHeliInAdditionToPolice
42152C:  BX              LR
