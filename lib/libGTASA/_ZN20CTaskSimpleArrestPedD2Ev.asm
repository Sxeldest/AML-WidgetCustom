; =========================================================
; Game Engine Function: _ZN20CTaskSimpleArrestPedD2Ev
; Address            : 0x53C930 - 0x53C994
; =========================================================

53C930:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleArrestPed::~CTaskSimpleArrestPed()'
53C932:  ADD             R7, SP, #8
53C934:  MOV             R4, R0
53C936:  LDR             R0, =(_ZTV20CTaskSimpleArrestPed_ptr - 0x53C93C)
53C938:  ADD             R0, PC; _ZTV20CTaskSimpleArrestPed_ptr
53C93A:  LDR             R1, [R0]; `vtable for'CTaskSimpleArrestPed ...
53C93C:  LDR             R0, [R4,#0x10]; this
53C93E:  ADDS            R1, #8
53C940:  STR             R1, [R4]
53C942:  CBZ             R0, loc_53C950
53C944:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x53C94C)
53C946:  MOVS            R2, #0; void *
53C948:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
53C94A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
53C94C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
53C950:  MOV             R5, R4
53C952:  LDR.W           R0, [R5,#8]!; this
53C956:  CMP             R0, #0
53C958:  ITT NE
53C95A:  MOVNE           R1, R5; CEntity **
53C95C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53C960:  LDR             R0, [R4,#0x10]
53C962:  CMP             R0, #0
53C964:  ITT NE
53C966:  LDRNE           R0, [R5]; this
53C968:  CMPNE           R0, #0
53C96A:  BEQ             loc_53C98A
53C96C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53C970:  CBNZ            R0, loc_53C98A
53C972:  LDR             R0, [R5]; CPed *
53C974:  LDRB.W          R1, [R0,#0x485]
53C978:  LSLS            R1, R1, #0x1F
53C97A:  BEQ             loc_53C98A
53C97C:  LDR.W           R1, [R0,#0x44C]
53C980:  CMP             R1, #0x3F ; '?'
53C982:  ITT EQ
53C984:  MOVEQ           R1, #0x32 ; '2'
53C986:  BLXEQ           j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
53C98A:  MOV             R0, R4; this
53C98C:  POP.W           {R4,R5,R7,LR}
53C990:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
