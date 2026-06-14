; =========================================================
; Game Engine Function: _Z41LIB_GameServiceGetAchievementCurrentStepsPKc
; Address            : 0x26DE74 - 0x26DEDC
; =========================================================

26DE74:  PUSH            {R4-R7,LR}
26DE76:  ADD             R7, SP, #0xC
26DE78:  PUSH.W          {R8}
26DE7C:  MOV             R8, R0
26DE7E:  LDR             R0, =(gameServiceMutex_ptr - 0x26DE84)
26DE80:  ADD             R0, PC; gameServiceMutex_ptr
26DE82:  LDR             R0, [R0]; gameServiceMutex
26DE84:  LDR             R0, [R0]; mutex
26DE86:  BLX             pthread_mutex_lock
26DE8A:  LDR             R0, =(achievementCount_ptr - 0x26DE90)
26DE8C:  ADD             R0, PC; achievementCount_ptr
26DE8E:  LDR             R0, [R0]; achievementCount
26DE90:  LDR             R5, [R0]
26DE92:  CMP             R5, #1
26DE94:  BLT             loc_26DEB8
26DE96:  LDR             R0, =(achievements_ptr - 0x26DE9E)
26DE98:  MOVS            R4, #0
26DE9A:  ADD             R0, PC; achievements_ptr
26DE9C:  LDR             R0, [R0]; achievements
26DE9E:  LDR             R0, [R0]
26DEA0:  ADD.W           R6, R0, #8
26DEA4:  LDR.W           R1, [R6,#-8]; char *
26DEA8:  MOV             R0, R8; char *
26DEAA:  BLX             strcmp
26DEAE:  CBZ             R0, loc_26DEBE
26DEB0:  ADDS            R4, #1
26DEB2:  ADDS            R6, #0x10
26DEB4:  CMP             R4, R5
26DEB6:  BLT             loc_26DEA4
26DEB8:  MOV.W           R4, #0xFFFFFFFF
26DEBC:  B               loc_26DEC8
26DEBE:  CMP             R6, #8
26DEC0:  ITE NE
26DEC2:  LDRNE           R4, [R6]
26DEC4:  MOVEQ.W         R4, #0xFFFFFFFF
26DEC8:  LDR             R0, =(gameServiceMutex_ptr - 0x26DECE)
26DECA:  ADD             R0, PC; gameServiceMutex_ptr
26DECC:  LDR             R0, [R0]; gameServiceMutex
26DECE:  LDR             R0, [R0]; mutex
26DED0:  BLX             pthread_mutex_unlock
26DED4:  MOV             R0, R4
26DED6:  POP.W           {R8}
26DEDA:  POP             {R4-R7,PC}
