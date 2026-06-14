; =========================================================
; Game Engine Function: _ZN10CGameLogic4LoadEv
; Address            : 0x48CE2C - 0x48CEB4
; =========================================================

48CE2C:  PUSH            {R4-R7,LR}
48CE2E:  ADD             R7, SP, #0xC
48CE30:  PUSH.W          {R8}
48CE34:  LDR             R0, =(_ZN10CGameLogic24NumAfterDeathStartPointsE_ptr - 0x48CE3C)
48CE36:  MOVS            R1, #byte_4; void *
48CE38:  ADD             R0, PC; _ZN10CGameLogic24NumAfterDeathStartPointsE_ptr
48CE3A:  LDR             R4, [R0]; CGameLogic::NumAfterDeathStartPoints ...
48CE3C:  MOV             R0, R4; this
48CE3E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CE42:  LDR             R0, =(_ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr - 0x48CE4A)
48CE44:  MOVS            R1, #(stderr+1); void *
48CE46:  ADD             R0, PC; _ZN10CGameLogic23bPenaltyForDeathAppliesE_ptr
48CE48:  LDR             R0, [R0]; this
48CE4A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CE4E:  LDR             R0, =(_ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr - 0x48CE56)
48CE50:  MOVS            R1, #(stderr+1); void *
48CE52:  ADD             R0, PC; _ZN10CGameLogic24bPenaltyForArrestAppliesE_ptr
48CE54:  LDR             R0, [R0]; this
48CE56:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CE5A:  LDR             R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x48CE62)
48CE5C:  MOVS            R1, #(stderr+1); void *
48CE5E:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
48CE60:  LDR             R0, [R0]; this
48CE62:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CE66:  LDR             R0, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x48CE6E)
48CE68:  MOVS            R1, #byte_4; void *
48CE6A:  ADD             R0, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
48CE6C:  LDR             R0, [R0]; this
48CE6E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CE72:  LDR             R0, [R4]; CGameLogic::NumAfterDeathStartPoints
48CE74:  CMP             R0, #1
48CE76:  BLT             loc_48CEAC
48CE78:  LDR             R0, =(_ZN10CGameLogic21AfterDeathStartPointsE_ptr - 0x48CE82)
48CE7A:  MOVS            R6, #0
48CE7C:  LDR             R1, =(_ZN10CGameLogic32AfterDeathStartPointOrientationsE_ptr - 0x48CE84)
48CE7E:  ADD             R0, PC; _ZN10CGameLogic21AfterDeathStartPointsE_ptr
48CE80:  ADD             R1, PC; _ZN10CGameLogic32AfterDeathStartPointOrientationsE_ptr
48CE82:  LDR             R4, [R0]; CGameLogic::AfterDeathStartPoints ...
48CE84:  LDR             R0, =(_ZN10CGameLogic24NumAfterDeathStartPointsE_ptr - 0x48CE8C)
48CE86:  LDR             R5, [R1]; CGameLogic::AfterDeathStartPointOrientations ...
48CE88:  ADD             R0, PC; _ZN10CGameLogic24NumAfterDeathStartPointsE_ptr
48CE8A:  LDR.W           R8, [R0]; CGameLogic::NumAfterDeathStartPoints ...
48CE8E:  MOV             R0, R4; this
48CE90:  MOVS            R1, #(byte_9+3); void *
48CE92:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CE96:  MOV             R0, R5; this
48CE98:  MOVS            R1, #byte_4; void *
48CE9A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48CE9E:  LDR.W           R0, [R8]; CGameLogic::NumAfterDeathStartPoints
48CEA2:  ADDS            R6, #1
48CEA4:  ADDS            R5, #4
48CEA6:  ADDS            R4, #0xC
48CEA8:  CMP             R6, R0
48CEAA:  BLT             loc_48CE8E
48CEAC:  MOVS            R0, #1
48CEAE:  POP.W           {R8}
48CEB2:  POP             {R4-R7,PC}
