; =========================================================
; Game Engine Function: _Z32LIB_GameServiceUnlockAchievementPKc
; Address            : 0x26DAE4 - 0x26DB40
; =========================================================

26DAE4:  PUSH            {R4-R7,LR}
26DAE6:  ADD             R7, SP, #0xC
26DAE8:  PUSH.W          {R8}
26DAEC:  MOV             R8, R0
26DAEE:  LDR             R0, =(gameServiceMutex_ptr - 0x26DAF4)
26DAF0:  ADD             R0, PC; gameServiceMutex_ptr
26DAF2:  LDR             R0, [R0]; gameServiceMutex
26DAF4:  LDR             R0, [R0]; mutex
26DAF6:  BLX             pthread_mutex_lock
26DAFA:  LDR             R0, =(achievements_ptr - 0x26DB00)
26DAFC:  ADD             R0, PC; achievements_ptr
26DAFE:  LDR             R0, [R0]; achievements
26DB00:  LDR             R5, [R0]
26DB02:  CBZ             R5, loc_26DB2C
26DB04:  LDR             R0, =(achievementCount_ptr - 0x26DB0A)
26DB06:  ADD             R0, PC; achievementCount_ptr
26DB08:  LDR             R0, [R0]; achievementCount
26DB0A:  LDR             R6, [R0]
26DB0C:  CMP             R6, #1
26DB0E:  BLT             loc_26DB2C
26DB10:  MOVS            R4, #0
26DB12:  LDR             R1, [R5]; char *
26DB14:  MOV             R0, R8; char *
26DB16:  BLX             strcmp
26DB1A:  CBZ             R0, loc_26DB26
26DB1C:  ADDS            R4, #1
26DB1E:  ADDS            R5, #0x10
26DB20:  CMP             R4, R6
26DB22:  BLT             loc_26DB12
26DB24:  B               loc_26DB2C
26DB26:  MOV             R0, R8; char *
26DB28:  BLX             j__Z32WarGameService_UnlockAchievementPKc; WarGameService_UnlockAchievement(char const*)
26DB2C:  LDR             R0, =(gameServiceMutex_ptr - 0x26DB32)
26DB2E:  ADD             R0, PC; gameServiceMutex_ptr
26DB30:  LDR             R0, [R0]; gameServiceMutex
26DB32:  LDR             R0, [R0]; mutex
26DB34:  POP.W           {R8}
26DB38:  POP.W           {R4-R7,LR}
26DB3C:  B.W             j_pthread_mutex_unlock
