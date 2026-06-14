; =========================================================
; Game Engine Function: _ZNK13CEventInWater5CloneEv
; Address            : 0x37A984 - 0x37A9FA
; =========================================================

37A984:  PUSH            {R4,R6,R7,LR}
37A986:  ADD             R7, SP, #8
37A988:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A992)
37A98A:  MOV.W           LR, #0
37A98E:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A990:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A992:  LDR             R2, [R1]; CPools::ms_pEventPool
37A994:  LDRD.W          R12, R1, [R2,#8]
37A998:  ADDS            R1, #1
37A99A:  STR             R1, [R2,#0xC]
37A99C:  CMP             R1, R12
37A99E:  BNE             loc_37A9AE
37A9A0:  MOVS            R1, #0
37A9A2:  MOVS.W          R3, LR,LSL#31
37A9A6:  STR             R1, [R2,#0xC]
37A9A8:  BNE             loc_37A9E0
37A9AA:  MOV.W           LR, #1
37A9AE:  LDR             R3, [R2,#4]
37A9B0:  LDRSB           R4, [R3,R1]
37A9B2:  CMP.W           R4, #0xFFFFFFFF
37A9B6:  BGT             loc_37A998
37A9B8:  AND.W           R4, R4, #0x7F
37A9BC:  STRB            R4, [R3,R1]
37A9BE:  LDR             R1, [R2,#4]
37A9C0:  LDR             R3, [R2,#0xC]
37A9C2:  LDRB            R4, [R1,R3]
37A9C4:  AND.W           R12, R4, #0x80
37A9C8:  ADDS            R4, #1
37A9CA:  AND.W           R4, R4, #0x7F
37A9CE:  ORR.W           R4, R4, R12
37A9D2:  STRB            R4, [R1,R3]
37A9D4:  LDR             R1, [R2]
37A9D6:  LDR             R2, [R2,#0xC]
37A9D8:  ADD.W           R2, R2, R2,LSL#4
37A9DC:  ADD.W           R1, R1, R2,LSL#2
37A9E0:  LDR             R2, =(_ZTV13CEventInWater_ptr - 0x37A9EA)
37A9E2:  MOVS            R3, #0
37A9E4:  LDR             R0, [R0,#0xC]
37A9E6:  ADD             R2, PC; _ZTV13CEventInWater_ptr
37A9E8:  STRB            R3, [R1,#8]
37A9EA:  STR             R0, [R1,#0xC]
37A9EC:  LDR             R2, [R2]; `vtable for'CEventInWater ...
37A9EE:  ADD.W           R0, R2, #8
37A9F2:  STRD.W          R0, R3, [R1]
37A9F6:  MOV             R0, R1
37A9F8:  POP             {R4,R6,R7,PC}
