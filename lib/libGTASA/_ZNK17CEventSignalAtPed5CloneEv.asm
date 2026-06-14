; =========================================================
; Game Engine Function: _ZNK17CEventSignalAtPed5CloneEv
; Address            : 0x378C2C - 0x378CB8
; =========================================================

378C2C:  PUSH            {R4-R7,LR}
378C2E:  ADD             R7, SP, #0xC
378C30:  PUSH.W          {R11}
378C34:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378C3C)
378C36:  MOVS            R3, #0
378C38:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378C3A:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378C3C:  LDR             R1, [R1]; CPools::ms_pEventPool
378C3E:  LDRD.W          R2, R4, [R1,#8]
378C42:  ADDS            R4, #1
378C44:  STR             R4, [R1,#0xC]
378C46:  CMP             R4, R2
378C48:  BNE             loc_378C54
378C4A:  MOVS            R4, #0
378C4C:  LSLS            R3, R3, #0x1F
378C4E:  STR             R4, [R1,#0xC]
378C50:  BNE             loc_378C84
378C52:  MOVS            R3, #1
378C54:  LDR             R6, [R1,#4]
378C56:  LDRSB           R5, [R6,R4]
378C58:  CMP.W           R5, #0xFFFFFFFF
378C5C:  BGT             loc_378C42
378C5E:  AND.W           R2, R5, #0x7F
378C62:  STRB            R2, [R6,R4]
378C64:  LDR             R2, [R1,#4]
378C66:  LDR             R3, [R1,#0xC]
378C68:  LDRB            R6, [R2,R3]
378C6A:  AND.W           R5, R6, #0x80
378C6E:  ADDS            R6, #1
378C70:  AND.W           R6, R6, #0x7F
378C74:  ORRS            R6, R5
378C76:  STRB            R6, [R2,R3]
378C78:  LDR             R2, [R1]
378C7A:  LDR             R1, [R1,#0xC]
378C7C:  ADD.W           R1, R1, R1,LSL#4
378C80:  ADD.W           R4, R2, R1,LSL#2
378C84:  LDR             R1, =(_ZTV17CEventSignalAtPed_ptr - 0x378C8E)
378C86:  LDRD.W          R2, R5, [R0,#0xC]
378C8A:  ADD             R1, PC; _ZTV17CEventSignalAtPed_ptr
378C8C:  LDRB            R6, [R0,#0x14]
378C8E:  MOVS            R0, #0
378C90:  CMP             R2, #0
378C92:  LDR             R1, [R1]; `vtable for'CEventSignalAtPed ...
378C94:  STRB            R0, [R4,#8]
378C96:  ADD.W           R1, R1, #8
378C9A:  STRD.W          R1, R0, [R4]
378C9E:  MOV             R1, R4
378CA0:  STR.W           R2, [R1,#0xC]!; CEntity **
378CA4:  ITT NE
378CA6:  MOVNE           R0, R2; this
378CA8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
378CAC:  STRB            R6, [R4,#0x14]
378CAE:  MOV             R0, R4
378CB0:  STR             R5, [R4,#0x10]
378CB2:  POP.W           {R11}
378CB6:  POP             {R4-R7,PC}
