; =========================================================
; Game Engine Function: _ZN20CTaskSimpleArrestPed13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x53C9AC - 0x53CA1E
; =========================================================

53C9AC:  PUSH            {R4,R5,R7,LR}
53C9AE:  ADD             R7, SP, #8
53C9B0:  MOV             R5, R3
53C9B2:  MOV             R4, R0
53C9B4:  CMP             R2, #2
53C9B6:  BNE             loc_53C9DA
53C9B8:  LDR             R0, [R4,#0x10]
53C9BA:  CBZ             R0, loc_53CA16
53C9BC:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x53C9CA)
53C9BE:  MOVS            R2, #0xC47A0000
53C9C4:  MOVS            R5, #0
53C9C6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
53C9C8:  STR             R2, [R0,#0x1C]
53C9CA:  LDR             R0, [R4,#0x10]; this
53C9CC:  MOVS            R2, #0; void *
53C9CE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
53C9D0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
53C9D4:  MOVS            R0, #1
53C9D6:  STR             R5, [R4,#0x10]
53C9D8:  POP             {R4,R5,R7,PC}
53C9DA:  CBZ             R5, loc_53CA1A
53C9DC:  LDR             R0, [R5]
53C9DE:  LDR             R1, [R0,#8]
53C9E0:  MOV             R0, R5
53C9E2:  BLX             R1
53C9E4:  CMP             R0, #9
53C9E6:  BNE             loc_53CA1A
53C9E8:  LDRB.W          R0, [R5,#0x3C]
53C9EC:  CMP             R0, #0
53C9EE:  ITT NE
53C9F0:  LDRBNE          R0, [R5,#9]
53C9F2:  CMPNE           R0, #0
53C9F4:  BEQ             loc_53CA16
53C9F6:  LDR             R0, [R4,#8]; CPed *
53C9F8:  LDRB.W          R1, [R0,#0x485]
53C9FC:  LSLS            R1, R1, #0x1F
53C9FE:  ITE EQ
53CA00:  MOVEQ           R1, #0
53CA02:  MOVNE           R1, #0x32 ; '2'
53CA04:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
53CA08:  LDR             R0, [R4,#8]
53CA0A:  LDR.W           R1, [R0,#0x48C]
53CA0E:  BIC.W           R1, R1, #0x40 ; '@'
53CA12:  STR.W           R1, [R0,#0x48C]
53CA16:  MOVS            R0, #1
53CA18:  POP             {R4,R5,R7,PC}
53CA1A:  MOVS            R0, #0
53CA1C:  POP             {R4,R5,R7,PC}
