; =========================================================
; Game Engine Function: _ZN7CObject25RemoveFromControlCodeListEv
; Address            : 0x453260 - 0x4532AE
; =========================================================

453260:  PUSH            {R4,R6,R7,LR}
453262:  ADD             R7, SP, #8
453264:  MOV             R4, R0
453266:  LDR.W           R0, [R4,#0x13C]
45326A:  CMP             R0, #0
45326C:  IT EQ
45326E:  POPEQ           {R4,R6,R7,PC}
453270:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x453276)
453272:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
453274:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
453276:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode
453278:  CMP             R1, R0
45327A:  BNE             loc_453286
45327C:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x453284)
45327E:  LDR             R2, [R0,#4]
453280:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
453282:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
453284:  STR             R2, [R1]; CWorld::ms_listObjectsWithControlCode
453286:  LDR             R1, [R0,#8]
453288:  CMP             R1, #0
45328A:  ITT NE
45328C:  LDRNE           R2, [R0,#4]
45328E:  STRNE           R2, [R1,#4]
453290:  LDR             R1, [R0,#4]
453292:  CMP             R1, #0
453294:  ITT NE
453296:  LDRNE           R0, [R0,#8]
453298:  STRNE           R0, [R1,#8]
45329A:  LDR.W           R0, [R4,#0x13C]; void *
45329E:  CMP             R0, #0
4532A0:  IT NE
4532A2:  BLXNE           j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
4532A6:  MOVS            R0, #0
4532A8:  STR.W           R0, [R4,#0x13C]
4532AC:  POP             {R4,R6,R7,PC}
