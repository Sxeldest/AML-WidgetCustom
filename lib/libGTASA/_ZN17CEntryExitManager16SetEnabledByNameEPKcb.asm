; =========================================================
; Game Engine Function: _ZN17CEntryExitManager16SetEnabledByNameEPKcb
; Address            : 0x306064 - 0x3060D6
; =========================================================

306064:  PUSH            {R4-R7,LR}
306066:  ADD             R7, SP, #0xC
306068:  PUSH.W          {R8-R11}
30606C:  SUB             SP, SP, #4
30606E:  MOV             R9, R0
306070:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x306078)
306072:  MOV             R8, R1
306074:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
306076:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
306078:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
30607A:  LDR             R1, [R0,#8]
30607C:  CMP             R1, #1
30607E:  BLT             loc_3060CE
306080:  SUB.W           R10, R1, #1
306084:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x30608E)
306086:  MOVS            R4, #0
306088:  MOVS            R5, #0x30 ; '0'
30608A:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30608C:  LDR.W           R11, [R1]; CEntryExitManager::mp_poolEntryExits ...
306090:  B               loc_30609A
306092:  ADDS            R4, #1
306094:  LDR.W           R0, [R11]; CEntryExitManager::mp_poolEntryExits
306098:  ADDS            R5, #0x3C ; '<'
30609A:  LDR             R1, [R0,#4]
30609C:  LDRSB           R1, [R1,R4]
30609E:  CMP             R1, #0
3060A0:  BLT             loc_3060B2
3060A2:  LDR             R6, [R0]
3060A4:  MOV             R1, R9; char *
3060A6:  MOVS            R2, #8; size_t
3060A8:  ADDS            R0, R6, R5
3060AA:  SUBS            R0, #0x30 ; '0'; char *
3060AC:  BLX             strncasecmp
3060B0:  CBZ             R0, loc_3060B8
3060B2:  CMP             R10, R4
3060B4:  BNE             loc_306092
3060B6:  B               loc_3060CE
3060B8:  LDRH            R0, [R6,R5]
3060BA:  CMP.W           R8, #0
3060BE:  BIC.W           R1, R0, #0x4000
3060C2:  IT NE
3060C4:  ORRNE.W         R1, R0, #0x4000
3060C8:  STRH            R1, [R6,R5]
3060CA:  CMP             R10, R4
3060CC:  BNE             loc_306092
3060CE:  ADD             SP, SP, #4
3060D0:  POP.W           {R8-R11}
3060D4:  POP             {R4-R7,PC}
