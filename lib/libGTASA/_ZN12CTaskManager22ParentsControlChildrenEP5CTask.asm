; =========================================================
; Game Engine Function: _ZN12CTaskManager22ParentsControlChildrenEP5CTask
; Address            : 0x533F58 - 0x534000
; =========================================================

533F58:  PUSH            {R4-R7,LR}
533F5A:  ADD             R7, SP, #0xC
533F5C:  PUSH.W          {R8}
533F60:  MOV             R5, R1
533F62:  MOV             R8, R0
533F64:  CBNZ            R5, loc_533F74
533F66:  B               loc_533FEC
533F68:  LDR             R0, [R5]
533F6A:  LDR             R1, [R0,#0xC]
533F6C:  MOV             R0, R5
533F6E:  BLX             R1
533F70:  MOV             R5, R0
533F72:  CBZ             R5, loc_533FEC
533F74:  LDR             R0, [R5]
533F76:  LDR             R1, [R0,#0x10]
533F78:  MOV             R0, R5
533F7A:  BLX             R1
533F7C:  CBNZ            R0, loc_533FEC
533F7E:  LDR             R0, [R5]
533F80:  LDR             R1, [R0,#0xC]
533F82:  MOV             R0, R5
533F84:  BLX             R1
533F86:  MOV             R4, R0
533F88:  LDR             R0, [R5]
533F8A:  LDR.W           R1, [R8,#0x2C]
533F8E:  LDR             R2, [R0,#0x30]
533F90:  MOV             R0, R5
533F92:  BLX             R2
533F94:  MOV             R6, R0
533F96:  CMP             R4, R6
533F98:  BEQ             loc_533F68
533F9A:  LDR             R0, [R4]
533F9C:  MOVS            R2, #1
533F9E:  LDR.W           R1, [R8,#0x2C]
533FA2:  MOVS            R3, #0
533FA4:  LDR.W           R12, [R0,#0x1C]
533FA8:  MOV             R0, R4
533FAA:  BLX             R12
533FAC:  LDR             R0, [R5]
533FAE:  MOV             R1, R6
533FB0:  LDR             R2, [R0,#0x24]
533FB2:  MOV             R0, R5
533FB4:  BLX             R2
533FB6:  CBZ             R6, loc_533FEC
533FB8:  LDR             R0, [R6]
533FBA:  LDR             R1, [R0,#0x10]
533FBC:  MOV             R0, R6
533FBE:  BLX             R1
533FC0:  CBNZ            R0, loc_533FEC
533FC2:  LDR             R0, [R6]
533FC4:  LDR.W           R1, [R8,#0x2C]
533FC8:  LDR             R2, [R0,#0x2C]
533FCA:  MOV             R0, R6
533FCC:  BLX             R2
533FCE:  MOV             R4, R0
533FD0:  CMP             R4, #0
533FD2:  BEQ             loc_533FF2
533FD4:  LDR             R0, [R6]
533FD6:  MOV             R1, R4
533FD8:  LDR             R2, [R0,#0x24]
533FDA:  MOV             R0, R6
533FDC:  BLX             R2
533FDE:  LDR             R0, [R4]
533FE0:  LDR             R1, [R0,#0x10]
533FE2:  MOV             R0, R4
533FE4:  BLX             R1
533FE6:  CMP             R0, #0
533FE8:  MOV             R6, R4
533FEA:  BEQ             loc_533FC2
533FEC:  POP.W           {R8}
533FF0:  POP             {R4-R7,PC}
533FF2:  LDR             R1, [R6,#4]; CTask *
533FF4:  MOV             R0, R8; this
533FF6:  POP.W           {R8}
533FFA:  POP.W           {R4-R7,LR}
533FFE:  B               _ZN12CTaskManager14SetNextSubTaskEP5CTask; CTaskManager::SetNextSubTask(CTask *)
