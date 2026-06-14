; =========================================================
; Game Engine Function: sub_FE970
; Address            : 0xFE970 - 0xFE9B0
; =========================================================

FE970:  PUSH            {R4,R6,R7,LR}
FE972:  ADD             R7, SP, #8
FE974:  LDR             R4, =(off_23494C - 0xFE97A)
FE976:  ADD             R4, PC; off_23494C
FE978:  LDR             R4, [R4]; dword_23DF24
FE97A:  LDR             R4, [R4]
FE97C:  SUB.W           R12, LR, R4
FE980:  MOV             R4, #0x5A52EF
FE988:  CMP             R12, R4
FE98A:  BNE             loc_FE9A2
FE98C:  LDR             R4, =(dword_25AE90 - 0xFE992)
FE98E:  ADD             R4, PC; dword_25AE90
FE990:  LDR.W           R12, [R4]
FE994:  CMP.W           R12, #9
FE998:  ITTT GE
FE99A:  MOVGE           R0, #0
FE99C:  STRGE           R0, [R4]
FE99E:  MOVGE.W         R0, R12,LSL#3
FE9A2:  LDR             R4, =(off_25AEA8 - 0xFE9A8)
FE9A4:  ADD             R4, PC; off_25AEA8
FE9A6:  LDR.W           R12, [R4]
FE9AA:  POP.W           {R4,R6,R7,LR}
FE9AE:  BX              R12
