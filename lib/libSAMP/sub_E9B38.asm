; =========================================================
; Game Engine Function: sub_E9B38
; Address            : 0xE9B38 - 0xE9C2A
; =========================================================

E9B38:  PUSH            {R4-R7,LR}
E9B3A:  ADD             R7, SP, #0xC
E9B3C:  PUSH.W          {R8}
E9B40:  SUB             SP, SP, #0x48
E9B42:  MOV             R5, R1
E9B44:  LDR             R1, =(aInvalidIterato - 0xE9B4E); "invalid_iterator" ...
E9B46:  ADD             R4, SP, #0x58+var_48
E9B48:  MOV             R8, R0
E9B4A:  ADD             R1, PC; "invalid_iterator"
E9B4C:  MOV             R6, R2
E9B4E:  MOV             R0, R4; int
E9B50:  BL              sub_DC6DC
E9B54:  ADD             R0, SP, #0x58+var_3C
E9B56:  MOV             R1, R4
E9B58:  MOV             R2, R5
E9B5A:  BL              sub_E5F8C
E9B5E:  LDR             R1, =(byte_8F794 - 0xE9B64)
E9B60:  ADD             R1, PC; byte_8F794 ; s
E9B62:  ADD             R0, SP, #0x58+var_54; int
E9B64:  BL              sub_DC6DC
E9B68:  LDRB.W          R3, [SP,#0x58+var_54]
E9B6C:  LDRD.W          R2, R1, [SP,#0x58+var_50]
E9B70:  ANDS.W          R4, R3, #1
E9B74:  ITT EQ
E9B76:  ADDEQ           R1, R0, #1
E9B78:  LSREQ           R2, R3, #1
E9B7A:  ADD             R0, SP, #0x58+var_3C
E9B7C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E9B80:  VLDR            D16, [R0]
E9B84:  MOVS            R4, #0
E9B86:  LDR             R1, [R0,#8]
E9B88:  STR             R1, [SP,#0x58+var_28]
E9B8A:  VSTR            D16, [SP,#0x58+var_30]
E9B8E:  STRD.W          R4, R4, [R0]
E9B92:  STR             R4, [R0,#8]
E9B94:  LDRB            R0, [R6]
E9B96:  LDRD.W          R2, R1, [R6,#4]
E9B9A:  ANDS.W          R3, R0, #1
E9B9E:  ITT EQ
E9BA0:  ADDEQ           R1, R6, #1
E9BA2:  LSREQ           R2, R0, #1
E9BA4:  ADD             R0, SP, #0x58+var_30
E9BA6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E9BAA:  VLDR            D16, [R0]
E9BAE:  LDR             R1, [R0,#8]
E9BB0:  STR             R1, [SP,#0x58+var_18]
E9BB2:  VSTR            D16, [SP,#0x58+var_20]
E9BB6:  STRD.W          R4, R4, [R0]
E9BBA:  STR             R4, [R0,#8]
E9BBC:  LDRB.W          R0, [SP,#0x58+var_30]
E9BC0:  LSLS            R0, R0, #0x1F
E9BC2:  ITT NE
E9BC4:  LDRNE           R0, [SP,#0x58+var_28]; void *
E9BC6:  BLXNE           j__ZdlPv; operator delete(void *)
E9BCA:  LDRB.W          R0, [SP,#0x58+var_54]
E9BCE:  LSLS            R0, R0, #0x1F
E9BD0:  ITT NE
E9BD2:  LDRNE           R0, [SP,#0x58+var_4C]; void *
E9BD4:  BLXNE           j__ZdlPv; operator delete(void *)
E9BD8:  LDRB.W          R0, [SP,#0x58+var_3C]
E9BDC:  LSLS            R0, R0, #0x1F
E9BDE:  ITT NE
E9BE0:  LDRNE           R0, [SP,#0x58+var_34]; void *
E9BE2:  BLXNE           j__ZdlPv; operator delete(void *)
E9BE6:  LDRB.W          R0, [SP,#0x58+var_48]
E9BEA:  LSLS            R0, R0, #0x1F
E9BEC:  ITT NE
E9BEE:  LDRNE           R0, [SP,#0x58+var_40]; void *
E9BF0:  BLXNE           j__ZdlPv; operator delete(void *)
E9BF4:  LDRB.W          R0, [SP,#0x58+var_20]
E9BF8:  ADD             R1, SP, #0x58+var_20
E9BFA:  LDR             R2, [SP,#0x58+var_18]
E9BFC:  LSLS            R0, R0, #0x1F
E9BFE:  IT EQ
E9C00:  ADDEQ           R2, R1, #1; char *
E9C02:  MOV             R0, R8; int
E9C04:  MOV             R1, R5; int
E9C06:  BL              sub_E60A8
E9C0A:  LDR             R0, =(_ZTVN8nlohmann6detail16invalid_iteratorE - 0xE9C14); `vtable for'nlohmann::detail::invalid_iterator ...
E9C0C:  LDRB.W          R1, [SP,#0x58+var_20]
E9C10:  ADD             R0, PC; `vtable for'nlohmann::detail::invalid_iterator
E9C12:  ADDS            R0, #8
E9C14:  STR.W           R0, [R8]
E9C18:  LSLS            R0, R1, #0x1F
E9C1A:  ITT NE
E9C1C:  LDRNE           R0, [SP,#0x58+var_18]; void *
E9C1E:  BLXNE           j__ZdlPv; operator delete(void *)
E9C22:  ADD             SP, SP, #0x48 ; 'H'
E9C24:  POP.W           {R8}
E9C28:  POP             {R4-R7,PC}
