; =========================================================
; Game Engine Function: _Z24AND_OnAchievementsLoadediPPKcPbPiS3_
; Address            : 0x26DF64 - 0x26E09E
; =========================================================

26DF64:  PUSH            {R4-R7,LR}
26DF66:  ADD             R7, SP, #0xC
26DF68:  PUSH.W          {R8-R11}
26DF6C:  SUB             SP, SP, #0xC
26DF6E:  MOV             R4, R0
26DF70:  LDR             R0, =(gameServiceMutex_ptr - 0x26DF7A)
26DF72:  MOV             R8, R3
26DF74:  MOV             R11, R2
26DF76:  ADD             R0, PC; gameServiceMutex_ptr
26DF78:  MOV             R9, R1
26DF7A:  LDR             R0, [R0]; gameServiceMutex
26DF7C:  LDR             R0, [R0]; mutex
26DF7E:  BLX             pthread_mutex_lock
26DF82:  LDR             R0, =(achievements_ptr - 0x26DF8C)
26DF84:  LDR.W           R10, [R7,#arg_0]
26DF88:  ADD             R0, PC; achievements_ptr
26DF8A:  LDR             R0, [R0]; achievements
26DF8C:  LDR             R0, [R0]; void *
26DF8E:  CBZ             R0, loc_26E006
26DF90:  LDR             R1, =(achievementCount_ptr - 0x26DF96)
26DF92:  ADD             R1, PC; achievementCount_ptr
26DF94:  LDR             R1, [R1]; achievementCount
26DF96:  LDR             R1, [R1]
26DF98:  CMP             R1, #1
26DF9A:  BLT             loc_26DFF0
26DF9C:  LDR             R1, =(achievementCount_ptr - 0x26DFA4)
26DF9E:  LDR             R2, =(achievements_ptr - 0x26DFAA)
26DFA0:  ADD             R1, PC; achievementCount_ptr
26DFA2:  STRD.W          R10, R8, [SP,#0x28+var_28]
26DFA6:  ADD             R2, PC; achievements_ptr
26DFA8:  MOV.W           R10, #0
26DFAC:  LDR             R6, [R1]; achievementCount
26DFAE:  MOV.W           R8, #0
26DFB2:  LDR             R1, =(achievements_ptr - 0x26DFBA)
26DFB4:  LDR             R5, [R2]; achievements
26DFB6:  ADD             R1, PC; achievements_ptr
26DFB8:  LDR             R1, [R1]; achievements
26DFBA:  STR             R1, [SP,#0x28+var_20]
26DFBC:  LDR.W           R1, [R0,R10]
26DFC0:  CBZ             R1, loc_26DFCC
26DFC2:  MOV             R0, R1; void *
26DFC4:  BLX             _ZdaPv; operator delete[](void *)
26DFC8:  LDR             R0, [SP,#0x28+var_20]
26DFCA:  LDR             R0, [R0]
26DFCC:  MOVS            R1, #0
26DFCE:  ADD.W           R8, R8, #1
26DFD2:  STR.W           R1, [R0,R10]
26DFD6:  ADD.W           R10, R10, #0x10
26DFDA:  LDR             R1, [R6]
26DFDC:  LDR             R0, [R5]; void *
26DFDE:  CMP             R8, R1
26DFE0:  BLT             loc_26DFBC
26DFE2:  CMP             R0, #0
26DFE4:  LDRD.W          R10, R8, [SP,#0x28+var_28]
26DFE8:  IT NE
26DFEA:  BLXNE           _ZdaPv; operator delete[](void *)
26DFEE:  B               loc_26DFF4
26DFF0:  BLX             _ZdaPv; operator delete[](void *)
26DFF4:  LDR             R0, =(achievementCount_ptr - 0x26DFFE)
26DFF6:  MOVS            R2, #0
26DFF8:  LDR             R1, =(achievements_ptr - 0x26E000)
26DFFA:  ADD             R0, PC; achievementCount_ptr
26DFFC:  ADD             R1, PC; achievements_ptr
26DFFE:  LDR             R0, [R0]; achievementCount
26E000:  LDR             R1, [R1]; achievements
26E002:  STR             R2, [R0]
26E004:  STR             R2, [R1]
26E006:  LDR             R1, =(achievementCount_ptr - 0x26E012)
26E008:  MOVS            R0, #0x10
26E00A:  UMULL.W         R0, R2, R4, R0
26E00E:  ADD             R1, PC; achievementCount_ptr
26E010:  LDR             R1, [R1]; achievementCount
26E012:  CMP             R2, #0
26E014:  STR             R4, [R1]
26E016:  IT NE
26E018:  MOVNE           R2, #1
26E01A:  CMP             R2, #0
26E01C:  IT NE
26E01E:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
26E022:  BLX             _Znaj; operator new[](uint)
26E026:  MOV             R6, R0
26E028:  LDR             R0, =(achievements_ptr - 0x26E030)
26E02A:  CMP             R4, #1
26E02C:  ADD             R0, PC; achievements_ptr
26E02E:  LDR             R0, [R0]; achievements
26E030:  STR             R6, [R0]
26E032:  BLT             loc_26E080
26E034:  LDR             R0, =(achievements_ptr - 0x26E03C)
26E036:  MOVS            R5, #0
26E038:  ADD             R0, PC; achievements_ptr
26E03A:  LDR             R0, [R0]; achievements
26E03C:  STR             R0, [SP,#0x28+var_20]
26E03E:  LDR.W           R0, [R9,R5]; char *
26E042:  BLX             strlen
26E046:  ADDS            R0, #1; unsigned int
26E048:  BLX             _Znaj; operator new[](uint)
26E04C:  STR.W           R0, [R6,R5,LSL#2]
26E050:  LDR             R6, [SP,#0x28+var_20]
26E052:  LDR.W           R1, [R9,R5]; char *
26E056:  LDR             R0, [R6]
26E058:  LDR.W           R0, [R0,R5,LSL#2]; char *
26E05C:  BLX             strcpy
26E060:  LDR             R6, [R6]
26E062:  SUBS            R4, #1
26E064:  LDRB.W          R0, [R11],#1
26E068:  ADD.W           R1, R6, R5,LSL#2
26E06C:  STRB            R0, [R1,#4]
26E06E:  LDR.W           R0, [R8,R5]
26E072:  STR             R0, [R1,#8]
26E074:  LDR.W           R0, [R10,R5]
26E078:  ADD.W           R5, R5, #4
26E07C:  STR             R0, [R1,#0xC]
26E07E:  BNE             loc_26E03E
26E080:  LDR             R0, =(gameServiceMutex_ptr - 0x26E08A)
26E082:  MOVS            R2, #1
26E084:  LDR             R1, =(byte_6D712F - 0x26E08C)
26E086:  ADD             R0, PC; gameServiceMutex_ptr
26E088:  ADD             R1, PC; byte_6D712F
26E08A:  LDR             R0, [R0]; gameServiceMutex
26E08C:  STRB            R2, [R1]
26E08E:  LDR             R0, [R0]; mutex
26E090:  ADD             SP, SP, #0xC
26E092:  POP.W           {R8-R11}
26E096:  POP.W           {R4-R7,LR}
26E09A:  B.W             j_pthread_mutex_unlock
