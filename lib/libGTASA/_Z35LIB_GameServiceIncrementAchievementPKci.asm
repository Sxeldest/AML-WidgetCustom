; =========================================================
; Game Engine Function: _Z35LIB_GameServiceIncrementAchievementPKci
; Address            : 0x26DCD0 - 0x26DD4A
; =========================================================

26DCD0:  PUSH            {R4-R7,LR}
26DCD2:  ADD             R7, SP, #0xC
26DCD4:  PUSH.W          {R8,R9,R11}
26DCD8:  MOV             R9, R0
26DCDA:  LDR             R0, =(gameServiceMutex_ptr - 0x26DCE2)
26DCDC:  MOV             R8, R1
26DCDE:  ADD             R0, PC; gameServiceMutex_ptr
26DCE0:  LDR             R0, [R0]; gameServiceMutex
26DCE2:  LDR             R0, [R0]; mutex
26DCE4:  BLX             pthread_mutex_lock
26DCE8:  LDR             R0, =(achievements_ptr - 0x26DCEE)
26DCEA:  ADD             R0, PC; achievements_ptr
26DCEC:  LDR             R0, [R0]; achievements
26DCEE:  LDR             R0, [R0]
26DCF0:  CBZ             R0, loc_26DD36
26DCF2:  LDR             R1, =(achievementCount_ptr - 0x26DCF8)
26DCF4:  ADD             R1, PC; achievementCount_ptr
26DCF6:  LDR             R1, [R1]; achievementCount
26DCF8:  LDR             R4, [R1]
26DCFA:  CMP             R4, #1
26DCFC:  BLT             loc_26DD36
26DCFE:  ADD.W           R6, R0, #8
26DD02:  MOVS            R5, #0
26DD04:  LDR.W           R1, [R6,#-8]; char *
26DD08:  MOV             R0, R9; char *
26DD0A:  BLX             strcmp
26DD0E:  CBZ             R0, loc_26DD1A
26DD10:  ADDS            R5, #1
26DD12:  ADDS            R6, #0x10
26DD14:  CMP             R5, R4
26DD16:  BLT             loc_26DD04
26DD18:  B               loc_26DD36
26DD1A:  MOV             R0, R9; char *
26DD1C:  MOV             R1, R8; int
26DD1E:  BLX             j__Z35WarGameService_IncrementAchievementPKci; WarGameService_IncrementAchievement(char const*,int)
26DD22:  LDRD.W          R0, R1, [R6]
26DD26:  ADD             R0, R8
26DD28:  CMP             R0, R1
26DD2A:  IT LT
26DD2C:  MOVLT           R1, R0
26DD2E:  MOVS            R0, #0; bool
26DD30:  STR             R1, [R6]
26DD32:  BLX             j__Z26WarGameService_RefreshDatab; WarGameService_RefreshData(bool)
26DD36:  LDR             R0, =(gameServiceMutex_ptr - 0x26DD3C)
26DD38:  ADD             R0, PC; gameServiceMutex_ptr
26DD3A:  LDR             R0, [R0]; gameServiceMutex
26DD3C:  LDR             R0, [R0]; mutex
26DD3E:  POP.W           {R8,R9,R11}
26DD42:  POP.W           {R4-R7,LR}
26DD46:  B.W             j_pthread_mutex_unlock
