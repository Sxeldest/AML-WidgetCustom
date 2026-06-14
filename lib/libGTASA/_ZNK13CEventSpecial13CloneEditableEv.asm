; =========================================================
; Game Engine Function: _ZNK13CEventSpecial13CloneEditableEv
; Address            : 0x37AB60 - 0x37ABDC
; =========================================================

37AB60:  PUSH            {R7,LR}
37AB62:  MOV             R7, SP
37AB64:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37AB6E)
37AB66:  MOV.W           LR, #0
37AB6A:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37AB6C:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37AB6E:  LDR             R1, [R0]; CPools::ms_pEventPool
37AB70:  LDRD.W          R12, R0, [R1,#8]
37AB74:  ADDS            R0, #1
37AB76:  STR             R0, [R1,#0xC]
37AB78:  CMP             R0, R12
37AB7A:  BNE             loc_37AB8A
37AB7C:  MOVS            R0, #0
37AB7E:  MOVS.W          R2, LR,LSL#31
37AB82:  STR             R0, [R1,#0xC]
37AB84:  BNE             loc_37ABBC
37AB86:  MOV.W           LR, #1
37AB8A:  LDR             R2, [R1,#4]
37AB8C:  LDRSB           R3, [R2,R0]
37AB8E:  CMP.W           R3, #0xFFFFFFFF
37AB92:  BGT             loc_37AB74
37AB94:  AND.W           R3, R3, #0x7F
37AB98:  STRB            R3, [R2,R0]
37AB9A:  LDR             R0, [R1,#4]
37AB9C:  LDR             R2, [R1,#0xC]
37AB9E:  LDRB            R3, [R0,R2]
37ABA0:  AND.W           R12, R3, #0x80
37ABA4:  ADDS            R3, #1
37ABA6:  AND.W           R3, R3, #0x7F
37ABAA:  ORR.W           R3, R3, R12
37ABAE:  STRB            R3, [R0,R2]
37ABB0:  LDR             R0, [R1]
37ABB2:  LDR             R1, [R1,#0xC]
37ABB4:  ADD.W           R1, R1, R1,LSL#4
37ABB8:  ADD.W           R0, R0, R1,LSL#2
37ABBC:  LDR             R1, =(_ZTV13CEventSpecial_ptr - 0x37ABCA)
37ABBE:  MOVS            R2, #0
37ABC0:  STR             R2, [R0,#4]
37ABC2:  MOVW            R2, #0x100
37ABC6:  ADD             R1, PC; _ZTV13CEventSpecial_ptr
37ABC8:  MOVT            R2, #0xC8
37ABCC:  STR             R2, [R0,#8]
37ABCE:  MOVW            R2, #0xFFFF
37ABD2:  LDR             R1, [R1]; `vtable for'CEventSpecial ...
37ABD4:  STRH            R2, [R0,#0xC]
37ABD6:  ADDS            R1, #8
37ABD8:  STR             R1, [R0]
37ABDA:  POP             {R7,PC}
