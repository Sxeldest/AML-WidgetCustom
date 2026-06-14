; =========================================================
; Game Engine Function: _ZNK23CEventBuildingCollision5CloneEv
; Address            : 0x3797A8 - 0x379858
; =========================================================

3797A8:  PUSH            {R4,R5,R7,LR}
3797AA:  ADD             R7, SP, #8
3797AC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3797B6)
3797AE:  MOV.W           LR, #0
3797B2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3797B4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3797B6:  LDR             R1, [R1]; CPools::ms_pEventPool
3797B8:  LDRD.W          R12, R4, [R1,#8]
3797BC:  ADDS            R4, #1
3797BE:  STR             R4, [R1,#0xC]
3797C0:  CMP             R4, R12
3797C2:  BNE             loc_3797D2
3797C4:  MOVS            R4, #0
3797C6:  MOVS.W          R2, LR,LSL#31
3797CA:  STR             R4, [R1,#0xC]
3797CC:  BNE             loc_379804
3797CE:  MOV.W           LR, #1
3797D2:  LDR             R2, [R1,#4]
3797D4:  LDRSB           R3, [R2,R4]
3797D6:  CMP.W           R3, #0xFFFFFFFF
3797DA:  BGT             loc_3797BC
3797DC:  AND.W           R3, R3, #0x7F
3797E0:  STRB            R3, [R2,R4]
3797E2:  LDR             R2, [R1,#4]
3797E4:  LDR             R3, [R1,#0xC]
3797E6:  LDRB            R4, [R2,R3]
3797E8:  AND.W           R12, R4, #0x80
3797EC:  ADDS            R4, #1
3797EE:  AND.W           R4, R4, #0x7F
3797F2:  ORR.W           R4, R4, R12
3797F6:  STRB            R4, [R2,R3]
3797F8:  LDR             R2, [R1]
3797FA:  LDR             R1, [R1,#0xC]
3797FC:  ADD.W           R1, R1, R1,LSL#4
379800:  ADD.W           R4, R2, R1,LSL#2
379804:  LDR.W           R12, =(_ZTV23CEventBuildingCollision_ptr - 0x379814)
379808:  MOV.W           LR, #0
37980C:  LDR.W           R5, [R0,#0xA]
379810:  ADD             R12, PC; _ZTV23CEventBuildingCollision_ptr
379812:  LDRD.W          R1, R2, [R0,#0x10]
379816:  STRB.W          LR, [R4,#8]
37981A:  CMP             R2, #0
37981C:  LDR.W           R3, [R12]; `vtable for'CEventBuildingCollision ...
379820:  STR             R1, [R4,#0x10]
379822:  ADD.W           R1, R3, #8
379826:  STR.W           R5, [R4,#0xA]
37982A:  STRD.W          R1, LR, [R4]
37982E:  MOV             R1, R4
379830:  STR.W           R2, [R1,#0x14]!; CEntity **
379834:  VLDR            D16, [R0,#0x18]
379838:  LDR             R3, [R0,#0x20]
37983A:  STR             R3, [R4,#0x20]
37983C:  VSTR            D16, [R4,#0x18]
379840:  VLDR            D16, [R0,#0x24]
379844:  LDR             R0, [R0,#0x2C]
379846:  STR             R0, [R4,#0x2C]
379848:  VSTR            D16, [R4,#0x24]
37984C:  ITT NE
37984E:  MOVNE           R0, R2; this
379850:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379854:  MOV             R0, R4
379856:  POP             {R4,R5,R7,PC}
