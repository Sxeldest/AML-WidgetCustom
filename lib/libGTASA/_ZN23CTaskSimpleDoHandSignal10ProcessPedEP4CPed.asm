; =========================================================
; Game Engine Function: _ZN23CTaskSimpleDoHandSignal10ProcessPedEP4CPed
; Address            : 0x519DE4 - 0x519E74
; =========================================================

519DE4:  PUSH            {R4-R7,LR}
519DE6:  ADD             R7, SP, #0xC
519DE8:  PUSH.W          {R11}
519DEC:  MOV             R5, R1
519DEE:  MOV             R4, R0
519DF0:  MOV             R0, R5; this
519DF2:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
519DF6:  CMP             R0, #1
519DF8:  BNE             loc_519E2E
519DFA:  LDR.W           R0, [R5,#0x440]
519DFE:  MOVS            R1, #4; int
519E00:  ADDS            R0, #4; this
519E02:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
519E06:  MOV             R6, R0
519E08:  LDRB            R0, [R4,#8]
519E0A:  CBZ             R0, loc_519E1E
519E0C:  CBZ             R6, loc_519E2E
519E0E:  LDR             R0, [R6]
519E10:  LDR             R1, [R0,#0x14]
519E12:  MOV             R0, R6
519E14:  BLX             R1
519E16:  CMP.W           R0, #0x1AA
519E1A:  BNE             loc_519E2E
519E1C:  B               loc_519E6C
519E1E:  CBZ             R6, loc_519E36
519E20:  LDR             R0, [R6]
519E22:  LDR             R1, [R0,#0x14]
519E24:  MOV             R0, R6
519E26:  BLX             R1
519E28:  CMP.W           R0, #0x1AA
519E2C:  BNE             loc_519E5E
519E2E:  MOVS            R0, #1
519E30:  POP.W           {R11}
519E34:  POP             {R4-R7,PC}
519E36:  MOVS            R0, #off_18; this
519E38:  LDR.W           R6, [R5,#0x440]
519E3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519E40:  MOV.W           R1, #0xFFFFFFFF
519E44:  MOV.W           R2, #0x40800000
519E48:  MOV             R5, R0
519E4A:  BLX             j__ZN30CTaskComplexPlayHandSignalAnimC2E11AnimationIdf; CTaskComplexPlayHandSignalAnim::CTaskComplexPlayHandSignalAnim(AnimationId,float)
519E4E:  ADDS            R0, R6, #4; this
519E50:  MOV             R1, R5; CTask *
519E52:  MOVS            R2, #4; int
519E54:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
519E58:  MOVS            R0, #1
519E5A:  STRB            R0, [R4,#8]
519E5C:  B               loc_519E6C
519E5E:  LDR             R0, [R6]
519E60:  MOV             R1, R5
519E62:  MOVS            R2, #1
519E64:  MOVS            R3, #0
519E66:  LDR             R4, [R0,#0x1C]
519E68:  MOV             R0, R6
519E6A:  BLX             R4
519E6C:  MOVS            R0, #0
519E6E:  POP.W           {R11}
519E72:  POP             {R4-R7,PC}
