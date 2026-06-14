; =========================================================
; Game Engine Function: _ZN17CEntryExitManager17GotoNextEntryExitEv
; Address            : 0x3068B4 - 0x30691E
; =========================================================

3068B4:  LDR             R0, =(dword_7A1F00 - 0x3068BA)
3068B6:  ADD             R0, PC; dword_7A1F00
3068B8:  LDR             R1, [R0]
3068BA:  CBZ             R1, loc_3068D6
3068BC:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3068C2)
3068BE:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3068C0:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3068C2:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
3068C4:  LDR             R2, [R0]
3068C6:  SUBS            R1, R1, R2
3068C8:  MOV             R2, #0xEEEEEEEF
3068D0:  ASRS            R1, R1, #2
3068D2:  MULS            R1, R2
3068D4:  B               loc_3068E0
3068D6:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3068DE)
3068D8:  MOVS            R1, #0
3068DA:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3068DC:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3068DE:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
3068E0:  PUSH            {R4,R6,R7,LR}
3068E2:  ADD             R7, SP, #0x10+var_8
3068E4:  LDRD.W          R12, R3, [R0]
3068E8:  LDR             R2, [R0,#8]
3068EA:  ADDS            R1, #1
3068EC:  CMP             R1, R2
3068EE:  IT EQ
3068F0:  MOVEQ           R1, #0; CEntryExit *
3068F2:  LDRSB           R0, [R3,R1]
3068F4:  CMP             R0, #0
3068F6:  BLT             loc_3068EA
3068F8:  RSB.W           R0, R1, R1,LSL#4
3068FC:  ADD.W           R4, R12, R0,LSL#2
306900:  CMP             R4, #0
306902:  BEQ             loc_3068EA
306904:  LDRB.W          R0, [R4,#0x30]
306908:  LSLS            R0, R0, #0x1D
30690A:  BPL             loc_3068EA
30690C:  LDR             R0, [R4,#0x38]; this
30690E:  CMP             R0, #0
306910:  BEQ             loc_3068EA
306912:  BLX             j__ZN17CEntryExitManager13GotoEntryExitEP10CEntryExit; CEntryExitManager::GotoEntryExit(CEntryExit *)
306916:  LDR             R0, =(dword_7A1F00 - 0x30691C)
306918:  ADD             R0, PC; dword_7A1F00
30691A:  STR             R4, [R0]
30691C:  POP             {R4,R6,R7,PC}
