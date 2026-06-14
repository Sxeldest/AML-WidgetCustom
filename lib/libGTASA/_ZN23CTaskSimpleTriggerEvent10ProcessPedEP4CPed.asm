; =========================================================
; Game Engine Function: _ZN23CTaskSimpleTriggerEvent10ProcessPedEP4CPed
; Address            : 0x4EFAA0 - 0x4EFAB8
; =========================================================

4EFAA0:  PUSH            {R7,LR}
4EFAA2:  MOV             R7, SP
4EFAA4:  LDR             R2, [R0,#8]
4EFAA6:  LDR.W           R0, [R1,#0x440]
4EFAAA:  ADDS            R0, #0x68 ; 'h'; this
4EFAAC:  MOV             R1, R2; CEvent *
4EFAAE:  MOVS            R2, #0; bool
4EFAB0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4EFAB4:  MOVS            R0, #1
4EFAB6:  POP             {R7,PC}
