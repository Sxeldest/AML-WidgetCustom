; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractor17CreateNextSubTaskEP4CPed
; Address            : 0x4EF000 - 0x4EF196
; =========================================================

4EF000:  PUSH            {R4-R7,LR}
4EF002:  ADD             R7, SP, #0xC
4EF004:  PUSH.W          {R11}
4EF008:  MOV             R4, R0
4EF00A:  MOV             R5, R1
4EF00C:  LDR             R0, [R4,#8]
4EF00E:  LDR             R1, [R0]
4EF010:  LDR             R1, [R1,#0x14]
4EF012:  BLX             R1
4EF014:  CMP             R0, #0xF7
4EF016:  BEQ             loc_4EF050
4EF018:  CMP             R0, #0xF8
4EF01A:  BEQ             loc_4EF084
4EF01C:  CMP             R0, #0xF9
4EF01E:  BNE.W           loc_4EF18C
4EF022:  MOV             R6, R4
4EF024:  LDR.W           R0, [R6,#0x10]!
4EF028:  LDR             R1, [R6,#0x10]
4EF02A:  CMP             R0, #0
4EF02C:  ADD.W           R1, R1, #1
4EF030:  STR             R1, [R6,#0x10]
4EF032:  BEQ             loc_4EF0AA
4EF034:  LDRB            R1, [R4,#0x14]; unsigned int
4EF036:  CMP             R1, #0
4EF038:  BEQ             loc_4EF132
4EF03A:  MOVS            R0, #dword_14; this
4EF03C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF040:  LDR             R6, [R4,#0x18]
4EF042:  MOV             R5, R0
4EF044:  LDRB            R4, [R4,#0x14]
4EF046:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF04A:  LDR             R0, =(_ZTV32CTaskComplexAttractorPartnerWait_ptr - 0x4EF050)
4EF04C:  ADD             R0, PC; _ZTV32CTaskComplexAttractorPartnerWait_ptr
4EF04E:  B               loc_4EF0A2
4EF050:  LDRB            R0, [R4,#0x14]
4EF052:  CBZ             R0, loc_4EF066
4EF054:  LDR             R1, [R4,#0x1C]
4EF056:  ADDS            R1, #5
4EF058:  ASRS            R2, R1, #0x1F
4EF05A:  ADD.W           R2, R1, R2,LSR#30
4EF05E:  BIC.W           R2, R2, #3
4EF062:  SUBS            R1, R1, R2
4EF064:  STR             R1, [R4,#0x1C]
4EF066:  LDR             R1, [R4,#0x18]
4EF068:  CMP             R0, #0
4EF06A:  ADD.W           R2, R1, #0xC
4EF06E:  IT EQ
4EF070:  ADDEQ.W         R2, R1, #0x1C
4EF074:  LDR             R0, [R2]
4EF076:  CMP             R0, #1
4EF078:  BEQ             loc_4EF108
4EF07A:  CMP             R0, #0
4EF07C:  BNE             loc_4EF116
4EF07E:  MOVW            R1, #0x516
4EF082:  B               loc_4EF10A
4EF084:  LDR             R0, [R4,#0x10]
4EF086:  CBZ             R0, loc_4EF0E6
4EF088:  LDRB            R1, [R4,#0x14]; unsigned int
4EF08A:  CMP             R1, #0
4EF08C:  BEQ             loc_4EF154
4EF08E:  MOVS            R0, #dword_14; this
4EF090:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF094:  LDR             R6, [R4,#0x18]
4EF096:  MOV             R5, R0
4EF098:  LDRB            R4, [R4,#0x14]
4EF09A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF09E:  LDR             R0, =(_ZTV31CTaskComplexUseAttractorPartner_ptr - 0x4EF0A4)
4EF0A0:  ADD             R0, PC; _ZTV31CTaskComplexUseAttractorPartner_ptr
4EF0A2:  STRB            R4, [R5,#0xC]
4EF0A4:  LDR             R0, [R0]; `vtable for'CTaskComplexAttractorPartnerWait
4EF0A6:  STR             R6, [R5,#0x10]
4EF0A8:  B               loc_4EF102
4EF0AA:  LDR             R0, [R4,#0xC]
4EF0AC:  LDR             R0, [R0,#4]
4EF0AE:  BLX             j__ZN18CScripted2dEffects8GetIndexEPK9C2dEffect; CScripted2dEffects::GetIndex(C2dEffect const*)
4EF0B2:  LDR             R1, =(_ZN18CScripted2dEffects16ms_useAgainFlagsE_ptr - 0x4EF0B8)
4EF0B4:  ADD             R1, PC; _ZN18CScripted2dEffects16ms_useAgainFlagsE_ptr
4EF0B6:  LDR             R1, [R1]; CScripted2dEffects::ms_useAgainFlags ...
4EF0B8:  LDRB            R0, [R1,R0]
4EF0BA:  CMP             R0, #0
4EF0BC:  BEQ             loc_4EF180
4EF0BE:  LDR             R0, [R6]; this
4EF0C0:  CBZ             R0, loc_4EF0CC
4EF0C2:  MOV             R1, R6; CEntity **
4EF0C4:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EF0C8:  MOVS            R0, #0
4EF0CA:  STR             R0, [R6]
4EF0CC:  MOVS            R0, #0
4EF0CE:  STR             R0, [R4,#0x18]
4EF0D0:  STRB            R0, [R4,#0x14]
4EF0D2:  MOVS            R0, #word_10; this
4EF0D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF0D8:  MOV             R5, R0
4EF0DA:  LDR             R4, [R4,#0xC]
4EF0DC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF0E0:  LDR             R0, =(_ZTV32CTaskComplexUseScriptedAttractor_ptr - 0x4EF0E6)
4EF0E2:  ADD             R0, PC; _ZTV32CTaskComplexUseScriptedAttractor_ptr
4EF0E4:  B               loc_4EF0FE
4EF0E6:  MOVS            R0, #0
4EF0E8:  STR             R0, [R4,#0x18]
4EF0EA:  STRB            R0, [R4,#0x14]
4EF0EC:  MOVS            R0, #word_10; this
4EF0EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF0F2:  MOV             R5, R0
4EF0F4:  LDR             R4, [R4,#0xC]
4EF0F6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF0FA:  LDR             R0, =(_ZTV32CTaskComplexUseScriptedAttractor_ptr - 0x4EF100)
4EF0FC:  ADD             R0, PC; _ZTV32CTaskComplexUseScriptedAttractor_ptr
4EF0FE:  LDR             R0, [R0]; `vtable for'CTaskComplexUseScriptedAttractor ...
4EF100:  STR             R4, [R5,#0xC]
4EF102:  ADDS            R0, #8
4EF104:  STR             R0, [R5]
4EF106:  B               loc_4EF18E
4EF108:  MOVS            R1, #0xF9; int
4EF10A:  MOV             R0, R4; this
4EF10C:  MOV             R2, R5; CPed *
4EF10E:  BLX             j__ZN30CTaskComplexUsePairedAttractor13CreateSubTaskEiP4CPed; CTaskComplexUsePairedAttractor::CreateSubTask(int,CPed *)
4EF112:  MOV             R5, R0
4EF114:  B               loc_4EF118
4EF116:  MOVS            R5, #0
4EF118:  MOV             R6, R4
4EF11A:  LDR.W           R0, [R6,#0x10]!; this
4EF11E:  CBZ             R0, loc_4EF12A
4EF120:  MOV             R1, R6; CEntity **
4EF122:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EF126:  MOVS            R0, #0
4EF128:  STR             R0, [R6]
4EF12A:  MOVS            R0, #0
4EF12C:  STR             R0, [R4,#0x18]
4EF12E:  STRB            R0, [R4,#0x14]
4EF130:  B               loc_4EF18E
4EF132:  LDR.W           R0, [R0,#0x440]
4EF136:  MOVS            R1, #0xF6; int
4EF138:  ADDS            R0, #4; this
4EF13A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF13E:  MOVS            R0, #dword_14; this
4EF140:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF144:  LDR             R6, [R4,#0x18]
4EF146:  MOV             R5, R0
4EF148:  LDRB            R4, [R4,#0x14]
4EF14A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF14E:  LDR             R0, =(_ZTV32CTaskComplexAttractorPartnerWait_ptr - 0x4EF154)
4EF150:  ADD             R0, PC; _ZTV32CTaskComplexAttractorPartnerWait_ptr
4EF152:  B               loc_4EF174
4EF154:  LDR.W           R0, [R0,#0x440]
4EF158:  MOVS            R1, #0xF6; int
4EF15A:  ADDS            R0, #4; this
4EF15C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF160:  MOVS            R0, #dword_14; this
4EF162:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF166:  LDR             R6, [R4,#0x18]
4EF168:  MOV             R5, R0
4EF16A:  LDRB            R4, [R4,#0x14]
4EF16C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF170:  LDR             R0, =(_ZTV31CTaskComplexUseAttractorPartner_ptr - 0x4EF176)
4EF172:  ADD             R0, PC; _ZTV31CTaskComplexUseAttractorPartner_ptr
4EF174:  LDR             R0, [R0]; `vtable for'CTaskComplexAttractorPartnerWait
4EF176:  STRB            R4, [R5,#0xC]
4EF178:  ADDS            R0, #8
4EF17A:  STR             R0, [R5]
4EF17C:  STR             R6, [R5,#0x10]
4EF17E:  B               loc_4EF18E
4EF180:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EF184:  LDR             R2, [R4,#0xC]; CPedAttractor *
4EF186:  MOV             R1, R5; CPed *
4EF188:  BLX             j__ZN20CPedAttractorManager18BroadcastDepartureEP4CPedP13CPedAttractor; CPedAttractorManager::BroadcastDeparture(CPed *,CPedAttractor *)
4EF18C:  MOVS            R5, #0
4EF18E:  MOV             R0, R5
4EF190:  POP.W           {R11}
4EF194:  POP             {R4-R7,PC}
