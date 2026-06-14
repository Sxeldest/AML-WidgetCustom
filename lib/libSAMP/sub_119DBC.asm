; =========================================================
; Game Engine Function: sub_119DBC
; Address            : 0x119DBC - 0x119DD8
; =========================================================

119DBC:  PUSH            {R4,R5,R7,LR}
119DBE:  ADD             R7, SP, #8
119DC0:  MOV             R4, R1
119DC2:  MOV             R5, R0
119DC4:  BL              sub_11B454
119DC8:  LDR             R0, =(unk_263650 - 0x119DD2)
119DCA:  MOV             R1, R5
119DCC:  MOV             R2, R4
119DCE:  ADD             R0, PC; unk_263650
119DD0:  POP.W           {R4,R5,R7,LR}
119DD4:  B.W             sub_11B590
