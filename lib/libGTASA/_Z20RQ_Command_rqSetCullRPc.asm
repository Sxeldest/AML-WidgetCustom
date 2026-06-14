; =========================================================
; Game Engine Function: _Z20RQ_Command_rqSetCullRPc
; Address            : 0x1CFC70 - 0x1CFC7C
; =========================================================

1CFC70:  LDR             R2, [R0]
1CFC72:  LDR.W           R1, [R2],#4
1CFC76:  STR             R2, [R0]
1CFC78:  MOV             R0, R1
1CFC7A:  B               _Z10es2SetCull10RQCullMode; es2SetCull(RQCullMode)
