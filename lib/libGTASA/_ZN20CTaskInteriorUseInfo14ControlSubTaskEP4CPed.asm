; =========================================================
; Game Engine Function: _ZN20CTaskInteriorUseInfo14ControlSubTaskEP4CPed
; Address            : 0x529B8C - 0x529BA4
; =========================================================

529B8C:  LDR             R2, [R0,#0xC]
529B8E:  CMP             R2, #0
529B90:  ITT EQ
529B92:  MOVEQ           R0, #0
529B94:  BXEQ            LR
529B96:  LDR             R2, [R2,#0x1C]
529B98:  CMP             R2, #0
529B9A:  IT NE
529B9C:  STRNE.W         R2, [R1,#0x12C]
529BA0:  LDR             R0, [R0,#8]
529BA2:  BX              LR
