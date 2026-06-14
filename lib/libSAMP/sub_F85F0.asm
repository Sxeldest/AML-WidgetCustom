; =========================================================
; Game Engine Function: sub_F85F0
; Address            : 0xF85F0 - 0xF8620
; =========================================================

F85F0:  PUSH            {R4,R5,R7,LR}
F85F2:  ADD             R7, SP, #8
F85F4:  MOV             R4, R0
F85F6:  LDR             R0, =(unk_B2BE2 - 0xF8600)
F85F8:  MOVS            R1, #0
F85FA:  MOVS            R5, #0
F85FC:  ADD             R0, PC; unk_B2BE2
F85FE:  BL              sub_107188
F8602:  LDR             R0, =(unk_B2BA6 - 0xF8608)
F8604:  ADD             R0, PC; unk_B2BA6
F8606:  BL              sub_107188
F860A:  LDR             R0, =(unk_B2BBA - 0xF8612)
F860C:  STR             R5, [R4,#4]
F860E:  ADD             R0, PC; unk_B2BBA
F8610:  BL              sub_107188
F8614:  LDR             R0, =(unk_B2BCE - 0xF861A)
F8616:  ADD             R0, PC; unk_B2BCE
F8618:  POP.W           {R4,R5,R7,LR}
F861C:  B.W             sub_107188
