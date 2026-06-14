; =========================================================
; Game Engine Function: sub_15DF9A
; Address            : 0x15DF9A - 0x15DFEA
; =========================================================

15DF9A:  PUSH            {R4-R7,LR}
15DF9C:  ADD             R7, SP, #0xC
15DF9E:  PUSH.W          {R11}
15DFA2:  MOV             R4, R0
15DFA4:  LDR             R0, [R0,#8]
15DFA6:  MOVS            R1, #1
15DFA8:  BL              sub_164B08
15DFAC:  MOV             R6, R1
15DFAE:  MOV             R5, R0
15DFB0:  ANDS            R1, R0
15DFB2:  LDR             R0, [R4,#8]
15DFB4:  SUBS.W          R4, R1, #0xFFFFFFFF
15DFB8:  MOV.W           R1, #2
15DFBC:  IT NE
15DFBE:  MOVNE           R4, #1
15DFC0:  BL              sub_164B08
15DFC4:  AND.W           R2, R0, R1
15DFC8:  MOVS            R3, #0
15DFCA:  SUBS.W          R2, R2, #0xFFFFFFFF
15DFCE:  IT NE
15DFD0:  MOVNE           R2, #1
15DFD2:  SUBS            R0, R5, R0
15DFD4:  SBCS.W          R0, R6, R1
15DFD8:  AND.W           R2, R2, R4
15DFDC:  IT CS
15DFDE:  MOVCS           R3, #1
15DFE0:  AND.W           R0, R3, R2
15DFE4:  POP.W           {R11}
15DFE8:  POP             {R4-R7,PC}
