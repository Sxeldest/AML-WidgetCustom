; =========================================================
; Game Engine Function: _ZN12CAnimManager19AddAnimationAndSyncEP7RpClumpP21CAnimBlendAssociation12AssocGroupId11AnimationId
; Address            : 0x38E118 - 0x38E188
; =========================================================

38E118:  PUSH            {R4-R7,LR}
38E11A:  ADD             R7, SP, #0xC
38E11C:  PUSH.W          {R11}
38E120:  MOV             R6, R0
38E122:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E12E)
38E124:  MOV             R5, R1
38E126:  ADD.W           R1, R2, R2,LSL#2
38E12A:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E12C:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38E12E:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
38E130:  ADD.W           R0, R0, R1,LSL#2; this
38E134:  MOV             R1, R3; unsigned int
38E136:  BLX             j__ZN20CAnimBlendAssocGroup13CopyAnimationEj; CAnimBlendAssocGroup::CopyAnimation(uint)
38E13A:  MOV             R4, R0
38E13C:  LDR             R0, =(ClumpOffset_ptr - 0x38E144)
38E13E:  CMP             R5, #0
38E140:  ADD             R0, PC; ClumpOffset_ptr
38E142:  LDR             R0, [R0]; ClumpOffset
38E144:  LDR             R0, [R0]
38E146:  LDR             R6, [R6,R0]
38E148:  ITT NE
38E14A:  LDRHNE          R0, [R4,#0x2E]
38E14C:  ANDSNE.W        R0, R0, #0x20 ; ' '
38E150:  BEQ             loc_38E164
38E152:  MOV             R0, R4; this
38E154:  MOV             R1, R5; CAnimBlendAssociation *
38E156:  BLX             j__ZN21CAnimBlendAssociation13SyncAnimationEPS_; CAnimBlendAssociation::SyncAnimation(CAnimBlendAssociation*)
38E15A:  LDRH            R0, [R4,#0x2E]
38E15C:  ORR.W           R0, R0, #1
38E160:  STRH            R0, [R4,#0x2E]
38E162:  B               loc_38E16C
38E164:  MOV             R0, R4; this
38E166:  MOVS            R1, #0; float
38E168:  BLX             j__ZN21CAnimBlendAssociation5StartEf; CAnimBlendAssociation::Start(float)
38E16C:  LDR             R1, [R6]
38E16E:  ADDS            R0, R4, #4
38E170:  CMP             R1, #0
38E172:  ITTE NE
38E174:  STRNE           R0, [R1,#4]
38E176:  LDRNE           R1, [R6]
38E178:  MOVEQ           R1, #0
38E17A:  STRD.W          R1, R6, [R4,#4]
38E17E:  STR             R0, [R6]
38E180:  MOV             R0, R4
38E182:  POP.W           {R11}
38E186:  POP             {R4-R7,PC}
