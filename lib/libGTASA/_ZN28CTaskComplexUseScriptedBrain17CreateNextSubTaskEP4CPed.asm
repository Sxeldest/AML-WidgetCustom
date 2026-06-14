; =========================================================
; Game Engine Function: _ZN28CTaskComplexUseScriptedBrain17CreateNextSubTaskEP4CPed
; Address            : 0x4F1B44 - 0x4F1C04
; =========================================================

4F1B44:  PUSH            {R4-R7,LR}
4F1B46:  ADD             R7, SP, #0xC
4F1B48:  PUSH.W          {R8}
4F1B4C:  MOV             R4, R0
4F1B4E:  MOV             R5, R1
4F1B50:  LDR             R0, [R4,#0x18]
4F1B52:  CBZ             R0, loc_4F1B8E
4F1B54:  LDR             R1, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4F1B5A)
4F1B56:  ADD             R1, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4F1B58:  LDR             R6, [R1]; CScriptedBrainTaskStore::ms_entries ...
4F1B5A:  MOV.W           R1, #0xFFFFFFFF
4F1B5E:  LDR             R2, [R6,#0xC]
4F1B60:  CMP             R2, R0
4F1B62:  BEQ             loc_4F1B6E
4F1B64:  ADDS            R1, #1
4F1B66:  ADDS            R6, #0x10
4F1B68:  CMP             R1, #0x2F ; '/'
4F1B6A:  BLT             loc_4F1B5E
4F1B6C:  B               loc_4F1B8A
4F1B6E:  LDR             R1, [R0]
4F1B70:  LDR             R1, [R1,#4]
4F1B72:  BLX             R1
4F1B74:  LDR             R0, [R6]; this
4F1B76:  MOV.W           R8, #0
4F1B7A:  STR.W           R8, [R6,#0xC]
4F1B7E:  CBZ             R0, loc_4F1B8A
4F1B80:  MOV             R1, R6; CEntity **
4F1B82:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F1B86:  STR.W           R8, [R6]; CScriptedBrainTaskStore::ms_entries
4F1B8A:  MOVS            R0, #0
4F1B8C:  STR             R0, [R4,#0x18]
4F1B8E:  LDR             R0, [R4,#8]
4F1B90:  LDR             R1, [R0]
4F1B92:  LDR             R1, [R1,#0x14]
4F1B94:  BLX             R1
4F1B96:  MOVW            R1, #0x709
4F1B9A:  CMP             R0, R1
4F1B9C:  BNE             loc_4F1BA6
4F1B9E:  MOVS            R0, #0
4F1BA0:  POP.W           {R8}
4F1BA4:  POP             {R4-R7,PC}
4F1BA6:  LDR             R0, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4F1BB0)
4F1BA8:  MOV.W           R1, #0xFFFFFFFF
4F1BAC:  ADD             R0, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4F1BAE:  LDR             R0, [R0]; CScriptedBrainTaskStore::ms_entries ...
4F1BB0:  ADDS            R0, #0xC
4F1BB2:  LDR.W           R2, [R0,#-0xC]; CScriptedBrainTaskStore::ms_entries
4F1BB6:  CMP             R2, R5
4F1BB8:  BEQ             loc_4F1BC8
4F1BBA:  ADDS            R1, #1; unsigned int
4F1BBC:  ADDS            R0, #0x10
4F1BBE:  CMP             R1, #0x2F ; '/'
4F1BC0:  BLT             loc_4F1BB2
4F1BC2:  MOVS            R0, #0
4F1BC4:  STR             R0, [R4,#0x18]
4F1BC6:  B               loc_4F1BDC
4F1BC8:  LDR             R0, [R0]
4F1BCA:  STR             R0, [R4,#0x18]
4F1BCC:  CBZ             R0, loc_4F1BDC
4F1BCE:  LDR             R1, [R0]
4F1BD0:  LDR             R1, [R1,#8]
4F1BD2:  POP.W           {R8}
4F1BD6:  POP.W           {R4-R7,LR}
4F1BDA:  BX              R1
4F1BDC:  MOVS            R0, #off_18; this
4F1BDE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F1BE2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F1BE6:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x4F1BF4)
4F1BE8:  MOVS            R2, #0
4F1BEA:  MOV.W           R3, #0x7D0
4F1BEE:  STRH            R2, [R0,#0x10]
4F1BF0:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
4F1BF2:  STR             R3, [R0,#0x14]
4F1BF4:  STRD.W          R2, R2, [R0,#8]
4F1BF8:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
4F1BFA:  ADDS            R1, #8
4F1BFC:  STR             R1, [R0]
4F1BFE:  POP.W           {R8}
4F1C02:  POP             {R4-R7,PC}
