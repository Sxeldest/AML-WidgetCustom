; =========================================================
; Game Engine Function: _ZN16CharSelectScreen6UpdateEf
; Address            : 0x29EA18 - 0x29EAF2
; =========================================================

29EA18:  PUSH            {R4-R7,LR}
29EA1A:  ADD             R7, SP, #0xC
29EA1C:  PUSH.W          {R8,R9,R11}
29EA20:  SUB             SP, SP, #0x108
29EA22:  VMOV.F32        S0, #-0.5
29EA26:  MOV             R5, R0
29EA28:  LDR             R0, =(__stack_chk_guard_ptr - 0x29EA34)
29EA2A:  MOV             R8, R1
29EA2C:  VMOV            S2, R8
29EA30:  ADD             R0, PC; __stack_chk_guard_ptr
29EA32:  LDR             R0, [R0]; __stack_chk_guard
29EA34:  VMUL.F32        S0, S2, S0
29EA38:  LDR             R0, [R0]
29EA3A:  STR             R0, [SP,#0x120+var_1C]
29EA3C:  VLDR            S2, [R5,#0x3C]
29EA40:  VADD.F32        S0, S2, S0
29EA44:  VCMPE.F32       S0, #0.0
29EA48:  VSTR            S0, [R5,#0x3C]
29EA4C:  VMRS            APSR_nzcv, FPSCR
29EA50:  BGE             loc_29EAD0
29EA52:  BLX             rand
29EA56:  MOV             R1, R0
29EA58:  MOV             R0, #0x55555556
29EA60:  MOVS            R3, #0
29EA62:  SMMUL.W         R2, R1, R0
29EA66:  LDR             R0, [R5,#0x34]
29EA68:  MOVT            R3, #0x40A0
29EA6C:  CMP             R0, #0
29EA6E:  ADD.W           R2, R2, R2,LSR#31
29EA72:  ADD.W           R2, R2, R2,LSL#1
29EA76:  SUB.W           R1, R1, R2
29EA7A:  STRD.W          R3, R1, [R5,#0x3C]
29EA7E:  BEQ             loc_29EA88
29EA80:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29EA84:  MOVS            R0, #0
29EA86:  STR             R0, [R5,#0x34]
29EA88:  LDR             R6, =(aMenuCharD - 0x29EA96); "menu_char%d"
29EA8A:  MOV.W           R9, #0
29EA8E:  LDR             R0, [R5,#0x38]
29EA90:  ADD             R4, SP, #0x120+var_11C
29EA92:  ADD             R6, PC; "menu_char%d"
29EA94:  STRD.W          R0, R9, [R5,#0x34]
29EA98:  MOVS            R0, #0
29EA9A:  CBZ             R0, loc_29EAA4
29EA9C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29EAA0:  STR.W           R9, [R5,#0x38]
29EAA4:  BLX             rand
29EAA8:  ASRS            R1, R0, #0x1F
29EAAA:  ADD.W           R1, R0, R1,LSR#29
29EAAE:  BIC.W           R1, R1, #7
29EAB2:  SUBS            R2, R0, R1
29EAB4:  MOV             R0, R4
29EAB6:  MOV             R1, R6
29EAB8:  BL              sub_5E6BC0
29EABC:  MOV             R0, R4; this
29EABE:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29EAC2:  LDR             R1, [R0,#0x54]
29EAC4:  ADDS            R1, #1
29EAC6:  STR             R1, [R0,#0x54]
29EAC8:  LDR             R1, [R5,#0x34]
29EACA:  STR             R0, [R5,#0x38]
29EACC:  CMP             R0, R1
29EACE:  BEQ             loc_29EA9A
29EAD0:  MOV             R0, R5; this
29EAD2:  MOV             R1, R8; float
29EAD4:  BLX             j__ZN12SelectScreen6UpdateEf; SelectScreen::Update(float)
29EAD8:  LDR             R0, =(__stack_chk_guard_ptr - 0x29EAE0)
29EADA:  LDR             R1, [SP,#0x120+var_1C]
29EADC:  ADD             R0, PC; __stack_chk_guard_ptr
29EADE:  LDR             R0, [R0]; __stack_chk_guard
29EAE0:  LDR             R0, [R0]
29EAE2:  SUBS            R0, R0, R1
29EAE4:  ITTT EQ
29EAE6:  ADDEQ           SP, SP, #0x108
29EAE8:  POPEQ.W         {R8,R9,R11}
29EAEC:  POPEQ           {R4-R7,PC}
29EAEE:  BLX             __stack_chk_fail
