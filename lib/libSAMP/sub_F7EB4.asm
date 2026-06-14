; =========================================================
; Game Engine Function: sub_F7EB4
; Address            : 0xF7EB4 - 0xF7EEA
; =========================================================

F7EB4:  PUSH            {R7,LR}
F7EB6:  MOV             R7, SP
F7EB8:  SUB             SP, SP, #0x10
F7EBA:  MOV             R2, R1
F7EBC:  LDR             R1, [R0,#8]
F7EBE:  STRB            R2, [R0,#0x10]
F7EC0:  LDR             R0, =(unk_92D96 - 0xF7EC6)
F7EC2:  ADD             R0, PC; unk_92D96
F7EC4:  CBZ             R2, loc_F7ED4
F7EC6:  MOVS            R2, #1
F7EC8:  MOVS            R3, #1
F7ECA:  STRD.W          R2, R2, [SP,#0x18+var_18]
F7ECE:  STR             R2, [SP,#0x18+var_10]
F7ED0:  MOVS            R2, #1
F7ED2:  B               loc_F7EE2
F7ED4:  MOVS            R2, #0
F7ED6:  MOVS            R3, #1
F7ED8:  STRD.W          R2, R3, [SP,#0x18+var_18]
F7EDC:  MOVS            R3, #0
F7EDE:  STR             R2, [SP,#0x18+var_10]
F7EE0:  MOVS            R2, #0
F7EE2:  BL              sub_107188
F7EE6:  ADD             SP, SP, #0x10
F7EE8:  POP             {R7,PC}
