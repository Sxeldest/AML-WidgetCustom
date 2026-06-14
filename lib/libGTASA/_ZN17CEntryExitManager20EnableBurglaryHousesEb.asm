; =========================================================
; Game Engine Function: _ZN17CEntryExitManager20EnableBurglaryHousesEb
; Address            : 0x304DCC - 0x304E36
; =========================================================

304DCC:  PUSH            {R4,R6,R7,LR}
304DCE:  ADD             R7, SP, #8
304DD0:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304DD8)
304DD2:  LDR             R2, =(_ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr - 0x304DDA)
304DD4:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304DD6:  ADD             R2, PC; _ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr
304DD8:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
304DDA:  LDR             R2, [R2]; CEntryExitManager::ms_bBurglaryHousesEnabled ...
304DDC:  LDR             R3, [R1]; CEntryExitManager::mp_poolEntryExits
304DDE:  STRB            R0, [R2]; CEntryExitManager::ms_bBurglaryHousesEnabled
304DE0:  LDR             R2, [R3,#8]
304DE2:  CBZ             R2, locret_304E34
304DE4:  RSB.W           R12, R2, R2,LSL#4
304DE8:  MOV             R1, #0xFFFFFFF4
304DEC:  SUBS            R2, #1
304DEE:  ADD.W           R4, R1, R12,LSL#2
304DF2:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304DF8)
304DF4:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304DF6:  LDR.W           R12, [R1]; CEntryExitManager::mp_poolEntryExits ...
304DFA:  B               loc_304E0A
304DFC:  CMP             R2, #0
304DFE:  IT EQ
304E00:  POPEQ           {R4,R6,R7,PC}
304E02:  SUBS            R2, #1
304E04:  LDR.W           R3, [R12]; CEntryExitManager::mp_poolEntryExits
304E08:  SUBS            R4, #0x3C ; '<'
304E0A:  LDR             R1, [R3,#4]
304E0C:  LDRSB           R1, [R1,R2]
304E0E:  CMP             R1, #0
304E10:  BLT             loc_304DFC
304E12:  LDR             R3, [R3]
304E14:  ADDS            R1, R3, R4
304E16:  CMP             R1, #0x30 ; '0'
304E18:  ITT NE
304E1A:  LDRHNE.W        LR, [R3,R4]
304E1E:  TSTNE.W         LR, #0x1000
304E22:  BEQ             loc_304DFC
304E24:  BIC.W           R1, LR, #0x4000
304E28:  CMP             R0, #0
304E2A:  IT NE
304E2C:  ORRNE.W         R1, LR, #0x4000
304E30:  STRH            R1, [R3,R4]
304E32:  B               loc_304DFC
304E34:  POP             {R4,R6,R7,PC}
