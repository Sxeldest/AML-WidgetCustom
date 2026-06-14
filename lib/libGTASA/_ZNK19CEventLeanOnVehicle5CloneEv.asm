; =========================================================
; Game Engine Function: _ZNK19CEventLeanOnVehicle5CloneEv
; Address            : 0x378D4C - 0x378DD4
; =========================================================

378D4C:  PUSH            {R4,R6,R7,LR}
378D4E:  ADD             R7, SP, #8
378D50:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378D5A)
378D52:  MOV.W           LR, #0
378D56:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378D58:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378D5A:  LDR             R1, [R1]; CPools::ms_pEventPool
378D5C:  LDRD.W          R12, R4, [R1,#8]
378D60:  ADDS            R4, #1
378D62:  STR             R4, [R1,#0xC]
378D64:  CMP             R4, R12
378D66:  BNE             loc_378D76
378D68:  MOVS            R4, #0
378D6A:  MOVS.W          R2, LR,LSL#31
378D6E:  STR             R4, [R1,#0xC]
378D70:  BNE             loc_378DA8
378D72:  MOV.W           LR, #1
378D76:  LDR             R2, [R1,#4]
378D78:  LDRSB           R3, [R2,R4]
378D7A:  CMP.W           R3, #0xFFFFFFFF
378D7E:  BGT             loc_378D60
378D80:  AND.W           R3, R3, #0x7F
378D84:  STRB            R3, [R2,R4]
378D86:  LDR             R2, [R1,#4]
378D88:  LDR             R3, [R1,#0xC]
378D8A:  LDRB            R4, [R2,R3]
378D8C:  AND.W           R12, R4, #0x80
378D90:  ADDS            R4, #1
378D92:  AND.W           R4, R4, #0x7F
378D96:  ORR.W           R4, R4, R12
378D9A:  STRB            R4, [R2,R3]
378D9C:  LDR             R2, [R1]
378D9E:  LDR             R1, [R1,#0xC]
378DA0:  ADD.W           R1, R1, R1,LSL#4
378DA4:  ADD.W           R4, R2, R1,LSL#2
378DA8:  LDR             R1, =(_ZTV19CEventLeanOnVehicle_ptr - 0x378DB4)
378DAA:  MOVS            R3, #0
378DAC:  LDRD.W          R2, R0, [R0,#0xC]
378DB0:  ADD             R1, PC; _ZTV19CEventLeanOnVehicle_ptr
378DB2:  STRB            R3, [R4,#8]
378DB4:  STR             R0, [R4,#0x10]
378DB6:  CMP             R2, #0
378DB8:  LDR             R1, [R1]; `vtable for'CEventLeanOnVehicle ...
378DBA:  ADD.W           R0, R1, #8
378DBE:  MOV             R1, R4
378DC0:  STRD.W          R0, R3, [R4]
378DC4:  STR.W           R2, [R1,#0xC]!; CEntity **
378DC8:  ITT NE
378DCA:  MOVNE           R0, R2; this
378DCC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
378DD0:  MOV             R0, R4
378DD2:  POP             {R4,R6,R7,PC}
