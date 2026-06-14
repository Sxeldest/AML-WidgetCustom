; =========================================================
; Game Engine Function: sub_105B54
; Address            : 0x105B54 - 0x105C6A
; =========================================================

105B54:  PUSH            {R4-R7,LR}
105B56:  ADD             R7, SP, #0xC
105B58:  PUSH.W          {R2-R10}
105B5C:  MOV             R4, R0
105B5E:  LDR             R0, =(__stack_chk_guard_ptr - 0x105B64)
105B60:  ADD             R0, PC; __stack_chk_guard_ptr
105B62:  LDR             R0, [R0]; __stack_chk_guard
105B64:  LDR             R0, [R0]
105B66:  STR             R0, [SP,#0x30+var_1C]
105B68:  LDRD.W          R0, R1, [R4]
105B6C:  CMP             R0, R1
105B6E:  BEQ             loc_105BD6
105B70:  LDRB            R1, [R0]
105B72:  CMP             R1, #0x55 ; 'U'
105B74:  BNE             loc_105BD6
105B76:  ADDS            R0, #1
105B78:  STR             R0, [R4]
105B7A:  ADD             R0, SP, #0x30+var_24
105B7C:  MOV             R1, R4
105B7E:  BL              sub_10538C
105B82:  LDRD.W          R6, R5, [SP,#0x30+var_24]
105B86:  CMP             R6, R5
105B88:  BEQ             loc_105C4E
105B8A:  LDR             R1, =(aObjcproto - 0x105B92); "objcproto" ...
105B8C:  ADD             R0, SP, #0x30+var_24
105B8E:  ADD             R1, PC; "objcproto"
105B90:  ADD.W           R2, R1, #9
105B94:  BL              sub_FF274
105B98:  CBZ             R0, loc_105C12
105B9A:  SUBS            R0, R5, R6
105B9C:  LDRD.W          R8, R9, [R4]
105BA0:  CMP             R0, #9
105BA2:  IT CS
105BA4:  MOVCS           R0, #9
105BA6:  ADD             R0, R6
105BA8:  STRD.W          R0, R5, [R4]
105BAC:  MOV             R0, SP
105BAE:  MOV             R1, R4
105BB0:  BL              sub_10538C
105BB4:  LDRD.W          R6, R5, [SP,#0x30+var_30]
105BB8:  STRD.W          R8, R9, [R4]
105BBC:  CMP             R6, R5
105BBE:  BEQ             loc_105C4E
105BC0:  MOV             R0, R4
105BC2:  BL              sub_105B54
105BC6:  CMP             R0, #0
105BC8:  BEQ             loc_105C4E
105BCA:  MOV             R8, R0
105BCC:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle13ObjCProtoNameE - 0x105BD6); `vtable for'`anonymous namespace'::itanium_demangle::ObjCProtoName ...
105BCE:  MOV.W           R10, #0xA
105BD2:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ObjCProtoName
105BD4:  B               loc_105C24
105BD6:  MOV             R0, R4
105BD8:  BL              sub_FFF94
105BDC:  MOV             R6, R0
105BDE:  MOV             R0, R4
105BE0:  BL              sub_FE7F0
105BE4:  CBZ             R0, loc_105C4E
105BE6:  MOV             R5, R0
105BE8:  CBZ             R6, loc_105C0E
105BEA:  ADD.W           R0, R4, #0x198
105BEE:  MOVS            R1, #0x10
105BF0:  BL              sub_FFA98
105BF4:  MOVS            R1, #3
105BF6:  STRD.W          R6, R5, [R0,#8]
105BFA:  STRB            R1, [R0,#4]
105BFC:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle8QualTypeE - 0x105C02); `vtable for'`anonymous namespace'::itanium_demangle::QualType ...
105BFE:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::QualType
105C00:  ADDS            R1, #8
105C02:  STR             R1, [R0]
105C04:  LDRB            R1, [R5,#5]
105C06:  STRB            R1, [R0,#5]
105C08:  LDRH            R1, [R5,#6]
105C0A:  STRH            R1, [R0,#6]
105C0C:  B               loc_105C50
105C0E:  MOV             R0, R5
105C10:  B               loc_105C50
105C12:  MOV             R0, R4
105C14:  BL              sub_105B54
105C18:  CBZ             R0, loc_105C4E
105C1A:  MOV             R8, R0
105C1C:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle17VendorExtQualTypeE - 0x105C26); `vtable for'`anonymous namespace'::itanium_demangle::VendorExtQualType ...
105C1E:  MOV.W           R10, #2
105C22:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::VendorExtQualType
105C24:  ADD.W           R9, R0, #8
105C28:  ADD.W           R0, R4, #0x198
105C2C:  MOVS            R1, #0x14
105C2E:  BL              sub_FFA98
105C32:  MOVS            R1, #1
105C34:  STRB.W          R10, [R0,#4]
105C38:  STRB            R1, [R0,#7]
105C3A:  MOVW            R1, #0x101
105C3E:  STRH.W          R1, [R0,#5]
105C42:  STRD.W          R8, R6, [R0,#8]
105C46:  STR             R5, [R0,#0x10]
105C48:  STR.W           R9, [R0]
105C4C:  B               loc_105C50
105C4E:  MOVS            R0, #0
105C50:  LDR             R1, [SP,#0x30+var_1C]
105C52:  LDR             R2, =(__stack_chk_guard_ptr - 0x105C58)
105C54:  ADD             R2, PC; __stack_chk_guard_ptr
105C56:  LDR             R2, [R2]; __stack_chk_guard
105C58:  LDR             R2, [R2]
105C5A:  CMP             R2, R1
105C5C:  ITTT EQ
105C5E:  ADDEQ           SP, SP, #0x18
105C60:  POPEQ.W         {R8-R10}
105C64:  POPEQ           {R4-R7,PC}
105C66:  BLX             __stack_chk_fail
