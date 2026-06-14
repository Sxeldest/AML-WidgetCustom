; =========================================================
; Game Engine Function: _ZNK23CTaskComplexPartnerChat5CloneEv
; Address            : 0x5370A8 - 0x53716A
; =========================================================

5370A8:  PUSH            {R4-R7,LR}
5370AA:  ADD             R7, SP, #0xC
5370AC:  PUSH.W          {R8-R11}
5370B0:  SUB             SP, SP, #4
5370B2:  VPUSH           {D8-D9}
5370B6:  MOV             R5, R0
5370B8:  MOVS            R0, #dword_78; this
5370BA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5370BE:  MOV             R4, R0
5370C0:  ADD.W           R0, R5, #0x3C ; '<'
5370C4:  VLD1.32         {D8-D9}, [R0]
5370C8:  MOV             R0, R4; this
5370CA:  LDRB.W          R9, [R5,#0x72]
5370CE:  LDRB.W          R8, [R5,#0x73]
5370D2:  LDR             R6, [R5,#0x38]
5370D4:  LDRB.W          R10, [R5,#0x5B]
5370D8:  LDRB.W          R11, [R5,#0x58]
5370DC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5370E0:  ADD.W           R0, R4, #0x3C ; '<'
5370E4:  MOVW            R1, #0xFF01
5370E8:  CMP             R6, #0
5370EA:  ADD.W           R5, R5, #0x14
5370EE:  VST1.32         {D8-D9}, [R0]
5370F2:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x5370FC)
5370F4:  STRB.W          R11, [R4,#0x58]
5370F8:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
5370FA:  STRB.W          R10, [R4,#0x5B]
5370FE:  MOV.W           R10, #0
537102:  LDR             R0, [R0]; `vtable for'CTaskComplexPartner ...
537104:  STRH.W          R10, [R4,#0x5C]
537108:  STRH.W          R1, [R4,#0x59]
53710C:  MOV             R1, R4
53710E:  STRB.W          R10, [R4,#0x6E]
537112:  ADD.W           R0, R0, #8
537116:  STRB.W          R10, [R4,#0x5E]
53711A:  STR             R0, [R4]
53711C:  STR.W           R6, [R1,#0x38]!; CEntity **
537120:  ITT NE
537122:  MOVNE           R0, R6; this
537124:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
537128:  LDR             R0, =(_ZTV23CTaskComplexPartnerChat_ptr - 0x537138)
53712A:  MOVW            R1, #0x4B4
53712E:  CMP.W           R9, #0
537132:  STR             R1, [R4,#0x34]
537134:  ADD             R0, PC; _ZTV23CTaskComplexPartnerChat_ptr
537136:  STRB.W          R10, [R4,#0x74]
53713A:  STRB.W          R9, [R4,#0x72]
53713E:  MOV             R1, R5; char *
537140:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerChat ...
537142:  ADD.W           R0, R0, #8
537146:  STR             R0, [R4]
537148:  ITT NE
53714A:  MOVNE           R0, #4
53714C:  STRBNE.W        R0, [R4,#0x5B]
537150:  STRB.W          R8, [R4,#0x73]
537154:  ADD.W           R0, R4, #0x14; char *
537158:  BLX             strcpy
53715C:  MOV             R0, R4
53715E:  VPOP            {D8-D9}
537162:  ADD             SP, SP, #4
537164:  POP.W           {R8-R11}
537168:  POP             {R4-R7,PC}
