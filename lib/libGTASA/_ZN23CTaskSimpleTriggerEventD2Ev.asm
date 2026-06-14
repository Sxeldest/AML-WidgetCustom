; =========================================================
; Game Engine Function: _ZN23CTaskSimpleTriggerEventD2Ev
; Address            : 0x4F1FE8 - 0x4F200E
; =========================================================

4F1FE8:  PUSH            {R4,R6,R7,LR}
4F1FEA:  ADD             R7, SP, #8
4F1FEC:  MOV             R4, R0
4F1FEE:  LDR             R0, =(_ZTV23CTaskSimpleTriggerEvent_ptr - 0x4F1FF4)
4F1FF0:  ADD             R0, PC; _ZTV23CTaskSimpleTriggerEvent_ptr
4F1FF2:  LDR             R1, [R0]; `vtable for'CTaskSimpleTriggerEvent ...
4F1FF4:  LDR             R0, [R4,#8]
4F1FF6:  ADDS            R1, #8
4F1FF8:  STR             R1, [R4]
4F1FFA:  CMP             R0, #0
4F1FFC:  ITTT NE
4F1FFE:  LDRNE           R1, [R0]
4F2000:  LDRNE           R1, [R1,#4]
4F2002:  BLXNE           R1
4F2004:  MOV             R0, R4; this
4F2006:  POP.W           {R4,R6,R7,LR}
4F200A:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
