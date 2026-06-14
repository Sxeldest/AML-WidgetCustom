; =========================================================
; Game Engine Function: sub_E9CB0
; Address            : 0xE9CB0 - 0xE9DA2
; =========================================================

E9CB0:  PUSH            {R4-R7,LR}
E9CB2:  ADD             R7, SP, #0xC
E9CB4:  PUSH.W          {R8}
E9CB8:  SUB             SP, SP, #0x48
E9CBA:  MOV             R5, R1
E9CBC:  LDR             R1, =(aTypeError - 0xE9CC6); "type_error" ...
E9CBE:  ADD             R4, SP, #0x58+var_48
E9CC0:  MOV             R8, R0
E9CC2:  ADD             R1, PC; "type_error"
E9CC4:  MOV             R6, R2
E9CC6:  MOV             R0, R4; int
E9CC8:  BL              sub_DC6DC
E9CCC:  ADD             R0, SP, #0x58+var_3C
E9CCE:  MOV             R1, R4
E9CD0:  MOV             R2, R5
E9CD2:  BL              sub_E5F8C
E9CD6:  LDR             R1, =(byte_8F794 - 0xE9CDC)
E9CD8:  ADD             R1, PC; byte_8F794 ; s
E9CDA:  ADD             R0, SP, #0x58+var_54; int
E9CDC:  BL              sub_DC6DC
E9CE0:  LDRB.W          R3, [SP,#0x58+var_54]
E9CE4:  LDRD.W          R2, R1, [SP,#0x58+var_50]
E9CE8:  ANDS.W          R4, R3, #1
E9CEC:  ITT EQ
E9CEE:  ADDEQ           R1, R0, #1
E9CF0:  LSREQ           R2, R3, #1
E9CF2:  ADD             R0, SP, #0x58+var_3C
E9CF4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E9CF8:  VLDR            D16, [R0]
E9CFC:  MOVS            R4, #0
E9CFE:  LDR             R1, [R0,#8]
E9D00:  STR             R1, [SP,#0x58+var_28]
E9D02:  VSTR            D16, [SP,#0x58+var_30]
E9D06:  STRD.W          R4, R4, [R0]
E9D0A:  STR             R4, [R0,#8]
E9D0C:  LDRB            R0, [R6]
E9D0E:  LDRD.W          R2, R1, [R6,#4]
E9D12:  ANDS.W          R3, R0, #1
E9D16:  ITT EQ
E9D18:  ADDEQ           R1, R6, #1
E9D1A:  LSREQ           R2, R0, #1
E9D1C:  ADD             R0, SP, #0x58+var_30
E9D1E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E9D22:  VLDR            D16, [R0]
E9D26:  LDR             R1, [R0,#8]
E9D28:  STR             R1, [SP,#0x58+var_18]
E9D2A:  VSTR            D16, [SP,#0x58+var_20]
E9D2E:  STRD.W          R4, R4, [R0]
E9D32:  STR             R4, [R0,#8]
E9D34:  LDRB.W          R0, [SP,#0x58+var_30]
E9D38:  LSLS            R0, R0, #0x1F
E9D3A:  ITT NE
E9D3C:  LDRNE           R0, [SP,#0x58+var_28]; void *
E9D3E:  BLXNE           j__ZdlPv; operator delete(void *)
E9D42:  LDRB.W          R0, [SP,#0x58+var_54]
E9D46:  LSLS            R0, R0, #0x1F
E9D48:  ITT NE
E9D4A:  LDRNE           R0, [SP,#0x58+var_4C]; void *
E9D4C:  BLXNE           j__ZdlPv; operator delete(void *)
E9D50:  LDRB.W          R0, [SP,#0x58+var_3C]
E9D54:  LSLS            R0, R0, #0x1F
E9D56:  ITT NE
E9D58:  LDRNE           R0, [SP,#0x58+var_34]; void *
E9D5A:  BLXNE           j__ZdlPv; operator delete(void *)
E9D5E:  LDRB.W          R0, [SP,#0x58+var_48]
E9D62:  LSLS            R0, R0, #0x1F
E9D64:  ITT NE
E9D66:  LDRNE           R0, [SP,#0x58+var_40]; void *
E9D68:  BLXNE           j__ZdlPv; operator delete(void *)
E9D6C:  LDRB.W          R0, [SP,#0x58+var_20]
E9D70:  ADD             R1, SP, #0x58+var_20
E9D72:  LDR             R2, [SP,#0x58+var_18]
E9D74:  LSLS            R0, R0, #0x1F
E9D76:  IT EQ
E9D78:  ADDEQ           R2, R1, #1; char *
E9D7A:  MOV             R0, R8; int
E9D7C:  MOV             R1, R5; int
E9D7E:  BL              sub_E60A8
E9D82:  LDR             R0, =(_ZTVN8nlohmann6detail10type_errorE - 0xE9D8C); `vtable for'nlohmann::detail::type_error ...
E9D84:  LDRB.W          R1, [SP,#0x58+var_20]
E9D88:  ADD             R0, PC; `vtable for'nlohmann::detail::type_error
E9D8A:  ADDS            R0, #8
E9D8C:  STR.W           R0, [R8]
E9D90:  LSLS            R0, R1, #0x1F
E9D92:  ITT NE
E9D94:  LDRNE           R0, [SP,#0x58+var_18]; void *
E9D96:  BLXNE           j__ZdlPv; operator delete(void *)
E9D9A:  ADD             SP, SP, #0x48 ; 'H'
E9D9C:  POP.W           {R8}
E9DA0:  POP             {R4-R7,PC}
