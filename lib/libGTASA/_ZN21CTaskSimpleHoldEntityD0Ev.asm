; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntityD0Ev
; Address            : 0x54149C - 0x5414AC
; =========================================================

54149C:  PUSH            {R7,LR}
54149E:  MOV             R7, SP
5414A0:  BLX             j__ZN21CTaskSimpleHoldEntityD2Ev; CTaskSimpleHoldEntity::~CTaskSimpleHoldEntity()
5414A4:  POP.W           {R7,LR}
5414A8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
