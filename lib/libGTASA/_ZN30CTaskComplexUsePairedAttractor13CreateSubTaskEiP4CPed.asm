; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractor13CreateSubTaskEiP4CPed
; Address            : 0x4EF1B4 - 0x4EF2A0
; =========================================================

4EF1B4:  PUSH            {R4,R5,R7,LR}
4EF1B6:  ADD             R7, SP, #8
4EF1B8:  MOV             R4, R0
4EF1BA:  MOV             R5, R2
4EF1BC:  MOVS            R0, #0
4EF1BE:  CMP             R1, #0xF8
4EF1C0:  BGT             loc_4EF1E4
4EF1C2:  CMP             R1, #0xF7
4EF1C4:  BEQ             loc_4EF220
4EF1C6:  CMP             R1, #0xF8
4EF1C8:  BNE             locret_4EF250
4EF1CA:  LDRB            R0, [R4,#0x14]
4EF1CC:  CMP             R0, #0
4EF1CE:  BEQ             loc_4EF252
4EF1D0:  MOVS            R0, #dword_14; this
4EF1D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF1D6:  LDR             R5, [R4,#0x18]
4EF1D8:  LDRB            R4, [R4,#0x14]
4EF1DA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF1DE:  LDR             R1, =(_ZTV32CTaskComplexAttractorPartnerWait_ptr - 0x4EF1E4)
4EF1E0:  ADD             R1, PC; _ZTV32CTaskComplexAttractorPartnerWait_ptr
4EF1E2:  B               loc_4EF236
4EF1E4:  MOVW            R2, #0x516
4EF1E8:  CMP             R1, R2
4EF1EA:  BEQ             loc_4EF242
4EF1EC:  CMP             R1, #0xF9
4EF1EE:  IT NE
4EF1F0:  POPNE           {R4,R5,R7,PC}
4EF1F2:  MOV             R5, R4
4EF1F4:  LDR.W           R0, [R5,#0x10]!; this
4EF1F8:  CBZ             R0, loc_4EF204
4EF1FA:  MOV             R1, R5; CEntity **
4EF1FC:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EF200:  MOVS            R0, #0
4EF202:  STR             R0, [R5]
4EF204:  MOVS            R0, #0
4EF206:  STR             R0, [R4,#0x18]
4EF208:  STRB            R0, [R4,#0x14]
4EF20A:  MOVS            R0, #word_10; this
4EF20C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF210:  LDR             R4, [R4,#0xC]
4EF212:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF216:  LDR             R1, =(_ZTV32CTaskComplexUseScriptedAttractor_ptr - 0x4EF21E)
4EF218:  STR             R4, [R0,#0xC]
4EF21A:  ADD             R1, PC; _ZTV32CTaskComplexUseScriptedAttractor_ptr
4EF21C:  LDR             R1, [R1]; unsigned int
4EF21E:  B               loc_4EF23C
4EF220:  LDRB            R0, [R4,#0x14]
4EF222:  CBZ             R0, loc_4EF274
4EF224:  MOVS            R0, #dword_14; this
4EF226:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF22A:  LDR             R5, [R4,#0x18]
4EF22C:  LDRB            R4, [R4,#0x14]
4EF22E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF232:  LDR             R1, =(_ZTV31CTaskComplexUseAttractorPartner_ptr - 0x4EF238)
4EF234:  ADD             R1, PC; _ZTV31CTaskComplexUseAttractorPartner_ptr
4EF236:  STRB            R4, [R0,#0xC]
4EF238:  LDR             R1, [R1]; `vtable for'CTaskComplexAttractorPartnerWait
4EF23A:  STR             R5, [R0,#0x10]
4EF23C:  ADDS            R1, #8
4EF23E:  STR             R1, [R0]
4EF240:  POP             {R4,R5,R7,PC}
4EF242:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EF246:  LDR             R2, [R4,#0xC]; CPedAttractor *
4EF248:  MOV             R1, R5; CPed *
4EF24A:  BLX             j__ZN20CPedAttractorManager18BroadcastDepartureEP4CPedP13CPedAttractor; CPedAttractorManager::BroadcastDeparture(CPed *,CPedAttractor *)
4EF24E:  MOVS            R0, #0
4EF250:  POP             {R4,R5,R7,PC}
4EF252:  LDR             R0, [R4,#0x10]
4EF254:  MOVS            R1, #0xF6; int
4EF256:  LDR.W           R0, [R0,#0x440]
4EF25A:  ADDS            R0, #4; this
4EF25C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF260:  MOVS            R0, #dword_14; this
4EF262:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF266:  LDR             R5, [R4,#0x18]
4EF268:  LDRB            R4, [R4,#0x14]
4EF26A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF26E:  LDR             R1, =(_ZTV32CTaskComplexAttractorPartnerWait_ptr - 0x4EF274)
4EF270:  ADD             R1, PC; _ZTV32CTaskComplexAttractorPartnerWait_ptr
4EF272:  B               loc_4EF294
4EF274:  LDR             R0, [R4,#0x10]
4EF276:  MOVS            R1, #0xF6; int
4EF278:  LDR.W           R0, [R0,#0x440]
4EF27C:  ADDS            R0, #4; this
4EF27E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF282:  MOVS            R0, #dword_14; this
4EF284:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF288:  LDR             R5, [R4,#0x18]
4EF28A:  LDRB            R4, [R4,#0x14]
4EF28C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF290:  LDR             R1, =(_ZTV31CTaskComplexUseAttractorPartner_ptr - 0x4EF296)
4EF292:  ADD             R1, PC; _ZTV31CTaskComplexUseAttractorPartner_ptr
4EF294:  LDR             R1, [R1]; `vtable for'CTaskComplexAttractorPartnerWait
4EF296:  STRB            R4, [R0,#0xC]
4EF298:  ADDS            R1, #8
4EF29A:  STR             R1, [R0]
4EF29C:  STR             R5, [R0,#0x10]
4EF29E:  POP             {R4,R5,R7,PC}
