; =========================================================
; Game Engine Function: _ZN17CEntryExitManager10SetEnabledEib
; Address            : 0x306170 - 0x306194
; =========================================================

306170:  LDR             R2, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x30617C)
306172:  RSB.W           R0, R0, R0,LSL#4
306176:  CMP             R1, #0
306178:  ADD             R2, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30617A:  LDR             R2, [R2]; CEntryExitManager::mp_poolEntryExits ...
30617C:  LDR             R2, [R2]; CEntryExitManager::mp_poolEntryExits
30617E:  LDR             R2, [R2]
306180:  ADD.W           R0, R2, R0,LSL#2
306184:  LDRH            R2, [R0,#0x30]
306186:  BIC.W           R3, R2, #0x4000
30618A:  IT NE
30618C:  ORRNE.W         R3, R2, #0x4000
306190:  STRH            R3, [R0,#0x30]
306192:  BX              LR
