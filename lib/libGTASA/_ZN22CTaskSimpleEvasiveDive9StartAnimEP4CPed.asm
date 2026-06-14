; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveDive9StartAnimEP4CPed
; Address            : 0x50B1D4 - 0x50B276
; =========================================================

50B1D4:  PUSH            {R4-R7,LR}
50B1D6:  ADD             R7, SP, #0xC
50B1D8:  PUSH.W          {R11}
50B1DC:  SUB             SP, SP, #0x10
50B1DE:  MOV             R4, R1
50B1E0:  MOV             R5, R0
50B1E2:  MOVS            R0, #0
50B1E4:  MOVS            R1, #0x4A ; 'J'; unsigned __int16
50B1E6:  STRD.W          R0, R0, [SP,#0x20+var_20]; unsigned __int8
50B1EA:  MOVS            R2, #0; unsigned int
50B1EC:  STR             R0, [SP,#0x20+var_18]; unsigned __int8
50B1EE:  MOV             R0, R4; this
50B1F0:  MOV.W           R3, #0x3F800000; float
50B1F4:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
50B1F8:  LDR             R0, [R4,#0x18]; int
50B1FA:  MOVS            R1, #0; int
50B1FC:  MOVS            R2, #0x7F; unsigned int
50B1FE:  MOV.W           R3, #0x41000000
50B202:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50B206:  LDR             R1, =(_ZN22CTaskSimpleEvasiveDive23FinishAnimEvasiveDiveCBEP21CAnimBlendAssociationPv_ptr - 0x50B210)
50B208:  MOV             R2, R5; void *
50B20A:  STR             R0, [R5,#0x10]
50B20C:  ADD             R1, PC; _ZN22CTaskSimpleEvasiveDive23FinishAnimEvasiveDiveCBEP21CAnimBlendAssociationPv_ptr
50B20E:  LDR             R1, [R1]; CTaskSimpleEvasiveDive::FinishAnimEvasiveDiveCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50B210:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50B214:  LDR             R0, [R5,#8]
50B216:  CBZ             R0, loc_50B26E
50B218:  LDR.W           R1, [R4,#0x59C]
50B21C:  CMP             R1, #6
50B21E:  BNE             loc_50B26E
50B220:  LDR.W           R0, [R0,#0x464]; this
50B224:  CBZ             R0, loc_50B26E
50B226:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50B22A:  CMP             R0, #1
50B22C:  BNE             loc_50B26E
50B22E:  MOV.W           R0, #0xFFFFFFFF; int
50B232:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
50B236:  LDR             R1, [R4,#0x14]
50B238:  ADDS            R5, R4, #4
50B23A:  MOVS            R6, #0
50B23C:  MOV             R3, R4
50B23E:  CMP             R1, #0
50B240:  MOV             R2, R5
50B242:  STR             R6, [SP,#0x20+var_20]
50B244:  IT NE
50B246:  ADDNE.W         R2, R1, #0x30 ; '0'
50B24A:  MOVS            R1, #8
50B24C:  BLX             j__ZN7CWanted25RegisterCrime_ImmediatelyE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime_Immediately(eCrimeType,CVector const&,uint,bool)
50B250:  MOV.W           R0, #0xFFFFFFFF; int
50B254:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
50B258:  LDR             R1, [R4,#0x14]
50B25A:  MOV             R3, R4
50B25C:  STR             R6, [SP,#0x20+var_20]
50B25E:  CMP             R1, #0
50B260:  IT NE
50B262:  ADDNE.W         R5, R1, #0x30 ; '0'
50B266:  MOVS            R1, #9
50B268:  MOV             R2, R5
50B26A:  BLX             j__ZN7CWanted25RegisterCrime_ImmediatelyE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime_Immediately(eCrimeType,CVector const&,uint,bool)
50B26E:  ADD             SP, SP, #0x10
50B270:  POP.W           {R11}
50B274:  POP             {R4-R7,PC}
