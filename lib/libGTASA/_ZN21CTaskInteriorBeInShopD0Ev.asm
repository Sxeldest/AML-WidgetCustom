; =========================================================
; Game Engine Function: _ZN21CTaskInteriorBeInShopD0Ev
; Address            : 0x529100 - 0x529110
; =========================================================

529100:  PUSH            {R7,LR}
529102:  MOV             R7, SP
529104:  BLX             j__ZN18CTaskComplexWanderD2Ev; CTaskComplexWander::~CTaskComplexWander()
529108:  POP.W           {R7,LR}
52910C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
