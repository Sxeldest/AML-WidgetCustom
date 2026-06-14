; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControl13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DE05C - 0x4DE0F6
; =========================================================

4DE05C:  PUSH            {R4-R7,LR}
4DE05E:  ADD             R7, SP, #0xC
4DE060:  PUSH.W          {R11}
4DE064:  MOV             R5, R2
4DE066:  MOV             R6, R3
4DE068:  MOV             R4, R1
4DE06A:  CMP             R5, #1
4DE06C:  BNE             loc_4DE098
4DE06E:  CBZ             R6, loc_4DE098
4DE070:  LDR             R0, [R6]
4DE072:  LDR             R1, [R0,#0xC]
4DE074:  MOV             R0, R6
4DE076:  BLX             R1
4DE078:  CMP             R0, #0x16
4DE07A:  BLT             loc_4DE094
4DE07C:  LDR             R0, [R6]
4DE07E:  LDR             R1, [R0,#8]
4DE080:  MOV             R0, R6
4DE082:  BLX             R1
4DE084:  CMP             R0, #1
4DE086:  BLT             loc_4DE098
4DE088:  LDR             R0, [R6]
4DE08A:  LDR             R1, [R0,#8]
4DE08C:  MOV             R0, R6
4DE08E:  BLX             R1
4DE090:  CMP             R0, #7
4DE092:  BGE             loc_4DE098
4DE094:  MOVS            R5, #0
4DE096:  B               loc_4DE0EE
4DE098:  LDR.W           R0, [R4,#0x440]; this
4DE09C:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4DE0A0:  CBZ             R0, loc_4DE0C4
4DE0A2:  LDR.W           R0, [R4,#0x440]
4DE0A6:  CMP             R5, #1
4DE0A8:  MOV.W           R6, #0xA
4DE0AC:  MOV.W           R1, #0; int
4DE0B0:  ADD.W           R0, R0, #4; this
4DE0B4:  IT EQ
4DE0B6:  MOVEQ           R6, #2
4DE0B8:  MOVS            R5, #0
4DE0BA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DE0BE:  STRB.W          R6, [R0,#0x38]
4DE0C2:  STRB            R5, [R0,#0xB]
4DE0C4:  LDRB.W          R0, [R4,#0x487]
4DE0C8:  LSLS            R0, R0, #0x1D
4DE0CA:  BMI             loc_4DE0D0
4DE0CC:  MOVS            R5, #1
4DE0CE:  B               loc_4DE0EE
4DE0D0:  LDR.W           R0, [R4,#0x440]; this
4DE0D4:  MOVS            R1, #1; bool
4DE0D6:  MOVS            R5, #1
4DE0D8:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4DE0DC:  CBZ             R0, loc_4DE0EE
4DE0DE:  LDR.W           R0, [R4,#0x440]; this
4DE0E2:  MOVS            R1, #1; bool
4DE0E4:  MOVS            R5, #1
4DE0E6:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4DE0EA:  BLX             j__ZN15CTaskSimpleDuck13ForceStopMoveEv; CTaskSimpleDuck::ForceStopMove(void)
4DE0EE:  MOV             R0, R5
4DE0F0:  POP.W           {R11}
4DE0F4:  POP             {R4-R7,PC}
