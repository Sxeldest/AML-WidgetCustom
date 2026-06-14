; =========================================================
; Game Engine Function: sub_124CB8
; Address            : 0x124CB8 - 0x125206
; =========================================================

124CB8:  PUSH            {R4-R7,LR}
124CBA:  ADD             R7, SP, #0xC
124CBC:  PUSH.W          {R8-R11}
124CC0:  SUB             SP, SP, #0x2C
124CC2:  MOV             R10, R0
124CC4:  LDR             R0, =(dword_263C44 - 0x124CCC)
124CC6:  LDR             R1, =(off_263C40 - 0x124CD0)
124CC8:  ADD             R0, PC; dword_263C44
124CCA:  STR             R0, [SP,#0x48+var_38]
124CCC:  ADD             R1, PC; off_263C40
124CCE:  LDR             R0, [R0]
124CD0:  LDR             R1, [R1]
124CD2:  BLX             R1
124CD4:  LDR             R0, =(byte_263C50 - 0x124CDA)
124CD6:  ADD             R0, PC; byte_263C50
124CD8:  LDRB            R0, [R0]
124CDA:  DMB.W           ISH
124CDE:  LDR             R4, =(off_263C4C - 0x124CE4)
124CE0:  ADD             R4, PC; off_263C4C
124CE2:  LSLS            R0, R0, #0x1F
124CE4:  BEQ.W           loc_12511E
124CE8:  LDR             R0, =(byte_263C58 - 0x124CEE)
124CEA:  ADD             R0, PC; byte_263C58
124CEC:  LDRB            R0, [R0]
124CEE:  DMB.W           ISH
124CF2:  LDR             R5, =(off_263C54 - 0x124CF8)
124CF4:  ADD             R5, PC; off_263C54
124CF6:  LSLS            R0, R0, #0x1F
124CF8:  BEQ.W           loc_12514A
124CFC:  LDR             R0, =(byte_263C60 - 0x124D02)
124CFE:  ADD             R0, PC; byte_263C60
124D00:  LDRB            R0, [R0]
124D02:  DMB.W           ISH
124D06:  LSLS            R0, R0, #0x1F
124D08:  LDR             R0, =(unk_263C5C - 0x124D0E)
124D0A:  ADD             R0, PC; unk_263C5C
124D0C:  STR             R0, [SP,#0x48+var_30]
124D0E:  BEQ.W           loc_12517A
124D12:  LDR             R0, =(byte_263C68 - 0x124D18)
124D14:  ADD             R0, PC; byte_263C68
124D16:  LDRB            R0, [R0]
124D18:  DMB.W           ISH
124D1C:  LSLS            R0, R0, #0x1F
124D1E:  BEQ.W           loc_1251A8
124D22:  LDR             R0, =(byte_263C70 - 0x124D28)
124D24:  ADD             R0, PC; byte_263C70
124D26:  LDRB            R0, [R0]
124D28:  DMB.W           ISH
124D2C:  LSLS            R0, R0, #0x1F
124D2E:  LDR             R0, =(unk_263C6C - 0x124D34)
124D30:  ADD             R0, PC; unk_263C6C
124D32:  STR             R0, [SP,#0x48+var_34]
124D34:  BEQ.W           loc_1251D8
124D38:  LDR             R0, =(aData_1 - 0x124D40); "DATA" ...
124D3A:  LDR             R1, [R4]
124D3C:  ADD             R0, PC; "DATA"
124D3E:  BLX             R1
124D40:  LDR             R0, =(aHandlingCfg - 0x124D4A); "HANDLING.CFG" ...
124D42:  LDR             R1, =(aRb_0 - 0x124D4C); "rb" ...
124D44:  LDR             R2, [R5]
124D46:  ADD             R0, PC; "HANDLING.CFG"
124D48:  ADD             R1, PC; "rb"
124D4A:  BLX             R2
124D4C:  MOV             R11, R0
124D4E:  LDR             R0, =(byte_8F794 - 0x124D56)
124D50:  LDR             R1, [R4]
124D52:  ADD             R0, PC; byte_8F794
124D54:  BLX             R1
124D56:  LDR.W           R8, [SP,#0x48+var_30]
124D5A:  MOV             R0, R11
124D5C:  LDR.W           R1, [R8]
124D60:  BLX             R1
124D62:  CMP             R0, #0
124D64:  BEQ.W           loc_12510C
124D68:  MOV             R4, R0
124D6A:  LDR             R0, =(aTheEnd - 0x124D72); ";the end" ...
124D6C:  ADD             R5, SP, #0x48+var_28
124D6E:  ADD             R0, PC; ";the end"
124D70:  STR             R0, [SP,#0x48+s2]
124D72:  LDR             R0, =(dword_238E9C - 0x124D78)
124D74:  ADD             R0, PC; dword_238E9C
124D76:  STR             R0, [SP,#0x48+var_3C]
124D78:  LDR             R0, =(dword_238E94 - 0x124D7E)
124D7A:  ADD             R0, PC; dword_238E94
124D7C:  STR             R0, [SP,#0x48+var_40]
124D7E:  LDR             R1, [SP,#0x48+s2]; s2
124D80:  MOV             R0, R4; s1
124D82:  BLX             strcmp
124D86:  CMP             R0, #0
124D88:  BEQ.W           loc_12510C
124D8C:  LDRB            R0, [R4]
124D8E:  CMP             R0, #0x24 ; '$'
124D90:  BEQ.W           loc_124F2C
124D94:  CMP             R0, #0x21 ; '!'
124D96:  BNE.W           loc_1250FC
124D9A:  ADDS            R1, R4, #1
124D9C:  MOV             R0, R5
124D9E:  BL              sub_125DCC
124DA2:  LDR             R0, [SP,#0x48+var_28]
124DA4:  LDRB            R2, [R0]
124DA6:  LDR             R1, [R0,#8]
124DA8:  LSLS            R2, R2, #0x1F
124DAA:  IT EQ
124DAC:  ADDEQ           R1, R0, #1; s
124DAE:  MOV             R0, R10; int
124DB0:  BL              sub_124B0C
124DB4:  MOV             R6, R0
124DB6:  MOV             R1, R0
124DB8:  BL              sub_125D30
124DBC:  MOV             R4, R0
124DBE:  LDR             R0, [SP,#0x48+var_28]
124DC0:  STR             R6, [R4]
124DC2:  ADDS            R0, #0xC
124DC4:  MOVS            R1, #0
124DC6:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124DCA:  VMOV            S0, R0
124DCE:  LDR             R0, [SP,#0x48+var_28]
124DD0:  VSTR            S0, [R4,#4]
124DD4:  ADDS            R0, #0x18
124DD6:  MOVS            R1, #0
124DD8:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124DDC:  VMOV            S0, R0
124DE0:  LDR             R0, [SP,#0x48+var_28]
124DE2:  VSTR            S0, [R4,#8]
124DE6:  ADDS            R0, #0x24 ; '$'
124DE8:  MOVS            R1, #0
124DEA:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124DEE:  VMOV            S0, R0
124DF2:  LDR             R0, [SP,#0x48+var_28]
124DF4:  VSTR            S0, [R4,#0xC]
124DF8:  ADDS            R0, #0x30 ; '0'
124DFA:  MOVS            R1, #0
124DFC:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E00:  VMOV            S0, R0
124E04:  LDR             R0, [SP,#0x48+var_28]
124E06:  VSTR            S0, [R4,#0x10]
124E0A:  ADDS            R0, #0x3C ; '<'
124E0C:  MOVS            R1, #0
124E0E:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E12:  VMOV            S0, R0
124E16:  LDR             R0, [SP,#0x48+var_28]
124E18:  VSTR            S0, [R4,#0x14]
124E1C:  ADDS            R0, #0x48 ; 'H'
124E1E:  MOVS            R1, #0
124E20:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E24:  VMOV            S0, R0
124E28:  LDR             R0, [SP,#0x48+var_28]
124E2A:  VSTR            S0, [R4,#0x18]
124E2E:  ADDS            R0, #0x54 ; 'T'
124E30:  MOVS            R1, #0
124E32:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E36:  VMOV            S0, R0
124E3A:  LDR             R0, [SP,#0x48+var_28]
124E3C:  VSTR            S0, [R4,#0x1C]
124E40:  ADDS            R0, #0x60 ; '`'
124E42:  MOVS            R1, #0
124E44:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E48:  VMOV            S0, R0
124E4C:  LDR             R0, [SP,#0x48+var_28]
124E4E:  VSTR            S0, [R4,#0x20]
124E52:  ADDS            R0, #0x6C ; 'l'
124E54:  MOVS            R1, #0
124E56:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E5A:  VMOV            S0, R0
124E5E:  LDR             R0, [SP,#0x48+var_28]
124E60:  VSTR            S0, [R4,#0x24]
124E64:  ADDS            R0, #0x78 ; 'x'
124E66:  MOVS            R1, #0
124E68:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E6C:  VMOV            S0, R0
124E70:  LDR             R0, [SP,#0x48+var_28]
124E72:  VSTR            S0, [R4,#0x28]
124E76:  ADDS            R0, #0x84
124E78:  MOVS            R1, #0
124E7A:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E7E:  VMOV            S0, R0
124E82:  LDR             R0, [SP,#0x48+var_28]
124E84:  VSTR            S0, [R4,#0x2C]
124E88:  ADDS            R0, #0x90
124E8A:  MOVS            R1, #0
124E8C:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124E90:  VMOV            S0, R0
124E94:  LDR             R0, [SP,#0x48+var_28]
124E96:  VSTR            S0, [R4,#0x30]
124E9A:  ADDS            R0, #0x9C
124E9C:  MOVS            R1, #0
124E9E:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124EA2:  VMOV            S0, R0
124EA6:  LDR             R0, [SP,#0x48+var_28]
124EA8:  VSTR            S0, [R4,#0x34]
124EAC:  ADDS            R0, #0xA8
124EAE:  MOVS            R1, #0
124EB0:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124EB4:  VMOV            S0, R0
124EB8:  LDR             R0, [SP,#0x48+var_28]
124EBA:  VSTR            S0, [R4,#0x38]
124EBE:  ADDS            R0, #0xB4
124EC0:  MOVS            R1, #0
124EC2:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124EC6:  VMOV            S0, R0
124ECA:  LDR             R0, [SP,#0x48+var_34]
124ECC:  VSTR            S0, [R4,#0x3C]
124ED0:  LDR             R2, [R0]
124ED2:  LDR             R0, [SP,#0x48+var_38]
124ED4:  LDR             R0, [R0]
124ED6:  MOV             R1, R4
124ED8:  BLX             R2
124EDA:  MOV             R0, R5
124EDC:  BL              sub_F4D2E
124EE0:  B               loc_1250FC
124EE2:  ALIGN 4
124EE4:  DCD dword_263C44 - 0x124CCC
124EE8:  DCD off_263C40 - 0x124CD0
124EEC:  DCD byte_263C50 - 0x124CDA
124EF0:  DCD off_263C4C - 0x124CE4
124EF4:  DCD byte_263C58 - 0x124CEE
124EF8:  DCD off_263C54 - 0x124CF8
124EFC:  DCD byte_263C60 - 0x124D02
124F00:  DCD unk_263C5C - 0x124D0E
124F04:  DCD byte_263C68 - 0x124D18
124F08:  DCD byte_263C70 - 0x124D28
124F0C:  DCD unk_263C6C - 0x124D34
124F10:  DCD aData_1 - 0x124D40
124F14:  DCD aHandlingCfg - 0x124D4A
124F18:  DCD aRb_0 - 0x124D4C
124F1C:  DCD byte_8F794 - 0x124D56
124F20:  DCD aTheEnd - 0x124D72
124F24:  DCD dword_238E9C - 0x124D78
124F28:  DCD dword_238E94 - 0x124D7E
124F2C:  ADDS            R1, R4, #1
124F2E:  MOV             R0, R5
124F30:  MOV             R8, R5
124F32:  BL              sub_125DCC
124F36:  LDR             R0, [SP,#0x48+var_28]
124F38:  LDRB            R2, [R0]
124F3A:  LDR             R1, [R0,#8]
124F3C:  LSLS            R2, R2, #0x1F
124F3E:  IT EQ
124F40:  ADDEQ           R1, R0, #1; s
124F42:  MOV             R0, R10; int
124F44:  MOV             R9, R10
124F46:  BL              sub_124B0C
124F4A:  MOV             R6, R0
124F4C:  LDR             R0, [SP,#0x48+var_3C]
124F4E:  LDR             R5, [R0]
124F50:  LDR             R0, [SP,#0x48+var_40]
124F52:  LDR.W           R10, [R0]
124F56:  BL              sub_125974
124F5A:  MOV             R4, R0
124F5C:  ADD.W           R0, R10, R5
124F60:  SUBS            R0, R6, R0
124F62:  LDR             R1, [SP,#0x48+var_28]
124F64:  SUB.W           R5, R0, #0xA1
124F68:  MOVS            R0, #0x58 ; 'X'
124F6A:  MULS            R0, R5
124F6C:  STR             R6, [R4,R0]
124F6E:  ADD.W           R0, R1, #0xC
124F72:  MOVS            R1, #0
124F74:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124F78:  MOVS            R1, #0x58 ; 'X'
124F7A:  VMOV            S0, R0
124F7E:  MLA.W           R4, R5, R1, R4
124F82:  LDR             R0, [SP,#0x48+var_28]
124F84:  VSTR            S0, [R4,#4]
124F88:  ADDS            R0, #0x18
124F8A:  MOVS            R1, #0
124F8C:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124F90:  VMOV            S0, R0
124F94:  LDR             R0, [SP,#0x48+var_28]
124F96:  VSTR            S0, [R4,#8]
124F9A:  ADDS            R0, #0x24 ; '$'
124F9C:  MOVS            R1, #0
124F9E:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124FA2:  VMOV            S0, R0
124FA6:  LDR             R0, [SP,#0x48+var_28]
124FA8:  VSTR            S0, [R4,#0xC]
124FAC:  ADDS            R0, #0x30 ; '0'
124FAE:  MOVS            R1, #0
124FB0:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124FB4:  VMOV            S0, R0
124FB8:  LDR             R0, [SP,#0x48+var_28]
124FBA:  VSTR            S0, [R4,#0x10]
124FBE:  ADDS            R0, #0x3C ; '<'
124FC0:  MOVS            R1, #0
124FC2:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124FC6:  VMOV            S0, R0
124FCA:  LDR             R0, [SP,#0x48+var_28]
124FCC:  VSTR            S0, [R4,#0x14]
124FD0:  ADDS            R0, #0x48 ; 'H'
124FD2:  MOVS            R1, #0
124FD4:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124FD8:  VMOV            S0, R0
124FDC:  LDR             R0, [SP,#0x48+var_28]
124FDE:  VSTR            S0, [R4,#0x18]
124FE2:  ADDS            R0, #0x54 ; 'T'
124FE4:  MOVS            R1, #0
124FE6:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124FEA:  VMOV            S0, R0
124FEE:  LDR             R0, [SP,#0x48+var_28]
124FF0:  VSTR            S0, [R4,#0x1C]
124FF4:  ADDS            R0, #0x60 ; '`'
124FF6:  MOVS            R1, #0
124FF8:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
124FFC:  VMOV            S0, R0
125000:  LDR             R0, [SP,#0x48+var_28]
125002:  VSTR            S0, [R4,#0x20]
125006:  ADDS            R0, #0x6C ; 'l'
125008:  MOVS            R1, #0
12500A:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
12500E:  VMOV            S0, R0
125012:  LDR             R0, [SP,#0x48+var_28]
125014:  VSTR            S0, [R4,#0x24]
125018:  ADDS            R0, #0x78 ; 'x'
12501A:  MOVS            R1, #0
12501C:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
125020:  VMOV            S0, R0
125024:  LDR             R0, [SP,#0x48+var_28]
125026:  VSTR            S0, [R4,#0x28]
12502A:  ADDS            R0, #0x84
12502C:  MOVS            R1, #0
12502E:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
125032:  VMOV            S0, R0
125036:  LDR             R0, [SP,#0x48+var_28]
125038:  VSTR            S0, [R4,#0x2C]
12503C:  ADDS            R0, #0x90
12503E:  MOVS            R1, #0
125040:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
125044:  VMOV            S0, R0
125048:  LDR             R0, [SP,#0x48+var_28]
12504A:  VSTR            S0, [R4,#0x30]
12504E:  ADDS            R0, #0x9C
125050:  MOVS            R1, #0
125052:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
125056:  VMOV            S0, R0
12505A:  LDR             R0, [SP,#0x48+var_28]
12505C:  VSTR            S0, [R4,#0x34]
125060:  ADDS            R0, #0xA8
125062:  MOVS            R1, #0
125064:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
125068:  VMOV            S0, R0
12506C:  LDR             R0, [SP,#0x48+var_28]
12506E:  VSTR            S0, [R4,#0x38]
125072:  ADDS            R0, #0xB4
125074:  MOVS            R1, #0
125076:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
12507A:  VMOV            S0, R0
12507E:  LDR             R0, [SP,#0x48+var_28]
125080:  VSTR            S0, [R4,#0x3C]
125084:  ADDS            R0, #0xC0
125086:  MOVS            R1, #0
125088:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
12508C:  VMOV            S0, R0
125090:  LDR             R0, [SP,#0x48+var_28]
125092:  VSTR            S0, [R4,#0x40]
125096:  ADDS            R0, #0xCC
125098:  MOVS            R1, #0
12509A:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
12509E:  VMOV            S0, R0
1250A2:  LDR             R0, [SP,#0x48+var_28]
1250A4:  VSTR            S0, [R4,#0x44]
1250A8:  ADDS            R0, #0xD8
1250AA:  MOVS            R1, #0
1250AC:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
1250B0:  VMOV            S0, R0
1250B4:  LDR             R0, [SP,#0x48+var_28]
1250B6:  VSTR            S0, [R4,#0x48]
1250BA:  ADDS            R0, #0xE4
1250BC:  MOVS            R1, #0
1250BE:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
1250C2:  VMOV            S0, R0
1250C6:  LDR             R0, [SP,#0x48+var_28]
1250C8:  VSTR            S0, [R4,#0x4C]
1250CC:  ADDS            R0, #0xF0
1250CE:  MOVS            R1, #0
1250D0:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
1250D4:  VMOV            S0, R0
1250D8:  LDR             R0, [SP,#0x48+var_28]
1250DA:  VSTR            S0, [R4,#0x50]
1250DE:  ADDS            R0, #0xFC
1250E0:  MOVS            R1, #0
1250E2:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
1250E6:  VMOV            S0, R0
1250EA:  MOV             R0, R8
1250EC:  MOV             R5, R8
1250EE:  VSTR            S0, [R4,#0x54]
1250F2:  BL              sub_F4D2E
1250F6:  LDR.W           R8, [SP,#0x48+var_30]
1250FA:  MOV             R10, R9
1250FC:  LDR.W           R1, [R8]
125100:  MOV             R0, R11
125102:  BLX             R1
125104:  MOV             R4, R0
125106:  CMP             R0, #0
125108:  BNE.W           loc_124D7E
12510C:  LDR             R0, =(off_263C64 - 0x125112)
12510E:  ADD             R0, PC; off_263C64
125110:  LDR             R1, [R0]
125112:  MOV             R0, R11
125114:  BLX             R1
125116:  ADD             SP, SP, #0x2C ; ','
125118:  POP.W           {R8-R11}
12511C:  POP             {R4-R7,PC}
12511E:  LDR             R0, =(byte_263C50 - 0x125124)
125120:  ADD             R0, PC; byte_263C50 ; __guard *
125122:  BLX             j___cxa_guard_acquire
125126:  CMP             R0, #0
125128:  BEQ.W           loc_124CE8
12512C:  LDR             R0, =(off_23494C - 0x12513A)
12512E:  MOV             R2, #0x3F0C05
125136:  ADD             R0, PC; off_23494C
125138:  LDR             R1, [R0]; dword_23DF24
12513A:  LDR             R0, =(byte_263C50 - 0x125142)
12513C:  LDR             R1, [R1]
12513E:  ADD             R0, PC; byte_263C50 ; __guard *
125140:  ADD             R1, R2
125142:  STR             R1, [R4]
125144:  BLX             j___cxa_guard_release
125148:  B               loc_124CE8
12514A:  LDR             R0, =(byte_263C58 - 0x125150)
12514C:  ADD             R0, PC; byte_263C58 ; __guard *
12514E:  BLX             j___cxa_guard_acquire
125152:  CMP             R0, #0
125154:  BEQ.W           loc_124CFC
125158:  LDR             R0, =(off_23494C - 0x125166)
12515A:  MOV             R2, #0x3F0C05
125162:  ADD             R0, PC; off_23494C
125164:  LDR             R0, [R0]; dword_23DF24
125166:  LDR             R1, [R0]
125168:  LDR             R0, =(byte_263C58 - 0x125170)
12516A:  ADD             R1, R2
12516C:  ADD             R0, PC; byte_263C58 ; __guard *
12516E:  ADD.W           R1, R1, #0x1D0
125172:  STR             R1, [R5]
125174:  BLX             j___cxa_guard_release
125178:  B               loc_124CFC
12517A:  LDR             R0, =(byte_263C60 - 0x125180)
12517C:  ADD             R0, PC; byte_263C60 ; __guard *
12517E:  BLX             j___cxa_guard_acquire
125182:  CMP             R0, #0
125184:  BEQ.W           loc_124D12
125188:  LDR             R0, =(off_23494C - 0x125196)
12518A:  MOV             R2, #0x3EEF15
125192:  ADD             R0, PC; off_23494C
125194:  LDR             R1, [R0]; dword_23DF24
125196:  LDR             R0, =(byte_263C60 - 0x12519E)
125198:  LDR             R1, [R1]
12519A:  ADD             R0, PC; byte_263C60 ; __guard *
12519C:  ADD             R1, R2
12519E:  LDR             R2, [SP,#0x48+var_30]
1251A0:  STR             R1, [R2]
1251A2:  BLX             j___cxa_guard_release
1251A6:  B               loc_124D12
1251A8:  LDR             R0, =(byte_263C68 - 0x1251AE)
1251AA:  ADD             R0, PC; byte_263C68 ; __guard *
1251AC:  BLX             j___cxa_guard_acquire
1251B0:  CMP             R0, #0
1251B2:  BEQ.W           loc_124D22
1251B6:  LDR             R0, =(off_23494C - 0x1251C6)
1251B8:  MOVW            R3, #0x102B
1251BC:  LDR             R2, =(off_263C64 - 0x1251C8)
1251BE:  MOVT            R3, #0x3F ; '?'
1251C2:  ADD             R0, PC; off_23494C
1251C4:  ADD             R2, PC; off_263C64
1251C6:  LDR             R1, [R0]; dword_23DF24
1251C8:  LDR             R0, =(byte_263C68 - 0x1251D0)
1251CA:  LDR             R1, [R1]
1251CC:  ADD             R0, PC; byte_263C68 ; __guard *
1251CE:  ADD             R1, R3
1251D0:  STR             R1, [R2]
1251D2:  BLX             j___cxa_guard_release
1251D6:  B               loc_124D22
1251D8:  LDR             R0, =(byte_263C70 - 0x1251DE)
1251DA:  ADD             R0, PC; byte_263C70 ; __guard *
1251DC:  BLX             j___cxa_guard_acquire
1251E0:  CMP             R0, #0
1251E2:  BEQ.W           loc_124D38
1251E6:  LDR             R0, =(off_23494C - 0x1251F4)
1251E8:  MOV             R2, #0x570F99
1251F0:  ADD             R0, PC; off_23494C
1251F2:  LDR             R1, [R0]; dword_23DF24
1251F4:  LDR             R0, =(byte_263C70 - 0x1251FC)
1251F6:  LDR             R1, [R1]
1251F8:  ADD             R0, PC; byte_263C70 ; __guard *
1251FA:  ADD             R1, R2
1251FC:  LDR             R2, [SP,#0x48+var_34]
1251FE:  STR             R1, [R2]
125200:  BLX             j___cxa_guard_release
125204:  B               loc_124D38
