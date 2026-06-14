; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPackD0Ev
; Address            : 0x530C8C - 0x530C9C
; =========================================================

530C8C:  PUSH            {R7,LR}
530C8E:  MOV             R7, SP
530C90:  BLX             j__ZN18CTaskSimpleJetPackD2Ev; CTaskSimpleJetPack::~CTaskSimpleJetPack()
530C94:  POP.W           {R7,LR}
530C98:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
