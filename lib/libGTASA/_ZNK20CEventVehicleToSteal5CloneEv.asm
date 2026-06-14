; =========================================================
; Game Engine Function: _ZNK20CEventVehicleToSteal5CloneEv
; Address            : 0x37A424 - 0x37A4A6
; =========================================================

37A424:  PUSH            {R4,R6,R7,LR}
37A426:  ADD             R7, SP, #8
37A428:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A432)
37A42A:  MOV.W           LR, #0
37A42E:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A430:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A432:  LDR             R1, [R1]; CPools::ms_pEventPool
37A434:  LDRD.W          R12, R4, [R1,#8]
37A438:  ADDS            R4, #1
37A43A:  STR             R4, [R1,#0xC]
37A43C:  CMP             R4, R12
37A43E:  BNE             loc_37A44E
37A440:  MOVS            R4, #0
37A442:  MOVS.W          R2, LR,LSL#31
37A446:  STR             R4, [R1,#0xC]
37A448:  BNE             loc_37A480
37A44A:  MOV.W           LR, #1
37A44E:  LDR             R2, [R1,#4]
37A450:  LDRSB           R3, [R2,R4]
37A452:  CMP.W           R3, #0xFFFFFFFF
37A456:  BGT             loc_37A438
37A458:  AND.W           R3, R3, #0x7F
37A45C:  STRB            R3, [R2,R4]
37A45E:  LDR             R2, [R1,#4]
37A460:  LDR             R3, [R1,#0xC]
37A462:  LDRB            R4, [R2,R3]
37A464:  AND.W           R12, R4, #0x80
37A468:  ADDS            R4, #1
37A46A:  AND.W           R4, R4, #0x7F
37A46E:  ORR.W           R4, R4, R12
37A472:  STRB            R4, [R2,R3]
37A474:  LDR             R2, [R1]
37A476:  LDR             R1, [R1,#0xC]
37A478:  ADD.W           R1, R1, R1,LSL#4
37A47C:  ADD.W           R4, R2, R1,LSL#2
37A480:  LDR             R1, =(_ZTV20CEventVehicleToSteal_ptr - 0x37A48A)
37A482:  MOVS            R2, #0
37A484:  LDR             R0, [R0,#0xC]; this
37A486:  ADD             R1, PC; _ZTV20CEventVehicleToSteal_ptr
37A488:  STRB            R2, [R4,#8]
37A48A:  CMP             R0, #0
37A48C:  LDR             R1, [R1]; `vtable for'CEventVehicleToSteal ...
37A48E:  ADD.W           R1, R1, #8
37A492:  STRD.W          R1, R2, [R4]
37A496:  MOV             R1, R4
37A498:  STR.W           R0, [R1,#0xC]!; CEntity **
37A49C:  IT NE
37A49E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A4A2:  MOV             R0, R4
37A4A4:  POP             {R4,R6,R7,PC}
