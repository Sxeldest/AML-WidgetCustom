; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDie13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EADB8 - 0x4EAE42
; =========================================================

4EADB8:  PUSH            {R4-R7,LR}
4EADBA:  ADD             R7, SP, #0xC
4EADBC:  PUSH.W          {R8}
4EADC0:  MOV             R4, R1
4EADC2:  MOV             R8, #0xFFFFFFDF
4EADC6:  MOV.W           R6, #0xFFFFFFFF
4EADCA:  CMP             R2, #2
4EADCC:  BNE             loc_4EADFC
4EADCE:  LDR             R0, [R0,#0x24]
4EADD0:  MOVS            R5, #1
4EADD2:  CMP             R0, #0
4EADD4:  ITTT NE
4EADD6:  MOVNE           R1, #0
4EADD8:  MOVTNE          R1, #0xC47A
4EADDC:  STRNE           R1, [R0,#0x1C]
4EADDE:  MOV             R0, R4; CPed *
4EADE0:  MOVS            R1, #1
4EADE2:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4EADE6:  MOV             R0, R4
4EADE8:  MOVS            R1, #1
4EADEA:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4EADEE:  LDR             R0, [R4]
4EADF0:  LDR             R1, [R0,#0x60]
4EADF2:  MOV             R0, R4
4EADF4:  BLX             R1
4EADF6:  LDR.W           R0, [R4,#0x484]
4EADFA:  B               loc_4EAE10
4EADFC:  CBZ             R3, loc_4EAE38
4EADFE:  LDR             R0, [R3]
4EAE00:  LDR             R1, [R0,#8]
4EAE02:  MOV             R0, R3
4EAE04:  BLX             R1
4EAE06:  CMP             R0, #0xA
4EAE08:  BNE             loc_4EAE38
4EAE0A:  LDR.W           R0, [R4,#0x484]
4EAE0E:  MOVS            R5, #1
4EAE10:  LDR.W           R1, [R4,#0x488]
4EAE14:  LDR.W           R2, [R4,#0x48C]
4EAE18:  ANDS            R0, R6
4EAE1A:  LDR.W           R3, [R4,#0x490]
4EAE1E:  ANDS            R1, R6
4EAE20:  STR.W           R0, [R4,#0x484]
4EAE24:  ANDS            R2, R6
4EAE26:  STR.W           R1, [R4,#0x488]
4EAE2A:  AND.W           R3, R3, R8
4EAE2E:  STR.W           R2, [R4,#0x48C]
4EAE32:  STR.W           R3, [R4,#0x490]
4EAE36:  B               loc_4EAE3A
4EAE38:  MOVS            R5, #0
4EAE3A:  MOV             R0, R5
4EAE3C:  POP.W           {R8}
4EAE40:  POP             {R4-R7,PC}
