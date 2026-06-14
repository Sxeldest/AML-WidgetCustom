; =========================================================
; Game Engine Function: _ZN9EmuShaderD2Ev
; Address            : 0x1C1642 - 0x1C1652
; =========================================================

1C1642:  PUSH            {R4,R6,R7,LR}
1C1644:  ADD             R7, SP, #8
1C1646:  MOV             R4, R0
1C1648:  LDR             R0, [R4]
1C164A:  BLX             j__Z14RQDeleteShaderP8RQShader; RQDeleteShader(RQShader *)
1C164E:  MOV             R0, R4
1C1650:  POP             {R4,R6,R7,PC}
