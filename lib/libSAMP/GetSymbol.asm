; =========================================================
; Game Engine Function: GetSymbol
; Address            : 0x1C0B50 - 0x1C0BB4
; =========================================================

1C0B50:  PUSH            {R4,R5,R11,LR}
1C0B54:  ADD             R11, SP, #8
1C0B58:  MOV             R4, R1
1C0B5C:  MOV             R5, R0
1C0B60:  BL              dlerror
1C0B64:  MOV             R0, R5; handle
1C0B68:  MOV             R1, R4; name
1C0B6C:  BL              dlsym
1C0B70:  MOV             R5, R0
1C0B74:  BL              dlerror
1C0B78:  MOV             R3, R0
1C0B7C:  CMP             R3, #0
1C0B80:  BEQ             loc_1C0BAC
1C0B84:  LDR             R0, =(LogLevel_ptr - 0x1C0B94)
1C0B88:  MOV             R5, #0
1C0B8C:  LDR             R0, [PC,R0]; LogLevel
1C0B90:  LDR             R0, [R0]
1C0B94:  CMP             R0, #2
1C0B98:  BCC             loc_1C0BAC
1C0B9C:  ADR             R0, aGetsymbol_0; "GetSymbol"
1C0BA0:  ADR             R1, aFailedToLoadSS; "Failed to load %s: %s\n"
1C0BA4:  MOV             R2, R4
1C0BA8:  BL              j_al_print
1C0BAC:  MOV             R0, R5
1C0BB0:  POP             {R4,R5,R11,PC}
