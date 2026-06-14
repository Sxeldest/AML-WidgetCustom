; =========================================================
; Game Engine Function: _Z36LIB_GameServiceIsAchievementUnlockedPKc
; Address            : 0x26DC58 - 0x26DCC0
; =========================================================

26DC58:  PUSH            {R4-R7,LR}
26DC5A:  ADD             R7, SP, #0xC
26DC5C:  PUSH.W          {R8}
26DC60:  MOV             R8, R0
26DC62:  LDR             R0, =(gameServiceMutex_ptr - 0x26DC68)
26DC64:  ADD             R0, PC; gameServiceMutex_ptr
26DC66:  LDR             R0, [R0]; gameServiceMutex
26DC68:  LDR             R0, [R0]; mutex
26DC6A:  BLX             pthread_mutex_lock
26DC6E:  LDR             R0, =(achievementCount_ptr - 0x26DC74)
26DC70:  ADD             R0, PC; achievementCount_ptr
26DC72:  LDR             R0, [R0]; achievementCount
26DC74:  LDR             R5, [R0]
26DC76:  CMP             R5, #1
26DC78:  BLT             loc_26DCAA
26DC7A:  LDR             R0, =(achievements_ptr - 0x26DC82)
26DC7C:  MOVS            R4, #0
26DC7E:  ADD             R0, PC; achievements_ptr
26DC80:  LDR             R0, [R0]; achievements
26DC82:  LDR             R0, [R0]
26DC84:  ADDS            R6, R0, #4
26DC86:  LDR.W           R1, [R6,#-4]; char *
26DC8A:  MOV             R0, R8; char *
26DC8C:  BLX             strcmp
26DC90:  CBZ             R0, loc_26DC9C
26DC92:  ADDS            R4, #1
26DC94:  ADDS            R6, #0x10
26DC96:  CMP             R4, R5
26DC98:  BLT             loc_26DC86
26DC9A:  B               loc_26DCAA
26DC9C:  CMP             R6, #4
26DC9E:  BEQ             loc_26DCAA
26DCA0:  LDRB            R4, [R6]
26DCA2:  CMP             R4, #0
26DCA4:  IT NE
26DCA6:  MOVNE           R4, #1
26DCA8:  B               loc_26DCAC
26DCAA:  MOVS            R4, #0
26DCAC:  LDR             R0, =(gameServiceMutex_ptr - 0x26DCB2)
26DCAE:  ADD             R0, PC; gameServiceMutex_ptr
26DCB0:  LDR             R0, [R0]; gameServiceMutex
26DCB2:  LDR             R0, [R0]; mutex
26DCB4:  BLX             pthread_mutex_unlock
26DCB8:  MOV             R0, R4
26DCBA:  POP.W           {R8}
26DCBE:  POP             {R4-R7,PC}
