; =========================================================
; Game Engine Function: sub_103EAC
; Address            : 0x103EAC - 0x103EEC
; =========================================================

103EAC:  PUSH            {R4,R5,R7,LR}
103EAE:  ADD             R7, SP, #8
103EB0:  MOV             R5, R0
103EB2:  LDRB            R0, [R0,#0xC]
103EB4:  MOV             R4, R1
103EB6:  CBZ             R0, loc_103EC4
103EB8:  LDR             R1, =(asc_4E514 - 0x103EC0); "::" ...
103EBA:  MOV             R0, R4
103EBC:  ADD             R1, PC; "::"
103EBE:  ADDS            R2, R1, #2
103EC0:  BL              sub_FFB40
103EC4:  LDR             R1, =(aDelete - 0x103ECC); "delete" ...
103EC6:  MOV             R0, R4
103EC8:  ADD             R1, PC; "delete"
103ECA:  ADDS            R2, R1, #6
103ECC:  BL              sub_FFB40
103ED0:  LDRB            R0, [R5,#0xD]
103ED2:  CBZ             R0, loc_103EE0
103ED4:  LDR             R1, =(asc_4D4A2 - 0x103EDC); "[] " ...
103ED6:  MOV             R0, R4
103ED8:  ADD             R1, PC; "[] "
103EDA:  ADDS            R2, R1, #3
103EDC:  BL              sub_FFB40
103EE0:  LDR             R0, [R5,#8]
103EE2:  MOV             R1, R4
103EE4:  POP.W           {R4,R5,R7,LR}
103EE8:  B.W             sub_FE074
