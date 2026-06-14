; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr15SetCutsceneAnimEPKcP7CObject
; Address            : 0x464A98 - 0x464B1E
; =========================================================

464A98:  PUSH            {R4-R7,LR}
464A9A:  ADD             R7, SP, #0xC
464A9C:  PUSH.W          {R11}
464AA0:  MOV             R4, R0
464AA2:  LDR             R0, =(_ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr - 0x464AAC)
464AA4:  LDR             R5, [R1,#0x18]
464AA6:  MOV             R1, R4; CKeyGen *
464AA8:  ADD             R0, PC; _ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr
464AAA:  LDR             R0, [R0]; this
464AAC:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEPKc; CAnimBlendAssocGroup::GetAnimation(char const*)
464AB0:  CBZ             R0, loc_464B18
464AB2:  LDR             R0, [R0,#0x10]; this
464AB4:  LDRB            R1, [R0,#0xA]
464AB6:  CMP             R1, #0
464AB8:  ITT NE
464ABA:  MOVNE           R1, #1
464ABC:  STRBNE          R1, [R0,#0xB]
464ABE:  BLX             j__ZN10CStreaming25ImGonnaUseStreamingMemoryEv; CStreaming::ImGonnaUseStreamingMemory(void)
464AC2:  LDR             R0, =(_ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr - 0x464ACA)
464AC4:  MOV             R1, R4; CKeyGen *
464AC6:  ADD             R0, PC; _ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr
464AC8:  LDR             R0, [R0]; this
464ACA:  BLX             j__ZN20CAnimBlendAssocGroup13CopyAnimationEPKc; CAnimBlendAssocGroup::CopyAnimation(char const*)
464ACE:  MOV             R4, R0
464AD0:  BLX             j__ZN10CStreaming24IHaveUsedStreamingMemoryEv; CStreaming::IHaveUsedStreamingMemory(void)
464AD4:  MOV             R0, R4; this
464AD6:  MOVS            R1, #0; float
464AD8:  MOVS            R6, #0
464ADA:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
464ADE:  LDR             R0, =(ClumpOffset_ptr - 0x464AE6)
464AE0:  LDRH            R1, [R4,#0x2E]
464AE2:  ADD             R0, PC; ClumpOffset_ptr
464AE4:  BIC.W           R1, R1, #0x41 ; 'A'
464AE8:  LDR             R0, [R0]; ClumpOffset
464AEA:  ORR.W           R1, R1, #0x40 ; '@'
464AEE:  STRH            R1, [R4,#0x2E]
464AF0:  ADDS            R1, R4, #4
464AF2:  LDR             R0, [R0]
464AF4:  LDR             R0, [R5,R0]
464AF6:  LDR             R2, [R0]
464AF8:  CMP             R2, #0
464AFA:  ITT NE
464AFC:  STRNE           R1, [R2,#4]
464AFE:  LDRNE           R6, [R0]
464B00:  STRD.W          R6, R0, [R4,#4]
464B04:  STR             R1, [R0]
464B06:  LDR             R1, [R4,#0x14]
464B08:  LDRB            R1, [R1,#0xB]
464B0A:  CMP             R1, #0
464B0C:  ITTTT NE
464B0E:  LDRNE           R0, [R0,#0x10]
464B10:  LDRBNE          R1, [R0]
464B12:  ORRNE.W         R1, R1, #0x40 ; '@'
464B16:  STRBNE          R1, [R0]
464B18:  POP.W           {R11}
464B1C:  POP             {R4-R7,PC}
