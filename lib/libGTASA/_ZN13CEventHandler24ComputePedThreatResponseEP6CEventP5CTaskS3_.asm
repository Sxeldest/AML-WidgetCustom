; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputePedThreatResponseEP6CEventP5CTaskS3_
; Address            : 0x381AC4 - 0x38251C
; =========================================================

381AC4:  PUSH            {R4-R7,LR}
381AC6:  ADD             R7, SP, #0xC
381AC8:  PUSH.W          {R8,R9,R11}
381ACC:  VPUSH           {D8}
381AD0:  SUB             SP, SP, #0x18
381AD2:  MOV             R6, R1
381AD4:  MOV             R9, R0
381AD6:  LDR             R5, [R6,#0x10]
381AD8:  CMP             R5, #0
381ADA:  BEQ.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381ADE:  LDRSH.W         R0, [R6,#0xA]
381AE2:  CMP.W           R0, #0x2C0
381AE6:  BLT.W           loc_381C34
381AEA:  SUBW            R1, R0, #0x38D; switch 122 cases
381AEE:  CMP             R1, #0x79 ; 'y'
381AF0:  BHI.W           def_381AF8; jumptable 00381AF8 default case
381AF4:  MOV.W           R8, #0x800
381AF8:  TBH.W           [PC,R1,LSL#1]; switch jump
381AFC:  DCW 0x7A; jump table for switch statement
381AFE:  DCW 0x386
381B00:  DCW 0x175
381B02:  DCW 0x386
381B04:  DCW 0x386
381B06:  DCW 0x386
381B08:  DCW 0x386
381B0A:  DCW 0x386
381B0C:  DCW 0x386
381B0E:  DCW 0x386
381B10:  DCW 0x386
381B12:  DCW 0x386
381B14:  DCW 0x386
381B16:  DCW 0x386
381B18:  DCW 0x386
381B1A:  DCW 0x386
381B1C:  DCW 0x386
381B1E:  DCW 0x386
381B20:  DCW 0x19F
381B22:  DCW 0x386
381B24:  DCW 0x386
381B26:  DCW 0x386
381B28:  DCW 0x386
381B2A:  DCW 0x386
381B2C:  DCW 0x1D8
381B2E:  DCW 0x386
381B30:  DCW 0x386
381B32:  DCW 0x386
381B34:  DCW 0x386
381B36:  DCW 0x386
381B38:  DCW 0x386
381B3A:  DCW 0x1E5
381B3C:  DCW 0x386
381B3E:  DCW 0x386
381B40:  DCW 0x386
381B42:  DCW 0x386
381B44:  DCW 0x386
381B46:  DCW 0x386
381B48:  DCW 0x386
381B4A:  DCW 0x386
381B4C:  DCW 0x386
381B4E:  DCW 0x386
381B50:  DCW 0x386
381B52:  DCW 0x386
381B54:  DCW 0x386
381B56:  DCW 0x386
381B58:  DCW 0x386
381B5A:  DCW 0x386
381B5C:  DCW 0x386
381B5E:  DCW 0x386
381B60:  DCW 0x386
381B62:  DCW 0x386
381B64:  DCW 0x386
381B66:  DCW 0x386
381B68:  DCW 0x386
381B6A:  DCW 0x386
381B6C:  DCW 0x386
381B6E:  DCW 0x386
381B70:  DCW 0x386
381B72:  DCW 0x386
381B74:  DCW 0x386
381B76:  DCW 0x386
381B78:  DCW 0x386
381B7A:  DCW 0x386
381B7C:  DCW 0x386
381B7E:  DCW 0x386
381B80:  DCW 0x386
381B82:  DCW 0x386
381B84:  DCW 0x386
381B86:  DCW 0x386
381B88:  DCW 0x386
381B8A:  DCW 0x386
381B8C:  DCW 0x386
381B8E:  DCW 0x386
381B90:  DCW 0x386
381B92:  DCW 0x386
381B94:  DCW 0x386
381B96:  DCW 0x386
381B98:  DCW 0x386
381B9A:  DCW 0x386
381B9C:  DCW 0x386
381B9E:  DCW 0x386
381BA0:  DCW 0x386
381BA2:  DCW 0x386
381BA4:  DCW 0x386
381BA6:  DCW 0x386
381BA8:  DCW 0x386
381BAA:  DCW 0x386
381BAC:  DCW 0x386
381BAE:  DCW 0x386
381BB0:  DCW 0x386
381BB2:  DCW 0x208
381BB4:  DCW 0x386
381BB6:  DCW 0x386
381BB8:  DCW 0x386
381BBA:  DCW 0x386
381BBC:  DCW 0x386
381BBE:  DCW 0x386
381BC0:  DCW 0x386
381BC2:  DCW 0x386
381BC4:  DCW 0x386
381BC6:  DCW 0x386
381BC8:  DCW 0x386
381BCA:  DCW 0x386
381BCC:  DCW 0x386
381BCE:  DCW 0x386
381BD0:  DCW 0x386
381BD2:  DCW 0x386
381BD4:  DCW 0x386
381BD6:  DCW 0x386
381BD8:  DCW 0x386
381BDA:  DCW 0x255
381BDC:  DCW 0x386
381BDE:  DCW 0x265
381BE0:  DCW 0x2E9
381BE2:  DCW 0x312
381BE4:  DCW 0x386
381BE6:  DCW 0x386
381BE8:  DCW 0x386
381BEA:  DCW 0x33C
381BEC:  DCW 0x343
381BEE:  DCW 0x38C
381BF0:  MOVS            R0, #off_3C; jumptable 00381AF8 case 909
381BF2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381BF6:  LDR.W           R2, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381C06)
381BFA:  LDR.W           R12, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381C0C)
381BFE:  LDR.W           R1, =(_ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr - 0x381C0E)
381C02:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381C04:  LDR.W           R3, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x381C12)
381C08:  ADD             R12, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
381C0A:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr
381C0C:  LDR             R2, [R2]; CTaskComplexFleeEntity::ms_fEntityPosChangeThreshold ...
381C0E:  ADD             R3, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
381C10:  LDR.W           R4, [R12]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod ...
381C14:  LDR             R1, [R1]; CTaskComplexFleeEntity::ms_fSafeDistance ...
381C16:  LDR             R6, [R3]; CTaskComplexFleeEntity::ms_iFleeTime ...
381C18:  VLDR            S0, [R2]
381C1C:  LDR             R2, [R4]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod
381C1E:  LDR             R3, [R1]; float
381C20:  LDR             R1, [R6]; CTaskComplexFleeEntity::ms_iFleeTime
381C22:  STRD.W          R1, R2, [SP,#0x38+var_38]; int
381C26:  MOV             R1, R5; CEntity *
381C28:  MOVS            R2, #0; bool
381C2A:  VSTR            S0, [SP,#0x38+var_30]
381C2E:  BLX             j__ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif; CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *,bool,float,int,int,float)
381C32:  B               loc_382204
381C34:  SUB.W           R1, R0, #0xF4; switch 19 cases
381C38:  CMP             R1, #0x12
381C3A:  BLS             loc_381C9A
381C3C:  SUB.W           R1, R0, #0x19C; jumptable 00381C9A default case
381C40:  CMP             R1, #0xF
381C42:  BHI.W           def_381C4A; jumptable 00381C4A default case
381C46:  MOVW            R5, #0xFFFF
381C4A:  TBH.W           [PC,R1,LSL#1]; switch jump
381C4E:  DCW 0x10; jump table for switch statement
381C50:  DCW 0x8E
381C52:  DCW 0x2DD
381C54:  DCW 0xAE
381C56:  DCW 0x2DD
381C58:  DCW 0x2DD
381C5A:  DCW 0x2DD
381C5C:  DCW 0x2DD
381C5E:  DCW 0x2DD
381C60:  DCW 0x2DD
381C62:  DCW 0x2DD
381C64:  DCW 0x2DD
381C66:  DCW 0x2DD
381C68:  DCW 0x2DD
381C6A:  DCW 0x2DD
381C6C:  DCW 0xC2
381C6E:  MOVS            R0, #dword_20; jumptable 00381C4A case 412
381C70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381C74:  LDR.W           R1, =(aCower - 0x381C82); "Cower"
381C78:  MOVS            R2, #0
381C7A:  MOV.W           R3, #0x19C
381C7E:  ADD             R1, PC; "Cower"
381C80:  STRD.W          R3, R1, [SP,#0x38+var_38]
381C84:  MOVS            R1, #0
381C86:  STR             R2, [SP,#0x38+var_30]
381C88:  MOVS            R2, #0x8F
381C8A:  MOV.W           R3, #0x40800000
381C8E:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
381C92:  LDR.W           R1, =(_ZTV16CTaskSimpleCower_ptr - 0x381C9A)
381C96:  ADD             R1, PC; _ZTV16CTaskSimpleCower_ptr
381C98:  B               loc_381DA2
381C9A:  TBH.W           [PC,R1,LSL#1]; switch jump
381C9E:  DCW 0x13; jump table for switch statement
381CA0:  DCW 0x2B5
381CA2:  DCW 0x2B5
381CA4:  DCW 0x2B5
381CA6:  DCW 0x2B5
381CA8:  DCW 0x2B5
381CAA:  DCW 0x2B5
381CAC:  DCW 0x2B5
381CAE:  DCW 0x2B5
381CB0:  DCW 0x2B5
381CB2:  DCW 0x2B5
381CB4:  DCW 0x2B5
381CB6:  DCW 0x2B5
381CB8:  DCW 0x2B5
381CBA:  DCW 0x47
381CBC:  DCW 0x2B5
381CBE:  DCW 0x2B5
381CC0:  DCW 0x4E
381CC2:  DCW 0x5A
381CC4:  LDR.W           R0, [R9]; jumptable 00381C9A case 244
381CC8:  LDR.W           R0, [R0,#0x440]
381CCC:  LDRSB.W         R5, [R0,#0xD0]
381CD0:  CMP             R5, #0
381CD2:  BLT.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381CD6:  LDR.W           R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x381CDE)
381CDA:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
381CDC:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
381CDE:  ADD.W           R0, R0, R5,LSL#6
381CE2:  LDR             R0, [R0,#0x10]
381CE4:  CMP             R0, #0
381CE6:  BEQ.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381CEA:  MOVS            R0, #dword_1C; this
381CEC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381CF0:  MOV             R1, R5; int
381CF2:  BLX             j__ZN23CTaskComplexUseSequenceC2Ei; CTaskComplexUseSequence::CTaskComplexUseSequence(int)
381CF6:  B               loc_382204
381CF8:  CMP.W           R0, #0x2C0; jumptable 00381AF8 default case
381CFC:  BEQ.W           loc_382280
381D00:  MOVW            R1, #0x451
381D04:  CMP             R0, R1
381D06:  BNE.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381D0A:  MOV             R0, R5; this
381D0C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
381D10:  CBNZ            R0, loc_381D28
381D12:  MOVS            R0, #dword_20; this
381D14:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381D18:  MOV             R1, R5; CPed *
381D1A:  MOVS            R2, #1; bool
381D1C:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
381D20:  B               loc_382204
381D22:  CMP             R0, #0xC8; jumptable 00381C4A default case
381D24:  BNE.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381D28:  MOVS            R0, #0
381D2A:  B               loc_382204
381D2C:  MOVS            R0, #word_10; jumptable 00381C9A case 258
381D2E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381D32:  MOVS            R1, #0; bool
381D34:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
381D38:  B               loc_382204
381D3A:  MOVS            R0, #word_10; jumptable 00381C9A case 261
381D3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381D40:  MOVS            R1, #0; bool
381D42:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
381D46:  LDR.W           R1, =(_ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr - 0x381D52)
381D4A:  MOVS            R2, #6
381D4C:  STR             R2, [R0,#0xC]
381D4E:  ADD             R1, PC; _ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr
381D50:  B               loc_381DA2
381D52:  MOVS            R0, #word_10; jumptable 00381C9A case 262
381D54:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381D58:  MOVS            R1, #0; bool
381D5A:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
381D5E:  LDR.W           R1, =(_ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr - 0x381D6A)
381D62:  MOVS            R2, #7
381D64:  STR             R2, [R0,#0xC]
381D66:  ADD             R1, PC; _ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr
381D68:  B               loc_381DA2
381D6A:  MOVS            R0, #dword_34; jumptable 00381C4A case 413
381D6C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381D70:  LDR.W           R1, =(aHandsup - 0x381D80); "HandsUp"
381D74:  MOVS            R5, #0
381D76:  MOVS            R2, #0
381D78:  MOVW            R3, #0x19D
381D7C:  ADD             R1, PC; "HandsUp"
381D7E:  MOVW            R6, #0x1388
381D82:  MOVT            R5, #0xC080
381D86:  STRD.W          R5, R6, [SP,#0x38+var_38]; float
381D8A:  STRD.W          R3, R1, [SP,#0x38+var_30]; int
381D8E:  MOVS            R1, #0; int
381D90:  STR             R2, [SP,#0x38+var_28]; int
381D92:  MOVS            R2, #0x8E; int
381D94:  MOV.W           R3, #0x40800000; int
381D98:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
381D9C:  LDR.W           R1, =(_ZTV18CTaskSimpleHandsUp_ptr - 0x381DA4)
381DA0:  ADD             R1, PC; _ZTV18CTaskSimpleHandsUp_ptr
381DA2:  LDR             R1, [R1]; `vtable for'CTaskSimpleCower
381DA4:  ADDS            R1, #8
381DA6:  STR             R1, [R0]
381DA8:  B               loc_382204
381DAA:  LDR.W           R0, [R9]; jumptable 00381C4A case 415
381DAE:  MOVS            R1, #1; bool
381DB0:  LDR.W           R0, [R0,#0x440]; this
381DB4:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
381DB8:  CMP             R0, #0
381DBA:  BNE.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381DBE:  MOVS            R0, #word_28; this
381DC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381DC4:  SXTH            R3, R5; __int16
381DC6:  MOVS            R1, #0; unsigned __int8
381DC8:  MOVW            R2, #0x1388; unsigned __int16
381DCC:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
381DD0:  B               loc_382204
381DD2:  MOVS            R0, #word_28; jumptable 00381C4A case 427
381DD4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381DD8:  SXTH            R3, R5; __int16
381DDA:  MOVS            R1, #0; unsigned __int8
381DDC:  MOVW            R2, #0xFFFF; unsigned __int16
381DE0:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
381DE4:  B               loc_382204
381DE6:  LDR.W           R0, [R9]; jumptable 00381AF8 case 911
381DEA:  LDR.W           R0, [R0,#0x490]
381DEE:  TST.W           R0, R8
381DF2:  BEQ.W           loc_3822B6
381DF6:  LDR.W           R0, [R5,#0x59C]
381DFA:  CMP             R0, #6
381DFC:  BNE.W           loc_3822B6
381E00:  MOVS            R0, #dword_54; this
381E02:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381E06:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381E16)
381E0A:  LDR.W           R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x381E1C)
381E0E:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x381E22)
381E12:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381E14:  LDR.W           R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x381E28)
381E18:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
381E1A:  LDR.W           R4, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x381E2A)
381E1E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
381E20:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381E30)
381E24:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
381E26:  ADD             R4, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
381E28:  LDR.W           LR, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
381E2C:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
381E2E:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381E3A)
381E32:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
381E34:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
381E36:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381E38:  B               loc_381E72
381E3A:  MOVS            R0, #dword_54; jumptable 00381AF8 case 927
381E3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381E40:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381E50)
381E44:  LDR.W           R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x381E56)
381E48:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x381E5C)
381E4C:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381E4E:  LDR.W           R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x381E62)
381E52:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
381E54:  LDR.W           R4, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x381E64)
381E58:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
381E5A:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381E6A)
381E5E:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
381E60:  ADD             R4, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
381E62:  LDR.W           LR, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
381E66:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
381E68:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381E74)
381E6C:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
381E6E:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
381E70:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381E72:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
381E74:  LDR             R4, [R4]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
381E76:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
381E7A:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
381E7C:  VLDR            S2, [R2]
381E80:  LDR             R2, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime
381E82:  VLDR            S0, [R1]
381E86:  LDR             R6, [R4]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime
381E88:  LDR.W           R4, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
381E8C:  LDR.W           R1, [LR]; CTaskComplexSmartFleeEntity::ms_iFleeTime
381E90:  STR             R4, [SP,#0x38+var_28]; int
381E92:  LDR             R3, [R3]; float
381E94:  STR             R1, [SP,#0x38+var_38]; int
381E96:  STRD.W          R2, R6, [SP,#0x38+var_34]; int
381E9A:  MOV             R1, R5; CEntity *
381E9C:  MOVS            R2, #1; bool
381E9E:  VSTR            S0, [SP,#0x38+var_24]
381EA2:  VSTR            S2, [SP,#0x38+var_2C]
381EA6:  BLX             j__ZN24CTaskComplexFleeAnyMeansC2EP7CEntitybfiiifif; CTaskComplexFleeAnyMeans::CTaskComplexFleeAnyMeans(CEntity *,bool,float,int,int,int,float,int,float)
381EAA:  B               loc_382204
381EAC:  MOVS            R0, #off_18; jumptable 00381AF8 case 933
381EAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381EB2:  MOVS            R2, #0
381EB4:  MOVS            R3, #0
381EB6:  MOVT            R2, #0x4120; float
381EBA:  MOVT            R3, #0x40A0; float
381EBE:  MOV             R1, R5; CEntity *
381EC0:  BLX             j__ZN28CTaskComplexSeekEntityAimingC2EP7CEntityff; CTaskComplexSeekEntityAiming::CTaskComplexSeekEntityAiming(CEntity *,float,float)
381EC4:  B               loc_382204
381EC6:  MOVS            R0, #dword_40; jumptable 00381AF8 case 940
381EC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381ECC:  LDR.W           R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381EDC)
381ED0:  LDR.W           R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381EE2)
381ED4:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x381EE4)
381ED8:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381EDA:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381EE8)
381EDE:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
381EE0:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
381EE2:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
381EE4:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381EE6:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
381EE8:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
381EEA:  LDR             R4, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
381EEC:  VLDR            S0, [R2]
381EF0:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
381EF2:  LDR             R3, [R1]; float
381EF4:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iFleeTime
381EF6:  STRD.W          R1, R2, [SP,#0x38+var_38]; int
381EFA:  MOV             R1, R5; CEntity *
381EFC:  MOVS            R2, #0; bool
381EFE:  VSTR            S0, [SP,#0x38+var_30]
381F02:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
381F06:  STR.W           R0, [R9,#0x24]
381F0A:  B               loc_38230A
381F0C:  LDR.W           R0, [R9]; jumptable 00381AF8 case 1000
381F10:  LDRB.W          R1, [R0,#0x448]
381F14:  CMP             R1, #2
381F16:  BEQ.W           loc_3821E8
381F1A:  LDRSB.W         R1, [R0,#0x71C]
381F1E:  LDRSB.W         R6, [R5,#0x71C]
381F22:  RSB.W           R1, R1, R1,LSL#3
381F26:  ADD.W           R0, R0, R1,LSL#2
381F2A:  ADDW            R0, R0, #0x5A4; this
381F2E:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
381F32:  CMP             R0, #1
381F34:  BNE.W           loc_3821E8
381F38:  RSB.W           R0, R6, R6,LSL#3
381F3C:  ADD.W           R0, R5, R0,LSL#2
381F40:  ADDW            R0, R0, #0x5A4; this
381F44:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
381F48:  CMP             R0, #1
381F4A:  BEQ.W           loc_3821E8
381F4E:  LDR.W           R1, [R9]; unsigned int
381F52:  LDR.W           R2, [R1,#0x490]
381F56:  LDR.W           R0, [R1,#0x484]
381F5A:  TST.W           R2, R8
381F5E:  BEQ.W           loc_382418
381F62:  LDR.W           R2, [R5,#0x59C]
381F66:  CMP             R2, #6
381F68:  BNE.W           loc_382418
381F6C:  MOVS            R0, #dword_54; this
381F6E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381F72:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381F82)
381F76:  LDR.W           R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x381F88)
381F7A:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x381F8E)
381F7E:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381F80:  LDR.W           R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x381F94)
381F84:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
381F86:  LDR.W           R12, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x381F96)
381F8A:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
381F8C:  LDR.W           LR, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381F9C)
381F90:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
381F92:  ADD             R12, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
381F94:  LDR.W           R8, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
381F98:  ADD             LR, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
381F9A:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381FA6)
381F9E:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
381FA0:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
381FA2:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381FA4:  B               loc_3823EC
381FA6:  MOVS            R0, #off_3C; jumptable 00381AF8 case 1020
381FA8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381FAC:  MOVW            R1, #0x2710
381FB0:  MOVS            R2, #1
381FB2:  MOVS            R3, #0
381FB4:  STRD.W          R3, R2, [SP,#0x38+var_38]; signed __int8
381FB8:  MOVS            R2, #0; CVector *
381FBA:  STR             R1, [SP,#0x38+var_30]; int
381FBC:  MOV             R1, R5; CEntity *
381FBE:  MOVS            R3, #0; CVector *
381FC0:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
381FC4:  B               loc_382204
381FC6:  LDR.W           R0, [R9]; jumptable 00381AF8 case 1022
381FCA:  LDRB.W          R1, [R0,#0x485]
381FCE:  LSLS            R1, R1, #0x1F
381FD0:  BEQ.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381FD4:  LDR.W           R1, [R0,#0x590]
381FD8:  CMP             R1, #0
381FDA:  ITT NE
381FDC:  LDRNE.W         R1, [R1,#0x464]
381FE0:  CMPNE           R0, R1
381FE2:  BEQ.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381FE6:  LDR.W           R0, [R0,#0x440]
381FEA:  MOVW            R1, #0x2C5; int
381FEE:  ADDS            R0, #4; this
381FF0:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
381FF4:  CMP             R0, #0
381FF6:  BEQ.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
381FFA:  LDR.W           R0, [R9]
381FFE:  LDRSB.W         R1, [R0,#0x71C]
382002:  RSB.W           R1, R1, R1,LSL#3
382006:  ADD.W           R0, R0, R1,LSL#2
38200A:  MOVS            R1, #1
38200C:  LDR.W           R0, [R0,#0x5A4]
382010:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
382014:  LDR             R0, [R0]
382016:  CMP             R0, #1
382018:  BNE.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
38201C:  LDR.W           R0, [R9]
382020:  LDRSB.W         R1, [R0,#0x71C]
382024:  RSB.W           R1, R1, R1,LSL#3
382028:  ADD.W           R0, R0, R1,LSL#2
38202C:  MOVS            R1, #1
38202E:  LDR.W           R0, [R0,#0x5A4]
382032:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
382036:  LDR.W           R1, [R9]
38203A:  LDR             R2, [R5,#0x14]
38203C:  LDR             R3, [R1,#0x14]
38203E:  ADD.W           R6, R2, #0x30 ; '0'
382042:  CMP             R2, #0
382044:  IT EQ
382046:  ADDEQ           R6, R5, #4
382048:  ADD.W           R2, R3, #0x30 ; '0'
38204C:  CMP             R3, #0
38204E:  VLDR            S0, [R6]
382052:  IT EQ
382054:  ADDEQ           R2, R1, #4
382056:  VLDR            D16, [R6,#4]
38205A:  VLDR            S2, [R2]
38205E:  MOVS            R6, #0
382060:  VLDR            D17, [R2,#4]
382064:  VSUB.F32        S0, S0, S2
382068:  LDR.W           R1, [R1,#0x440]; unsigned int
38206C:  VSUB.F32        D16, D16, D17
382070:  VLDR            S4, [R1,#0xBC]
382074:  VLDR            S6, [R1,#0xC0]
382078:  VMUL.F32        D1, D16, D16
38207C:  VMUL.F32        S0, S0, S0
382080:  VMAX.F32        D2, D2, D3
382084:  VLDR            S6, [R0,#4]
382088:  VADD.F32        S0, S0, S2
38208C:  VADD.F32        S0, S0, S3
382090:  VMOV.F32        S2, #5.0
382094:  VSQRT.F32       S0, S0
382098:  VADD.F32        S2, S4, S2
38209C:  VMAX.F32        D8, D3, D1
3820A0:  VCMPE.F32       S0, S16
3820A4:  VMRS            APSR_nzcv, FPSCR
3820A8:  BGE             loc_3820C8
3820AA:  MOVS            R0, #dword_44; this
3820AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3820B0:  VMOV            R3, S16; float
3820B4:  MOVS            R1, #8
3820B6:  MOVS            R2, #0x5A ; 'Z'
3820B8:  STRD.W          R2, R1, [SP,#0x38+var_38]; signed __int8
3820BC:  MOV             R1, R5; CEntity *
3820BE:  MOVS            R2, #0; CVector *
3820C0:  STR             R6, [SP,#0x38+var_30]; bool
3820C2:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
3820C6:  MOV             R6, R0
3820C8:  STR.W           R6, [R9,#0x24]
3820CC:  B               loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
3820CE:  LDR.W           R0, [R9]; jumptable 00381AF8 case 1023
3820D2:  LDRB.W          R1, [R0,#0x448]
3820D6:  CMP             R1, #2
3820D8:  BEQ             loc_38210C
3820DA:  LDRSB.W         R1, [R0,#0x71C]
3820DE:  LDRSB.W         R6, [R5,#0x71C]
3820E2:  RSB.W           R1, R1, R1,LSL#3
3820E6:  ADD.W           R0, R0, R1,LSL#2
3820EA:  ADDW            R0, R0, #0x5A4; this
3820EE:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
3820F2:  CMP             R0, #1
3820F4:  BNE             loc_38210C
3820F6:  RSB.W           R0, R6, R6,LSL#3
3820FA:  ADD.W           R0, R5, R0,LSL#2
3820FE:  ADDW            R0, R0, #0x5A4; this
382102:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
382106:  CMP             R0, #1
382108:  BNE.W           loc_382310
38210C:  MOVS            R0, #dword_38; this
38210E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382112:  MOVS            R2, #0
382114:  MOVS            R1, #1
382116:  STRD.W          R2, R2, [SP,#0x38+var_38]
38211A:  MOVW            R2, #0x2710
38211E:  B               loc_3821FA
382120:  LDR.W           R0, [R9]; jumptable 00381AF8 case 1024
382124:  LDRB.W          R1, [R0,#0x448]
382128:  CMP             R1, #2
38212A:  BEQ             loc_38215E
38212C:  LDRSB.W         R1, [R0,#0x71C]
382130:  LDRSB.W         R6, [R5,#0x71C]
382134:  RSB.W           R1, R1, R1,LSL#3
382138:  ADD.W           R0, R0, R1,LSL#2
38213C:  ADDW            R0, R0, #0x5A4; this
382140:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
382144:  CMP             R0, #1
382146:  BNE             loc_38215E
382148:  RSB.W           R0, R6, R6,LSL#3
38214C:  ADD.W           R0, R5, R0,LSL#2
382150:  ADDW            R0, R0, #0x5A4; this
382154:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
382158:  CMP             R0, #1
38215A:  BNE.W           loc_38235E
38215E:  LDR.W           R0, [R9]
382162:  LDR.W           R1, [R0,#0x484]
382166:  LDR.W           R2, [R0,#0x488]
38216A:  LDR.W           R3, [R0,#0x48C]
38216E:  ORR.W           R1, R1, #0x200000
382172:  B               loc_3821D4
382174:  MOVS            R0, #dword_48; jumptable 00381AF8 case 1028
382176:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38217A:  MOV             R1, R5; CPed *
38217C:  BLX             j__ZN32CTaskComplexKillPedOnFootStealthC2EP4CPed; CTaskComplexKillPedOnFootStealth::CTaskComplexKillPedOnFootStealth(CPed *)
382180:  B               loc_382204
382182:  LDR.W           R0, [R9]; jumptable 00381AF8 case 1029
382186:  LDRB.W          R1, [R0,#0x448]
38218A:  CMP             R1, #2
38218C:  BEQ             loc_3821C0
38218E:  LDRSB.W         R1, [R0,#0x71C]
382192:  LDRSB.W         R6, [R5,#0x71C]
382196:  RSB.W           R1, R1, R1,LSL#3
38219A:  ADD.W           R0, R0, R1,LSL#2
38219E:  ADDW            R0, R0, #0x5A4; this
3821A2:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
3821A6:  CMP             R0, #1
3821A8:  BNE             loc_3821C0
3821AA:  RSB.W           R0, R6, R6,LSL#3
3821AE:  ADD.W           R0, R5, R0,LSL#2
3821B2:  ADDW            R0, R0, #0x5A4; this
3821B6:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
3821BA:  CMP             R0, #1
3821BC:  BNE.W           loc_3823A8
3821C0:  LDR.W           R0, [R9]
3821C4:  LDR.W           R1, [R0,#0x484]
3821C8:  LDR.W           R2, [R0,#0x488]
3821CC:  LDR.W           R3, [R0,#0x48C]
3821D0:  ORR.W           R1, R1, #0x400000; unsigned int
3821D4:  LDR.W           R6, [R0,#0x490]
3821D8:  STR.W           R1, [R0,#0x484]
3821DC:  STR.W           R2, [R0,#0x488]
3821E0:  STR.W           R3, [R0,#0x48C]
3821E4:  STR.W           R6, [R0,#0x490]
3821E8:  MOVS            R0, #dword_38; this
3821EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3821EE:  MOVS            R2, #0
3821F0:  MOVS            R1, #1
3821F2:  STRD.W          R2, R2, [SP,#0x38+var_38]; unsigned int
3821F6:  MOV.W           R2, #0xFFFFFFFF; int
3821FA:  STR             R1, [SP,#0x38+var_30]; int
3821FC:  MOV             R1, R5; CPed *
3821FE:  MOVS            R3, #0; unsigned int
382200:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
382204:  STR.W           R0, [R9,#0x24]
382208:  ADD             SP, SP, #0x18; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
38220A:  VPOP            {D8}
38220E:  POP.W           {R8,R9,R11}
382212:  POP             {R4-R7,PC}
382214:  LDR.W           R0, [R9]; jumptable 00381AF8 case 1030
382218:  LDR.W           R0, [R0,#0x590]
38221C:  CMP             R0, #0
38221E:  BEQ             loc_3821E8
382220:  MOVS            R0, #dword_40; this
382222:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382226:  MOV             R8, R0
382228:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
38222C:  MOVS            R0, #dword_38; this
38222E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382232:  MOV             R6, R0
382234:  MOVS            R1, #0
382236:  MOVS            R0, #1
382238:  STRD.W          R1, R1, [SP,#0x38+var_38]; unsigned int
38223C:  STR             R0, [SP,#0x38+var_30]; int
38223E:  MOV             R0, R6; this
382240:  MOV             R1, R5; CPed *
382242:  MOV.W           R2, #0xFFFFFFFF; int
382246:  MOVS            R3, #0; unsigned int
382248:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
38224C:  MOV             R0, R8; this
38224E:  MOV             R1, R6; CTask *
382250:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
382254:  MOVS            R0, #dword_24; this
382256:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38225A:  MOV             R5, R0
38225C:  LDR.W           R0, [R9]
382260:  MOVS            R3, #0
382262:  MOVS            R2, #0; int
382264:  MOVT            R3, #0x4120; float
382268:  LDR.W           R1, [R0,#0x590]; CVehicle *
38226C:  MOV             R0, R5; this
38226E:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
382272:  MOV             R0, R8; this
382274:  MOV             R1, R5; CTask *
382276:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
38227A:  STR.W           R8, [R9,#0x24]
38227E:  B               loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
382280:  LDR.W           R0, [R9]
382284:  LDR.W           R1, [R0,#0x590]; unsigned int
382288:  CMP             R1, #0
38228A:  ITT NE
38228C:  LDRBNE.W        R0, [R0,#0x485]
382290:  MOVSNE.W        R0, R0,LSL#31
382294:  BEQ             loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
382296:  MOVS            R0, #dword_34; this
382298:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38229C:  LDR.W           R1, [R9]
3822A0:  MOVS            R2, #1
3822A2:  MOVS            R3, #0
3822A4:  LDR.W           R1, [R1,#0x590]; CVehicle *
3822A8:  STRD.W          R3, R2, [SP,#0x38+var_38]; bool
3822AC:  MOVS            R2, #0; int
3822AE:  MOVS            R3, #0; int
3822B0:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
3822B4:  B               loc_382204
3822B6:  MOVS            R0, #dword_40; this
3822B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3822BC:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3822C8)
3822BE:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3822CC)
3822C2:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3822CE)
3822C4:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3822C6:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3822D2)
3822C8:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3822CA:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3822CC:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
3822CE:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3822D0:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
3822D4:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3822D6:  LDR             R4, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
3822D8:  VLDR            S0, [R2]
3822DC:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
3822E0:  LDR             R3, [R1]; float
3822E2:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iFleeTime
3822E4:  STRD.W          R1, R2, [SP,#0x38+var_38]; int
3822E8:  MOV             R1, R5; CEntity *
3822EA:  MOVS            R2, #0; bool
3822EC:  VSTR            S0, [SP,#0x38+var_30]
3822F0:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
3822F4:  STR.W           R0, [R9,#0x24]
3822F8:  LDR             R0, [R6]
3822FA:  LDR             R1, [R0,#8]
3822FC:  MOV             R0, R6
3822FE:  BLX             R1
382300:  CMP             R0, #0x25 ; '%'
382302:  BNE.W           loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
382306:  LDR.W           R0, [R9,#0x24]
38230A:  MOVS            R1, #4
38230C:  STR             R1, [R0,#0x30]
38230E:  B               loc_382208; jumptable 00381AF8 cases 910,912-926,928-932,934-939,941-999,1001-1019,1021,1025-1027
382310:  LDR.W           R1, [R9]; unsigned int
382314:  LDR.W           R2, [R1,#0x490]
382318:  LDR.W           R0, [R1,#0x484]
38231C:  TST.W           R2, R8
382320:  BEQ.W           loc_382454
382324:  LDR.W           R2, [R5,#0x59C]
382328:  CMP             R2, #6
38232A:  BNE.W           loc_382454
38232E:  MOVS            R0, #dword_54; this
382330:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382334:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x38233E)
382336:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x382342)
382338:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x382348)
38233A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
38233C:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x38234E)
38233E:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
382340:  LDR.W           R12, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x382350)
382344:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
382346:  LDR.W           LR, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x382356)
38234A:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
38234C:  ADD             R12, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
38234E:  LDR.W           R8, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
382352:  ADD             LR, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
382354:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38235E)
382356:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
382358:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
38235A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
38235C:  B               loc_3823EC
38235E:  LDR.W           R0, [R9]
382362:  LDR.W           R0, [R0,#0x490]
382366:  TST.W           R0, R8
38236A:  BEQ.W           loc_38248E
38236E:  LDR.W           R0, [R5,#0x59C]
382372:  CMP             R0, #6
382374:  BNE.W           loc_38248E
382378:  MOVS            R0, #dword_54; this
38237A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38237E:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x382388)
382380:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x38238C)
382382:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x382392)
382384:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
382386:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x382398)
382388:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
38238A:  LDR.W           R12, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x38239A)
38238E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
382390:  LDR.W           LR, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3823A0)
382394:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
382396:  ADD             R12, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
382398:  LDR.W           R8, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
38239C:  ADD             LR, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38239E:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3823A8)
3823A0:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
3823A2:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3823A4:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3823A6:  B               loc_3823EC
3823A8:  LDR.W           R0, [R9]
3823AC:  LDR.W           R0, [R0,#0x490]
3823B0:  TST.W           R0, R8
3823B4:  BEQ             loc_3824A8
3823B6:  LDR.W           R0, [R5,#0x59C]
3823BA:  CMP             R0, #6
3823BC:  BNE             loc_3824A8
3823BE:  MOVS            R0, #dword_54; this
3823C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3823C4:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3823CE)
3823C6:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x3823D2)
3823C8:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3823D8)
3823CA:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3823CC:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x3823DE)
3823CE:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
3823D0:  LDR.W           R12, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x3823E0)
3823D4:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3823D6:  LDR.W           LR, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3823E6)
3823DA:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
3823DC:  ADD             R12, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
3823DE:  LDR.W           R8, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
3823E2:  ADD             LR, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3823E4:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3823EE)
3823E6:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
3823E8:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3823EA:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3823EC:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
3823EE:  LDR.W           R12, [R12]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
3823F2:  LDR.W           LR, [LR]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
3823F6:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
3823F8:  VLDR            S2, [R2]
3823FC:  LDR             R2, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime
3823FE:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance
382400:  LDR.W           R6, [R12]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime
382404:  VLDR            S0, [R1]
382408:  LDR.W           R1, [LR]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
38240C:  LDR.W           R8, [R8]; CTaskComplexSmartFleeEntity::ms_iFleeTime
382410:  STR             R1, [SP,#0x38+var_28]
382412:  STR.W           R8, [SP,#0x38+var_38]
382416:  B               loc_381E96
382418:  LSLS            R0, R0, #0x17
38241A:  BPL             loc_3824C2
38241C:  LDR.W           R0, [R1,#0x590]; this
382420:  CMP             R0, #0
382422:  BEQ             loc_3824C2
382424:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
382428:  CMP             R0, #1
38242A:  BNE             loc_3824C2
38242C:  MOVS            R0, #word_2C; this
38242E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382432:  LDR.W           R1, [R9]
382436:  MOVS            R2, #0x42200000
38243C:  MOVS            R3, #2
38243E:  LDR.W           R1, [R1,#0x590]; CVehicle *
382442:  STRD.W          R3, R2, [SP,#0x38+var_38]; int
382446:  MOVS            R2, #0; CEntity *
382448:  MOVS            R3, #1; int
38244A:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
38244E:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x382454)
382450:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
382452:  B               loc_381DA2
382454:  LSLS            R0, R0, #0x17
382456:  BPL             loc_3824DC
382458:  LDR.W           R0, [R1,#0x590]; this
38245C:  CBZ             R0, loc_3824DC
38245E:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
382462:  CMP             R0, #1
382464:  BNE             loc_3824DC
382466:  MOVS            R0, #word_2C; this
382468:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38246C:  LDR.W           R1, [R9]
382470:  MOVS            R2, #0x42200000
382476:  MOVS            R3, #2
382478:  LDR.W           R1, [R1,#0x590]; CVehicle *
38247C:  STRD.W          R3, R2, [SP,#0x38+var_38]; int
382480:  MOVS            R2, #0; CEntity *
382482:  MOVS            R3, #1; int
382484:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
382488:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x38248E)
38248A:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
38248C:  B               loc_381DA2
38248E:  MOVS            R0, #dword_40; this
382490:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382494:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x38249E)
382496:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3824A4)
382498:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3824A6)
38249A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
38249C:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3824A8)
3824A0:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3824A2:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3824A4:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3824A6:  B               loc_3824F4
3824A8:  MOVS            R0, #dword_40; this
3824AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3824AE:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3824B8)
3824B0:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3824BE)
3824B2:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3824C0)
3824B4:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3824B6:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3824C2)
3824BA:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3824BC:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3824BE:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3824C0:  B               loc_3824F4
3824C2:  MOVS            R0, #dword_40; this
3824C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3824C8:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3824D2)
3824CA:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3824D8)
3824CC:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3824DA)
3824CE:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3824D0:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3824DC)
3824D4:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3824D6:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3824D8:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3824DA:  B               loc_3824F4
3824DC:  MOVS            R0, #dword_40; this
3824DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3824E2:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3824EC)
3824E4:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3824F2)
3824E6:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3824F4)
3824E8:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3824EA:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3824F6)
3824EE:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3824F0:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3824F2:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3824F4:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
3824F6:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
3824FA:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3824FC:  LDR             R6, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
3824FE:  VLDR            S0, [R2]
382502:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
382506:  LDR             R3, [R1]; float
382508:  LDR             R1, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
38250A:  STRD.W          R1, R2, [SP,#0x38+var_38]; int
38250E:  MOV             R1, R5; CEntity *
382510:  MOVS            R2, #0; bool
382512:  VSTR            S0, [SP,#0x38+var_30]
382516:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
38251A:  B               loc_382204
