; =========================================================
; Game Engine Function: _Z12RemoveRefsCBP8RpAtomicPv
; Address            : 0x5C353E - 0x5C3550
; =========================================================

5C353E:  PUSH            {R4,R6,R7,LR}
5C3540:  ADD             R7, SP, #8
5C3542:  MOV             R4, R0
5C3544:  BLX.W           j__ZN18CVisibilityPlugins12GetModelInfoEP8RpAtomic; CVisibilityPlugins::GetModelInfo(RpAtomic *)
5C3548:  BLX.W           j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
5C354C:  MOV             R0, R4
5C354E:  POP             {R4,R6,R7,PC}
