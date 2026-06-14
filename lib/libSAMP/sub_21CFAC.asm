; =========================================================
; Game Engine Function: sub_21CFAC
; Address            : 0x21CFAC - 0x21D0C2
; =========================================================

21CFAC:  PUSH            {R4-R7,LR}
21CFAE:  ADD             R7, SP, #0xC
21CFB0:  PUSH.W          {R2-R10}
21CFB4:  MOV             R4, R0
21CFB6:  LDR             R0, =(__stack_chk_guard_ptr - 0x21CFBC)
21CFB8:  ADD             R0, PC; __stack_chk_guard_ptr
21CFBA:  LDR             R0, [R0]; __stack_chk_guard
21CFBC:  LDR             R0, [R0]
21CFBE:  STR             R0, [SP,#0x30+var_1C]
21CFC0:  LDRD.W          R0, R1, [R4]
21CFC4:  CMP             R0, R1
21CFC6:  BEQ             loc_21D02E
21CFC8:  LDRB            R1, [R0]
21CFCA:  CMP             R1, #0x55 ; 'U'
21CFCC:  BNE             loc_21D02E
21CFCE:  ADDS            R0, #1
21CFD0:  STR             R0, [R4]
21CFD2:  ADD             R0, SP, #0x30+var_24
21CFD4:  MOV             R1, R4
21CFD6:  BL              sub_21C7E4
21CFDA:  LDRD.W          R6, R5, [SP,#0x30+var_24]
21CFDE:  CMP             R6, R5
21CFE0:  BEQ             loc_21D0A6
21CFE2:  LDR             R1, =(aObjcproto - 0x21CFEA); "objcproto" ...
21CFE4:  ADD             R0, SP, #0x30+var_24
21CFE6:  ADD             R1, PC; "objcproto"
21CFE8:  ADD.W           R2, R1, #9
21CFEC:  BL              sub_2166CC
21CFF0:  CBZ             R0, loc_21D06A
21CFF2:  SUBS            R0, R5, R6
21CFF4:  LDRD.W          R8, R9, [R4]
21CFF8:  CMP             R0, #9
21CFFA:  IT CS
21CFFC:  MOVCS           R0, #9
21CFFE:  ADD             R0, R6
21D000:  STRD.W          R0, R5, [R4]
21D004:  MOV             R0, SP
21D006:  MOV             R1, R4
21D008:  BL              sub_21C7E4
21D00C:  LDRD.W          R6, R5, [SP,#0x30+var_30]
21D010:  STRD.W          R8, R9, [R4]
21D014:  CMP             R6, R5
21D016:  BEQ             loc_21D0A6
21D018:  MOV             R0, R4
21D01A:  BL              sub_21CFAC
21D01E:  CMP             R0, #0
21D020:  BEQ             loc_21D0A6
21D022:  MOV             R8, R0
21D024:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle13ObjCProtoNameE - 0x21D02E); `vtable for'`anonymous namespace'::itanium_demangle::ObjCProtoName ...
21D026:  MOV.W           R10, #0xA
21D02A:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ObjCProtoName
21D02C:  B               loc_21D07C
21D02E:  MOV             R0, R4
21D030:  BL              sub_2173EC
21D034:  MOV             R6, R0
21D036:  MOV             R0, R4
21D038:  BL              sub_215C48
21D03C:  CBZ             R0, loc_21D0A6
21D03E:  MOV             R5, R0
21D040:  CBZ             R6, loc_21D066
21D042:  ADD.W           R0, R4, #0x198
21D046:  MOVS            R1, #0x10
21D048:  BL              sub_216EF0
21D04C:  MOVS            R1, #3
21D04E:  STRD.W          R6, R5, [R0,#8]
21D052:  STRB            R1, [R0,#4]
21D054:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle8QualTypeE - 0x21D05A); `vtable for'`anonymous namespace'::itanium_demangle::QualType ...
21D056:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::QualType
21D058:  ADDS            R1, #8
21D05A:  STR             R1, [R0]
21D05C:  LDRB            R1, [R5,#5]
21D05E:  STRB            R1, [R0,#5]
21D060:  LDRH            R1, [R5,#6]
21D062:  STRH            R1, [R0,#6]
21D064:  B               loc_21D0A8
21D066:  MOV             R0, R5
21D068:  B               loc_21D0A8
21D06A:  MOV             R0, R4
21D06C:  BL              sub_21CFAC
21D070:  CBZ             R0, loc_21D0A6
21D072:  MOV             R8, R0
21D074:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle17VendorExtQualTypeE - 0x21D07E); `vtable for'`anonymous namespace'::itanium_demangle::VendorExtQualType ...
21D076:  MOV.W           R10, #2
21D07A:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::VendorExtQualType
21D07C:  ADD.W           R9, R0, #8
21D080:  ADD.W           R0, R4, #0x198
21D084:  MOVS            R1, #0x14
21D086:  BL              sub_216EF0
21D08A:  MOVS            R1, #1
21D08C:  STRB.W          R10, [R0,#4]
21D090:  STRB            R1, [R0,#7]
21D092:  MOVW            R1, #0x101
21D096:  STRH.W          R1, [R0,#5]
21D09A:  STRD.W          R8, R6, [R0,#8]
21D09E:  STR             R5, [R0,#0x10]
21D0A0:  STR.W           R9, [R0]
21D0A4:  B               loc_21D0A8
21D0A6:  MOVS            R0, #0
21D0A8:  LDR             R1, [SP,#0x30+var_1C]
21D0AA:  LDR             R2, =(__stack_chk_guard_ptr - 0x21D0B0)
21D0AC:  ADD             R2, PC; __stack_chk_guard_ptr
21D0AE:  LDR             R2, [R2]; __stack_chk_guard
21D0B0:  LDR             R2, [R2]
21D0B2:  CMP             R2, R1
21D0B4:  ITTT EQ
21D0B6:  ADDEQ           SP, SP, #0x18
21D0B8:  POPEQ.W         {R8-R10}
21D0BC:  POPEQ           {R4-R7,PC}
21D0BE:  BLX             __stack_chk_fail
