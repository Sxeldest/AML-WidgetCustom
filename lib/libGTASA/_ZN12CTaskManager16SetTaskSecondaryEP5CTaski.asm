; =========================================================
; Game Engine Function: _ZN12CTaskManager16SetTaskSecondaryEP5CTaski
; Address            : 0x533C3A - 0x533CD6
; =========================================================

533C3A:  PUSH            {R4-R7,LR}
533C3C:  ADD             R7, SP, #0xC
533C3E:  PUSH.W          {R8}
533C42:  MOV             R4, R0
533C44:  ADD.W           R8, R4, R2,LSL#2
533C48:  MOV             R5, R1
533C4A:  LDR.W           R0, [R8,#0x14]!
533C4E:  CMP             R0, R5
533C50:  BEQ             loc_533CD0
533C52:  CMP             R0, #0
533C54:  ITTT NE
533C56:  LDRNE           R1, [R0]
533C58:  LDRNE           R1, [R1,#4]
533C5A:  BLXNE           R1
533C5C:  CMP             R5, #0
533C5E:  STR.W           R5, [R8]
533C62:  BEQ             loc_533CD0
533C64:  LDR             R0, [R5]
533C66:  LDR             R1, [R0,#0x10]
533C68:  MOV             R0, R5
533C6A:  BLX             R1
533C6C:  CBNZ            R0, loc_533C9E
533C6E:  LDR             R0, [R5]
533C70:  LDR             R1, [R4,#0x2C]
533C72:  LDR             R2, [R0,#0x2C]
533C74:  MOV             R0, R5
533C76:  BLX             R2
533C78:  MOV             R6, R0
533C7A:  CBZ             R6, loc_533C96
533C7C:  LDR             R0, [R5]
533C7E:  MOV             R1, R6
533C80:  LDR             R2, [R0,#0x24]
533C82:  MOV             R0, R5
533C84:  BLX             R2
533C86:  LDR             R0, [R6]
533C88:  LDR             R1, [R0,#0x10]
533C8A:  MOV             R0, R6
533C8C:  BLX             R1
533C8E:  CMP             R0, #1
533C90:  MOV             R5, R6
533C92:  BNE             loc_533C6E
533C94:  B               loc_533C9E
533C96:  LDR             R1, [R5,#4]; CTask *
533C98:  MOV             R0, R4; this
533C9A:  BLX             j__ZN12CTaskManager14SetNextSubTaskEP5CTask; CTaskManager::SetNextSubTask(CTask *)
533C9E:  LDR.W           R0, [R8]
533CA2:  CBZ             R0, loc_533CD0
533CA4:  MOV             R4, R0
533CA6:  LDR             R0, [R4]
533CA8:  LDR             R1, [R0,#0xC]
533CAA:  MOV             R0, R4
533CAC:  BLX             R1
533CAE:  CMP             R0, #0
533CB0:  BNE             loc_533CA4
533CB2:  LDR             R0, [R4]
533CB4:  LDR             R1, [R0,#0x10]
533CB6:  MOV             R0, R4
533CB8:  BLX             R1
533CBA:  CBNZ            R0, loc_533CD0
533CBC:  LDR.W           R0, [R8]
533CC0:  CMP             R0, #0
533CC2:  ITTT NE
533CC4:  LDRNE           R1, [R0]
533CC6:  LDRNE           R1, [R1,#4]
533CC8:  BLXNE           R1
533CCA:  MOVS            R0, #0
533CCC:  STR.W           R0, [R8]
533CD0:  POP.W           {R8}
533CD4:  POP             {R4-R7,PC}
