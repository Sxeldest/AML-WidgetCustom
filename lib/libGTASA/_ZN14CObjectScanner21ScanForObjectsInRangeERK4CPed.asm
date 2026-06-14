; =========================================================
; Game Engine Function: _ZN14CObjectScanner21ScanForObjectsInRangeERK4CPed
; Address            : 0x4BAE74 - 0x4BAEA8
; =========================================================

4BAE74:  PUSH            {R4,R5,R7,LR}
4BAE76:  ADD             R7, SP, #8
4BAE78:  MOV             R4, R1
4BAE7A:  MOV             R5, R0
4BAE7C:  LDR.W           R0, [R4,#0x590]
4BAE80:  CMP             R0, #0
4BAE82:  ITT NE
4BAE84:  LDRBNE.W        R0, [R4,#0x485]
4BAE88:  MOVSNE.W        R0, R0,LSL#31
4BAE8C:  BNE             locret_4BAEA6
4BAE8E:  MOV             R0, R4; this
4BAE90:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BAE94:  CMP             R0, #1
4BAE96:  IT NE
4BAE98:  POPNE           {R4,R5,R7,PC}
4BAE9A:  MOV             R0, R5; this
4BAE9C:  MOVS            R1, #2; int
4BAE9E:  MOV             R2, R4; CPed *
4BAEA0:  POP.W           {R4,R5,R7,LR}
4BAEA4:  B               _ZN14CEntityScanner22ScanForEntitiesInRangeEiRK4CPed; CEntityScanner::ScanForEntitiesInRange(int,CPed const&)
4BAEA6:  POP             {R4,R5,R7,PC}
