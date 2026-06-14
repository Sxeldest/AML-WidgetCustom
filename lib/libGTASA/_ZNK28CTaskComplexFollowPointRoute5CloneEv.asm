; =========================================================
; Game Engine Function: _ZNK28CTaskComplexFollowPointRoute5CloneEv
; Address            : 0x527B64 - 0x527C3C
; =========================================================

527B64:  PUSH            {R4-R7,LR}
527B66:  ADD             R7, SP, #0xC
527B68:  PUSH.W          {R8-R11}
527B6C:  SUB             SP, SP, #4
527B6E:  MOV             R5, R0
527B70:  MOVS            R0, #off_3C; this
527B72:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
527B76:  LDR             R6, [R5,#0xC]
527B78:  MOV             R4, R0
527B7A:  LDRD.W          R11, R9, [R5,#0x14]
527B7E:  LDRD.W          R8, R10, [R5,#0x1C]
527B82:  LDRB.W          R5, [R5,#0x28]
527B86:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
527B8A:  LDR             R0, =(_ZTV28CTaskComplexFollowPointRoute_ptr - 0x527B96)
527B8C:  TST.W           R5, #8
527B90:  STR             R6, [R4,#0xC]
527B92:  ADD             R0, PC; _ZTV28CTaskComplexFollowPointRoute_ptr
527B94:  STR.W           R11, [R4,#0x14]
527B98:  LDRB.W          R1, [R4,#0x28]
527B9C:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowPointRoute ...
527B9E:  BIC.W           R1, R1, #0xD; unsigned int
527BA2:  ADD.W           R0, R0, #8
527BA6:  STR             R0, [R4]
527BA8:  AND.W           R0, R5, #0xD
527BAC:  ORR.W           R0, R0, R1
527BB0:  STRB.W          R0, [R4,#0x28]
527BB4:  BEQ             loc_527BCA
527BB6:  AND.W           R0, R0, #0x9F
527BBA:  VMOV.I32        Q8, #0
527BBE:  STRB.W          R0, [R4,#0x28]
527BC2:  ADD.W           R0, R4, #0x2C ; ','
527BC6:  VST1.32         {D16-D17}, [R0]
527BCA:  MOVS            R0, #dword_64; this
527BCC:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
527BD0:  MOVS            R1, #0
527BD2:  STR             R1, [R0]
527BD4:  STR             R0, [R4,#0x20]
527BD6:  LDR.W           R2, [R10]
527BDA:  STR             R2, [R0]
527BDC:  CMP             R2, #1
527BDE:  BLT             loc_527C00
527BE0:  ADD.W           R2, R10, #4
527BE4:  ADDS            R3, R0, #4
527BE6:  MOVS            R6, #0
527BE8:  VLDR            D16, [R2]
527BEC:  ADDS            R6, #1
527BEE:  LDR             R5, [R2,#8]
527BF0:  ADDS            R2, #0xC
527BF2:  STR             R5, [R3,#8]
527BF4:  VSTR            D16, [R3]
527BF8:  ADDS            R3, #0xC
527BFA:  LDR             R5, [R0]
527BFC:  CMP             R6, R5
527BFE:  BLT             loc_527BE8
527C00:  STRD.W          R9, R8, [R4,#0x18]
527C04:  LDRB.W          R2, [R4,#0x28]
527C08:  STR             R1, [R4,#0x24]
527C0A:  ORR.W           R0, R2, #2
527C0E:  TST.W           R2, #8
527C12:  STR             R1, [R4,#0x10]
527C14:  STRB.W          R0, [R4,#0x28]
527C18:  BEQ             loc_527C32
527C1A:  AND.W           R0, R0, #0x9F
527C1E:  VMOV.I32        Q8, #0
527C22:  ORR.W           R0, R0, #0x40 ; '@'
527C26:  STRB.W          R0, [R4,#0x28]
527C2A:  ADD.W           R0, R4, #0x2C ; ','
527C2E:  VST1.32         {D16-D17}, [R0]
527C32:  MOV             R0, R4
527C34:  ADD             SP, SP, #4
527C36:  POP.W           {R8-R11}
527C3A:  POP             {R4-R7,PC}
