; =========================================================
; Game Engine Function: _ZN17CEntryExitManager16SetEntryExitFlagEPKcjb
; Address            : 0x3060E0 - 0x306166
; =========================================================

3060E0:  PUSH            {R4-R7,LR}
3060E2:  ADD             R7, SP, #0xC
3060E4:  PUSH.W          {R8-R11}
3060E8:  SUB             SP, SP, #0xC
3060EA:  MOV             R11, R0
3060EC:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3060F6)
3060EE:  STR             R2, [SP,#0x28+var_20]
3060F0:  MOV             R10, R1
3060F2:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3060F4:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3060F6:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
3060F8:  LDR             R1, [R0,#8]
3060FA:  CMP             R1, #1
3060FC:  BLT             loc_30615E
3060FE:  SUBS            R4, R1, #1
306100:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x30610C)
306102:  MOVW            R2, #0xFFFF
306106:  MOVS            R5, #0
306108:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30610A:  MOVS            R6, #0x30 ; '0'
30610C:  EOR.W           R2, R2, R10
306110:  STR             R2, [SP,#0x28+var_24]
306112:  LDR.W           R8, [R1]; CEntryExitManager::mp_poolEntryExits ...
306116:  B               loc_306120
306118:  ADDS            R5, #1
30611A:  LDR.W           R0, [R8]; CEntryExitManager::mp_poolEntryExits
30611E:  ADDS            R6, #0x3C ; '<'
306120:  LDR             R1, [R0,#4]
306122:  LDRSB           R1, [R1,R5]
306124:  CMP             R1, #0
306126:  BLT             loc_30613C
306128:  LDR.W           R9, [R0]
30612C:  MOV             R1, R11; char *
30612E:  MOVS            R2, #8; size_t
306130:  ADD.W           R0, R9, R6
306134:  SUBS            R0, #0x30 ; '0'; char *
306136:  BLX             strncasecmp
30613A:  CBZ             R0, loc_306142
30613C:  CMP             R4, R5
30613E:  BNE             loc_306118
306140:  B               loc_30615E
306142:  LDR             R2, [SP,#0x28+var_20]
306144:  LDRH.W          R0, [R9,R6]
306148:  LDR             R1, [SP,#0x28+var_24]
30614A:  CMP             R2, #0
30614C:  AND.W           R1, R1, R0
306150:  IT NE
306152:  ORRNE.W         R1, R0, R10
306156:  STRH.W          R1, [R9,R6]
30615A:  CMP             R4, R5
30615C:  BNE             loc_306118
30615E:  ADD             SP, SP, #0xC
306160:  POP.W           {R8-R11}
306164:  POP             {R4-R7,PC}
