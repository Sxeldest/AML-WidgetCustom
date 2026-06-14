; =========================================================
; Game Engine Function: sub_21CD74
; Address            : 0x21CD74 - 0x21CF70
; =========================================================

21CD74:  PUSH            {R4-R7,LR}
21CD76:  ADD             R7, SP, #0xC
21CD78:  PUSH.W          {R3-R11}
21CD7C:  MOV             R5, R0
21CD7E:  LDR             R0, =(__stack_chk_guard_ptr - 0x21CD84)
21CD80:  ADD             R0, PC; __stack_chk_guard_ptr
21CD82:  LDR             R0, [R0]; __stack_chk_guard
21CD84:  LDR             R0, [R0]
21CD86:  STR             R0, [SP,#0x30+var_20]
21CD88:  MOV             R0, R5
21CD8A:  BL              sub_2173EC
21CD8E:  LDR             R1, =(aDo - 0x21CD98); "Do" ...
21CD90:  MOV             R9, R0
21CD92:  MOV             R0, R5
21CD94:  ADD             R1, PC; "Do"
21CD96:  ADDS            R2, R1, #2
21CD98:  BL              sub_2155E4
21CD9C:  CMP             R0, #0
21CD9E:  BEQ             loc_21CE56
21CDA0:  LDR             R1, =(aNoexcept_0 - 0x21CDA8); "noexcept" ...
21CDA2:  MOV             R0, R5
21CDA4:  ADD             R1, PC; "noexcept"
21CDA6:  BL              sub_21D114
21CDAA:  MOV             R11, R0
21CDAC:  LDR             R1, =(aDx - 0x21CDB4); "Dx" ...
21CDAE:  MOV             R0, R5
21CDB0:  ADD             R1, PC; "Dx"
21CDB2:  ADDS            R2, R1, #2
21CDB4:  BL              sub_2155E4
21CDB8:  LDRD.W          R0, R1, [R5]
21CDBC:  CMP             R0, R1
21CDBE:  BEQ.W           loc_21CEDA
21CDC2:  LDRB            R2, [R0]
21CDC4:  CMP             R2, #0x46 ; 'F'
21CDC6:  BNE.W           loc_21CEDA
21CDCA:  ADDS            R2, R0, #1
21CDCC:  STR             R2, [R5]
21CDCE:  CMP             R2, R1
21CDD0:  BEQ             loc_21CDDC
21CDD2:  LDRB            R1, [R2]
21CDD4:  CMP             R1, #0x59 ; 'Y'
21CDD6:  ITT EQ
21CDD8:  ADDEQ           R0, #2
21CDDA:  STREQ           R0, [R5]
21CDDC:  MOV             R0, R5
21CDDE:  BL              sub_215C48
21CDE2:  CMP             R0, #0
21CDE4:  BEQ             loc_21CEDA
21CDE6:  STR.W           R9, [SP,#0x30+var_2C]
21CDEA:  MOV             R9, R5
21CDEC:  MOV             R10, R0
21CDEE:  LDR.W           R0, [R9,#8]!
21CDF2:  ADD.W           R8, SP, #0x30+var_28
21CDF6:  LDR.W           R1, [R9,#4]
21CDFA:  SUBS            R0, R1, R0
21CDFC:  ASRS            R0, R0, #2
21CDFE:  STR             R0, [SP,#0x30+var_30]
21CE00:  LDR             R6, =(aRe_0 - 0x21CE08); "RE" ...
21CE02:  LDR             R4, =(aOe - 0x21CE0A); "OE" ...
21CE04:  ADD             R6, PC; "RE"
21CE06:  ADD             R4, PC; "OE"
21CE08:  LDRD.W          R0, R1, [R5]
21CE0C:  CMP             R0, R1
21CE0E:  BEQ             loc_21CE1C
21CE10:  LDRB            R1, [R0]
21CE12:  CMP             R1, #0x76 ; 'v'
21CE14:  BEQ             loc_21CE50
21CE16:  CMP             R1, #0x45 ; 'E'
21CE18:  BEQ.W           loc_21CF34
21CE1C:  ADDS            R2, R6, #2
21CE1E:  MOV             R0, R5
21CE20:  MOV             R1, R6
21CE22:  BL              sub_2155E4
21CE26:  CMP             R0, #0
21CE28:  BNE.W           loc_21CF2C
21CE2C:  ADDS            R2, R4, #2
21CE2E:  MOV             R0, R5
21CE30:  MOV             R1, R4
21CE32:  BL              sub_2155E4
21CE36:  CMP             R0, #0
21CE38:  BNE             loc_21CF30
21CE3A:  MOV             R0, R5
21CE3C:  BL              sub_215C48
21CE40:  CMP             R0, #0
21CE42:  STR             R0, [SP,#0x30+var_28]
21CE44:  BEQ             loc_21CEDA
21CE46:  MOV             R0, R9
21CE48:  MOV             R1, R8
21CE4A:  BL              sub_216CEC
21CE4E:  B               loc_21CE08
21CE50:  ADDS            R0, #1
21CE52:  STR             R0, [R5]
21CE54:  B               loc_21CE08
21CE56:  LDR             R1, =(aDo_0 - 0x21CE5E); "DO" ...
21CE58:  MOV             R0, R5
21CE5A:  ADD             R1, PC; "DO"
21CE5C:  ADDS            R2, R1, #2
21CE5E:  BL              sub_2155E4
21CE62:  CBZ             R0, loc_21CE9A
21CE64:  MOV             R0, R5
21CE66:  BL              sub_217B38
21CE6A:  CBZ             R0, loc_21CEDA
21CE6C:  MOV             R4, R0
21CE6E:  LDRD.W          R0, R1, [R5]
21CE72:  CMP             R0, R1
21CE74:  BEQ             loc_21CEDA
21CE76:  LDRB            R1, [R0]
21CE78:  CMP             R1, #0x45 ; 'E'
21CE7A:  BNE             loc_21CEDA
21CE7C:  ADDS            R0, #1
21CE7E:  STR             R0, [R5]
21CE80:  ADD.W           R0, R5, #0x198
21CE84:  MOVS            R1, #0xC
21CE86:  BL              sub_216EF0
21CE8A:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12NoexceptSpecE - 0x21CE94); `vtable for'`anonymous namespace'::itanium_demangle::NoexceptSpec ...
21CE8C:  MOV             R11, R0
21CE8E:  LDR             R0, =0x1010110
21CE90:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NoexceptSpec
21CE92:  STR.W           R4, [R11,#8]
21CE96:  ADDS            R1, #8
21CE98:  B               loc_21CF26
21CE9A:  LDR             R1, =(aDw - 0x21CEA2); "Dw" ...
21CE9C:  MOV             R0, R5
21CE9E:  ADD             R1, PC; "Dw"
21CEA0:  ADDS            R2, R1, #2
21CEA2:  BL              sub_2155E4
21CEA6:  CBZ             R0, loc_21CEF6
21CEA8:  MOV             R6, R5
21CEAA:  LDR.W           R0, [R6,#8]!
21CEAE:  LDR             R1, [R6,#4]
21CEB0:  ADD             R4, SP, #0x30+var_28
21CEB2:  SUBS            R0, R1, R0
21CEB4:  MOV.W           R8, R0,ASR#2
21CEB8:  LDRD.W          R0, R1, [R5]
21CEBC:  CMP             R0, R1
21CEBE:  BEQ             loc_21CEC6
21CEC0:  LDRB            R1, [R0]
21CEC2:  CMP             R1, #0x45 ; 'E'
21CEC4:  BEQ             loc_21CEFC
21CEC6:  MOV             R0, R5
21CEC8:  BL              sub_215C48
21CECC:  STR             R0, [SP,#0x30+var_28]
21CECE:  CBZ             R0, loc_21CEDA
21CED0:  MOV             R0, R6
21CED2:  MOV             R1, R4
21CED4:  BL              sub_216CEC
21CED8:  B               loc_21CEB8
21CEDA:  MOVS            R0, #0
21CEDC:  LDR             R1, [SP,#0x30+var_20]
21CEDE:  LDR             R2, =(__stack_chk_guard_ptr - 0x21CEE4)
21CEE0:  ADD             R2, PC; __stack_chk_guard_ptr
21CEE2:  LDR             R2, [R2]; __stack_chk_guard
21CEE4:  LDR             R2, [R2]
21CEE6:  CMP             R2, R1
21CEE8:  ITTT EQ
21CEEA:  ADDEQ           SP, SP, #0x14
21CEEC:  POPEQ.W         {R8-R11}
21CEF0:  POPEQ           {R4-R7,PC}
21CEF2:  BLX             __stack_chk_fail
21CEF6:  MOV.W           R11, #0
21CEFA:  B               loc_21CDAC
21CEFC:  ADDS            R0, #1
21CEFE:  STR             R0, [R5]
21CF00:  ADD             R0, SP, #0x30+var_28
21CF02:  MOV             R1, R5
21CF04:  MOV             R2, R8
21CF06:  BL              sub_216D60
21CF0A:  ADD.W           R0, R5, #0x198
21CF0E:  MOVS            R1, #0x10
21CF10:  BL              sub_216EF0
21CF14:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle20DynamicExceptionSpecE - 0x21CF1E); `vtable for'`anonymous namespace'::itanium_demangle::DynamicExceptionSpec ...
21CF16:  MOV             R11, R0
21CF18:  LDR             R0, =0x1010111
21CF1A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::DynamicExceptionSpec
21CF1C:  LDRD.W          R2, R3, [SP,#0x30+var_28]
21CF20:  ADDS            R1, #8
21CF22:  STRD.W          R2, R3, [R11,#8]
21CF26:  STRD.W          R1, R0, [R11]
21CF2A:  B               loc_21CDAC
21CF2C:  MOVS            R4, #1
21CF2E:  B               loc_21CF3A
21CF30:  MOVS            R4, #2
21CF32:  B               loc_21CF3A
21CF34:  MOVS            R4, #0
21CF36:  ADDS            R0, #1
21CF38:  STR             R0, [R5]
21CF3A:  ADD             R0, SP, #0x30+var_28
21CF3C:  LDR             R2, [SP,#0x30+var_30]
21CF3E:  MOV             R1, R5
21CF40:  BL              sub_216D60
21CF44:  ADD.W           R0, R5, #0x198
21CF48:  MOVS            R1, #0x20 ; ' '
21CF4A:  BL              sub_216EF0
21CF4E:  STR.W           R11, [R0,#0x1C]
21CF52:  STRB            R4, [R0,#0x18]
21CF54:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle12FunctionTypeE - 0x21CF60); `vtable for'`anonymous namespace'::itanium_demangle::FunctionType ...
21CF56:  LDR             R1, =0x1000F
21CF58:  LDRD.W          R3, R4, [SP,#0x30+var_28]
21CF5C:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::FunctionType
21CF5E:  ADDS            R2, #8
21CF60:  STRD.W          R2, R1, [R0]
21CF64:  LDR             R1, [SP,#0x30+var_2C]
21CF66:  STRD.W          R10, R3, [R0,#8]
21CF6A:  STR             R4, [R0,#0x10]
21CF6C:  STR             R1, [R0,#0x14]
21CF6E:  B               loc_21CEDC
