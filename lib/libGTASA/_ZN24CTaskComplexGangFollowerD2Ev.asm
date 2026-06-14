; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollowerD2Ev
; Address            : 0x5164A0 - 0x5164E8
; =========================================================

5164A0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexGangFollower::~CTaskComplexGangFollower()'
5164A2:  ADD             R7, SP, #8
5164A4:  MOV             R4, R0
5164A6:  LDR             R0, =(_ZTV24CTaskComplexGangFollower_ptr - 0x5164AE)
5164A8:  MOV             R1, R4
5164AA:  ADD             R0, PC; _ZTV24CTaskComplexGangFollower_ptr
5164AC:  LDR             R2, [R0]; `vtable for'CTaskComplexGangFollower ...
5164AE:  LDR.W           R0, [R1,#0x10]!; CEntity **
5164B2:  ADDS            R2, #8
5164B4:  STR             R2, [R4]
5164B6:  CMP             R0, #0
5164B8:  IT NE
5164BA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5164BE:  LDRB.W          R0, [R4,#0x3D]
5164C2:  LSLS            R0, R0, #0x1F
5164C4:  BEQ             loc_5164DE
5164C6:  LDR             R0, =(aGangs - 0x5164CC); "gangs"
5164C8:  ADD             R0, PC; "gangs"
5164CA:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
5164CE:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
5164D2:  LDRB.W          R0, [R4,#0x3D]
5164D6:  AND.W           R0, R0, #0xFE
5164DA:  STRB.W          R0, [R4,#0x3D]
5164DE:  MOV             R0, R4; this
5164E0:  POP.W           {R4,R6,R7,LR}
5164E4:  B.W             sub_18EDE8
