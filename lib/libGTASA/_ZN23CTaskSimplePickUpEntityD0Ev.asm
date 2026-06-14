; =========================================================
; Game Engine Function: _ZN23CTaskSimplePickUpEntityD0Ev
; Address            : 0x54415C - 0x54416C
; =========================================================

54415C:  PUSH            {R7,LR}
54415E:  MOV             R7, SP
544160:  BLX             j__ZN21CTaskSimpleHoldEntityD2Ev; CTaskSimpleHoldEntity::~CTaskSimpleHoldEntity()
544164:  POP.W           {R7,LR}
544168:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
