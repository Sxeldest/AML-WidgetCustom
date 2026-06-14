; =========================================================
; Game Engine Function: _ZNK21CEventHealthReallyLow13CloneEditableEv
; Address            : 0x378448 - 0x3784C4
; =========================================================

378448:  PUSH            {R7,LR}
37844A:  MOV             R7, SP
37844C:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378456)
37844E:  MOV.W           LR, #0
378452:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378454:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378456:  LDR             R1, [R0]; CPools::ms_pEventPool
378458:  LDRD.W          R12, R0, [R1,#8]
37845C:  ADDS            R0, #1
37845E:  STR             R0, [R1,#0xC]
378460:  CMP             R0, R12
378462:  BNE             loc_378472
378464:  MOVS            R0, #0
378466:  MOVS.W          R2, LR,LSL#31
37846A:  STR             R0, [R1,#0xC]
37846C:  BNE             loc_3784A4
37846E:  MOV.W           LR, #1
378472:  LDR             R2, [R1,#4]
378474:  LDRSB           R3, [R2,R0]
378476:  CMP.W           R3, #0xFFFFFFFF
37847A:  BGT             loc_37845C
37847C:  AND.W           R3, R3, #0x7F
378480:  STRB            R3, [R2,R0]
378482:  LDR             R0, [R1,#4]
378484:  LDR             R2, [R1,#0xC]
378486:  LDRB            R3, [R0,R2]
378488:  AND.W           R12, R3, #0x80
37848C:  ADDS            R3, #1
37848E:  AND.W           R3, R3, #0x7F
378492:  ORR.W           R3, R3, R12
378496:  STRB            R3, [R0,R2]
378498:  LDR             R0, [R1]
37849A:  LDR             R1, [R1,#0xC]
37849C:  ADD.W           R1, R1, R1,LSL#4
3784A0:  ADD.W           R0, R0, R1,LSL#2
3784A4:  LDR             R1, =(_ZTV21CEventHealthReallyLow_ptr - 0x3784B2)
3784A6:  MOVS            R2, #0
3784A8:  STR             R2, [R0,#4]
3784AA:  MOVW            R2, #0x100
3784AE:  ADD             R1, PC; _ZTV21CEventHealthReallyLow_ptr
3784B0:  MOVT            R2, #0xC8
3784B4:  STR             R2, [R0,#8]
3784B6:  MOVW            R2, #0xFFFF
3784BA:  LDR             R1, [R1]; `vtable for'CEventHealthReallyLow ...
3784BC:  STRH            R2, [R0,#0xC]
3784BE:  ADDS            R1, #8
3784C0:  STR             R1, [R0]
3784C2:  POP             {R7,PC}
