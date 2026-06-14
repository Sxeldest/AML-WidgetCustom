; =========================================================
; Game Engine Function: sub_878C0
; Address            : 0x878C0 - 0x878FC
; =========================================================

878C0:  PUSH            {R4,R6,R7,LR}
878C2:  ADD             R7, SP, #8
878C4:  MOV             R4, R0
878C6:  LDR             R0, [R0,#8]
878C8:  MOVS            R1, #0
878CA:  STRB            R1, [R4,#0x14]
878CC:  CBZ             R0, loc_878E2
878CE:  CMP.W           R0, #0x200
878D2:  BHI             loc_878E6
878D4:  LDR             R0, [R4]; void *
878D6:  MOVS            R1, #0
878D8:  STR             R1, [R4,#4]
878DA:  CMP             R0, #0
878DC:  IT NE
878DE:  BLXNE           j__ZdaPv; operator delete[](void *)
878E2:  MOV             R0, R4
878E4:  POP             {R4,R6,R7,PC}
878E6:  LDR             R0, [R4]; void *
878E8:  CMP             R0, #0
878EA:  IT NE
878EC:  BLXNE           j__ZdaPv; operator delete[](void *)
878F0:  MOVS            R0, #0
878F2:  STRD.W          R0, R0, [R4]
878F6:  STR             R0, [R4,#8]
878F8:  MOV             R0, R4
878FA:  POP             {R4,R6,R7,PC}
