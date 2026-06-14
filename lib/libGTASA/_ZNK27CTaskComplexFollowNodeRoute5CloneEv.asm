; =========================================================
; Game Engine Function: _ZNK27CTaskComplexFollowNodeRoute5CloneEv
; Address            : 0x527E28 - 0x527EFC
; =========================================================

527E28:  PUSH            {R4-R7,LR}
527E2A:  ADD             R7, SP, #0xC
527E2C:  PUSH.W          {R8,R9,R11}
527E30:  VPUSH           {D8-D9}
527E34:  MOV             R4, R0
527E36:  MOVS            R0, #dword_60; this
527E38:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
527E3C:  MOV             R5, R0
527E3E:  ADD.W           R0, R4, #0x18
527E42:  VLD1.32         {D8-D9}, [R0]
527E46:  MOV             R0, R5; this
527E48:  LDRB.W          R9, [R4,#0x4C]
527E4C:  LDR             R6, [R4,#0x3C]
527E4E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
527E52:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x527E64)
527E54:  ADD.W           R2, R5, #0x18
527E58:  LDRB.W          R1, [R5,#0x4C]
527E5C:  MOV.W           R8, #0
527E60:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
527E62:  TST.W           R9, #8
527E66:  BIC.W           R1, R1, #9; unsigned int
527E6A:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
527E6C:  ADD.W           R0, R0, #8
527E70:  STR             R0, [R5]
527E72:  LDR             R0, [R4,#0x14]
527E74:  VLDR            D16, [R4,#0xC]
527E78:  VST1.32         {D8-D9}, [R2]
527E7C:  STR             R0, [R5,#0x14]
527E7E:  AND.W           R0, R9, #9
527E82:  ORR.W           R0, R0, R1
527E86:  STRD.W          R8, R6, [R5,#0x38]
527E8A:  MOVW            R6, #0xFFFF
527E8E:  STRD.W          R8, R8, [R5,#0x40]
527E92:  STRH            R6, [R5,#0x28]
527E94:  STRH            R6, [R5,#0x34]
527E96:  STRH.W          R8, [R5,#0x48]
527E9A:  STRB.W          R0, [R5,#0x4C]
527E9E:  VSTR            D16, [R5,#0xC]
527EA2:  BEQ             loc_527EB8
527EA4:  AND.W           R0, R0, #0x9F
527EA8:  VMOV.I32        Q8, #0
527EAC:  STRB.W          R0, [R5,#0x4C]
527EB0:  ADD.W           R0, R5, #0x50 ; 'P'
527EB4:  VST1.32         {D16-D17}, [R0]
527EB8:  MOVS            R0, #dword_64; this
527EBA:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
527EBE:  STR.W           R8, [R0]
527EC2:  STR             R0, [R5,#0x30]
527EC4:  MOVS            R0, #dword_24; this
527EC6:  BLX             j__ZN10CNodeRoutenwEj; CNodeRoute::operator new(uint)
527ECA:  LDR             R1, =(EmptyNodeAddress_ptr - 0x527ED4)
527ECC:  STR.W           R8, [R0]
527ED0:  ADD             R1, PC; EmptyNodeAddress_ptr
527ED2:  STRH            R6, [R0,#4]
527ED4:  STRH            R6, [R0,#8]
527ED6:  LDR             R1, [R1]; EmptyNodeAddress
527ED8:  STRH            R6, [R0,#0xC]
527EDA:  STRH            R6, [R0,#0x10]
527EDC:  STRH            R6, [R0,#0x14]
527EDE:  STRH            R6, [R0,#0x18]
527EE0:  STRH            R6, [R0,#0x1C]
527EE2:  STRH            R6, [R0,#0x20]
527EE4:  STRH            R6, [R5,#0x34]
527EE6:  STR             R0, [R5,#0x2C]
527EE8:  LDR             R0, [R1]
527EEA:  STR             R0, [R5,#0x28]
527EEC:  LDR             R0, [R4,#0x28]
527EEE:  STR             R0, [R5,#0x28]
527EF0:  MOV             R0, R5
527EF2:  VPOP            {D8-D9}
527EF6:  POP.W           {R8,R9,R11}
527EFA:  POP             {R4-R7,PC}
