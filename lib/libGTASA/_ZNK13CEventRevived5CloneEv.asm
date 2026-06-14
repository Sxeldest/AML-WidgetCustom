; =========================================================
; Game Engine Function: _ZNK13CEventRevived5CloneEv
; Address            : 0x379FE0 - 0x37A04E
; =========================================================

379FE0:  PUSH            {R7,LR}
379FE2:  MOV             R7, SP
379FE4:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379FEE)
379FE6:  MOV.W           LR, #0
379FEA:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
379FEC:  LDR             R0, [R0]; CPools::ms_pEventPool ...
379FEE:  LDR             R1, [R0]; CPools::ms_pEventPool
379FF0:  LDRD.W          R12, R0, [R1,#8]
379FF4:  ADDS            R0, #1
379FF6:  STR             R0, [R1,#0xC]
379FF8:  CMP             R0, R12
379FFA:  BNE             loc_37A00A
379FFC:  MOVS            R0, #0
379FFE:  MOVS.W          R2, LR,LSL#31
37A002:  STR             R0, [R1,#0xC]
37A004:  BNE             loc_37A03C
37A006:  MOV.W           LR, #1
37A00A:  LDR             R2, [R1,#4]
37A00C:  LDRSB           R3, [R2,R0]
37A00E:  CMP.W           R3, #0xFFFFFFFF
37A012:  BGT             loc_379FF4
37A014:  AND.W           R3, R3, #0x7F
37A018:  STRB            R3, [R2,R0]
37A01A:  LDR             R0, [R1,#4]
37A01C:  LDR             R2, [R1,#0xC]
37A01E:  LDRB            R3, [R0,R2]
37A020:  AND.W           R12, R3, #0x80
37A024:  ADDS            R3, #1
37A026:  AND.W           R3, R3, #0x7F
37A02A:  ORR.W           R3, R3, R12
37A02E:  STRB            R3, [R0,R2]
37A030:  LDR             R0, [R1]
37A032:  LDR             R1, [R1,#0xC]
37A034:  ADD.W           R1, R1, R1,LSL#4
37A038:  ADD.W           R0, R0, R1,LSL#2
37A03C:  LDR             R1, =(_ZTV13CEventRevived_ptr - 0x37A046)
37A03E:  MOVS            R2, #0
37A040:  STRB            R2, [R0,#8]
37A042:  ADD             R1, PC; _ZTV13CEventRevived_ptr
37A044:  LDR             R1, [R1]; `vtable for'CEventRevived ...
37A046:  ADDS            R1, #8
37A048:  STRD.W          R1, R2, [R0]
37A04C:  POP             {R7,PC}
