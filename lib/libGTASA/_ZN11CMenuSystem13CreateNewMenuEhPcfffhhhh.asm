; =========================================================
; Game Engine Function: _ZN11CMenuSystem13CreateNewMenuEhPcfffhhhh
; Address            : 0x43BBE0 - 0x43BE9C
; =========================================================

43BBE0:  PUSH            {R4-R7,LR}
43BBE2:  ADD             R7, SP, #0xC
43BBE4:  PUSH.W          {R8,R9,R11}
43BBE8:  VPUSH           {D8-D10}
43BBEC:  SUB             SP, SP, #0x28
43BBEE:  MOV             R6, R0
43BBF0:  LDR             R0, =(_ZN11CMenuSystem16num_menus_in_useE_ptr - 0x43BBFC)
43BBF2:  MOV             R8, R1
43BBF4:  VMOV            S18, R3
43BBF8:  ADD             R0, PC; _ZN11CMenuSystem16num_menus_in_useE_ptr
43BBFA:  VMOV            S20, R2
43BBFE:  LDR             R0, [R0]; CMenuSystem::num_menus_in_use ...
43BC00:  LDRB            R4, [R0]; CMenuSystem::num_menus_in_use
43BC02:  MOV.W           R0, #0x418; unsigned int
43BC06:  BLX             _Znwj; operator new(uint)
43BC0A:  LDR             R1, =(MenuNumber_ptr - 0x43BC14)
43BC0C:  CMP             R6, #1
43BC0E:  LDR             R2, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43BC1A)
43BC10:  ADD             R1, PC; MenuNumber_ptr
43BC12:  VLDR            S16, [R7,#arg_0]
43BC16:  ADD             R2, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43BC18:  LDR             R3, [R1]; MenuNumber
43BC1A:  LDR             R5, [R2]; CMenuSystem::MenuInUse ...
43BC1C:  LDRD.W          R2, R12, [R7,#arg_4]
43BC20:  LDR             R1, [R7,#arg_C]
43BC22:  STR.W           R0, [R3,R4,LSL#2]
43BC26:  MOV.W           R3, #1
43BC2A:  STRB            R3, [R5,R4]
43BC2C:  STRB.W          R6, [R0,#0x40]
43BC30:  BEQ             loc_43BCAA
43BC32:  CMP             R6, #0
43BC34:  BNE.W           loc_43BE82
43BC38:  LDR             R3, =(MenuNumber_ptr - 0x43BC46)
43BC3A:  MOVS            R6, #0
43BC3C:  STRB.W          R6, [R0,#0x3F6]
43BC40:  CMP             R2, #4
43BC42:  ADD             R3, PC; MenuNumber_ptr
43BC44:  LDR             R3, [R3]; MenuNumber
43BC46:  LDR.W           R0, [R3,R4,LSL#2]
43BC4A:  IT CS
43BC4C:  MOVCS           R2, #4
43BC4E:  CMP             R1, #0
43BC50:  STRB.W          R2, [R0,#0x3F7]
43BC54:  MOV.W           R2, #1
43BC58:  LDR.W           R0, [R3,R4,LSL#2]
43BC5C:  STRB.W          R6, [R0,#0x415]
43BC60:  LDR.W           R0, [R3,R4,LSL#2]
43BC64:  STRB.W          R12, [R0,#0x3F8]
43BC68:  LDR.W           R0, [R3,R4,LSL#2]
43BC6C:  STRB.W          R2, [R0,#0x3F9]
43BC70:  LDR.W           R0, [R3,R4,LSL#2]
43BC74:  ADDW            R0, R0, #0x40C
43BC78:  VSTR            S20, [R0]
43BC7C:  LDR.W           R0, [R3,R4,LSL#2]
43BC80:  ADD.W           R0, R0, #0x410
43BC84:  VSTR            S18, [R0]
43BC88:  LDR.W           R0, [R3,R4,LSL#2]
43BC8C:  IT NE
43BC8E:  MOVNE           R1, #1
43BC90:  CMP.W           R8, #0
43BC94:  STRB.W          R1, [R0,#0x414]
43BC98:  LDR.W           R0, [R3,R4,LSL#2]
43BC9C:  ADD.W           R0, R0, #0x3CC; char *
43BCA0:  BEQ             loc_43BD26
43BCA2:  MOV             R1, R8; char *
43BCA4:  BLX             strcpy
43BCA8:  B               loc_43BD28
43BCAA:  LDR             R6, =(MenuNumber_ptr - 0x43BCB6)
43BCAC:  CMP             R1, #0
43BCAE:  VSTR            S16, [R0,#0x3FC]
43BCB2:  ADD             R6, PC; MenuNumber_ptr
43BCB4:  LDR             R6, [R6]; MenuNumber
43BCB6:  LDR.W           R0, [R6,R4,LSL#2]
43BCBA:  IT NE
43BCBC:  MOVNE           R1, #1
43BCBE:  CMP             R2, #8
43BCC0:  STRB.W          R1, [R0,#0x414]
43BCC4:  MOV.W           R1, #0x9D
43BCC8:  LDR.W           R0, [R6,R4,LSL#2]
43BCCC:  STRB.W          R12, [R0,#0x3F8]
43BCD0:  LDR.W           R0, [R6,R4,LSL#2]
43BCD4:  STRB.W          R3, [R0,#0x3F9]
43BCD8:  LDR.W           R0, [R6,R4,LSL#2]
43BCDC:  IT CS
43BCDE:  MOVCS           R2, #8
43BCE0:  STRB.W          R2, [R0,#0x3F7]
43BCE4:  LDR.W           R0, [R6,R4,LSL#2]
43BCE8:  ADDW            R0, R0, #0x40C
43BCEC:  VSTR            S20, [R0]
43BCF0:  LDR.W           R0, [R6,R4,LSL#2]
43BCF4:  ADD.W           R0, R0, #0x410
43BCF8:  VSTR            S18, [R0]
43BCFC:  LDR.W           R0, [R6,R4,LSL#2]
43BD00:  STRB.W          R1, [R0,#0x416]
43BD04:  MOVS            R1, #0
43BD06:  LDR.W           R0, [R6,R4,LSL#2]
43BD0A:  STRB.W          R1, [R0,#0x415]
43BD0E:  LDR.W           R0, [R6,R4,LSL#2]
43BD12:  LDRB.W          R1, [R0,#0x3F7]
43BD16:  SMULBB.W        R1, R1, R1; unsigned __int8
43BD1A:  STRB.W          R1, [R0,#0x3F6]
43BD1E:  MOV             R0, R4; this
43BD20:  BLX             j__ZN11CMenuSystem22FillGridWithCarColoursEh; CMenuSystem::FillGridWithCarColours(uchar)
43BD24:  B               loc_43BE82
43BD26:  STRB            R6, [R0]
43BD28:  LDR             R0, =(MenuNumber_ptr - 0x43BD34)
43BD2A:  MOVS            R1, #0x9D
43BD2C:  MOVS            R2, #1; unsigned __int8
43BD2E:  MOVS            R3, #1; unsigned __int8
43BD30:  ADD             R0, PC; MenuNumber_ptr
43BD32:  LDR.W           R8, [R7,#arg_10]
43BD36:  LDR             R0, [R0]; MenuNumber
43BD38:  LDR.W           R0, [R0,R4,LSL#2]
43BD3C:  STRB.W          R1, [R0,#0x416]
43BD40:  MOVS            R0, #1
43BD42:  STR             R0, [SP,#0x58+var_38]; unsigned __int8
43BD44:  MOVS            R1, #1; unsigned __int8
43BD46:  STRD.W          R0, R0, [SP,#0x58+var_58]; unsigned __int8
43BD4A:  STRD.W          R0, R0, [SP,#0x58+var_50]; unsigned __int8
43BD4E:  STRD.W          R0, R0, [SP,#0x58+var_48]; unsigned __int8
43BD52:  STRD.W          R0, R0, [SP,#0x58+var_40]; unsigned __int8
43BD56:  MOV             R0, R4; this
43BD58:  BLX             j__ZN11CMenuSystem13ActivateItemsEhhhhhhhhhhhhh; CMenuSystem::ActivateItems(uchar,uchar,uchar,uchar,uchar,uchar,uchar,uchar,uchar,uchar,uchar,uchar,uchar)
43BD5C:  LDR             R6, =(MenuNumber_ptr - 0x43BD6C)
43BD5E:  MOVS            R0, #0xAF
43BD60:  MOV.W           R9, #0x3A4
43BD64:  MOVW            R2, #0x3F2
43BD68:  ADD             R6, PC; MenuNumber_ptr
43BD6A:  MOV.W           R3, #0x3FC
43BD6E:  MOV.W           R12, #0xFF
43BD72:  MOVS            R5, #0
43BD74:  LDR             R6, [R6]; MenuNumber
43BD76:  MOVW            LR, #0x28F
43BD7A:  LDR.W           R1, [R6,R4,LSL#2]
43BD7E:  ADD             R1, R3
43BD80:  ADDS            R3, #4
43BD82:  VSTR            S16, [R1]
43BD86:  LDR.W           R1, [R6,R4,LSL#2]
43BD8A:  ADD             R1, R2
43BD8C:  STRB.W          R8, [R1,#-4]
43BD90:  LDR.W           R1, [R6,R4,LSL#2]
43BD94:  STRB.W          R12, [R1,R2]
43BD98:  ADDS            R2, #1
43BD9A:  LDR.W           R1, [R6,R4,LSL#2]
43BD9E:  STRB.W          R5, [R1,R9]
43BDA2:  ADD.W           R9, R9, #0xA
43BDA6:  LDR.W           R1, [R6,R4,LSL#2]
43BDAA:  ADD             R1, R0
43BDAC:  STRB.W          R5, [R1,#-0x6E]
43BDB0:  LDR.W           R1, [R6,R4,LSL#2]
43BDB4:  STRB.W          R5, [R1,#0x3E2]
43BDB8:  LDR.W           R1, [R6,R4,LSL#2]
43BDBC:  ADD             R1, R0
43BDBE:  STRB.W          R5, [R1,#-0x64]
43BDC2:  LDR.W           R1, [R6,R4,LSL#2]
43BDC6:  STRB.W          R5, [R1,#0x3E3]
43BDCA:  LDR.W           R1, [R6,R4,LSL#2]
43BDCE:  ADD             R1, R0
43BDD0:  STRB.W          R5, [R1,#-0x5A]
43BDD4:  LDR.W           R1, [R6,R4,LSL#2]
43BDD8:  STRB.W          R5, [R1,#0x3E4]
43BDDC:  LDR.W           R1, [R6,R4,LSL#2]
43BDE0:  ADD             R1, R0
43BDE2:  STRB.W          R5, [R1,#-0x50]
43BDE6:  LDR.W           R1, [R6,R4,LSL#2]
43BDEA:  STRB.W          R5, [R1,#0x3E5]
43BDEE:  LDR.W           R1, [R6,R4,LSL#2]
43BDF2:  ADD             R1, R0
43BDF4:  STRB.W          R5, [R1,#-0x46]
43BDF8:  LDR.W           R1, [R6,R4,LSL#2]
43BDFC:  STRB.W          R5, [R1,#0x3E6]
43BE00:  LDR.W           R1, [R6,R4,LSL#2]
43BE04:  ADD             R1, R0
43BE06:  STRB.W          R5, [R1,#-0x3C]
43BE0A:  LDR.W           R1, [R6,R4,LSL#2]
43BE0E:  STRB.W          R5, [R1,#0x3E7]
43BE12:  LDR.W           R1, [R6,R4,LSL#2]
43BE16:  ADD             R1, R0
43BE18:  STRB.W          R5, [R1,#-0x32]
43BE1C:  LDR.W           R1, [R6,R4,LSL#2]
43BE20:  STRB.W          R5, [R1,#0x3E8]
43BE24:  LDR.W           R1, [R6,R4,LSL#2]
43BE28:  ADD             R1, R0
43BE2A:  STRB.W          R5, [R1,#-0x28]
43BE2E:  LDR.W           R1, [R6,R4,LSL#2]
43BE32:  STRB.W          R5, [R1,#0x3E9]
43BE36:  LDR.W           R1, [R6,R4,LSL#2]
43BE3A:  ADD             R1, R0
43BE3C:  STRB.W          R5, [R1,#-0x1E]
43BE40:  LDR.W           R1, [R6,R4,LSL#2]
43BE44:  STRB.W          R5, [R1,#0x3EA]
43BE48:  LDR.W           R1, [R6,R4,LSL#2]
43BE4C:  ADD             R1, R0
43BE4E:  STRB.W          R5, [R1,#-0x14]
43BE52:  LDR.W           R1, [R6,R4,LSL#2]
43BE56:  STRB.W          R5, [R1,#0x3EB]
43BE5A:  LDR.W           R1, [R6,R4,LSL#2]
43BE5E:  ADD             R1, R0
43BE60:  STRB.W          R5, [R1,#-0xA]
43BE64:  LDR.W           R1, [R6,R4,LSL#2]
43BE68:  STRB.W          R5, [R1,#0x3EC]
43BE6C:  LDR.W           R1, [R6,R4,LSL#2]
43BE70:  STRB            R5, [R1,R0]
43BE72:  ADDS            R0, #0x78 ; 'x'
43BE74:  CMP             R0, LR
43BE76:  LDR.W           R1, [R6,R4,LSL#2]
43BE7A:  STRB.W          R5, [R1,#0x3ED]
43BE7E:  BNE.W           loc_43BD7A
43BE82:  LDR             R0, =(_ZN11CMenuSystem16num_menus_in_useE_ptr - 0x43BE88)
43BE84:  ADD             R0, PC; _ZN11CMenuSystem16num_menus_in_useE_ptr
43BE86:  LDR             R0, [R0]; CMenuSystem::num_menus_in_use ...
43BE88:  LDRB            R1, [R0]; CMenuSystem::num_menus_in_use
43BE8A:  ADDS            R1, #1
43BE8C:  STRB            R1, [R0]; CMenuSystem::num_menus_in_use
43BE8E:  MOV             R0, R4
43BE90:  ADD             SP, SP, #0x28 ; '('
43BE92:  VPOP            {D8-D10}
43BE96:  POP.W           {R8,R9,R11}
43BE9A:  POP             {R4-R7,PC}
