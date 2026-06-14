; =========================================================
; Game Engine Function: _ZN11CPedScanner18ScanForPedsInRangeERK4CPed
; Address            : 0x4BAE50 - 0x4BAE70
; =========================================================

4BAE50:  PUSH            {R4,R5,R7,LR}
4BAE52:  ADD             R7, SP, #8
4BAE54:  MOV             R4, R1
4BAE56:  MOV             R5, R0
4BAE58:  MOV             R0, R4; this
4BAE5A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BAE5E:  CMP             R0, #1
4BAE60:  IT NE
4BAE62:  POPNE           {R4,R5,R7,PC}
4BAE64:  MOV             R0, R5; this
4BAE66:  MOVS            R1, #1; int
4BAE68:  MOV             R2, R4; CPed *
4BAE6A:  POP.W           {R4,R5,R7,LR}
4BAE6E:  B               _ZN14CEntityScanner22ScanForEntitiesInRangeEiRK4CPed; CEntityScanner::ScanForEntitiesInRange(int,CPed const&)
