; =========================================================
; Game Engine Function: _Z23_rpWorldUnregisterWorldP7RpWorld
; Address            : 0x21CAB8 - 0x21CB0C
; =========================================================

21CAB8:  PUSH            {R7,LR}
21CABA:  MOV             R7, SP
21CABC:  LDR             R1, =(RwEngineInstance_ptr - 0x21CAC4)
21CABE:  LDR             R2, =(dword_6BD630 - 0x21CAC6)
21CAC0:  ADD             R1, PC; RwEngineInstance_ptr
21CAC2:  ADD             R2, PC; dword_6BD630
21CAC4:  LDR             R1, [R1]; RwEngineInstance
21CAC6:  LDR.W           R12, [R2]
21CACA:  LDR             R1, [R1]
21CACC:  ADD             R1, R12
21CACE:  ADD.W           LR, R1, #4
21CAD2:  MOV             R3, LR
21CAD4:  LDR             R3, [R3]
21CAD6:  CMP             R3, LR
21CAD8:  IT EQ
21CADA:  POPEQ           {R7,PC}
21CADC:  MOV             R1, R3
21CADE:  LDR.W           R2, [R1,#-8]!
21CAE2:  CMP             R2, R0
21CAE4:  BNE             loc_21CAD4
21CAE6:  LDR.W           LR, =(RwEngineInstance_ptr - 0x21CAF4)
21CAEA:  LDRD.W          R0, R2, [R3]
21CAEE:  STR             R0, [R2]
21CAF0:  ADD             LR, PC; RwEngineInstance_ptr
21CAF2:  LDRD.W          R0, R2, [R3]
21CAF6:  LDR.W           R3, [LR]; RwEngineInstance
21CAFA:  STR             R2, [R0,#4]
21CAFC:  LDR             R2, [R3]
21CAFE:  LDR.W           R0, [R2,R12]
21CB02:  LDR.W           R2, [R2,#0x140]
21CB06:  POP.W           {R7,LR}
21CB0A:  BX              R2
