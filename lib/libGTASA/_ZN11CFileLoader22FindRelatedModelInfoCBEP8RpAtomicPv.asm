; =========================================================
; Game Engine Function: _ZN11CFileLoader22FindRelatedModelInfoCBEP8RpAtomicPv
; Address            : 0x469378 - 0x469416
; =========================================================

469378:  PUSH            {R4-R7,LR}
46937A:  ADD             R7, SP, #0xC
46937C:  PUSH.W          {R11}
469380:  SUB             SP, SP, #0x28
469382:  MOV             R4, R0
469384:  LDR             R0, =(__stack_chk_guard_ptr - 0x46938C)
469386:  MOV             R5, R1
469388:  ADD             R0, PC; __stack_chk_guard_ptr
46938A:  LDR             R0, [R0]; __stack_chk_guard
46938C:  LDR             R0, [R0]
46938E:  STR             R0, [SP,#0x38+var_14]
469390:  LDR             R0, [R4,#4]
469392:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
469396:  SUB.W           R6, R7, #-var_29
46939A:  SUB.W           R2, R7, #-var_31; bool *
46939E:  MOV             R1, R6; char *
4693A0:  BLX             j__Z16GetNameAndDamagePKcPcRb; GetNameAndDamage(char const*,char *,bool &)
4693A4:  ADD             R1, SP, #0x38+var_30; char *
4693A6:  MOV             R0, R6; this
4693A8:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
4693AC:  CBZ             R0, loc_4693FA
4693AE:  LDR             R1, [R0]
4693B0:  LDR             R1, [R1,#8]
4693B2:  BLX             R1
4693B4:  MOV             R6, R0
4693B6:  MOV             R0, R4
4693B8:  MOVS            R1, #0
4693BA:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
4693BE:  LDRB.W          R0, [R7,#var_31]
4693C2:  CBZ             R0, loc_4693D4
4693C4:  LDR             R0, [R6]
4693C6:  LDR             R1, [R0,#0xC]
4693C8:  MOV             R0, R6
4693CA:  BLX             R1
4693CC:  MOV             R1, R4
4693CE:  BLX             j__ZN22CDamageAtomicModelInfo16SetDamagedAtomicEP8RpAtomic; CDamageAtomicModelInfo::SetDamagedAtomic(RpAtomic *)
4693D2:  B               loc_4693DE
4693D4:  LDR             R0, [R6]
4693D6:  MOV             R1, R4
4693D8:  LDR             R2, [R0,#0x40]
4693DA:  MOV             R0, R6
4693DC:  BLX             R2
4693DE:  MOV             R0, R5
4693E0:  MOV             R1, R4
4693E2:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
4693E6:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
4693EA:  MOV             R1, R0
4693EC:  MOV             R0, R4
4693EE:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
4693F2:  LDR             R1, [SP,#0x38+var_30]
4693F4:  MOV             R0, R4
4693F6:  BLX             j__ZN18CVisibilityPlugins17SetModelInfoIndexEP8RpAtomici; CVisibilityPlugins::SetModelInfoIndex(RpAtomic *,int)
4693FA:  LDR             R0, =(__stack_chk_guard_ptr - 0x469402)
4693FC:  LDR             R1, [SP,#0x38+var_14]
4693FE:  ADD             R0, PC; __stack_chk_guard_ptr
469400:  LDR             R0, [R0]; __stack_chk_guard
469402:  LDR             R0, [R0]
469404:  SUBS            R0, R0, R1
469406:  ITTTT EQ
469408:  MOVEQ           R0, R4
46940A:  ADDEQ           SP, SP, #0x28 ; '('
46940C:  POPEQ.W         {R11}
469410:  POPEQ           {R4-R7,PC}
469412:  BLX             __stack_chk_fail
