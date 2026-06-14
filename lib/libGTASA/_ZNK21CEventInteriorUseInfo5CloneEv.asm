; =========================================================
; Game Engine Function: _ZNK21CEventInteriorUseInfo5CloneEv
; Address            : 0x378B10 - 0x378B98
; =========================================================

378B10:  PUSH            {R4,R5,R7,LR}
378B12:  ADD             R7, SP, #8
378B14:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378B1E)
378B16:  MOV.W           LR, #0
378B1A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378B1C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378B1E:  LDR             R2, [R1]; CPools::ms_pEventPool
378B20:  LDRD.W          R12, R1, [R2,#8]
378B24:  ADDS            R1, #1
378B26:  STR             R1, [R2,#0xC]
378B28:  CMP             R1, R12
378B2A:  BNE             loc_378B3A
378B2C:  MOVS            R1, #0
378B2E:  MOVS.W          R3, LR,LSL#31
378B32:  STR             R1, [R2,#0xC]
378B34:  BNE             loc_378B6C
378B36:  MOV.W           LR, #1
378B3A:  LDR             R3, [R2,#4]
378B3C:  LDRSB           R4, [R3,R1]
378B3E:  CMP.W           R4, #0xFFFFFFFF
378B42:  BGT             loc_378B24
378B44:  AND.W           R4, R4, #0x7F
378B48:  STRB            R4, [R3,R1]
378B4A:  LDR             R1, [R2,#4]
378B4C:  LDR             R3, [R2,#0xC]
378B4E:  LDRB            R4, [R1,R3]
378B50:  AND.W           R12, R4, #0x80
378B54:  ADDS            R4, #1
378B56:  AND.W           R4, R4, #0x7F
378B5A:  ORR.W           R4, R4, R12
378B5E:  STRB            R4, [R1,R3]
378B60:  LDR             R1, [R2]
378B62:  LDR             R2, [R2,#0xC]
378B64:  ADD.W           R2, R2, R2,LSL#4
378B68:  ADD.W           R1, R1, R2,LSL#2
378B6C:  LDR.W           R12, =(_ZTV21CEventInteriorUseInfo_ptr - 0x378B7C)
378B70:  MOV.W           LR, #0
378B74:  LDRD.W          R3, R4, [R0,#0xC]
378B78:  ADD             R12, PC; _ZTV21CEventInteriorUseInfo_ptr
378B7A:  LDR             R2, [R0,#0x14]
378B7C:  LDRB            R5, [R0,#0x18]
378B7E:  LDR.W           R0, [R12]; `vtable for'CEventInteriorUseInfo ...
378B82:  STRB.W          LR, [R1,#8]
378B86:  ADDS            R0, #8
378B88:  STRD.W          R3, R4, [R1,#0xC]
378B8C:  STR             R2, [R1,#0x14]
378B8E:  STRB            R5, [R1,#0x18]
378B90:  STRD.W          R0, LR, [R1]
378B94:  MOV             R0, R1
378B96:  POP             {R4,R5,R7,PC}
