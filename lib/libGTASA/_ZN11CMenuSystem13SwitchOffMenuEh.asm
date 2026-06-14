; =========================================================
; Game Engine Function: _ZN11CMenuSystem13SwitchOffMenuEh
; Address            : 0x43BB64 - 0x43BBC8
; =========================================================

43BB64:  PUSH            {R4,R6,R7,LR}
43BB66:  ADD             R7, SP, #8
43BB68:  MOV             R4, R0
43BB6A:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BB70)
43BB6C:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BB6E:  LDR             R0, [R0]; CMenuSystem::MenuInUse ...
43BB70:  LDRB            R0, [R0,R4]
43BB72:  CMP             R0, #0
43BB74:  IT EQ
43BB76:  POPEQ           {R4,R6,R7,PC}
43BB78:  LDR             R0, =(MenuNumber_ptr - 0x43BB7E)
43BB7A:  ADD             R0, PC; MenuNumber_ptr
43BB7C:  LDR             R0, [R0]; MenuNumber
43BB7E:  LDR.W           R0, [R0,R4,LSL#2]; void *
43BB82:  CMP             R0, #0
43BB84:  IT NE
43BB86:  BLXNE           _ZdlPv; operator delete(void *)
43BB8A:  LDR             R0, =(_ZN11CMenuSystem16num_menus_in_useE_ptr - 0x43BB92)
43BB8C:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BB94)
43BB8E:  ADD             R0, PC; _ZN11CMenuSystem16num_menus_in_useE_ptr
43BB90:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BB92:  LDR             R0, [R0]; CMenuSystem::num_menus_in_use ...
43BB94:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43BB96:  LDRB            R2, [R0]; CMenuSystem::num_menus_in_use
43BB98:  SUBS            R2, #1
43BB9A:  STRB            R2, [R0]; CMenuSystem::num_menus_in_use
43BB9C:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BBA6)
43BB9E:  MOVS            R2, #0
43BBA0:  STRB            R2, [R1,R4]
43BBA2:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BBA4:  LDR             R1, [R0]; CMenuSystem::MenuInUse ...
43BBA6:  MOV             R0, R2
43BBA8:  SXTB            R2, R0
43BBAA:  CMP             R2, #1
43BBAC:  BGT             loc_43BBB6
43BBAE:  LDRB            R3, [R1,R2]
43BBB0:  ADDS            R2, R0, #1
43BBB2:  CMP             R3, #0
43BBB4:  BEQ             loc_43BBA6
43BBB6:  LDR             R1, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43BBC0)
43BBB8:  UXTB            R2, R0
43BBBA:  CMP             R2, #2
43BBBC:  ADD             R1, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43BBBE:  IT EQ
43BBC0:  MOVEQ           R0, #0
43BBC2:  LDR             R1, [R1]; CMenuSystem::CurrentMenuInUse ...
43BBC4:  STRB            R0, [R1]; CMenuSystem::CurrentMenuInUse
43BBC6:  POP             {R4,R6,R7,PC}
