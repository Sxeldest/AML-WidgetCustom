; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x53A180 - 0x53A216
; =========================================================

53A180:  PUSH            {R4-R7,LR}
53A182:  ADD             R7, SP, #0xC
53A184:  PUSH.W          {R11}
53A188:  MOV             R6, R3
53A18A:  MOV             R5, R1
53A18C:  MOV             R4, R0
53A18E:  CMP             R2, #2
53A190:  BNE             loc_53A1D2
53A192:  LDR.W           R1, [R5,#0x4E0]; int
53A196:  MOVS            R3, #0
53A198:  LDR             R0, [R5,#0x18]; int
53A19A:  MOVT            R3, #0x447A
53A19E:  MOVS            R2, #3; unsigned int
53A1A0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
53A1A4:  MOV             R0, R5
53A1A6:  MOVS            R1, #1
53A1A8:  MOVS            R6, #1
53A1AA:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
53A1AE:  STR.W           R6, [R5,#0x53C]
53A1B2:  LDR             R1, [R4,#0xC]
53A1B4:  CMP             R1, #0xBF
53A1B6:  BEQ             loc_53A1CA
53A1B8:  LDR             R0, [R5,#0x18]
53A1BA:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53A1BE:  CMP             R0, #0
53A1C0:  ITTT NE
53A1C2:  MOVNE           R1, #0
53A1C4:  MOVTNE          R1, #0xC47A
53A1C8:  STRNE           R1, [R0,#0x1C]
53A1CA:  MOV             R0, R5; this
53A1CC:  BLX             j__ZN4CPed18RestoreHeadingRateEv; CPed::RestoreHeadingRate(void)
53A1D0:  B               loc_53A1E0
53A1D2:  CBZ             R6, loc_53A20E
53A1D4:  LDR             R0, [R6]
53A1D6:  LDR             R1, [R0,#0xC]
53A1D8:  MOV             R0, R6
53A1DA:  BLX             R1
53A1DC:  CMP             R0, #0x46 ; 'F'
53A1DE:  BLE             loc_53A1F4
53A1E0:  LDR             R0, [R4,#0x60]; this
53A1E2:  CBZ             R0, loc_53A1EC
53A1E4:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
53A1E8:  MOVS            R0, #0
53A1EA:  STR             R0, [R4,#0x60]
53A1EC:  MOVS            R0, #1
53A1EE:  POP.W           {R11}
53A1F2:  POP             {R4-R7,PC}
53A1F4:  LDR             R0, [R6]
53A1F6:  LDR             R1, [R0,#8]
53A1F8:  MOV             R0, R6
53A1FA:  BLX             R1
53A1FC:  CMP             R0, #9
53A1FE:  BNE             loc_53A20E
53A200:  LDRB.W          R0, [R6,#0x3C]
53A204:  CMP             R0, #0
53A206:  ITT NE
53A208:  LDRBNE          R0, [R6,#9]
53A20A:  CMPNE           R0, #0
53A20C:  BNE             loc_53A1E0
53A20E:  MOVS            R0, #0
53A210:  POP.W           {R11}
53A214:  POP             {R4-R7,PC}
