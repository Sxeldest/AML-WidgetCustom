; =========================================================
; Game Engine Function: _ZNK15CEventSoundLoud13CloneEditableEv
; Address            : 0x378F84 - 0x379016
; =========================================================

378F84:  PUSH            {R4,R6,R7,LR}
378F86:  ADD             R7, SP, #8
378F88:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378F92)
378F8A:  MOV.W           LR, #0
378F8E:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378F90:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378F92:  LDR             R1, [R1]; CPools::ms_pEventPool
378F94:  LDRD.W          R12, R4, [R1,#8]
378F98:  ADDS            R4, #1
378F9A:  STR             R4, [R1,#0xC]
378F9C:  CMP             R4, R12
378F9E:  BNE             loc_378FAE
378FA0:  MOVS            R4, #0
378FA2:  MOVS.W          R2, LR,LSL#31
378FA6:  STR             R4, [R1,#0xC]
378FA8:  BNE             loc_378FE0
378FAA:  MOV.W           LR, #1
378FAE:  LDR             R2, [R1,#4]
378FB0:  LDRSB           R3, [R2,R4]
378FB2:  CMP.W           R3, #0xFFFFFFFF
378FB6:  BGT             loc_378F98
378FB8:  AND.W           R3, R3, #0x7F
378FBC:  STRB            R3, [R2,R4]
378FBE:  LDR             R2, [R1,#4]
378FC0:  LDR             R3, [R1,#0xC]
378FC2:  LDRB            R4, [R2,R3]
378FC4:  AND.W           R12, R4, #0x80
378FC8:  ADDS            R4, #1
378FCA:  AND.W           R4, R4, #0x7F
378FCE:  ORR.W           R4, R4, R12
378FD2:  STRB            R4, [R2,R3]
378FD4:  LDR             R2, [R1]
378FD6:  LDR             R1, [R1,#0xC]
378FD8:  ADD.W           R1, R1, R1,LSL#4
378FDC:  ADD.W           R4, R2, R1,LSL#2
378FE0:  LDR             R1, =(_ZTV15CEventSoundLoud_ptr - 0x378FEC)
378FE2:  MOVS            R3, #0
378FE4:  LDRD.W          R2, R0, [R0,#0x10]
378FE8:  ADD             R1, PC; _ZTV15CEventSoundLoud_ptr
378FEA:  STR             R3, [R4,#4]
378FEC:  MOV             R3, #0xC80100
378FF4:  LDR             R1, [R1]; `vtable for'CEventSoundLoud ...
378FF6:  STR             R3, [R4,#8]
378FF8:  MOVW            R3, #0xFFFF
378FFC:  STRH            R3, [R4,#0xC]
378FFE:  STR             R0, [R4,#0x14]
379000:  ADD.W           R0, R1, #8
379004:  MOV             R1, R4
379006:  STR             R0, [R4]
379008:  STR.W           R2, [R1,#0x10]!; CEntity **
37900C:  MOV             R0, R2; this
37900E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379012:  MOV             R0, R4
379014:  POP             {R4,R6,R7,PC}
