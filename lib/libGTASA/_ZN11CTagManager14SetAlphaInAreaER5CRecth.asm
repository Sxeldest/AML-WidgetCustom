; =========================================================
; Game Engine Function: _ZN11CTagManager14SetAlphaInAreaER5CRecth
; Address            : 0x36207C - 0x362156
; =========================================================

36207C:  PUSH            {R4-R7,LR}
36207E:  ADD             R7, SP, #0xC
362080:  PUSH.W          {R8}
362084:  MOV             R5, R0
362086:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x36208E)
362088:  MOV             R8, R1
36208A:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
36208C:  LDR             R0, [R0]; CTagManager::ms_numTags ...
36208E:  LDR             R6, [R0]; CTagManager::ms_numTags
362090:  CMP             R6, #0
362092:  BEQ             loc_362146
362094:  LDR             R0, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x36209A)
362096:  ADD             R0, PC; _ZN11CTagManager10ms_tagDescE_ptr
362098:  LDR             R0, [R0]; CTagManager::ms_tagDesc ...
36209A:  ADD.W           R0, R0, R6,LSL#3
36209E:  SUBS            R4, R0, #4
3620A0:  LDR.W           R0, [R4,#-4]
3620A4:  SUBS            R6, #1
3620A6:  VLDR            S2, [R5]
3620AA:  LDR             R2, [R0,#0x14]
3620AC:  ADD.W           R1, R2, #0x30 ; '0'
3620B0:  CMP             R2, #0
3620B2:  IT EQ
3620B4:  ADDEQ           R1, R0, #4
3620B6:  VLDR            S0, [R1]
3620BA:  VCMPE.F32       S0, S2
3620BE:  VMRS            APSR_nzcv, FPSCR
3620C2:  BLT             loc_362102
3620C4:  VLDR            S2, [R5,#8]
3620C8:  VCMPE.F32       S0, S2
3620CC:  VMRS            APSR_nzcv, FPSCR
3620D0:  BGT             loc_362102
3620D2:  VLDR            S2, [R5,#0xC]
3620D6:  VLDR            S0, [R1,#4]
3620DA:  VCMPE.F32       S0, S2
3620DE:  VMRS            APSR_nzcv, FPSCR
3620E2:  BLT             loc_362102
3620E4:  VLDR            S2, [R5,#4]
3620E8:  VCMPE.F32       S0, S2
3620EC:  VMRS            APSR_nzcv, FPSCR
3620F0:  BGT             loc_362102
3620F2:  LDR             R0, [R0,#0x18]
3620F4:  CMP             R0, #0
3620F6:  ITT NE
3620F8:  MOVNE           R1, R8
3620FA:  BLXNE           j__ZN18CVisibilityPlugins12SetUserValueEP8RpAtomict; CVisibilityPlugins::SetUserValue(RpAtomic *,ushort)
3620FE:  STRB.W          R8, [R4]
362102:  SUBS            R4, #8
362104:  CMP             R6, #0
362106:  BNE             loc_3620A0
362108:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x362112)
36210A:  MOVS            R2, #0
36210C:  LDR             R1, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x362114)
36210E:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
362110:  ADD             R1, PC; _ZN11CTagManager12ms_numTaggedE_ptr
362112:  LDR             R0, [R0]; CTagManager::ms_numTags ...
362114:  LDR             R1, [R1]; CTagManager::ms_numTagged ...
362116:  LDR             R0, [R0]; CTagManager::ms_numTags
362118:  STR             R2, [R1]; CTagManager::ms_numTagged
36211A:  CBZ             R0, loc_362140
36211C:  LDR             R2, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x362126)
36211E:  MOVS            R1, #0
362120:  LDR             R3, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x362128)
362122:  ADD             R2, PC; _ZN11CTagManager10ms_tagDescE_ptr
362124:  ADD             R3, PC; _ZN11CTagManager12ms_numTaggedE_ptr
362126:  LDR             R2, [R2]; CTagManager::ms_tagDesc ...
362128:  LDR             R3, [R3]; CTagManager::ms_numTagged ...
36212A:  ADD.W           R6, R2, R0,LSL#3
36212E:  SUBS            R0, #1
362130:  LDRB.W          R6, [R6,#-4]
362134:  CMP             R6, #0xE5
362136:  ITT CS
362138:  ADDCS           R1, #1
36213A:  STRCS           R1, [R3]; CTagManager::ms_numTagged
36213C:  CMP             R0, #0
36213E:  BNE             loc_36212A
362140:  POP.W           {R8}
362144:  POP             {R4-R7,PC}
362146:  LDR             R0, =(_ZN11CTagManager12ms_numTaggedE_ptr - 0x36214E)
362148:  MOVS            R1, #0
36214A:  ADD             R0, PC; _ZN11CTagManager12ms_numTaggedE_ptr
36214C:  LDR             R0, [R0]; CTagManager::ms_numTagged ...
36214E:  STR             R1, [R0]; CTagManager::ms_numTagged
362150:  POP.W           {R8}
362154:  POP             {R4-R7,PC}
