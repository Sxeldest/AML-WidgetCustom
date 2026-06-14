; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime11GetDatabaseEPKc
; Address            : 0x1EAC8C - 0x1EACE8
; =========================================================

1EAC8C:  PUSH            {R4-R7,LR}
1EAC8E:  ADD             R7, SP, #0xC
1EAC90:  PUSH.W          {R8,R9,R11}
1EAC94:  ADR             R5, aPlayer; "player"
1EAC96:  MOV             R6, R0
1EAC98:  MOV             R4, R6
1EAC9A:  MOV             R1, R5; char *
1EAC9C:  MOV             R0, R4; char *
1EAC9E:  BLX             strcmp
1EACA2:  CBNZ            R0, loc_1EACAE
1EACA4:  ADR             R6, aPlayerhi; "playerhi"
1EACA6:  BLX             j__Z17UseHiDetailPlayerv; UseHiDetailPlayer(void)
1EACAA:  CMP             R0, #0
1EACAC:  BNE             loc_1EAC98
1EACAE:  LDR             R0, =(_ZN22TextureDatabaseRuntime6loadedE_ptr - 0x1EACB4)
1EACB0:  ADD             R0, PC; _ZN22TextureDatabaseRuntime6loadedE_ptr
1EACB2:  LDR             R0, [R0]; TextureDatabaseRuntime::loaded ...
1EACB4:  LDR.W           R8, [R0,#(dword_6BD184 - 0x6BD180)]
1EACB8:  CMP.W           R8, #0
1EACBC:  BEQ             loc_1EACDE
1EACBE:  LDR             R0, =(_ZN22TextureDatabaseRuntime6loadedE_ptr - 0x1EACC6)
1EACC0:  MOVS            R6, #0
1EACC2:  ADD             R0, PC; _ZN22TextureDatabaseRuntime6loadedE_ptr
1EACC4:  LDR             R0, [R0]; TextureDatabaseRuntime::loaded ...
1EACC6:  LDR.W           R9, [R0,#(dword_6BD188 - 0x6BD180)]
1EACCA:  LDR.W           R5, [R9,R6,LSL#2]
1EACCE:  MOV             R1, R4; char *
1EACD0:  LDR             R0, [R5,#4]; char *
1EACD2:  BLX             strcmp
1EACD6:  CBZ             R0, loc_1EACE0
1EACD8:  ADDS            R6, #1
1EACDA:  CMP             R6, R8
1EACDC:  BCC             loc_1EACCA
1EACDE:  MOVS            R5, #0
1EACE0:  MOV             R0, R5
1EACE2:  POP.W           {R8,R9,R11}
1EACE6:  POP             {R4-R7,PC}
