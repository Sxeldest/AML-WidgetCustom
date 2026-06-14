; =========================================================
; Game Engine Function: _ZN17CEntryExitManager21GotoPreviousEntryExitEv
; Address            : 0x306930 - 0x3069A2
; =========================================================

306930:  LDR             R0, =(dword_7A1F00 - 0x306936)
306932:  ADD             R0, PC; dword_7A1F00
306934:  LDR             R0, [R0]
306936:  CBZ             R0, loc_306958
306938:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x30693E)
30693A:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30693C:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
30693E:  LDR.W           R12, [R1]; CEntryExitManager::mp_poolEntryExits
306942:  LDR.W           R1, [R12]
306946:  SUBS            R0, R0, R1
306948:  MOV             R1, #0xEEEEEEEF
306950:  ASRS            R0, R0, #2
306952:  MUL.W           R2, R0, R1
306956:  B               loc_306964
306958:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x306960)
30695A:  MOVS            R2, #0
30695C:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30695E:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
306960:  LDR.W           R12, [R0]; CEntryExitManager::mp_poolEntryExits
306964:  PUSH            {R4,R6,R7,LR}
306966:  ADD             R7, SP, #0x10+var_8
306968:  LDRD.W          R3, R1, [R12]; CEntryExit *
30696C:  CMP             R2, #0
30696E:  IT EQ
306970:  LDREQ.W         R2, [R12,#8]
306974:  SUBS            R2, #1
306976:  LDRSB           R0, [R1,R2]
306978:  CMP             R0, #0
30697A:  BLT             loc_30696C
30697C:  RSB.W           R0, R2, R2,LSL#4
306980:  ADD.W           R4, R3, R0,LSL#2
306984:  CMP             R4, #0
306986:  BEQ             loc_30696C
306988:  LDRB.W          R0, [R4,#0x30]
30698C:  LSLS            R0, R0, #0x1D
30698E:  BPL             loc_30696C
306990:  LDR             R0, [R4,#0x38]; this
306992:  CMP             R0, #0
306994:  BEQ             loc_30696C
306996:  BLX             j__ZN17CEntryExitManager13GotoEntryExitEP10CEntryExit; CEntryExitManager::GotoEntryExit(CEntryExit *)
30699A:  LDR             R0, =(dword_7A1F00 - 0x3069A0)
30699C:  ADD             R0, PC; dword_7A1F00
30699E:  STR             R4, [R0]
3069A0:  POP             {R4,R6,R7,PC}
