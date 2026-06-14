; =========================================================
; Game Engine Function: _ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId
; Address            : 0x38E018 - 0x38E088
; =========================================================

38E018:  PUSH            {R4,R5,R7,LR}
38E01A:  ADD             R7, SP, #8
38E01C:  MOV             R5, R0
38E01E:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38E028)
38E020:  ADD.W           R1, R1, R1,LSL#2
38E024:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38E026:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38E028:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
38E02A:  ADD.W           R0, R0, R1,LSL#2; this
38E02E:  MOV             R1, R2; unsigned int
38E030:  BLX             j__ZN20CAnimBlendAssocGroup13CopyAnimationEj; CAnimBlendAssocGroup::CopyAnimation(uint)
38E034:  MOV             R4, R0
38E036:  LDR             R0, =(ClumpOffset_ptr - 0x38E040)
38E038:  LDRB.W          R1, [R4,#0x2E]
38E03C:  ADD             R0, PC; ClumpOffset_ptr
38E03E:  LDR             R0, [R0]; ClumpOffset
38E040:  LDR             R0, [R0]
38E042:  LDR             R5, [R5,R0]
38E044:  LSLS            R0, R1, #0x1A
38E046:  BPL             loc_38E068
38E048:  MOV             R0, R5
38E04A:  LDR             R0, [R0]
38E04C:  CBZ             R0, loc_38E068
38E04E:  LDRB.W          R1, [R0,#0x2A]
38E052:  LSLS            R1, R1, #0x1A
38E054:  BPL             loc_38E04A
38E056:  SUBS            R1, R0, #4; CAnimBlendAssociation *
38E058:  MOV             R0, R4; this
38E05A:  BLX             j__ZN21CAnimBlendAssociation13SyncAnimationEPS_; CAnimBlendAssociation::SyncAnimation(CAnimBlendAssociation*)
38E05E:  LDRH            R0, [R4,#0x2E]
38E060:  ORR.W           R0, R0, #1
38E064:  STRH            R0, [R4,#0x2E]
38E066:  B               loc_38E070
38E068:  MOV             R0, R4; this
38E06A:  MOVS            R1, #0; float
38E06C:  BLX             j__ZN21CAnimBlendAssociation5StartEf; CAnimBlendAssociation::Start(float)
38E070:  LDR             R1, [R5]
38E072:  ADDS            R0, R4, #4
38E074:  CMP             R1, #0
38E076:  ITTE NE
38E078:  STRNE           R0, [R1,#4]
38E07A:  LDRNE           R1, [R5]
38E07C:  MOVEQ           R1, #0
38E07E:  STRD.W          R1, R5, [R4,#4]
38E082:  STR             R0, [R5]
38E084:  MOV             R0, R4
38E086:  POP             {R4,R5,R7,PC}
