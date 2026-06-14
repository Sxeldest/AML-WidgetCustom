; =========================================================
; Game Engine Function: _ZN4CPed16SetCharCreatedByEh
; Address            : 0x49F9B8 - 0x49FA26
; =========================================================

49F9B8:  PUSH            {R4,R5,R7,LR}
49F9BA:  ADD             R7, SP, #8
49F9BC:  MOV             R4, R0
49F9BE:  LDR.W           R0, [R4,#0x59C]
49F9C2:  STRB.W          R1, [R4,#0x448]
49F9C6:  CMP             R0, #1
49F9C8:  BHI             loc_49F9D4
49F9CA:  LDR.W           R0, [R4,#0x440]
49F9CE:  MOV             R1, #0xFFFFFFFE
49F9D2:  B               loc_49F9E8
49F9D4:  CMP             R1, #2
49F9D6:  LDR.W           R0, [R4,#0x440]; this
49F9DA:  ITEE EQ
49F9DC:  MOVEQ.W         R1, #0xFFFFFFFF
49F9E0:  LDRNE.W         R1, [R4,#0x5A0]
49F9E4:  LDRSBNE.W       R1, [R1,#0x32]; int
49F9E8:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
49F9EC:  LDRB.W          R0, [R4,#0x448]
49F9F0:  CMP             R0, #2
49F9F2:  IT NE
49F9F4:  POPNE           {R4,R5,R7,PC}
49F9F6:  LDR             R0, =(_ZN16CPedIntelligence27ms_fSenseRangeOfMissionPedsE_ptr - 0x49F9FC)
49F9F8:  ADD             R0, PC; _ZN16CPedIntelligence27ms_fSenseRangeOfMissionPedsE_ptr
49F9FA:  LDR             R1, [R0]; CPedIntelligence::ms_fSenseRangeOfMissionPeds ...
49F9FC:  LDR.W           R0, [R4,#0x440]; this
49FA00:  LDR             R5, [R1]; CPedIntelligence::ms_fSenseRangeOfMissionPeds
49FA02:  MOV             R1, R5; float
49FA04:  BLX             j__ZN16CPedIntelligence14SetSeeingRangeEf; CPedIntelligence::SetSeeingRange(float)
49FA08:  LDR.W           R0, [R4,#0x440]; this
49FA0C:  MOV             R1, R5; float
49FA0E:  BLX             j__ZN16CPedIntelligence15SetHearingRangeEf; CPedIntelligence::SetHearingRange(float)
49FA12:  LDR.W           R0, [R4,#0x59C]
49FA16:  CMP             R0, #2
49FA18:  ITTT CS
49FA1A:  LDRCS.W         R0, [R4,#0x440]
49FA1E:  MOVCS           R1, #0
49FA20:  STRDCS.W        R1, R1, [R0,#0xC4]
49FA24:  POP             {R4,R5,R7,PC}
