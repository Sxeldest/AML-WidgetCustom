; =========================================================
; Game Engine Function: _ZN11CTheScripts31ReinitialiseSwitchStatementDataEv
; Address            : 0x334FB4 - 0x334FEC
; =========================================================

334FB4:  PUSH            {R4,R6,R7,LR}
334FB6:  ADD             R7, SP, #8
334FB8:  LDR             R0, =(_ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr - 0x334FC2)
334FBA:  LDR             R1, =(_ZN11CTheScripts20SwitchDefaultAddressE_ptr - 0x334FC6)
334FBC:  LDR             R2, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x334FCC)
334FBE:  ADD             R0, PC; _ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr
334FC0:  LDR             R3, =(_ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr - 0x334FCE)
334FC2:  ADD             R1, PC; _ZN11CTheScripts20SwitchDefaultAddressE_ptr
334FC4:  LDR.W           R12, =(_ZN11CTheScripts19SwitchDefaultExistsE_ptr - 0x334FD2)
334FC8:  ADD             R2, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
334FCA:  ADD             R3, PC; _ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr
334FCC:  LDR             R0, [R0]; CTheScripts::ValueToCheckInSwitchStatement ...
334FCE:  ADD             R12, PC; _ZN11CTheScripts19SwitchDefaultExistsE_ptr
334FD0:  LDR.W           LR, [R1]; CTheScripts::SwitchDefaultAddress ...
334FD4:  LDR             R4, [R2]; CTheScripts::NumberOfEntriesInSwitchTable ...
334FD6:  MOVS            R2, #0
334FD8:  LDR             R3, [R3]; CTheScripts::NumberOfEntriesStillToReadForSwitch ...
334FDA:  LDR.W           R1, [R12]; CTheScripts::SwitchDefaultExists ...
334FDE:  STR             R2, [R0]; CTheScripts::ValueToCheckInSwitchStatement
334FE0:  STRH            R2, [R3]; CTheScripts::NumberOfEntriesStillToReadForSwitch
334FE2:  STRB            R2, [R1]; CTheScripts::SwitchDefaultExists
334FE4:  STR.W           R2, [LR]; CTheScripts::SwitchDefaultAddress
334FE8:  STRH            R2, [R4]; CTheScripts::NumberOfEntriesInSwitchTable
334FEA:  POP             {R4,R6,R7,PC}
