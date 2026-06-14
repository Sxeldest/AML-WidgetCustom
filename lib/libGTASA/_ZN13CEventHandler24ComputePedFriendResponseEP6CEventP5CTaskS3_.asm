; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputePedFriendResponseEP6CEventP5CTaskS3_
; Address            : 0x381A0C - 0x381ABA
; =========================================================

381A0C:  PUSH            {R4,R5,R7,LR}
381A0E:  ADD             R7, SP, #8
381A10:  MOV             R5, R1
381A12:  MOV             R4, R0
381A14:  LDRSH.W         R0, [R5,#0xA]
381A18:  CMP.W           R0, #0x104
381A1C:  BLE             loc_381A54
381A1E:  MOVW            R1, #0x105; unsigned int
381A22:  CMP             R0, R1
381A24:  BEQ             loc_381A70
381A26:  CMP.W           R0, #0x106
381A2A:  BEQ             loc_381A84
381A2C:  MOVW            R1, #0x51D
381A30:  CMP             R0, R1
381A32:  BNE             locret_381A52
381A34:  LDR             R0, [R4]
381A36:  MOVW            R1, #0x51D; int
381A3A:  LDR.W           R0, [R0,#0x440]; this
381A3E:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
381A42:  CMP             R0, #0
381A44:  ITTT EQ
381A46:  LDREQ           R0, [R4]
381A48:  LDRBEQ.W        R0, [R0,#0x485]
381A4C:  MOVSEQ.W        R0, R0,LSL#31
381A50:  BEQ             loc_381AA8
381A52:  POP             {R4,R5,R7,PC}
381A54:  CMP             R0, #0xC8
381A56:  BEQ             loc_381AA2
381A58:  CMP.W           R0, #0x102
381A5C:  IT NE
381A5E:  POPNE           {R4,R5,R7,PC}
381A60:  MOVS            R0, #word_10; this
381A62:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381A66:  MOVS            R1, #0; bool
381A68:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
381A6C:  STR             R0, [R4,#0x24]
381A6E:  POP             {R4,R5,R7,PC}
381A70:  MOVS            R0, #word_10; this
381A72:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381A76:  MOVS            R1, #0; bool
381A78:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
381A7C:  LDR             R1, =(_ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr - 0x381A84)
381A7E:  MOVS            R2, #6
381A80:  ADD             R1, PC; _ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr
381A82:  B               loc_381A96
381A84:  MOVS            R0, #word_10; this
381A86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381A8A:  MOVS            R1, #0; bool
381A8C:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
381A90:  LDR             R1, =(_ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr - 0x381A98)
381A92:  MOVS            R2, #7
381A94:  ADD             R1, PC; _ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr
381A96:  LDR             R1, [R1]; `vtable for'CTaskComplexUseClosestFreeScriptedAttractorRun
381A98:  STR             R2, [R0,#0xC]
381A9A:  ADDS            R1, #8
381A9C:  STR             R1, [R0]
381A9E:  STR             R0, [R4,#0x24]
381AA0:  POP             {R4,R5,R7,PC}
381AA2:  MOVS            R0, #0
381AA4:  STR             R0, [R4,#0x24]
381AA6:  POP             {R4,R5,R7,PC}
381AA8:  MOVS            R0, #word_30; this
381AAA:  LDR             R5, [R5,#0x10]
381AAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381AB0:  MOV             R1, R5; CPed *
381AB2:  BLX             j__ZN29CTaskComplexProstituteSolicitC2EP4CPed; CTaskComplexProstituteSolicit::CTaskComplexProstituteSolicit(CPed *)
381AB6:  STR             R0, [R4,#0x24]
381AB8:  POP             {R4,R5,R7,PC}
