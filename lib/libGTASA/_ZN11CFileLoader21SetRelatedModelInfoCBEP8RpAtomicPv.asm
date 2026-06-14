; =========================================================
; Game Engine Function: _ZN11CFileLoader21SetRelatedModelInfoCBEP8RpAtomicPv
; Address            : 0x3EF0E0 - 0x3EF186
; =========================================================

3EF0E0:  PUSH            {R4-R7,LR}
3EF0E2:  ADD             R7, SP, #0xC
3EF0E4:  PUSH.W          {R11}
3EF0E8:  SUB             SP, SP, #0x20
3EF0EA:  MOV             R4, R0
3EF0EC:  LDR             R0, =(__stack_chk_guard_ptr - 0x3EF0F6)
3EF0EE:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EF0FA)
3EF0F0:  MOV             R5, R1
3EF0F2:  ADD             R0, PC; __stack_chk_guard_ptr
3EF0F4:  LDR             R1, =(dword_9586F0 - 0x3EF0FC)
3EF0F6:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EF0F8:  ADD             R1, PC; dword_9586F0
3EF0FA:  LDR             R0, [R0]; __stack_chk_guard
3EF0FC:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
3EF0FE:  LDR             R1, [R1]
3EF100:  LDR             R0, [R0]
3EF102:  STR             R0, [SP,#0x30+var_14]
3EF104:  LDR.W           R0, [R2,R1,LSL#2]
3EF108:  LDR             R1, [R0]
3EF10A:  LDR             R1, [R1,#8]
3EF10C:  BLX             R1
3EF10E:  MOV             R6, R0
3EF110:  LDR             R0, [R4,#4]
3EF112:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3EF116:  SUB.W           R1, R7, #-var_29; char *
3EF11A:  SUB.W           R2, R7, #-var_2A; bool *
3EF11E:  BLX             j__Z16GetNameAndDamagePKcPcRb; GetNameAndDamage(char const*,char *,bool &)
3EF122:  MOV             R0, R4
3EF124:  MOVS            R1, #0
3EF126:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
3EF12A:  LDRB.W          R0, [R7,#var_2A]
3EF12E:  CBZ             R0, loc_3EF140
3EF130:  LDR             R0, [R6]
3EF132:  LDR             R1, [R0,#0xC]
3EF134:  MOV             R0, R6
3EF136:  BLX             R1
3EF138:  MOV             R1, R4
3EF13A:  BLX             j__ZN22CDamageAtomicModelInfo16SetDamagedAtomicEP8RpAtomic; CDamageAtomicModelInfo::SetDamagedAtomic(RpAtomic *)
3EF13E:  B               loc_3EF14A
3EF140:  LDR             R0, [R6]
3EF142:  MOV             R1, R4
3EF144:  LDR             R2, [R0,#0x40]
3EF146:  MOV             R0, R6
3EF148:  BLX             R2
3EF14A:  MOV             R0, R5
3EF14C:  MOV             R1, R4
3EF14E:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
3EF152:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
3EF156:  MOV             R1, R0
3EF158:  MOV             R0, R4
3EF15A:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
3EF15E:  LDR             R0, =(dword_9586F0 - 0x3EF164)
3EF160:  ADD             R0, PC; dword_9586F0
3EF162:  LDR             R1, [R0]
3EF164:  MOV             R0, R4
3EF166:  BLX             j__ZN18CVisibilityPlugins17SetModelInfoIndexEP8RpAtomici; CVisibilityPlugins::SetModelInfoIndex(RpAtomic *,int)
3EF16A:  LDR             R0, =(__stack_chk_guard_ptr - 0x3EF172)
3EF16C:  LDR             R1, [SP,#0x30+var_14]
3EF16E:  ADD             R0, PC; __stack_chk_guard_ptr
3EF170:  LDR             R0, [R0]; __stack_chk_guard
3EF172:  LDR             R0, [R0]
3EF174:  SUBS            R0, R0, R1
3EF176:  ITTTT EQ
3EF178:  MOVEQ           R0, R4
3EF17A:  ADDEQ           SP, SP, #0x20 ; ' '
3EF17C:  POPEQ.W         {R11}
3EF180:  POPEQ           {R4-R7,PC}
3EF182:  BLX             __stack_chk_fail
