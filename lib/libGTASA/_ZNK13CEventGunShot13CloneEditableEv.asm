; =========================================================
; Game Engine Function: _ZNK13CEventGunShot13CloneEditableEv
; Address            : 0x379480 - 0x379534
; =========================================================

379480:  PUSH            {R4,R6,R7,LR}
379482:  ADD             R7, SP, #8
379484:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37948E)
379486:  MOV.W           LR, #0
37948A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37948C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37948E:  LDR             R1, [R1]; CPools::ms_pEventPool
379490:  LDRD.W          R12, R4, [R1,#8]
379494:  ADDS            R4, #1
379496:  STR             R4, [R1,#0xC]
379498:  CMP             R4, R12
37949A:  BNE             loc_3794AA
37949C:  MOVS            R4, #0
37949E:  MOVS.W          R2, LR,LSL#31
3794A2:  STR             R4, [R1,#0xC]
3794A4:  BNE             loc_3794DC
3794A6:  MOV.W           LR, #1
3794AA:  LDR             R2, [R1,#4]
3794AC:  LDRSB           R3, [R2,R4]
3794AE:  CMP.W           R3, #0xFFFFFFFF
3794B2:  BGT             loc_379494
3794B4:  AND.W           R3, R3, #0x7F
3794B8:  STRB            R3, [R2,R4]
3794BA:  LDR             R2, [R1,#4]
3794BC:  LDR             R3, [R1,#0xC]
3794BE:  LDRB            R4, [R2,R3]
3794C0:  AND.W           R12, R4, #0x80
3794C4:  ADDS            R4, #1
3794C6:  AND.W           R4, R4, #0x7F
3794CA:  ORR.W           R4, R4, R12
3794CE:  STRB            R4, [R2,R3]
3794D0:  LDR             R2, [R1]
3794D2:  LDR             R1, [R1,#0xC]
3794D4:  ADD.W           R1, R1, R1,LSL#4
3794D8:  ADD.W           R4, R2, R1,LSL#2
3794DC:  LDR             R2, [R0,#0x10]
3794DE:  LDRD.W          R1, R3, [R0,#0x24]
3794E2:  LDRB.W          R12, [R0,#0x2C]
3794E6:  ADDS            R0, #0x14
3794E8:  VLD1.32         {D16-D17}, [R0]
3794EC:  MOVS            R0, #0
3794EE:  CMP             R2, #0
3794F0:  LDR.W           LR, =(_ZTV13CEventGunShot_ptr - 0x379502)
3794F4:  STR             R0, [R4,#4]
3794F6:  MOV             R0, #0xC80100
3794FE:  ADD             LR, PC; _ZTV13CEventGunShot_ptr
379500:  STR             R0, [R4,#8]
379502:  MOVW            R0, #0xFFFF
379506:  STRH            R0, [R4,#0xC]
379508:  STRD.W          R1, R3, [R4,#0x24]
37950C:  ADD.W           R1, R4, #0x14
379510:  LDR.W           R0, [LR]; `vtable for'CEventGunShot ...
379514:  VST1.32         {D16-D17}, [R1]
379518:  MOV             R1, R4
37951A:  ADD.W           R0, R0, #8
37951E:  STRB.W          R12, [R4,#0x2C]
379522:  STR             R0, [R4]
379524:  STR.W           R2, [R1,#0x10]!; CEntity **
379528:  ITT NE
37952A:  MOVNE           R0, R2; this
37952C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379530:  MOV             R0, R4
379532:  POP             {R4,R6,R7,PC}
