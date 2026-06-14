; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitIdle13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EC12C - 0x4EC19E
; =========================================================

4EC12C:  PUSH            {R4-R7,LR}
4EC12E:  ADD             R7, SP, #0xC
4EC130:  PUSH.W          {R11}
4EC134:  MOV             R4, R1
4EC136:  MOV             R5, R0
4EC138:  CMP             R2, #2
4EC13A:  BNE             loc_4EC180
4EC13C:  LDR             R0, [R5,#0x10]
4EC13E:  CBZ             R0, loc_4EC15A
4EC140:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EC14E)
4EC142:  MOVS            R2, #0xC47A0000
4EC148:  MOVS            R6, #0
4EC14A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EC14C:  STR             R2, [R0,#0x1C]
4EC14E:  LDR             R0, [R5,#0x10]; this
4EC150:  MOVS            R2, #0; void *
4EC152:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EC154:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EC158:  STR             R6, [R5,#0x10]
4EC15A:  LDR             R0, =(g_ikChainMan_ptr - 0x4EC162)
4EC15C:  MOV             R1, R4; CPed *
4EC15E:  ADD             R0, PC; g_ikChainMan_ptr
4EC160:  LDR             R0, [R0]; g_ikChainMan ; this
4EC162:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4EC166:  CBZ             R0, loc_4EC178
4EC168:  LDR             R0, =(g_ikChainMan_ptr - 0x4EC174)
4EC16A:  MOV             R1, R4; CPed *
4EC16C:  MOVW            R2, #0x2EE; int
4EC170:  ADD             R0, PC; g_ikChainMan_ptr
4EC172:  LDR             R0, [R0]; g_ikChainMan ; this
4EC174:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
4EC178:  MOVS            R0, #1
4EC17A:  POP.W           {R11}
4EC17E:  POP             {R4-R7,PC}
4EC180:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EC18E)
4EC182:  MOV.W           R1, #0xFFFFFFFF
4EC186:  STR             R1, [R5,#0xC]
4EC188:  MOVS            R2, #1
4EC18A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EC18C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EC18E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EC190:  STRB            R2, [R5,#0x1C]
4EC192:  STRD.W          R0, R1, [R5,#0x14]
4EC196:  MOVS            R0, #0
4EC198:  POP.W           {R11}
4EC19C:  POP             {R4-R7,PC}
