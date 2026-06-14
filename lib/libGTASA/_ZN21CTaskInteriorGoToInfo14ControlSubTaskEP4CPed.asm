; =========================================================
; Game Engine Function: _ZN21CTaskInteriorGoToInfo14ControlSubTaskEP4CPed
; Address            : 0x52979C - 0x5297A8
; =========================================================

52979C:  LDR             R1, [R0,#0xC]
52979E:  CMP             R1, #0
5297A0:  ITE NE
5297A2:  LDRNE           R0, [R0,#8]
5297A4:  MOVEQ           R0, #0
5297A6:  BX              LR
