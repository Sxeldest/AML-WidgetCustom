; =========================================================
; Game Engine Function: _ZN10CGameLogic4SaveEv
; Address            : 0x48CD30 - 0x48CE0C
; =========================================================

48CD30:  PUSH            {R4-R7,LR}
48CD32:  ADD             R7, SP, #0xC
48CD34:  PUSH.W          {R8,R9,R11}
48CD38:  MOVS            R0, #4; byte_count
48CD3A:  BLX             malloc
48CD3E:  MOV             R4, R0
48CD40:  LDR             R0, =(_ZN10CGameLogic24NumAfterDeathStartPointsE_ptr - 0x48CD48)
48CD42:  MOVS            R1, #byte_4; void *
48CD44:  ADD             R0, PC; _ZN10CGameLogic24NumAfterDeathStartPointsE_ptr
48CD46:  LDR             R5, [R0]; CGameLogic::NumAfterDeathStartPoints ...
48CD48:  LDR             R0, [R5]; CGameLogic::NumAfterDeathStartPoints
48CD4A:  STR             R0, [R4]
48CD4C:  MOV             R0, R4; this
48CD4E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CD52:  MOV             R0, R4; p
48CD54:  BLX             free
48CD58:  LDR             R0, =(_ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr - 0x48CD60)
48CD5A:  MOVS            R1, #(stderr+1); void *
48CD5C:  ADD             R0, PC; _ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr
48CD5E:  LDR             R0, [R0]; this
48CD60:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CD64:  LDR             R0, =(_ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr - 0x48CD6C)
48CD66:  MOVS            R1, #(stderr+1); void *
48CD68:  ADD             R0, PC; _ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr
48CD6A:  LDR             R0, [R0]; this
48CD6C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CD70:  LDR             R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x48CD78)
48CD72:  MOVS            R1, #(stderr+1); void *
48CD74:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
48CD76:  LDR             R0, [R0]; this
48CD78:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CD7C:  MOVS            R0, #4; byte_count
48CD7E:  BLX             malloc
48CD82:  MOV             R4, R0
48CD84:  LDR             R0, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x48CD8C)
48CD86:  MOVS            R1, #byte_4; void *
48CD88:  ADD             R0, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
48CD8A:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent ...
48CD8C:  LDR             R0, [R0]; CGameLogic::TimeOfLastEvent
48CD8E:  STR             R0, [R4]
48CD90:  MOV             R0, R4; this
48CD92:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CD96:  MOV             R0, R4; p
48CD98:  BLX             free
48CD9C:  LDR             R0, [R5]; CGameLogic::NumAfterDeathStartPoints
48CD9E:  CMP             R0, #1
48CDA0:  BLT             loc_48CE04
48CDA2:  LDR             R0, =(_ZN10CGameLogic21AfterDeathStartPointsE_ptr - 0x48CDAA)
48CDA4:  MOVS            R6, #0
48CDA6:  ADD             R0, PC; _ZN10CGameLogic21AfterDeathStartPointsE_ptr
48CDA8:  LDR             R5, [R0]; CGameLogic::AfterDeathStartPoints ...
48CDAA:  LDR             R0, =(_ZN10CGameLogic32AfterDeathStartPointOrientationsE_ptr - 0x48CDB0)
48CDAC:  ADD             R0, PC; _ZN10CGameLogic32AfterDeathStartPointOrientationsE_ptr
48CDAE:  LDR.W           R8, [R0]; CGameLogic::AfterDeathStartPointOrientations ...
48CDB2:  LDR             R0, =(_ZN10CGameLogic24NumAfterDeathStartPointsE_ptr - 0x48CDB8)
48CDB4:  ADD             R0, PC; _ZN10CGameLogic24NumAfterDeathStartPointsE_ptr
48CDB6:  LDR.W           R9, [R0]; CGameLogic::NumAfterDeathStartPoints ...
48CDBA:  MOVS            R0, #0xC; byte_count
48CDBC:  BLX             malloc
48CDC0:  MOV             R4, R0
48CDC2:  LDR             R0, [R5,#8]
48CDC4:  VLD1.8          {D16}, [R5]
48CDC8:  MOVS            R1, #(byte_9+3); void *
48CDCA:  STR             R0, [R4,#8]
48CDCC:  MOV             R0, R4; this
48CDCE:  VST1.8          {D16}, [R4]
48CDD2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CDD6:  MOV             R0, R4; p
48CDD8:  BLX             free
48CDDC:  MOVS            R0, #4; byte_count
48CDDE:  BLX             malloc
48CDE2:  MOV             R4, R0
48CDE4:  LDR.W           R0, [R8,R6,LSL#2]
48CDE8:  STR             R0, [R4]
48CDEA:  MOV             R0, R4; this
48CDEC:  MOVS            R1, #byte_4; void *
48CDEE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CDF2:  MOV             R0, R4; p
48CDF4:  BLX             free
48CDF8:  LDR.W           R0, [R9]; CGameLogic::NumAfterDeathStartPoints
48CDFC:  ADDS            R6, #1
48CDFE:  ADDS            R5, #0xC
48CE00:  CMP             R6, R0
48CE02:  BLT             loc_48CDBA
48CE04:  MOVS            R0, #1
48CE06:  POP.W           {R8,R9,R11}
48CE0A:  POP             {R4-R7,PC}
