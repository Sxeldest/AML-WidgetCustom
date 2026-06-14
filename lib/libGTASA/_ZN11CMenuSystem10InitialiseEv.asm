; =========================================================
; Game Engine Function: _ZN11CMenuSystem10InitialiseEv
; Address            : 0x43BA70 - 0x43BB2E
; =========================================================

43BA70:  PUSH            {R7,LR}
43BA72:  MOV             R7, SP
43BA74:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BA7A)
43BA76:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BA78:  LDR             R0, [R0]; CMenuSystem::MenuInUse ...
43BA7A:  LDRB            R0, [R0]; CMenuSystem::MenuInUse
43BA7C:  CBZ             R0, loc_43BACC
43BA7E:  LDR             R0, =(MenuNumber_ptr - 0x43BA84)
43BA80:  ADD             R0, PC; MenuNumber_ptr
43BA82:  LDR             R0, [R0]; MenuNumber
43BA84:  LDR             R0, [R0]; void *
43BA86:  CMP             R0, #0
43BA88:  IT NE
43BA8A:  BLXNE           _ZdlPv; operator delete(void *)
43BA8E:  LDR             R0, =(_ZN11CMenuSystem16num_menus_in_useE_ptr - 0x43BA98)
43BA90:  MOVS            R3, #0
43BA92:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BA9A)
43BA94:  ADD             R0, PC; _ZN11CMenuSystem16num_menus_in_useE_ptr
43BA96:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BA98:  LDR             R0, [R0]; CMenuSystem::num_menus_in_use ...
43BA9A:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43BA9C:  LDRB            R2, [R0]; CMenuSystem::num_menus_in_use
43BA9E:  STRB            R3, [R1]; CMenuSystem::MenuInUse
43BAA0:  SUBS            R1, R2, #1
43BAA2:  STRB            R1, [R0]; CMenuSystem::num_menus_in_use
43BAA4:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BAAC)
43BAA6:  MOVS            R1, #1
43BAA8:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BAAA:  LDR             R0, [R0]; CMenuSystem::MenuInUse ...
43BAAC:  ADDS            R2, R1, #1
43BAAE:  CMP             R1, #1
43BAB0:  BGT             loc_43BABA
43BAB2:  LDRB            R1, [R0,R1]
43BAB4:  CMP             R1, #0
43BAB6:  MOV             R1, R2
43BAB8:  BEQ             loc_43BAAC
43BABA:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43BAC2)
43BABC:  SUBS            R1, R2, #1
43BABE:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43BAC0:  UXTB            R2, R1
43BAC2:  CMP             R2, #2
43BAC4:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43BAC6:  IT EQ
43BAC8:  MOVEQ           R1, #0
43BACA:  STRB            R1, [R0]; CMenuSystem::CurrentMenuInUse
43BACC:  LDR             R0, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BAD2)
43BACE:  ADD             R0, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BAD0:  LDR             R0, [R0]; CMenuSystem::MenuInUse ...
43BAD2:  LDRB            R0, [R0,#(byte_99221D - 0x99221C)]
43BAD4:  CBZ             R0, loc_43BB22
43BAD6:  LDR             R0, =(MenuNumber_ptr - 0x43BADC)
43BAD8:  ADD             R0, PC; MenuNumber_ptr
43BADA:  LDR             R0, [R0]; MenuNumber
43BADC:  LDR             R0, [R0,#(dword_992224 - 0x992220)]; void *
43BADE:  CMP             R0, #0
43BAE0:  IT NE
43BAE2:  BLXNE           _ZdlPv; operator delete(void *)
43BAE6:  LDR             R0, =(_ZN11CMenuSystem16num_menus_in_useE_ptr - 0x43BAEE)
43BAE8:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BAF0)
43BAEA:  ADD             R0, PC; _ZN11CMenuSystem16num_menus_in_useE_ptr
43BAEC:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BAEE:  LDR             R2, [R0]; CMenuSystem::num_menus_in_use ...
43BAF0:  MOVS            R0, #0
43BAF2:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43BAF4:  LDRB            R3, [R2]; CMenuSystem::num_menus_in_use
43BAF6:  STRB            R0, [R1,#(byte_99221D - 0x99221C)]
43BAF8:  SUBS            R1, R3, #1
43BAFA:  STRB            R1, [R2]; CMenuSystem::num_menus_in_use
43BAFC:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BB02)
43BAFE:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BB00:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43BB02:  ADDS            R2, R0, #1
43BB04:  CMP             R0, #1
43BB06:  BGT             loc_43BB10
43BB08:  LDRB            R0, [R1,R0]
43BB0A:  CMP             R0, #0
43BB0C:  MOV             R0, R2
43BB0E:  BEQ             loc_43BB02
43BB10:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43BB18)
43BB12:  SUBS            R1, R2, #1
43BB14:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43BB16:  UXTB            R2, R1
43BB18:  CMP             R2, #2
43BB1A:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43BB1C:  IT EQ
43BB1E:  MOVEQ           R1, #0
43BB20:  STRB            R1, [R0]; CMenuSystem::CurrentMenuInUse
43BB22:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43BB2A)
43BB24:  MOVS            R1, #0
43BB26:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43BB28:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43BB2A:  STRB            R1, [R0]; CMenuSystem::CurrentMenuInUse
43BB2C:  POP             {R7,PC}
