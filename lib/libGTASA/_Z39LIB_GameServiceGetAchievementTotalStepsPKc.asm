; =========================================================
; Game Engine Function: _Z39LIB_GameServiceGetAchievementTotalStepsPKc
; Address            : 0x26DEEC - 0x26DF54
; =========================================================

26DEEC:  PUSH            {R4-R7,LR}
26DEEE:  ADD             R7, SP, #0xC
26DEF0:  PUSH.W          {R8}
26DEF4:  MOV             R8, R0
26DEF6:  LDR             R0, =(gameServiceMutex_ptr - 0x26DEFC)
26DEF8:  ADD             R0, PC; gameServiceMutex_ptr
26DEFA:  LDR             R0, [R0]; gameServiceMutex
26DEFC:  LDR             R0, [R0]; mutex
26DEFE:  BLX             pthread_mutex_lock
26DF02:  LDR             R0, =(achievementCount_ptr - 0x26DF08)
26DF04:  ADD             R0, PC; achievementCount_ptr
26DF06:  LDR             R0, [R0]; achievementCount
26DF08:  LDR             R5, [R0]
26DF0A:  CMP             R5, #1
26DF0C:  BLT             loc_26DF30
26DF0E:  LDR             R0, =(achievements_ptr - 0x26DF16)
26DF10:  MOVS            R4, #0
26DF12:  ADD             R0, PC; achievements_ptr
26DF14:  LDR             R0, [R0]; achievements
26DF16:  LDR             R0, [R0]
26DF18:  ADD.W           R6, R0, #0xC
26DF1C:  LDR.W           R1, [R6,#-0xC]; char *
26DF20:  MOV             R0, R8; char *
26DF22:  BLX             strcmp
26DF26:  CBZ             R0, loc_26DF36
26DF28:  ADDS            R4, #1
26DF2A:  ADDS            R6, #0x10
26DF2C:  CMP             R4, R5
26DF2E:  BLT             loc_26DF1C
26DF30:  MOV.W           R4, #0xFFFFFFFF
26DF34:  B               loc_26DF40
26DF36:  CMP             R6, #0xC
26DF38:  ITE NE
26DF3A:  LDRNE           R4, [R6]
26DF3C:  MOVEQ.W         R4, #0xFFFFFFFF
26DF40:  LDR             R0, =(gameServiceMutex_ptr - 0x26DF46)
26DF42:  ADD             R0, PC; gameServiceMutex_ptr
26DF44:  LDR             R0, [R0]; gameServiceMutex
26DF46:  LDR             R0, [R0]; mutex
26DF48:  BLX             pthread_mutex_unlock
26DF4C:  MOV             R0, R4
26DF4E:  POP.W           {R8}
26DF52:  POP             {R4-R7,PC}
