; =========================================================
; Game Engine Function: _ZN18CTaskSimpleGiveCPR19FinishGiveCPRAnimCBEP21CAnimBlendAssociationPv
; Address            : 0x5103DC - 0x5103EA
; =========================================================

5103DC:  LDRB            R0, [R1,#8]
5103DE:  MOVS            R2, #0
5103E0:  STR             R2, [R1,#0x10]
5103E2:  ORR.W           R0, R0, #2
5103E6:  STRB            R0, [R1,#8]
5103E8:  BX              LR
