; =========================================================
; Game Engine Function: _ZN12CHIDJoystick20InternalDrawHelpIconEPKc10HIDMappingfffib
; Address            : 0x28CCE0 - 0x28CD8A
; =========================================================

28CCE0:  PUSH            {R4-R7,LR}
28CCE2:  ADD             R7, SP, #0xC
28CCE4:  PUSH.W          {R11}
28CCE8:  VPUSH           {D8-D10}
28CCEC:  SUB             SP, SP, #0x40
28CCEE:  MOV             R12, R2
28CCF0:  MOV             R2, R1
28CCF2:  MOV             R1, R0
28CCF4:  MOV             R4, R1
28CCF6:  LDR.W           R0, [R4,#0x10]!
28CCFA:  CMP             R0, #0
28CCFC:  BEQ             loc_28CD7E
28CCFE:  LDRD.W          R6, R0, [R7,#arg_8]
28CD02:  VMOV            S20, R3
28CD06:  LDR             R3, [R1]
28CD08:  VLDR            S16, [R7,#arg_4]
28CD0C:  VLDR            S18, [R7,#arg_0]
28CD10:  LDR             R5, [R3,#0x54]
28CD12:  MOV             R3, R12
28CD14:  STR             R0, [SP,#0x68+var_68]
28CD16:  ADD             R0, SP, #0x68+var_38
28CD18:  BLX             R5
28CD1A:  VADD.F32        S0, S20, S16
28CD1E:  ADD             R5, SP, #0x68+var_4C
28CD20:  VADD.F32        S2, S18, S16
28CD24:  UXTB            R0, R6
28CD26:  STR             R0, [SP,#0x68+var_68]; float
28CD28:  MOV             R0, R5; this
28CD2A:  MOVS            R1, #0xC0; unsigned __int8
28CD2C:  MOVS            R2, #0xC0; unsigned __int8
28CD2E:  MOVS            R3, #0xC0; unsigned __int8
28CD30:  VSTR            S18, [SP,#0x68+var_3C]
28CD34:  VSTR            S20, [SP,#0x68+var_48]
28CD38:  VSTR            S0, [SP,#0x68+var_40]
28CD3C:  VSTR            S2, [SP,#0x68+var_44]
28CD40:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
28CD44:  VLDR            S0, [SP,#0x68+var_38]
28CD48:  ADD             R1, SP, #0x68+var_48; int
28CD4A:  VLDR            S6, [SP,#0x68+var_2C]
28CD4E:  MOV             R0, R4; int
28CD50:  VMOV            R3, S0; int
28CD54:  VLDR            S2, [SP,#0x68+var_34]
28CD58:  VLDR            S4, [SP,#0x68+var_30]
28CD5C:  MOV             R2, R5; int
28CD5E:  VSTR            S6, [SP,#0x68+var_68]
28CD62:  VSTR            S4, [SP,#0x68+var_64]
28CD66:  VSTR            S6, [SP,#0x68+var_60]
28CD6A:  VSTR            S0, [SP,#0x68+var_5C]
28CD6E:  VSTR            S2, [SP,#0x68+var_58]
28CD72:  VSTR            S4, [SP,#0x68+var_54]
28CD76:  VSTR            S2, [SP,#0x68+var_50]
28CD7A:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
28CD7E:  ADD             SP, SP, #0x40 ; '@'
28CD80:  VPOP            {D8-D10}
28CD84:  POP.W           {R11}
28CD88:  POP             {R4-R7,PC}
