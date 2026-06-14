; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeans18CreateFirstSubTaskEP4CPed
; Address            : 0x524B0C - 0x524B60
; =========================================================

524B0C:  PUSH            {R4,R5,R7,LR}
524B0E:  ADD             R7, SP, #8
524B10:  MOV             R4, R1
524B12:  MOV             R5, R0
524B14:  LDR             R1, [R5,#0x20]
524B16:  LDR.W           R0, [R4,#0x590]; this
524B1A:  CBZ             R1, loc_524B30
524B1C:  CBZ             R0, loc_524B52
524B1E:  LDRB.W          R0, [R4,#0x485]
524B22:  MOVW            R1, #0x2C6
524B26:  LSLS            R0, R0, #0x1F
524B28:  IT EQ
524B2A:  MOVWEQ          R1, #0x2BD
524B2E:  B               loc_524B56
524B30:  CMP             R0, #0
524B32:  ITT NE
524B34:  LDRBNE.W        R1, [R4,#0x485]
524B38:  MOVSNE.W        R1, R1,LSL#31
524B3C:  BEQ             loc_524B4C
524B3E:  MOV             R1, R4; CPed *
524B40:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
524B44:  CBZ             R0, loc_524B4C
524B46:  MOVW            R1, #0x2C6
524B4A:  B               loc_524B56
524B4C:  MOVW            R1, #0x38A
524B50:  B               loc_524B56
524B52:  MOVW            R1, #0x2BD; int
524B56:  MOV             R0, R5; this
524B58:  MOV             R2, R4; CPed *
524B5A:  POP.W           {R4,R5,R7,LR}
524B5E:  B               _ZNK29CTaskComplexGoToPointAnyMeans13CreateSubTaskEiP4CPed; CTaskComplexGoToPointAnyMeans::CreateSubTask(int,CPed *)
