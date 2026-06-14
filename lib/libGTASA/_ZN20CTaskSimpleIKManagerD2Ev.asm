; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManagerD2Ev
; Address            : 0x4EFAE0 - 0x4EFB2A
; =========================================================

4EFAE0:  PUSH            {R4,R6,R7,LR}
4EFAE2:  ADD             R7, SP, #8
4EFAE4:  MOV             R4, R0
4EFAE6:  LDR             R0, =(_ZTV20CTaskSimpleIKManager_ptr - 0x4EFAEC)
4EFAE8:  ADD             R0, PC; _ZTV20CTaskSimpleIKManager_ptr
4EFAEA:  LDR             R1, [R0]; `vtable for'CTaskSimpleIKManager ...
4EFAEC:  LDR             R0, [R4,#8]
4EFAEE:  ADDS            R1, #8
4EFAF0:  STR             R1, [R4]
4EFAF2:  CMP             R0, #0
4EFAF4:  ITTT NE
4EFAF6:  LDRNE           R1, [R0]
4EFAF8:  LDRNE           R1, [R1,#4]
4EFAFA:  BLXNE           R1
4EFAFC:  LDR             R0, [R4,#0xC]
4EFAFE:  CMP             R0, #0
4EFB00:  ITTT NE
4EFB02:  LDRNE           R1, [R0]
4EFB04:  LDRNE           R1, [R1,#4]
4EFB06:  BLXNE           R1
4EFB08:  LDR             R0, [R4,#0x10]
4EFB0A:  CMP             R0, #0
4EFB0C:  ITTT NE
4EFB0E:  LDRNE           R1, [R0]
4EFB10:  LDRNE           R1, [R1,#4]
4EFB12:  BLXNE           R1
4EFB14:  LDR             R0, [R4,#0x14]
4EFB16:  CMP             R0, #0
4EFB18:  ITTT NE
4EFB1A:  LDRNE           R1, [R0]
4EFB1C:  LDRNE           R1, [R1,#4]
4EFB1E:  BLXNE           R1
4EFB20:  MOV             R0, R4; this
4EFB22:  POP.W           {R4,R6,R7,LR}
4EFB26:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
