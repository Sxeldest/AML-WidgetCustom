; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputeAttractorResponseEP6CEventP5CTaskS3_
; Address            : 0x3808FC - 0x380954
; =========================================================

3808FC:  PUSH            {R4-R7,LR}
3808FE:  ADD             R7, SP, #0xC
380900:  PUSH.W          {R8}
380904:  MOV             R4, R1
380906:  MOV             R8, R0
380908:  LDR             R0, [R4]
38090A:  LDRD.W          R5, R6, [R4,#0x10]
38090E:  LDR             R1, [R0,#8]
380910:  MOV             R0, R4
380912:  BLX             R1
380914:  CMP             R6, #0
380916:  IT EQ
380918:  CMPEQ           R0, #0x1B
38091A:  BEQ             loc_38094E
38091C:  LDRSH.W         R0, [R4,#0xA]
380920:  CMP             R0, #0xC8
380922:  BEQ             loc_380948
380924:  CMP             R0, #0xE9
380926:  BNE             loc_38094E
380928:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
38092C:  MOV             R1, R5
38092E:  MOV             R2, R6
380930:  BLX             j__ZNK20CPedAttractorManager12HasEmptySlotEPK9C2dEffectPK7CEntity; CPedAttractorManager::HasEmptySlot(C2dEffect const*,CEntity const*)
380934:  CMP             R0, #1
380936:  BNE             loc_380948
380938:  MOVS            R0, #dword_24; this
38093A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38093E:  MOV             R1, R5
380940:  MOV             R2, R6
380942:  BLX             j__ZN21CTaskComplexUseEffectC2EP9C2dEffectP7CEntity; CTaskComplexUseEffect::CTaskComplexUseEffect(C2dEffect *,CEntity *)
380946:  B               loc_38094A
380948:  MOVS            R0, #0
38094A:  STR.W           R0, [R8,#0x24]
38094E:  POP.W           {R8}
380952:  POP             {R4-R7,PC}
