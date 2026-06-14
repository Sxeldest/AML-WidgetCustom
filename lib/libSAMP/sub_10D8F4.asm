; =========================================================
; Game Engine Function: sub_10D8F4
; Address            : 0x10D8F4 - 0x10DD2C
; =========================================================

10D8F4:  PUSH            {R4-R7,LR}
10D8F6:  ADD             R7, SP, #0xC
10D8F8:  PUSH.W          {R8-R11}
10D8FC:  SUB             SP, SP, #0x8C
10D8FE:  LDR             R1, =(aDataWaterDat - 0x10D906); "DATA\\water.dat" ...
10D900:  MOV             R5, R0
10D902:  ADD             R1, PC; "DATA\\water.dat"
10D904:  ADD             R0, SP, #0xA8+var_40; int
10D906:  BL              sub_DC6DC
10D90A:  LDR.W           R0, [SP,#0xA8+var_40+1]
10D90E:  MOVS            R6, #0
10D910:  LDR             R1, [SP,#0xA8+var_3C]
10D912:  STR             R0, [SP,#0xA8+var_54]
10D914:  STR.W           R1, [SP,#0xA8+var_54+3]
10D918:  LDR             R0, [SP,#0xA8+var_54]
10D91A:  LDR.W           R1, [SP,#0xA8+var_54+3]
10D91E:  LDR             R2, [SP,#0xA8+var_38]
10D920:  LDRB.W          R3, [SP,#0xA8+var_40]
10D924:  STR.W           R0, [SP,#0xA8+var_2B]
10D928:  STR             R6, [SP,#0xA8+var_38]
10D92A:  STRD.W          R6, R6, [SP,#0xA8+var_40]
10D92E:  STRB.W          R3, [SP,#0xA8+var_2C]
10D932:  STR             R6, [SP,#0xA8+var_30]
10D934:  STR             R2, [SP,#0xA8+var_24]
10D936:  STR             R1, [SP,#0xA8+var_2B+3]
10D938:  ADD             R1, SP, #0xA8+var_30
10D93A:  ADD             R3, SP, #0xA8+var_70
10D93C:  MOV             R0, R5
10D93E:  MOVS            R2, #1
10D940:  BL              sub_10DE14
10D944:  LDRB.W          R0, [SP,#0xA8+var_2C]
10D948:  LSLS            R0, R0, #0x1F
10D94A:  ITT NE
10D94C:  LDRNE           R0, [SP,#0xA8+var_24]; void *
10D94E:  BLXNE           j__ZdlPv; operator delete(void *)
10D952:  LDRB.W          R0, [SP,#0xA8+var_40]
10D956:  LSLS            R0, R0, #0x1F
10D958:  ITT NE
10D95A:  LDRNE           R0, [SP,#0xA8+var_38]; void *
10D95C:  BLXNE           j__ZdlPv; operator delete(void *)
10D960:  LDR             R0, =(aWater - 0x10D96A); "water" ...
10D962:  MOVS            R2, #0
10D964:  LDR             R1, =(dword_263278 - 0x10D96E)
10D966:  ADD             R0, PC; "water"
10D968:  STR             R2, [R5,#0xC]
10D96A:  ADD             R1, PC; dword_263278
10D96C:  STR             R5, [R1]
10D96E:  MOVS            R1, #6; size_t
10D970:  STR             R5, [SP,#0xA8+var_8C]
10D972:  BLX             __strlen_chk
10D976:  STR             R0, [SP,#0xA8+var_90]
10D978:  LDR             R0, =(aDat - 0x10D97E); ".dat" ...
10D97A:  ADD             R0, PC; ".dat"
10D97C:  MOVS            R1, #5; size_t
10D97E:  BLX             __strlen_chk
10D982:  STR             R0, [SP,#0xA8+var_94]
10D984:  BL              sub_F97EC
10D988:  STR             R0, [SP,#0xA8+var_40]
10D98A:  ADD             R0, SP, #0xA8+var_30; int
10D98C:  ADD             R1, SP, #0xA8+var_40
10D98E:  MOVS            R2, #0
10D990:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
10D994:  LDR             R1, =(aSamp_0 - 0x10D99A); "SAMP" ...
10D996:  ADD             R1, PC; "SAMP"
10D998:  ADD             R0, SP, #0xA8+var_54; int
10D99A:  MOVS            R2, #0
10D99C:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IA5_cvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char [5],void>(char [5] const&,std::__fs::filesystem::path::format)
10D9A0:  ADD.W           R8, SP, #0xA8+var_54
10D9A4:  ADD             R0, SP, #0xA8+var_40
10D9A6:  ADD             R1, SP, #0xA8+var_30
10D9A8:  MOV             R2, R8
10D9AA:  BL              sub_F1DD4
10D9AE:  ADD             R4, SP, #0xA8+var_40
10D9B0:  ADD             R0, SP, #0xA8+var_48
10D9B2:  MOVS            R2, #0
10D9B4:  MOVS            R3, #0
10D9B6:  MOV             R1, R4
10D9B8:  BLX             j__ZNSt6__ndk14__fs10filesystem18directory_iteratorC2ERKNS1_4pathEPNS_10error_codeENS1_17directory_optionsE; std::__fs::filesystem::directory_iterator::directory_iterator(std::__fs::filesystem::path const&,std::error_code *,std::__fs::filesystem::directory_options)
10D9BC:  LDRB.W          R0, [SP,#0xA8+var_40]
10D9C0:  LSLS            R0, R0, #0x1F
10D9C2:  ITT NE
10D9C4:  LDRNE           R0, [SP,#0xA8+var_38]; void *
10D9C6:  BLXNE           j__ZdlPv; operator delete(void *)
10D9CA:  LDRB.W          R0, [SP,#0xA8+var_54]
10D9CE:  LSLS            R0, R0, #0x1F
10D9D0:  ITT NE
10D9D2:  LDRNE           R0, [SP,#0xA8+var_4C]; void *
10D9D4:  BLXNE           j__ZdlPv; operator delete(void *)
10D9D8:  LDRD.W          R0, R1, [SP,#0xA8+var_48]
10D9DC:  CBZ             R1, loc_10D9EE
10D9DE:  ADDS            R2, R1, #4
10D9E0:  LDREX.W         R3, [R2]
10D9E4:  ADDS            R3, #1
10D9E6:  STREX.W         R6, R3, [R2]
10D9EA:  CMP             R6, #0
10D9EC:  BNE             loc_10D9E0
10D9EE:  STRD.W          R0, R1, [SP,#0xA8+var_5C]
10D9F2:  MOVS            R1, #0
10D9F4:  CMP             R0, #0
10D9F6:  STRD.W          R1, R1, [SP,#0xA8+var_64]
10D9FA:  BEQ.W           loc_10DC90
10D9FE:  LDRD.W          R1, R0, [SP,#0xA8+var_94]
10DA02:  ADD.W           R10, R4, #1
10DA06:  ADD             R4, SP, #0xA8+var_5C
10DA08:  ADD             R6, SP, #0xA8+var_54
10DA0A:  ADD             R0, R1
10DA0C:  STR             R0, [SP,#0xA8+var_9C]
10DA0E:  ADD.W           R0, R8, #1
10DA12:  STR             R0, [SP,#0xA8+var_98]
10DA14:  MOV             R0, R4; this
10DA16:  BLX             j__ZNKSt6__ndk14__fs10filesystem18directory_iterator13__dereferenceEv; std::__fs::filesystem::directory_iterator::__dereference(void)
10DA1A:  MOV             R8, R0
10DA1C:  MOV             R0, R6
10DA1E:  MOV             R1, R8
10DA20:  BL              sub_EC968
10DA24:  ADD             R5, SP, #0xA8+var_70
10DA26:  ADD             R0, SP, #0xA8+var_40
10DA28:  MOV             R1, R6
10DA2A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
10DA2E:  LDRB.W          R0, [SP,#0xA8+var_54]
10DA32:  LSLS            R0, R0, #0x1F
10DA34:  ITT NE
10DA36:  LDRNE           R0, [SP,#0xA8+var_4C]; void *
10DA38:  BLXNE           j__ZdlPv; operator delete(void *)
10DA3C:  LDR             R0, [SP,#0xA8+var_3C]
10DA3E:  LDR.W           R11, [SP,#0xA8+var_38]
10DA42:  LDRB.W          R4, [SP,#0xA8+var_40]
10DA46:  MOV             R1, R0
10DA48:  ANDS.W          R2, R4, #1
10DA4C:  MOV             R3, R11
10DA4E:  ITT EQ
10DA50:  LSREQ           R1, R4, #1
10DA52:  MOVEQ           R3, R10
10DA54:  CBZ             R1, loc_10DA7C
10DA56:  LDRB            R0, [R3]
10DA58:  SUB.W           R2, R0, #0x41 ; 'A'
10DA5C:  CMP             R2, #0x1A
10DA5E:  IT CC
10DA60:  ORRCC.W         R0, R0, #0x20 ; ' '
10DA64:  STRB.W          R0, [R3],#1
10DA68:  SUBS            R1, #1
10DA6A:  BNE             loc_10DA56
10DA6C:  LDRB.W          R1, [SP,#0xA8+var_40]
10DA70:  LDRD.W          R0, R11, [SP,#0xA8+var_3C]
10DA74:  AND.W           R2, R1, #1
10DA78:  LSRS            R1, R1, #1
10DA7A:  B               loc_10DA7E
10DA7C:  LSRS            R1, R4, #1
10DA7E:  CMP             R2, #0
10DA80:  ITE NE
10DA82:  MOVNE           R1, R0
10DA84:  MOVEQ           R11, R10
10DA86:  CMP             R1, #5
10DA88:  BLT.W           loc_10DC6C
10DA8C:  ADD.W           R4, R11, R1
10DA90:  MOV             R0, R11; s
10DA92:  SUBS            R2, R1, #4; n
10DA94:  MOVS            R1, #0x77 ; 'w'; c
10DA96:  BLX             memchr
10DA9A:  CMP             R0, #0
10DA9C:  BEQ.W           loc_10DC6C
10DAA0:  LDR             R1, =(aWater - 0x10DAAA); "water" ...
10DAA2:  MOVS            R2, #5; n
10DAA4:  MOV             R9, R0
10DAA6:  ADD             R1, PC; "water"
10DAA8:  BLX             memcmp
10DAAC:  CBZ             R0, loc_10DABA
10DAAE:  ADD.W           R0, R9, #1
10DAB2:  SUBS            R1, R4, R0
10DAB4:  CMP             R1, #5
10DAB6:  BGE             loc_10DA92
10DAB8:  B               loc_10DC6C
10DABA:  CMP             R9, R4
10DABC:  BEQ.W           loc_10DC6C
10DAC0:  CMP             R9, R11
10DAC2:  BNE.W           loc_10DC6C
10DAC6:  MOV             R0, R6
10DAC8:  MOV             R1, R8
10DACA:  BL              sub_10DE90
10DACE:  LDR             R1, =(off_22B40C - 0x10DAD4); ".dat" ...
10DAD0:  ADD             R1, PC; off_22B40C
10DAD2:  MOV             R0, R5; int
10DAD4:  MOVS            R2, #0
10DAD6:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
10DADA:  MOV             R0, R6
10DADC:  MOV             R1, R5
10DADE:  BL              sub_10E096
10DAE2:  CBZ             R0, loc_10DAE8
10DAE4:  MOVS            R4, #1
10DAE6:  B               loc_10DAFE
10DAE8:  LDRB.W          R0, [SP,#0xA8+var_40]
10DAEC:  LDR             R1, [SP,#0xA8+var_3C]
10DAEE:  LSLS            R2, R0, #0x1F
10DAF0:  IT EQ
10DAF2:  LSREQ           R1, R0, #1
10DAF4:  LDR             R0, [SP,#0xA8+var_9C]
10DAF6:  SUBS            R0, R1, R0
10DAF8:  CLZ.W           R0, R0
10DAFC:  LSRS            R4, R0, #5
10DAFE:  LDRB.W          R0, [SP,#0xA8+var_70]
10DB02:  LSLS            R0, R0, #0x1F
10DB04:  ITT NE
10DB06:  LDRNE           R0, [SP,#0xA8+var_68]; void *
10DB08:  BLXNE           j__ZdlPv; operator delete(void *)
10DB0C:  LDRB.W          R0, [SP,#0xA8+var_54]
10DB10:  LSLS            R0, R0, #0x1F
10DB12:  ITT NE
10DB14:  LDRNE           R0, [SP,#0xA8+var_4C]; void *
10DB16:  BLXNE           j__ZdlPv; operator delete(void *)
10DB1A:  CMP             R4, #0
10DB1C:  BNE.W           loc_10DC6C
10DB20:  LDRB.W          R2, [SP,#0xA8+var_40]
10DB24:  MOVS            R3, #0
10DB26:  LDRD.W          R1, R0, [SP,#0xA8+var_3C]
10DB2A:  STR             R3, [SP,#0xA8+var_74]
10DB2C:  ANDS.W          R3, R2, #1
10DB30:  ITT EQ
10DB32:  MOVEQ           R0, R10
10DB34:  LSREQ           R1, R2, #1
10DB36:  LDR             R2, [SP,#0xA8+var_94]
10DB38:  SUBS            R1, R1, R2
10DB3A:  ADDS            R2, R0, R1
10DB3C:  LDR             R1, [SP,#0xA8+var_90]
10DB3E:  ADD             R1, R0
10DB40:  ADD             R0, SP, #0xA8+var_7C
10DB42:  ADD             R3, SP, #0xA8+var_74
10DB44:  BL              sub_10E370
10DB48:  LDR             R0, [SP,#0xA8+var_78]
10DB4A:  LDR.W           R9, [SP,#0xA8+var_8C]
10DB4E:  CBZ             R0, loc_10DB80
10DB50:  LDRB.W          R0, [SP,#0xA8+var_40]
10DB54:  LDR             R3, [SP,#0xA8+var_38]
10DB56:  LDR             R1, =(aAxl - 0x10DB60); "AXL" ...
10DB58:  LDR             R2, =(aInvalidInterio - 0x10DB66); "Invalid interior water file \"%s\". Fil"... ...
10DB5A:  LSLS            R0, R0, #0x1F
10DB5C:  ADD             R1, PC; "AXL"
10DB5E:  IT EQ
10DB60:  MOVEQ           R3, R10
10DB62:  ADD             R2, PC; "Invalid interior water file \"%s\". Fil"...
10DB64:  MOVS            R0, #6; prio
10DB66:  BLX             __android_log_print
10DB6A:  B               loc_10DC6C
10DB6C:  DCD aDataWaterDat - 0x10D906
10DB70:  DCD aWater - 0x10D96A
10DB74:  DCD dword_263278 - 0x10D96E
10DB78:  DCD aDat - 0x10D97E
10DB7C:  DCD aSamp_0 - 0x10D99A
10DB80:  ADD             R0, SP, #0xA8+var_70
10DB82:  MOV             R1, R8
10DB84:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
10DB88:  ADD             R0, SP, #0xA8+var_88
10DB8A:  ADD             R1, SP, #0xA8+var_30
10DB8C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
10DB90:  LDRB.W          R0, [SP,#0xA8+var_88]
10DB94:  LDR             R2, [SP,#0xA8+var_84]
10DB96:  ADD             R1, SP, #0xA8+var_70
10DB98:  LSLS            R3, R0, #0x1F
10DB9A:  STR             R1, [SP,#0xA8+var_A8]
10DB9C:  IT EQ
10DB9E:  LSREQ           R2, R0, #1
10DBA0:  MOV             R0, R6
10DBA2:  MOV.W           R3, #0xFFFFFFFF
10DBA6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_; std::string::basic_string(std::string const&,uint,uint,std::allocator<char> const&)
10DBAA:  LDRB.W          R0, [SP,#0xA8+var_88]
10DBAE:  LSLS            R0, R0, #0x1F
10DBB0:  ITT NE
10DBB2:  LDRNE           R0, [SP,#0xA8+var_80]; void *
10DBB4:  BLXNE           j__ZdlPv; operator delete(void *)
10DBB8:  LDRB.W          R0, [SP,#0xA8+var_70]
10DBBC:  LSLS            R0, R0, #0x1F
10DBBE:  ITT NE
10DBC0:  LDRNE           R0, [SP,#0xA8+var_68]; void *
10DBC2:  BLXNE           j__ZdlPv; operator delete(void *)
10DBC6:  LDR             R3, [SP,#0xA8+var_4C]
10DBC8:  LDRB.W          R1, [SP,#0xA8+var_54]
10DBCC:  LDR             R4, [SP,#0xA8+var_98]
10DBCE:  MOV             R2, R3
10DBD0:  ANDS.W          R0, R1, #1
10DBD4:  IT EQ
10DBD6:  MOVEQ           R2, R4
10DBD8:  LDRB            R2, [R2]
10DBDA:  CMP             R2, #0x5C ; '\'
10DBDC:  IT NE
10DBDE:  CMPNE           R2, #0x2F ; '/'
10DBE0:  BNE             loc_10DBF6
10DBE2:  MOV             R0, R6
10DBE4:  MOVS            R1, #0
10DBE6:  MOVS            R2, #1
10DBE8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj; std::string::erase(uint,uint)
10DBEC:  LDRB.W          R1, [SP,#0xA8+var_54]
10DBF0:  LDR             R3, [SP,#0xA8+var_4C]
10DBF2:  AND.W           R0, R1, #1
10DBF6:  LDR             R2, [SP,#0xA8+var_50]
10DBF8:  CMP             R0, #0
10DBFA:  MOV             R4, R3
10DBFC:  LDR             R5, [SP,#0xA8+var_98]
10DBFE:  ITT EQ
10DC00:  MOVEQ           R4, R5
10DC02:  LSREQ           R2, R1, #1
10DC04:  CBZ             R2, loc_10DC22
10DC06:  LDRB            R0, [R4]
10DC08:  CMP             R0, #0x2F ; '/'
10DC0A:  ITT EQ
10DC0C:  MOVEQ           R0, #0x5C ; '\'
10DC0E:  STRBEQ          R0, [R4]
10DC10:  SUBS            R2, #1
10DC12:  ADD.W           R4, R4, #1
10DC16:  BNE             loc_10DC06
10DC18:  LDRB.W          R0, [SP,#0xA8+var_54]
10DC1C:  LDR             R3, [SP,#0xA8+var_4C]
10DC1E:  AND.W           R0, R0, #1
10DC22:  LDR             R4, [SP,#0xA8+var_74]
10DC24:  LDR             R1, =(aAxl - 0x10DC2C); "AXL" ...
10DC26:  LDR             R2, =(aAddWaterFileSF - 0x10DC2E); "Add water file %s for interior %d" ...
10DC28:  ADD             R1, PC; "AXL"
10DC2A:  ADD             R2, PC; "Add water file %s for interior %d"
10DC2C:  CMP             R0, #0
10DC2E:  LDR             R0, [SP,#0xA8+var_98]
10DC30:  STR             R4, [SP,#0xA8+var_A8]
10DC32:  IT EQ
10DC34:  MOVEQ           R3, R0
10DC36:  MOVS            R0, #3; prio
10DC38:  BLX             __android_log_print
10DC3C:  LDR             R3, =(unk_B433C - 0x10DC46)
10DC3E:  ADD             R2, SP, #0xA8+var_74
10DC40:  STR             R2, [SP,#0xA8+var_88]
10DC42:  ADD             R3, PC; unk_B433C
10DC44:  ADD             R0, SP, #0xA8+var_88
10DC46:  STR             R0, [SP,#0xA8+var_A8]
10DC48:  ADD             R0, SP, #0xA8+var_20
10DC4A:  STR             R0, [SP,#0xA8+var_A4]
10DC4C:  ADD             R0, SP, #0xA8+var_70
10DC4E:  MOV             R1, R9
10DC50:  BL              sub_10E4D0
10DC54:  LDR             R0, [SP,#0xA8+var_70]
10DC56:  ADDS            R0, #0x14
10DC58:  MOV             R1, R6
10DC5A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
10DC5E:  LDRB.W          R0, [SP,#0xA8+var_54]
10DC62:  LSLS            R0, R0, #0x1F
10DC64:  BEQ             loc_10DC6C
10DC66:  LDR             R0, [SP,#0xA8+var_4C]; void *
10DC68:  BLX             j__ZdlPv; operator delete(void *)
10DC6C:  LDRB.W          R0, [SP,#0xA8+var_40]
10DC70:  LSLS            R0, R0, #0x1F
10DC72:  ITT NE
10DC74:  LDRNE           R0, [SP,#0xA8+var_38]; void *
10DC76:  BLXNE           j__ZdlPv; operator delete(void *)
10DC7A:  ADD             R4, SP, #0xA8+var_5C
10DC7C:  MOVS            R1, #0; std::error_code *
10DC7E:  MOV             R0, R4; this
10DC80:  BLX             j__ZNSt6__ndk14__fs10filesystem18directory_iterator11__incrementEPNS_10error_codeE; std::__fs::filesystem::directory_iterator::__increment(std::error_code *)
10DC84:  LDR             R0, [SP,#0xA8+var_64]
10DC86:  LDR             R1, [SP,#0xA8+var_5C]
10DC88:  LDR             R5, [SP,#0xA8+var_8C]
10DC8A:  CMP             R1, R0
10DC8C:  BNE.W           loc_10DA14
10DC90:  LDR             R4, [SP,#0xA8+var_60]
10DC92:  CBZ             R4, loc_10DCBC
10DC94:  ADDS            R0, R4, #4
10DC96:  DMB.W           ISH
10DC9A:  LDREX.W         R1, [R0]
10DC9E:  SUBS            R2, R1, #1
10DCA0:  STREX.W         R3, R2, [R0]
10DCA4:  CMP             R3, #0
10DCA6:  BNE             loc_10DC9A
10DCA8:  DMB.W           ISH
10DCAC:  CBNZ            R1, loc_10DCBC
10DCAE:  LDR             R0, [R4]
10DCB0:  LDR             R1, [R0,#8]
10DCB2:  MOV             R0, R4
10DCB4:  BLX             R1
10DCB6:  MOV             R0, R4; this
10DCB8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10DCBC:  LDR             R4, [SP,#0xA8+var_58]
10DCBE:  CBZ             R4, loc_10DCE8
10DCC0:  ADDS            R0, R4, #4
10DCC2:  DMB.W           ISH
10DCC6:  LDREX.W         R1, [R0]
10DCCA:  SUBS            R2, R1, #1
10DCCC:  STREX.W         R3, R2, [R0]
10DCD0:  CMP             R3, #0
10DCD2:  BNE             loc_10DCC6
10DCD4:  DMB.W           ISH
10DCD8:  CBNZ            R1, loc_10DCE8
10DCDA:  LDR             R0, [R4]
10DCDC:  LDR             R1, [R0,#8]
10DCDE:  MOV             R0, R4
10DCE0:  BLX             R1
10DCE2:  MOV             R0, R4; this
10DCE4:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10DCE8:  LDR             R4, [SP,#0xA8+var_44]
10DCEA:  CBZ             R4, loc_10DD14
10DCEC:  ADDS            R0, R4, #4
10DCEE:  DMB.W           ISH
10DCF2:  LDREX.W         R1, [R0]
10DCF6:  SUBS            R2, R1, #1
10DCF8:  STREX.W         R3, R2, [R0]
10DCFC:  CMP             R3, #0
10DCFE:  BNE             loc_10DCF2
10DD00:  DMB.W           ISH
10DD04:  CBNZ            R1, loc_10DD14
10DD06:  LDR             R0, [R4]
10DD08:  LDR             R1, [R0,#8]
10DD0A:  MOV             R0, R4
10DD0C:  BLX             R1
10DD0E:  MOV             R0, R4; this
10DD10:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10DD14:  LDRB.W          R0, [SP,#0xA8+var_30]
10DD18:  LSLS            R0, R0, #0x1F
10DD1A:  ITT NE
10DD1C:  LDRNE           R0, [SP,#0xA8+var_2B+3]; void *
10DD1E:  BLXNE           j__ZdlPv; operator delete(void *)
10DD22:  MOV             R0, R5
10DD24:  ADD             SP, SP, #0x8C
10DD26:  POP.W           {R8-R11}
10DD2A:  POP             {R4-R7,PC}
