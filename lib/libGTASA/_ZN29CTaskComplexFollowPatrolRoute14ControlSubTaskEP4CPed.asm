; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute14ControlSubTaskEP4CPed
; Address            : 0x525970 - 0x525986
; =========================================================

525970:  LDRB.W          R2, [R0,#0x20]
525974:  LSLS            R2, R2, #0x1E
525976:  ITT EQ
525978:  LDREQ           R0, [R0,#8]
52597A:  BXEQ            LR
52597C:  LDR             R2, [R0]
52597E:  MOVS            R3, #0
525980:  STRH            R3, [R0,#0x12]
525982:  LDR             R2, [R2,#0x2C]
525984:  BX              R2
