; =========================================================
; Game Engine Function: _ZN12CTaskManager14SetNextSubTaskEP5CTask
; Address            : 0x533D3A - 0x533DB2
; =========================================================

533D3A:  PUSH            {R4-R7,LR}
533D3C:  ADD             R7, SP, #0xC
533D3E:  PUSH.W          {R11}
533D42:  MOV             R6, R1
533D44:  MOV             R4, R0
533D46:  CBNZ            R6, loc_533D54
533D48:  B               loc_533D9E
533D4A:  MOV             R0, R6
533D4C:  MOVS            R1, #0
533D4E:  BLX             R2
533D50:  LDR             R6, [R6,#4]
533D52:  CBZ             R6, loc_533D9E
533D54:  LDR             R0, [R6]
533D56:  LDR             R1, [R4,#0x2C]
533D58:  LDR             R2, [R0,#0x28]
533D5A:  MOV             R0, R6
533D5C:  BLX             R2
533D5E:  MOV             R5, R0
533D60:  LDR             R0, [R6]
533D62:  CMP             R5, #0
533D64:  LDR             R2, [R0,#0x24]
533D66:  BEQ             loc_533D4A
533D68:  MOV             R0, R6
533D6A:  MOV             R1, R5
533D6C:  BLX             R2
533D6E:  LDR             R0, [R5]
533D70:  LDR             R1, [R0,#0x10]
533D72:  MOV             R0, R5
533D74:  BLX             R1
533D76:  CBNZ            R0, loc_533D9E
533D78:  LDR             R0, [R5]
533D7A:  LDR             R1, [R4,#0x2C]
533D7C:  LDR             R2, [R0,#0x2C]
533D7E:  MOV             R0, R5
533D80:  BLX             R2
533D82:  MOV             R6, R0
533D84:  CBZ             R6, loc_533DA4
533D86:  LDR             R0, [R5]
533D88:  MOV             R1, R6
533D8A:  LDR             R2, [R0,#0x24]
533D8C:  MOV             R0, R5
533D8E:  BLX             R2
533D90:  LDR             R0, [R6]
533D92:  LDR             R1, [R0,#0x10]
533D94:  MOV             R0, R6
533D96:  BLX             R1
533D98:  CMP             R0, #0
533D9A:  MOV             R5, R6
533D9C:  BEQ             loc_533D78
533D9E:  POP.W           {R11}
533DA2:  POP             {R4-R7,PC}
533DA4:  LDR             R1, [R5,#4]; CTask *
533DA6:  MOV             R0, R4; this
533DA8:  POP.W           {R11}
533DAC:  POP.W           {R4-R7,LR}
533DB0:  B               _ZN12CTaskManager14SetNextSubTaskEP5CTask; CTaskManager::SetNextSubTask(CTask *)
