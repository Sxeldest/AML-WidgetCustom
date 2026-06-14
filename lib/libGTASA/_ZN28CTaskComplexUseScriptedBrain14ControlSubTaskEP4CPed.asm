; =========================================================
; Game Engine Function: _ZN28CTaskComplexUseScriptedBrain14ControlSubTaskEP4CPed
; Address            : 0x4F1C78 - 0x4F1CD4
; =========================================================

4F1C78:  PUSH            {R4,R5,R7,LR}
4F1C7A:  ADD             R7, SP, #8
4F1C7C:  MOV             R4, R0
4F1C7E:  LDR             R0, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4F1C88)
4F1C80:  MOV.W           R2, #0xFFFFFFFF
4F1C84:  ADD             R0, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4F1C86:  LDR             R0, [R0]; CScriptedBrainTaskStore::ms_entries ...
4F1C88:  ADDS            R0, #0xC
4F1C8A:  LDR.W           R3, [R0,#-0xC]; CScriptedBrainTaskStore::ms_entries
4F1C8E:  CMP             R3, R1
4F1C90:  BEQ             loc_4F1C9E
4F1C92:  ADDS            R2, #1
4F1C94:  ADDS            R0, #0x10
4F1C96:  CMP             R2, #0x2F ; '/'
4F1C98:  BLT             loc_4F1C8A
4F1C9A:  MOVS            R5, #0
4F1C9C:  B               loc_4F1CA0
4F1C9E:  LDR             R5, [R0]
4F1CA0:  LDR             R2, [R4,#0x18]
4F1CA2:  LDR             R0, [R4,#8]
4F1CA4:  CMP             R5, R2
4F1CA6:  IT EQ
4F1CA8:  POPEQ           {R4,R5,R7,PC}
4F1CAA:  LDR             R2, [R0]
4F1CAC:  MOVS            R3, #0
4F1CAE:  LDR.W           R12, [R2,#0x1C]
4F1CB2:  MOVS            R2, #1
4F1CB4:  BLX             R12
4F1CB6:  CMP             R0, #1
4F1CB8:  BNE             loc_4F1CCC
4F1CBA:  CMP             R5, #0
4F1CBC:  STR             R5, [R4,#0x18]
4F1CBE:  BEQ             loc_4F1CD0
4F1CC0:  LDR             R0, [R5]
4F1CC2:  LDR             R1, [R0,#8]
4F1CC4:  MOV             R0, R5
4F1CC6:  POP.W           {R4,R5,R7,LR}
4F1CCA:  BX              R1
4F1CCC:  LDR             R0, [R4,#8]
4F1CCE:  POP             {R4,R5,R7,PC}
4F1CD0:  MOVS            R0, #0
4F1CD2:  POP             {R4,R5,R7,PC}
