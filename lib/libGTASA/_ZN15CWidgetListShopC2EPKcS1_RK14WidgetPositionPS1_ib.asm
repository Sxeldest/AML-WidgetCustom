; =========================================================
; Game Engine Function: _ZN15CWidgetListShopC2EPKcS1_RK14WidgetPositionPS1_ib
; Address            : 0x2BAB90 - 0x2BADC8
; =========================================================

2BAB90:  PUSH            {R4-R7,LR}; Alternative name is 'CWidgetListShop::CWidgetListShop(char const*, char const*, WidgetPosition const&, char const**, int, bool)'
2BAB92:  ADD             R7, SP, #0xC
2BAB94:  PUSH.W          {R8}
2BAB98:  SUB             SP, SP, #0x18
2BAB9A:  MOV             R4, R0
2BAB9C:  LDRD.W          R12, R0, [R7,#arg_0]
2BABA0:  MOV.W           R8, #0
2BABA4:  MOV             R5, R1
2BABA6:  STRD.W          R0, R8, [SP,#0x28+var_28]
2BABAA:  MOVS            R6, #1
2BABAC:  MOV             R1, R2
2BABAE:  MOV             R2, R3
2BABB0:  MOV             R0, R4
2BABB2:  MOV             R3, R12
2BABB4:  STRD.W          R6, R8, [SP,#0x28+var_20]
2BABB8:  BLX             j__ZN11CWidgetListC2EPKcRK14WidgetPositionPS1_ibbb; CWidgetList::CWidgetList(char const*,WidgetPosition const&,char const**,int,bool,bool,bool)
2BABBC:  LDR             R0, =(_ZTV15CWidgetListShop_ptr - 0x2BABCC)
2BABBE:  MOV             R2, #0x11CD6
2BABC6:  LDR             R1, =(byte_61CD7E - 0x2BABDE)
2BABC8:  ADD             R0, PC; _ZTV15CWidgetListShop_ptr
2BABCA:  STRB            R6, [R4,R2]
2BABCC:  MOVW            R3, #:lower16:(elf_hash_chain+0x1B58)
2BABD0:  LDR             R0, [R0]; `vtable for'CWidgetListShop ...
2BABD2:  MOVT            R3, #:upper16:(elf_hash_chain+0x1B58)
2BABD6:  LDR.W           R2, [R4,#0x80]
2BABDA:  ADD             R1, PC; byte_61CD7E
2BABDC:  ADDS            R0, #8
2BABDE:  STR.W           R8, [R4,R3]
2BABE2:  CMP             R5, #0
2BABE4:  STR             R0, [R4]
2BABE6:  ORR.W           R0, R2, #4
2BABEA:  STR.W           R0, [R4,#0x80]
2BABEE:  ADD.W           R0, R4, #0x11000
2BABF2:  IT EQ
2BABF4:  MOVEQ           R5, R1
2BABF6:  ADD.W           R0, R0, #0xCF0; char *
2BABFA:  MOV             R1, R5; char *
2BABFC:  BLX             strcpy
2BAC00:  LDR             R0, =(RsGlobal_ptr - 0x2BAC0E)
2BAC02:  MOVS            R1, #0; unsigned __int8
2BAC04:  VLDR            S2, =448.0
2BAC08:  MOVS            R2, #0; unsigned __int8
2BAC0A:  ADD             R0, PC; RsGlobal_ptr
2BAC0C:  MOVS            R3, #0; unsigned __int8
2BAC0E:  LDR             R0, [R0]; RsGlobal
2BAC10:  VLDR            S0, [R0,#8]
2BAC14:  ADD.W           R0, R4, #0x11C00
2BAC18:  ADDS            R0, #0xB4
2BAC1A:  VCVT.F32.S32    S0, S0
2BAC1E:  VDIV.F32        S0, S0, S2
2BAC22:  VLDR            S2, =40.0
2BAC26:  VMUL.F32        S0, S0, S2
2BAC2A:  VSTR            S0, [R0]
2BAC2E:  ADD             R0, SP, #0x28+var_14; this
2BAC30:  STR.W           R8, [SP,#0x28+var_28]; unsigned __int8
2BAC34:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAC38:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B70)
2BAC3C:  LDRB.W          R0, [SP,#0x28+var_14]
2BAC40:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B70)
2BAC44:  MOVS            R2, #0xFF; unsigned __int8
2BAC46:  STRB            R0, [R4,R1]
2BAC48:  MOV             R1, #0x11CD9
2BAC50:  LDRB.W          R0, [SP,#0x28+var_13]
2BAC54:  MOVS            R3, #0xFF; unsigned __int8
2BAC56:  STRB            R0, [R4,R1]
2BAC58:  MOV             R1, #0x11CDA
2BAC60:  LDRB.W          R0, [SP,#0x28+var_12]
2BAC64:  STRB            R0, [R4,R1]
2BAC66:  MOV             R1, #0x11CDB
2BAC6E:  LDRB.W          R0, [SP,#0x28+var_11]
2BAC72:  STRB            R0, [R4,R1]
2BAC74:  MOVS            R0, #0x40 ; '@'
2BAC76:  MOVS            R1, #0xFF; unsigned __int8
2BAC78:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
2BAC7A:  ADD             R0, SP, #0x28+var_14; this
2BAC7C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAC80:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B74)
2BAC84:  LDRB.W          R0, [SP,#0x28+var_14]
2BAC88:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B74)
2BAC8C:  MOVS            R2, #0xFF; unsigned __int8
2BAC8E:  STRB            R0, [R4,R1]
2BAC90:  MOV             R1, #0x11CDD
2BAC98:  LDRB.W          R0, [SP,#0x28+var_13]
2BAC9C:  MOVS            R3, #0xFF; unsigned __int8
2BAC9E:  STRB            R0, [R4,R1]
2BACA0:  MOV             R1, #0x11CDE
2BACA8:  LDRB.W          R0, [SP,#0x28+var_12]
2BACAC:  STRB            R0, [R4,R1]
2BACAE:  MOV             R1, #0x11CDF
2BACB6:  LDRB.W          R0, [SP,#0x28+var_11]
2BACBA:  STRB            R0, [R4,R1]
2BACBC:  MOVS            R0, #0x20 ; ' '
2BACBE:  MOVS            R1, #0xFF; unsigned __int8
2BACC0:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
2BACC2:  ADD             R0, SP, #0x28+var_14; this
2BACC4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BACC8:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B78)
2BACCC:  LDRB.W          R0, [SP,#0x28+var_14]
2BACD0:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B78)
2BACD4:  MOVS            R2, #0xFF; unsigned __int8
2BACD6:  STRB            R0, [R4,R1]
2BACD8:  MOV             R1, #0x11CE1
2BACE0:  LDRB.W          R0, [SP,#0x28+var_13]
2BACE4:  MOVS            R3, #0xFF; unsigned __int8
2BACE6:  STRB            R0, [R4,R1]
2BACE8:  MOV             R1, #0x11CE2
2BACF0:  LDRB.W          R0, [SP,#0x28+var_12]
2BACF4:  STRB            R0, [R4,R1]
2BACF6:  MOV             R1, #0x11CE3
2BACFE:  LDRB.W          R0, [SP,#0x28+var_11]
2BAD02:  STRB            R0, [R4,R1]
2BAD04:  ADD             R0, SP, #0x28+var_14; this
2BAD06:  MOVS            R1, #0xFF; unsigned __int8
2BAD08:  STR.W           R8, [SP,#0x28+var_28]; unsigned __int8
2BAD0C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAD10:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B7C)
2BAD14:  LDRB.W          R0, [SP,#0x28+var_14]
2BAD18:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B7C)
2BAD1C:  MOVS            R2, #0xFF; unsigned __int8
2BAD1E:  STRB            R0, [R4,R1]
2BAD20:  MOV             R1, #0x11CE5
2BAD28:  LDRB.W          R0, [SP,#0x28+var_13]
2BAD2C:  MOVS            R3, #0xFF; unsigned __int8
2BAD2E:  STRB            R0, [R4,R1]
2BAD30:  MOV             R1, #0x11CE6
2BAD38:  LDRB.W          R0, [SP,#0x28+var_12]
2BAD3C:  STRB            R0, [R4,R1]
2BAD3E:  MOV             R1, #0x11CE7
2BAD46:  LDRB.W          R0, [SP,#0x28+var_11]
2BAD4A:  STRB            R0, [R4,R1]
2BAD4C:  ADD             R0, SP, #0x28+var_14; this
2BAD4E:  MOVS            R1, #0xFF; unsigned __int8
2BAD50:  STR.W           R8, [SP,#0x28+var_28]; unsigned __int8
2BAD54:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAD58:  MOVW            R3, #:lower16:(elf_hash_chain+0x1B80)
2BAD5C:  LDRB.W          R2, [SP,#0x28+var_14]
2BAD60:  MOVT            R3, #:upper16:(elf_hash_chain+0x1B80)
2BAD64:  MOVW            R0, #:lower16:(elf_hash_chain+0x1C88)
2BAD68:  STRB            R2, [R4,R3]
2BAD6A:  MOV             R3, #0x11CE9
2BAD72:  LDRB.W          R2, [SP,#0x28+var_13]
2BAD76:  MOVT            R0, #:upper16:(elf_hash_chain+0x1C88)
2BAD7A:  STRB            R2, [R4,R3]
2BAD7C:  MOV             R3, #0x11CEA
2BAD84:  LDRB.W          R2, [SP,#0x28+var_12]
2BAD88:  STRB            R2, [R4,R3]
2BAD8A:  MOV             R3, #0x11CEB
2BAD92:  LDRB.W          R2, [SP,#0x28+var_11]
2BAD96:  LDR             R1, [R7,#arg_8]
2BAD98:  STRB            R2, [R4,R3]
2BAD9A:  STRB            R1, [R4,R0]
2BAD9C:  MOV             R0, #0x11CB0
2BADA4:  LDR             R1, [R4,R0]
2BADA6:  CMP             R1, #1
2BADA8:  BLT             loc_2BADBE
2BADAA:  ADDS            R6, R4, R0
2BADAC:  MOVS            R5, #0
2BADAE:  MOV             R0, R4; this
2BADB0:  MOV             R1, R5; int
2BADB2:  BLX             j__ZN15CWidgetListShop11AssignImageEi; CWidgetListShop::AssignImage(int)
2BADB6:  LDR             R0, [R6]
2BADB8:  ADDS            R5, #1
2BADBA:  CMP             R5, R0
2BADBC:  BLT             loc_2BADAE
2BADBE:  MOV             R0, R4
2BADC0:  ADD             SP, SP, #0x18
2BADC2:  POP.W           {R8}
2BADC6:  POP             {R4-R7,PC}
