; =========================================================
; Game Engine Function: _ZN15CClothesBuilder17DestroySkinArraysEP15RwMatrixWeightsPj
; Address            : 0x459694 - 0x4596B2
; =========================================================

459694:  PUSH            {R4,R6,R7,LR}
459696:  ADD             R7, SP, #8
459698:  CMP             R0, #0
45969A:  MOV             R4, R1
45969C:  IT NE
45969E:  BLXNE           _ZdaPv; operator delete[](void *)
4596A2:  CMP             R4, #0
4596A4:  IT EQ
4596A6:  POPEQ           {R4,R6,R7,PC}
4596A8:  MOV             R0, R4; void *
4596AA:  POP.W           {R4,R6,R7,LR}
4596AE:  B.W             sub_18E920
