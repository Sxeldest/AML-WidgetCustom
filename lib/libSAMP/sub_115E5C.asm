; =========================================================
; Game Engine Function: sub_115E5C
; Address            : 0x115E5C - 0x115E7E
; =========================================================

115E5C:  PUSH            {R4,R6,R7,LR}
115E5E:  ADD             R7, SP, #8
115E60:  LDR             R4, =(unk_263514 - 0x115E68)
115E62:  MOVS            R1, #0
115E64:  ADD             R4, PC; unk_263514
115E66:  MOV             R0, R4
115E68:  BL              sub_115DA4
115E6C:  LDR             R0, =(sub_115DCC+1 - 0x115E76)
115E6E:  MOV             R1, R4
115E70:  LDR             R2, =(off_22A540 - 0x115E78)
115E72:  ADD             R0, PC; sub_115DCC
115E74:  ADD             R2, PC; off_22A540
115E76:  POP.W           {R4,R6,R7,LR}
115E7A:  B.W             sub_224250
