; =========================================================
; Game Engine Function: _ZN10CModelInfo23GetModelInfoFromHashKeyEjPi
; Address            : 0x385DE8 - 0x385E22
; =========================================================

385DE8:  PUSH            {R4,R6,R7,LR}
385DEA:  ADD             R7, SP, #8
385DEC:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385DF8)
385DEE:  MOVS            R3, #0
385DF0:  MOVW            LR, #0x4E1F
385DF4:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385DF6:  LDR.W           R12, [R2]; CModelInfo::ms_modelInfoPtrs ...
385DFA:  LDR.W           R2, [R12,R3,LSL#2]
385DFE:  CBZ             R2, loc_385E06
385E00:  LDR             R4, [R2,#4]
385E02:  CMP             R4, R0
385E04:  BEQ             loc_385E14
385E06:  ADDS            R2, R3, #1
385E08:  CMP             R3, LR
385E0A:  MOV             R3, R2
385E0C:  BLT             loc_385DFA
385E0E:  MOVS            R2, #0
385E10:  MOV             R0, R2
385E12:  POP             {R4,R6,R7,PC}
385E14:  CMP             R1, #0
385E16:  ITTT NE
385E18:  STRNE           R3, [R1]
385E1A:  MOVNE           R0, R2
385E1C:  POPNE           {R4,R6,R7,PC}
385E1E:  MOV             R0, R2
385E20:  POP             {R4,R6,R7,PC}
