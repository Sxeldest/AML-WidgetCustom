; =========================================================
; Game Engine Function: sub_FFCD8
; Address            : 0xFFCD8 - 0xFFF44
; =========================================================

FFCD8:  PUSH            {R4-R7,LR}
FFCDA:  ADD             R7, SP, #0xC
FFCDC:  PUSH.W          {R7-R11}
FFCE0:  VPUSH           {D0-D9}
FFCE4:  MOV             R4, R0
FFCE6:  LDR             R0, =(__stack_chk_guard_ptr - 0xFFCEE)
FFCE8:  MOV             R10, R1
FFCEA:  ADD             R0, PC; __stack_chk_guard_ptr
FFCEC:  LDR             R0, [R0]; __stack_chk_guard
FFCEE:  LDR             R0, [R0]
FFCF0:  STR             R0, [SP,#0x70+var_34]
FFCF2:  LDRD.W          R0, R1, [R4]
FFCF6:  CMP             R0, R1
FFCF8:  BEQ.W           loc_FFF24
FFCFC:  LDRB            R1, [R0]
FFCFE:  CMP             R1, #0x49 ; 'I'
FFD00:  BNE.W           loc_FFF24
FFD04:  ADDS            R0, #1
FFD06:  STR             R0, [R4]
FFD08:  CMP.W           R10, #0
FFD0C:  BEQ             loc_FFD2E
FFD0E:  LDR.W           R0, [R4,#0x14C]
FFD12:  STR.W           R0, [R4,#0x150]
FFD16:  ADD.W           R0, R4, #0x120
FFD1A:  STR             R0, [SP,#0x70+var_50]
FFD1C:  ADD.W           R0, R4, #0x14C
FFD20:  ADD             R1, SP, #0x70+var_50
FFD22:  BL              sub_1004F2
FFD26:  LDR.W           R0, [R4,#0x120]
FFD2A:  STR.W           R0, [R4,#0x124]
FFD2E:  MOV             R11, R4
FFD30:  VMOV.I32        Q4, #0
FFD34:  LDR.W           R0, [R11,#8]!
FFD38:  ADD.W           R8, R11, #0x150
FFD3C:  LDR.W           R1, [R11,#4]
FFD40:  SUBS            R0, R1, R0
FFD42:  ASRS            R0, R0, #2
FFD44:  STR             R0, [SP,#0x70+var_6C]
FFD46:  ADD             R6, SP, #0x70+var_50
FFD48:  ADD.W           R0, R6, #0x1C
FFD4C:  ADD.W           R5, R6, #0xC
FFD50:  STR             R0, [SP,#0x70+var_5C]
FFD52:  ADD.W           R0, R11, #0x190
FFD56:  STR             R0, [SP,#0x70+var_64]
FFD58:  ADD.W           R0, R11, #0x160
FFD5C:  STR             R0, [SP,#0x70+var_60]
FFD5E:  STR.W           R10, [SP,#0x70+var_68]
FFD62:  LDRD.W          R0, R1, [R4]
FFD66:  CMP             R0, R1
FFD68:  BEQ             loc_FFD72
FFD6A:  LDRB            R1, [R0]
FFD6C:  CMP             R1, #0x45 ; 'E'
FFD6E:  BEQ.W           loc_FFEF2
FFD72:  CMP.W           R10, #0
FFD76:  BEQ             loc_FFDA4
FFD78:  LDR             R0, [SP,#0x70+var_5C]
FFD7A:  STR             R0, [SP,#0x70+var_48]
FFD7C:  LDR.W           R0, [R4,#0x14C]
FFD80:  VST1.32         {D8-D9}, [R5]
FFD84:  STRD.W          R5, R5, [SP,#0x70+var_50]
FFD88:  CMP             R0, R8
FFD8A:  BEQ             loc_FFDBC
FFD8C:  LDR             R3, [SP,#0x70+var_60]
FFD8E:  LDRD.W          R1, R2, [R4,#0x150]
FFD92:  STR.W           R8, [R4,#0x14C]
FFD96:  STR.W           R8, [R4,#0x150]
FFD9A:  STR.W           R3, [R4,#0x154]
FFD9E:  ADD             R3, SP, #0x70+var_50
FFDA0:  STM             R3!, {R0-R2}
FFDA2:  B               loc_FFDD8
FFDA4:  MOV             R0, R4
FFDA6:  BL              sub_FF754
FFDAA:  CMP             R0, #0
FFDAC:  STR             R0, [SP,#0x70+var_50]
FFDAE:  BEQ.W           loc_FFF24
FFDB2:  MOV             R0, R11
FFDB4:  MOV             R1, R6
FFDB6:  BL              sub_FF894
FFDBA:  B               loc_FFD62
FFDBC:  LDR.W           R1, [R4,#0x150]; int
FFDC0:  MOV             R0, R8; src
FFDC2:  MOV             R2, R5; dest
FFDC4:  BL              sub_1006C6
FFDC8:  LDRD.W          R0, R1, [R4,#0x14C]
FFDCC:  STR.W           R0, [R4,#0x150]
FFDD0:  SUBS            R0, R1, R0
FFDD2:  LDR             R1, [SP,#0x70+var_50]
FFDD4:  ADD             R0, R1
FFDD6:  STR             R0, [SP,#0x70+var_4C]
FFDD8:  MOV             R0, R4
FFDDA:  BL              sub_FF754
FFDDE:  LDR             R1, [SP,#0x70+var_50]
FFDE0:  MOV             R9, R0
FFDE2:  STR             R0, [SP,#0x70+var_54]
FFDE4:  LDR.W           R0, [R4,#0x14C]; ptr
FFDE8:  CMP             R1, R5
FFDEA:  BEQ             loc_FFE0C
FFDEC:  STR.W           R1, [R4,#0x14C]
FFDF0:  CMP             R0, R8
FFDF2:  BEQ             loc_FFE40
FFDF4:  LDRD.W          R1, R2, [SP,#0x70+var_4C]
FFDF8:  STR.W           R1, [R4,#0x150]
FFDFC:  LDR.W           R1, [R4,#0x154]
FFE00:  STR.W           R2, [R4,#0x154]
FFE04:  STRD.W          R0, R0, [SP,#0x70+var_50]
FFE08:  STR             R1, [SP,#0x70+var_48]
FFE0A:  B               loc_FFE50
FFE0C:  CMP             R0, R8
FFE0E:  MOV             R2, R5
FFE10:  BEQ             loc_FFE22
FFE12:  BLX             free
FFE16:  LDR             R2, [SP,#0x70+var_50]
FFE18:  LDR             R0, [SP,#0x70+var_60]
FFE1A:  STRD.W          R8, R8, [R4,#0x14C]
FFE1E:  STR.W           R0, [R4,#0x154]
FFE22:  LDR             R1, [SP,#0x70+var_4C]; int
FFE24:  MOV             R0, R2; src
FFE26:  MOV             R2, R8; dest
FFE28:  BL              sub_1006C6
FFE2C:  LDRD.W          R1, R2, [SP,#0x70+var_50]
FFE30:  LDR.W           R0, [R4,#0x14C]
FFE34:  SUBS            R2, R2, R1
FFE36:  STR             R1, [SP,#0x70+var_4C]
FFE38:  ADD             R0, R2
FFE3A:  STR.W           R0, [R4,#0x150]
FFE3E:  B               loc_FFE50
FFE40:  LDRD.W          R0, R1, [SP,#0x70+var_4C]
FFE44:  STRD.W          R0, R1, [R4,#0x150]
FFE48:  LDR             R0, [SP,#0x70+var_5C]
FFE4A:  STR             R0, [SP,#0x70+var_48]
FFE4C:  STRD.W          R5, R5, [SP,#0x70+var_50]
FFE50:  CMP.W           R9, #0
FFE54:  BEQ             loc_FFF1E
FFE56:  ADD             R1, SP, #0x70+var_54
FFE58:  MOV             R0, R11
FFE5A:  BL              sub_FF894
FFE5E:  LDRB.W          R0, [R9,#4]
FFE62:  STR.W           R9, [SP,#0x70+var_58]
FFE66:  CMP             R0, #0x21 ; '!'
FFE68:  BNE             loc_FFEDC
FFE6A:  LDR             R0, [SP,#0x70+var_64]
FFE6C:  MOVS            R1, #0x10
FFE6E:  LDRD.W          R10, R6, [R9,#8]
FFE72:  BL              sub_FFA98
FFE76:  MOVS            R1, #0x20 ; ' '
FFE78:  STRD.W          R10, R6, [R0,#8]
FFE7C:  STRB            R1, [R0,#4]
FFE7E:  MOV             R3, R10
FFE80:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13ParameterPackE - 0xFFE86); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPack ...
FFE82:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPack
FFE84:  ADDS            R1, #8
FFE86:  STR             R1, [R0]
FFE88:  MOVS            R1, #2
FFE8A:  STRB            R1, [R0,#7]
FFE8C:  MOVW            R1, #0x202
FFE90:  STRH.W          R1, [R0,#5]
FFE94:  LSLS            R1, R6, #2
FFE96:  MOV             R2, R1
FFE98:  CBZ             R2, loc_FFEA6
FFE9A:  LDM             R3!, {R6}
FFE9C:  SUBS            R2, #4
FFE9E:  LDRB            R6, [R6,#6]
FFEA0:  CMP             R6, #1
FFEA2:  BEQ             loc_FFE98
FFEA4:  B               loc_FFEAA
FFEA6:  MOVS            R2, #1
FFEA8:  STRB            R2, [R0,#6]
FFEAA:  MOV             R2, R1
FFEAC:  MOV             R3, R10
FFEAE:  CBZ             R2, loc_FFEBC
FFEB0:  LDM             R3!, {R6}
FFEB2:  SUBS            R2, #4
FFEB4:  LDRB            R6, [R6,#7]
FFEB6:  CMP             R6, #1
FFEB8:  BEQ             loc_FFEAE
FFEBA:  B               loc_FFEC0
FFEBC:  MOVS            R2, #1
FFEBE:  STRB            R2, [R0,#7]
FFEC0:  CBZ             R1, loc_FFED0
FFEC2:  LDR.W           R2, [R10],#4
FFEC6:  SUBS            R1, #4
FFEC8:  LDRB            R2, [R2,#5]
FFECA:  CMP             R2, #1
FFECC:  BEQ             loc_FFEC0
FFECE:  B               loc_FFED4
FFED0:  MOVS            R1, #1
FFED2:  STRB            R1, [R0,#5]
FFED4:  LDR.W           R10, [SP,#0x70+var_68]
FFED8:  STR             R0, [SP,#0x70+var_58]
FFEDA:  ADD             R6, SP, #0x70+var_50
FFEDC:  LDR.W           R0, [R4,#0x150]
FFEE0:  LDR.W           R0, [R0,#-4]
FFEE4:  ADD             R1, SP, #0x70+var_58
FFEE6:  BL              sub_1035B8
FFEEA:  MOV             R0, R6
FFEEC:  BL              sub_FE11A
FFEF0:  B               loc_FFD62
FFEF2:  ADDS            R0, #1
FFEF4:  STR             R0, [R4]
FFEF6:  ADD             R0, SP, #0x70+var_50
FFEF8:  LDR             R2, [SP,#0x70+var_6C]
FFEFA:  MOV             R1, R4
FFEFC:  BL              sub_FF908
FFF00:  LDR             R0, [SP,#0x70+var_64]
FFF02:  MOVS            R1, #0x10
FFF04:  BL              sub_FFA98
FFF08:  LDR             R1, =0x1010123
FFF0A:  STR             R1, [R0,#4]
FFF0C:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12TemplateArgsE - 0xFFF12); `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgs ...
FFF0E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgs
FFF10:  ADDS            R1, #8
FFF12:  STR             R1, [R0]
FFF14:  LDRD.W          R1, R2, [SP,#0x70+var_50]
FFF18:  STRD.W          R1, R2, [R0,#8]
FFF1C:  B               loc_FFF26
FFF1E:  ADD             R0, SP, #0x70+var_50
FFF20:  BL              sub_FE11A
FFF24:  MOVS            R0, #0
FFF26:  LDR             R1, [SP,#0x70+var_34]
FFF28:  LDR             R2, =(__stack_chk_guard_ptr - 0xFFF2E)
FFF2A:  ADD             R2, PC; __stack_chk_guard_ptr
FFF2C:  LDR             R2, [R2]; __stack_chk_guard
FFF2E:  LDR             R2, [R2]
FFF30:  CMP             R2, R1
FFF32:  ITTTT EQ
FFF34:  VPOPEQ          {D0-D9}
FFF38:  ADDEQ           SP, SP, #4
FFF3A:  POPEQ.W         {R8-R11}
FFF3E:  POPEQ           {R4-R7,PC}
FFF40:  BLX             __stack_chk_fail
