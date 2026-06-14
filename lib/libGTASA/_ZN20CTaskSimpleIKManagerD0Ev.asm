; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManagerD0Ev
; Address            : 0x4EFB30 - 0x4EFB7E
; =========================================================

4EFB30:  PUSH            {R4,R6,R7,LR}
4EFB32:  ADD             R7, SP, #8
4EFB34:  MOV             R4, R0
4EFB36:  LDR             R0, =(_ZTV20CTaskSimpleIKManager_ptr - 0x4EFB3C)
4EFB38:  ADD             R0, PC; _ZTV20CTaskSimpleIKManager_ptr
4EFB3A:  LDR             R1, [R0]; `vtable for'CTaskSimpleIKManager ...
4EFB3C:  LDR             R0, [R4,#8]
4EFB3E:  ADDS            R1, #8
4EFB40:  STR             R1, [R4]
4EFB42:  CMP             R0, #0
4EFB44:  ITTT NE
4EFB46:  LDRNE           R1, [R0]
4EFB48:  LDRNE           R1, [R1,#4]
4EFB4A:  BLXNE           R1
4EFB4C:  LDR             R0, [R4,#0xC]
4EFB4E:  CMP             R0, #0
4EFB50:  ITTT NE
4EFB52:  LDRNE           R1, [R0]
4EFB54:  LDRNE           R1, [R1,#4]
4EFB56:  BLXNE           R1
4EFB58:  LDR             R0, [R4,#0x10]
4EFB5A:  CMP             R0, #0
4EFB5C:  ITTT NE
4EFB5E:  LDRNE           R1, [R0]
4EFB60:  LDRNE           R1, [R1,#4]
4EFB62:  BLXNE           R1
4EFB64:  LDR             R0, [R4,#0x14]
4EFB66:  CMP             R0, #0
4EFB68:  ITTT NE
4EFB6A:  LDRNE           R1, [R0]
4EFB6C:  LDRNE           R1, [R1,#4]
4EFB6E:  BLXNE           R1
4EFB70:  MOV             R0, R4; this
4EFB72:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EFB76:  POP.W           {R4,R6,R7,LR}
4EFB7A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
