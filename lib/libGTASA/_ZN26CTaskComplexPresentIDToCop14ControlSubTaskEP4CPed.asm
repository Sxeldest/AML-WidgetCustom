; =========================================================
; Game Engine Function: _ZN26CTaskComplexPresentIDToCop14ControlSubTaskEP4CPed
; Address            : 0x511788 - 0x511794
; =========================================================

511788:  LDR             R1, [R0,#0xC]
51178A:  CMP             R1, #0
51178C:  ITE NE
51178E:  LDRNE           R0, [R0,#8]
511790:  MOVEQ           R0, #0
511792:  BX              LR
