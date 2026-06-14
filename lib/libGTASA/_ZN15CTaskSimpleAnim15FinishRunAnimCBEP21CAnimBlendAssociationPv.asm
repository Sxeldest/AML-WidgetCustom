; =========================================================
; Game Engine Function: _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv
; Address            : 0x4D6C28 - 0x4D6C36
; =========================================================

4D6C28:  LDRB            R0, [R1,#0xC]
4D6C2A:  MOVS            R2, #0
4D6C2C:  STR             R2, [R1,#8]
4D6C2E:  ORR.W           R0, R0, #1
4D6C32:  STRB            R0, [R1,#0xC]
4D6C34:  BX              LR
