; =========================================================
; Game Engine Function: _ZNK30CEventLeaderEnteredCarAsDriver13CloneEditableEv
; Address            : 0x3786DC - 0x37876C
; =========================================================

3786DC:  PUSH            {R4,R6,R7,LR}
3786DE:  ADD             R7, SP, #8
3786E0:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3786EA)
3786E2:  MOV.W           LR, #0
3786E6:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3786E8:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3786EA:  LDR             R1, [R1]; CPools::ms_pEventPool
3786EC:  LDRD.W          R12, R4, [R1,#8]
3786F0:  ADDS            R4, #1
3786F2:  STR             R4, [R1,#0xC]
3786F4:  CMP             R4, R12
3786F6:  BNE             loc_378706
3786F8:  MOVS            R4, #0
3786FA:  MOVS.W          R2, LR,LSL#31
3786FE:  STR             R4, [R1,#0xC]
378700:  BNE             loc_378738
378702:  MOV.W           LR, #1
378706:  LDR             R2, [R1,#4]
378708:  LDRSB           R3, [R2,R4]
37870A:  CMP.W           R3, #0xFFFFFFFF
37870E:  BGT             loc_3786F0
378710:  AND.W           R3, R3, #0x7F
378714:  STRB            R3, [R2,R4]
378716:  LDR             R2, [R1,#4]
378718:  LDR             R3, [R1,#0xC]
37871A:  LDRB            R4, [R2,R3]
37871C:  AND.W           R12, R4, #0x80
378720:  ADDS            R4, #1
378722:  AND.W           R4, R4, #0x7F
378726:  ORR.W           R4, R4, R12
37872A:  STRB            R4, [R2,R3]
37872C:  LDR             R2, [R1]
37872E:  LDR             R1, [R1,#0xC]
378730:  ADD.W           R1, R1, R1,LSL#4
378734:  ADD.W           R4, R2, R1,LSL#2
378738:  LDR             R1, =(_ZTV30CEventLeaderEnteredCarAsDriver_ptr - 0x378742)
37873A:  MOVS            R2, #0
37873C:  LDR             R0, [R0,#0x10]; this
37873E:  ADD             R1, PC; _ZTV30CEventLeaderEnteredCarAsDriver_ptr
378740:  STR             R2, [R4,#4]
378742:  MOVW            R2, #0x100
378746:  CMP             R0, #0
378748:  LDR             R1, [R1]; `vtable for'CEventLeaderEnteredCarAsDriver ...
37874A:  MOVT            R2, #0xC8
37874E:  STR             R2, [R4,#8]
378750:  MOVW            R2, #0xFFFF
378754:  ADD.W           R1, R1, #8
378758:  STRH            R2, [R4,#0xC]
37875A:  STR             R1, [R4]
37875C:  MOV             R1, R4
37875E:  STR.W           R0, [R1,#0x10]!; CEntity **
378762:  IT NE
378764:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
378768:  MOV             R0, R4
37876A:  POP             {R4,R6,R7,PC}
