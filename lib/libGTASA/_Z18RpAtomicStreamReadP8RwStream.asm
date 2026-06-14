; =========================================================
; Game Engine Function: _Z18RpAtomicStreamReadP8RwStream
; Address            : 0x214EDC - 0x214EF4
; =========================================================

214EDC:  PUSH            {R7,LR}
214EDE:  MOV             R7, SP
214EE0:  SUB             SP, SP, #0x10
214EE2:  MOVS            R1, #0
214EE4:  MOV             R2, SP
214EE6:  STR             R1, [SP,#0x18+var_C]
214EE8:  STR             R1, [SP,#0x18+var_14]
214EEA:  ADD             R1, SP, #0x18+var_10
214EEC:  BL              sub_214EF4
214EF0:  ADD             SP, SP, #0x10
214EF2:  POP             {R7,PC}
