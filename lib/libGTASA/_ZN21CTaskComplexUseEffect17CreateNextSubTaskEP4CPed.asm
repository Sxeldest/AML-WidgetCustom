; =========================================================
; Game Engine Function: _ZN21CTaskComplexUseEffect17CreateNextSubTaskEP4CPed
; Address            : 0x4EDDAC - 0x4EDDDA
; =========================================================

4EDDAC:  PUSH            {R4,R5,R7,LR}
4EDDAE:  ADD             R7, SP, #8
4EDDB0:  MOV             R5, R0
4EDDB2:  MOV             R4, R1
4EDDB4:  LDR             R0, [R5,#0x14]
4EDDB6:  CBZ             R0, loc_4EDDCC
4EDDB8:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EDDBC:  LDRD.W          R2, R3, [R5,#0xC]
4EDDC0:  MOV             R1, R4
4EDDC2:  BLX             j__ZNK20CPedAttractorManager20GetRelevantAttractorEPK4CPedPK9C2dEffectPK7CEntity; CPedAttractorManager::GetRelevantAttractor(CPed const*,C2dEffect const*,CEntity const*)
4EDDC6:  LDR             R1, [R5,#0x14]
4EDDC8:  CMP             R0, R1
4EDDCA:  BEQ             loc_4EDDD0
4EDDCC:  MOVS            R0, #0
4EDDCE:  POP             {R4,R5,R7,PC}
4EDDD0:  MOV             R1, R4; CPed *
4EDDD2:  POP.W           {R4,R5,R7,LR}
4EDDD6:  B.W             j_j__ZNK13CPedAttractor13GetTaskForPedEP4CPed; j_CPedAttractor::GetTaskForPed(CPed *)
