; =========================================================
; Game Engine Function: _ZN9CPhysical18AddCollisionRecordEP7CEntity
; Address            : 0x401A28 - 0x401AB8
; =========================================================

401A28:  PUSH            {R7,LR}
401A2A:  MOV             R7, SP
401A2C:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x401A34)
401A2E:  LDR             R3, [R0,#0x44]
401A30:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
401A32:  LDRB.W          R12, [R0,#0x3A]
401A36:  ORR.W           R3, R3, #0x200
401A3A:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
401A3C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
401A3E:  STRD.W          R2, R3, [R0,#0x40]
401A42:  AND.W           R2, R12, #7
401A46:  CMP             R2, #2
401A48:  BNE             loc_401A7C
401A4A:  LDRB.W          R2, [R1,#0x3A]
401A4E:  AND.W           R2, R2, #7
401A52:  CMP             R2, #2
401A54:  BNE             loc_401A7C
401A56:  LDRH.W          R2, [R0,#0x460]
401A5A:  MOVW            R12, #0xFFFF
401A5E:  CMP             R2, R12
401A60:  ITT EQ
401A62:  MOVWEQ          R2, #0x3A98
401A66:  STRHEQ.W        R2, [R0,#0x460]
401A6A:  LDRH.W          R2, [R1,#0x460]
401A6E:  CMP             R2, R12
401A70:  ITTT EQ
401A72:  MOVWEQ          R2, #0x3A98
401A76:  STRHEQ.W        R2, [R1,#0x460]
401A7A:  LDREQ           R3, [R0,#0x44]
401A7C:  LSLS            R2, R3, #3
401A7E:  BPL             locret_401AB6
401A80:  LDRB.W          R12, [R0,#0xBD]
401A84:  CMP.W           R12, #0
401A88:  BEQ             loc_401AA6
401A8A:  ADD.W           LR, R0, #0xC0
401A8E:  MOVS            R2, #0
401A90:  LDR.W           R3, [LR,R2,LSL#2]
401A94:  CMP             R3, R1
401A96:  BEQ             locret_401AB6
401A98:  ADDS            R2, #1
401A9A:  CMP             R2, R12
401A9C:  BLT             loc_401A90
401A9E:  CMP.W           R12, #5
401AA2:  IT HI
401AA4:  POPHI           {R7,PC}
401AA6:  ADD.W           R2, R0, R12,LSL#2
401AAA:  STR.W           R1, [R2,#0xC0]
401AAE:  ADD.W           R1, R12, #1
401AB2:  STRB.W          R1, [R0,#0xBD]
401AB6:  POP             {R7,PC}
