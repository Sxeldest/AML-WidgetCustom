; =========================================================
; Game Engine Function: _ZN5CTask9IsTaskPtrEPv
; Address            : 0x4D6980 - 0x4D69CA
; =========================================================

4D6980:  PUSH            {R7,LR}
4D6982:  MOV             R7, SP
4D6984:  LDR             R1, =(_ZN6CPools12ms_pTaskPoolE_ptr - 0x4D698A)
4D6986:  ADD             R1, PC; _ZN6CPools12ms_pTaskPoolE_ptr
4D6988:  LDR             R1, [R1]; CPools::ms_pTaskPool ...
4D698A:  LDR.W           R12, [R1]; CPools::ms_pTaskPool
4D698E:  LDR.W           R2, [R12,#8]
4D6992:  CBZ             R2, loc_4D69C2
4D6994:  MOV             R1, #0xFFFFFF80
4D6998:  LDR.W           LR, [R12,#4]
4D699C:  ADD.W           R1, R1, R2,LSL#7
4D69A0:  ADD.W           R3, LR, R2
4D69A4:  LDRSB.W         R3, [R3,#-1]
4D69A8:  CMP             R3, #0
4D69AA:  BLT             loc_4D69BA
4D69AC:  LDR.W           R3, [R12]
4D69B0:  CMN             R1, R3
4D69B2:  BEQ             loc_4D69BA
4D69B4:  SUBS            R3, R0, R3
4D69B6:  CMP             R3, R1
4D69B8:  BEQ             loc_4D69C6
4D69BA:  SUBS            R2, #1
4D69BC:  SUB.W           R1, R1, #0x80
4D69C0:  BNE             loc_4D69A0
4D69C2:  MOVS            R0, #0
4D69C4:  POP             {R7,PC}
4D69C6:  MOVS            R0, #1
4D69C8:  POP             {R7,PC}
