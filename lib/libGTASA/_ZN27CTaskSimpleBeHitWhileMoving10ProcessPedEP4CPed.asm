; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeHitWhileMoving10ProcessPedEP4CPed
; Address            : 0x4DF630 - 0x4DF650
; =========================================================

4DF630:  LDRB            R2, [R0,#8]
4DF632:  CMP             R2, #0
4DF634:  ITT NE
4DF636:  MOVNE           R0, #1
4DF638:  BXNE            LR
4DF63A:  LDR             R2, [R0,#0x14]
4DF63C:  CMP             R2, #0
4DF63E:  ITT NE
4DF640:  MOVNE           R0, #0; this
4DF642:  BXNE            LR
4DF644:  PUSH            {R7,LR}
4DF646:  MOV             R7, SP
4DF648:  BLX             j__ZN27CTaskSimpleBeHitWhileMoving9StartAnimEP4CPed; CTaskSimpleBeHitWhileMoving::StartAnim(CPed *)
4DF64C:  MOVS            R0, #0
4DF64E:  POP             {R7,PC}
