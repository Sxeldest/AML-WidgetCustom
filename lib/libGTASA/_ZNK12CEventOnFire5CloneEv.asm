; =========================================================
; Game Engine Function: _ZNK12CEventOnFire5CloneEv
; Address            : 0x378930 - 0x37899E
; =========================================================

378930:  PUSH            {R7,LR}
378932:  MOV             R7, SP
378934:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37893E)
378936:  MOV.W           LR, #0
37893A:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37893C:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37893E:  LDR             R1, [R0]; CPools::ms_pEventPool
378940:  LDRD.W          R12, R0, [R1,#8]
378944:  ADDS            R0, #1
378946:  STR             R0, [R1,#0xC]
378948:  CMP             R0, R12
37894A:  BNE             loc_37895A
37894C:  MOVS            R0, #0
37894E:  MOVS.W          R2, LR,LSL#31
378952:  STR             R0, [R1,#0xC]
378954:  BNE             loc_37898C
378956:  MOV.W           LR, #1
37895A:  LDR             R2, [R1,#4]
37895C:  LDRSB           R3, [R2,R0]
37895E:  CMP.W           R3, #0xFFFFFFFF
378962:  BGT             loc_378944
378964:  AND.W           R3, R3, #0x7F
378968:  STRB            R3, [R2,R0]
37896A:  LDR             R0, [R1,#4]
37896C:  LDR             R2, [R1,#0xC]
37896E:  LDRB            R3, [R0,R2]
378970:  AND.W           R12, R3, #0x80
378974:  ADDS            R3, #1
378976:  AND.W           R3, R3, #0x7F
37897A:  ORR.W           R3, R3, R12
37897E:  STRB            R3, [R0,R2]
378980:  LDR             R0, [R1]
378982:  LDR             R1, [R1,#0xC]
378984:  ADD.W           R1, R1, R1,LSL#4
378988:  ADD.W           R0, R0, R1,LSL#2
37898C:  LDR             R1, =(_ZTV12CEventOnFire_ptr - 0x378996)
37898E:  MOVS            R2, #0
378990:  STRB            R2, [R0,#8]
378992:  ADD             R1, PC; _ZTV12CEventOnFire_ptr
378994:  LDR             R1, [R1]; `vtable for'CEventOnFire ...
378996:  ADDS            R1, #8
378998:  STRD.W          R1, R2, [R0]
37899C:  POP             {R7,PC}
