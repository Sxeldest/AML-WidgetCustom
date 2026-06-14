; =========================================================
; Game Engine Function: sub_ED844
; Address            : 0xED844 - 0xEDD98
; =========================================================

ED844:  PUSH            {R4-R7,LR}
ED846:  ADD             R7, SP, #0xC
ED848:  PUSH.W          {R8-R11}
ED84C:  SUB             SP, SP, #0x194
ED84E:  MOV             R11, R0
ED850:  LDR             R0, =(byte_23DEC4 - 0xED856)
ED852:  ADD             R0, PC; byte_23DEC4
ED854:  LDRB            R0, [R0]
ED856:  DMB.W           ISH
ED85A:  LDR             R1, =(dword_23DEB8 - 0xED860)
ED85C:  ADD             R1, PC; dword_23DEB8
ED85E:  LSLS            R0, R0, #0x1F
ED860:  BEQ.W           loc_EDAF2
ED864:  LDRB            R0, [R1]
ED866:  LDR             R3, [R1,#(unk_23DEBC - 0x23DEB8)]
ED868:  LSLS            R2, R0, #0x1F
ED86A:  IT EQ
ED86C:  LSREQ           R3, R0, #1
ED86E:  CMP             R3, #0
ED870:  BNE.W           loc_EDA04
ED874:  LDR             R0, =(sub_ED844+1 - 0xED87E)
ED876:  MOV             R9, R1
ED878:  ADD             R1, SP, #0x1B0+s
ED87A:  ADD             R0, PC; sub_ED844
ED87C:  BLX             dladdr
ED880:  LDR             R4, [SP,#0x1B0+s]
ED882:  CBZ             R4, loc_ED8A4
ED884:  LDRB            R0, [R4]
ED886:  CBZ             R0, loc_ED8A4
ED888:  MOV             R0, R4; s
ED88A:  STR             R4, [SP,#0x1B0+var_D8]
ED88C:  BLX             strlen
ED890:  STR             R0, [SP,#0x1B0+var_D8+4]
ED892:  CBZ             R0, loc_ED8AE
ED894:  SUBS            R1, R4, #1
ED896:  MOV             R2, R0
ED898:  CBZ             R2, loc_ED8AE
ED89A:  LDRB            R3, [R1,R2]
ED89C:  SUBS            R2, #1
ED89E:  CMP             R3, #0x2F ; '/'
ED8A0:  BNE             loc_ED898
ED8A2:  B               loc_ED8B2
ED8A4:  LDR             R0, =(aComArizonaGame - 0xED8AC); "com.arizona.game" ...
ED8A6:  MOVS            R6, #0x10
ED8A8:  ADD             R0, PC; "com.arizona.game"
ED8AA:  MOV             R8, R0
ED8AC:  B               loc_ED95C
ED8AE:  MOV.W           R2, #0xFFFFFFFF
ED8B2:  LDR             R1, =(aDataApp - 0xED8C6); "/data/app" ...
ED8B4:  ADDS            R2, #1
ED8B6:  ADD.W           R8, SP, #0x1B0+var_28
ED8BA:  STR             R4, [SP,#0x1B0+var_28]
ED8BC:  CMP             R0, R2
ED8BE:  IT CC
ED8C0:  MOVCC           R2, R0
ED8C2:  ADD             R1, PC; "/data/app"
ED8C4:  STR             R2, [SP,#0x1B0+var_28+4]
ED8C6:  MOV             R0, R8; int
ED8C8:  MOVS            R2, #0
ED8CA:  BL              sub_EDEA0
ED8CE:  CBZ             R0, loc_ED8FE
ED8D0:  LDR             R1, =(aLib - 0xED8E0); "/lib/" ...
ED8D2:  ADD             R0, SP, #0x1B0+var_D8; int
ED8D4:  MOV.W           R2, #0xFFFFFFFF
ED8D8:  MOV.W           R4, #0xFFFFFFFF
ED8DC:  ADD             R1, PC; "/lib/"
ED8DE:  BL              sub_EDF1C
ED8E2:  LDRD.W          R1, R2, [SP,#0x1B0+var_D8]
ED8E6:  CMP             R2, R0
ED8E8:  IT CC
ED8EA:  MOVCC           R0, R2
ED8EC:  CBZ             R0, loc_ED932
ED8EE:  SUBS            R2, R1, #1
ED8F0:  MOV             R4, R0
ED8F2:  CBZ             R4, loc_ED92E
ED8F4:  LDRB            R3, [R2,R4]
ED8F6:  SUBS            R4, #1
ED8F8:  CMP             R3, #0x2F ; '/'
ED8FA:  BNE             loc_ED8F2
ED8FC:  B               loc_ED932
ED8FE:  LDR             R1, =(asc_89C46 - 0xED90E); "==" ...
ED900:  ADD             R0, SP, #0x1B0+var_D8; int
ED902:  MOV.W           R2, #0xFFFFFFFF
ED906:  MOV.W           R4, #0xFFFFFFFF
ED90A:  ADD             R1, PC; "=="
ED90C:  BL              sub_EDF1C
ED910:  LDRD.W          R1, R2, [SP,#0x1B0+var_D8]
ED914:  SUBS            R0, #0x17
ED916:  CMP             R2, R0
ED918:  IT CC
ED91A:  MOVCC           R0, R2
ED91C:  CBZ             R0, loc_ED932
ED91E:  SUBS            R2, R1, #1
ED920:  MOV             R4, R0
ED922:  CBZ             R4, loc_ED92E
ED924:  LDRB            R3, [R2,R4]
ED926:  SUBS            R4, #1
ED928:  CMP             R3, #0x2F ; '/'
ED92A:  BNE             loc_ED922
ED92C:  B               loc_ED932
ED92E:  MOV.W           R4, #0xFFFFFFFF
ED932:  ADDS            R2, R4, #1
ED934:  CMP             R0, R2
ED936:  BCC.W           loc_EDB2C
ED93A:  SUBS            R6, R0, R2
ED93C:  ADD             R1, R2
ED93E:  CMN.W           R6, #0x10
ED942:  BCS.W           loc_EDB26
ED946:  CMP             R6, #0xB
ED948:  BCS             loc_ED95A
ED94A:  ADD.W           R4, R8, #1
ED94E:  LSLS            R0, R6, #1
ED950:  STRB.W          R0, [SP,#0x1B0+var_28]
ED954:  CBNZ            R6, loc_ED976
ED956:  MOVS            R6, #0
ED958:  B               loc_ED97E
ED95A:  MOV             R8, R1
ED95C:  ADD.W           R0, R6, #0x10
ED960:  BIC.W           R5, R0, #0xF
ED964:  MOV             R0, R5; unsigned int
ED966:  BLX             j__Znwj; operator new(uint)
ED96A:  MOV             R4, R0
ED96C:  MOV             R1, R8; src
ED96E:  STRD.W          R6, R0, [SP,#0x1B0+var_28+4]
ED972:  ADDS            R0, R5, #1
ED974:  STR             R0, [SP,#0x1B0+var_28]
ED976:  MOV             R0, R4; dest
ED978:  MOV             R2, R6; n
ED97A:  BLX             j_memcpy
ED97E:  LDR             R2, =(aSdcardAndroidD - 0xED988); "/sdcard/Android/data/" ...
ED980:  MOVS            R5, #0
ED982:  STRB            R5, [R4,R6]
ED984:  ADD             R2, PC; "/sdcard/Android/data/"
ED986:  ADD             R0, SP, #0x1B0+var_28; int
ED988:  MOVS            R1, #0; int
ED98A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
ED98E:  VLDR            D16, [R0]
ED992:  LDR             R2, [R0,#8]
ED994:  LDR             R1, =(aFilesLogcatCli - 0xED99C); "/files/logcat/client.log" ...
ED996:  STR             R2, [SP,#0x1B0+var_D0]
ED998:  ADD             R1, PC; "/files/logcat/client.log"
ED99A:  VSTR            D16, [SP,#0x1B0+var_D8]
ED99E:  STRD.W          R5, R5, [R0]
ED9A2:  STR             R5, [R0,#8]
ED9A4:  ADD             R0, SP, #0x1B0+var_D8; int
ED9A6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
ED9AA:  MOVS            R3, #0
ED9AC:  LDR             R4, [R0,#8]
ED9AE:  LDRB            R5, [R0]
ED9B0:  LDRB            R6, [R0,#1]
ED9B2:  LDRH            R1, [R0,#6]
ED9B4:  LDR.W           R2, [R0,#2]
ED9B8:  STRD.W          R3, R3, [R0]
ED9BC:  STR             R3, [R0,#8]
ED9BE:  MOV             R3, R9
ED9C0:  LDRB.W          R0, [R9]
ED9C4:  STR             R2, [SP,#0x1B0+var_198]
ED9C6:  STRH.W          R1, [SP,#0x1B0+var_198+4]
ED9CA:  LSLS            R0, R0, #0x1F
ED9CC:  BEQ             loc_ED9D6
ED9CE:  LDR             R0, [R3,#(dword_23DEC0 - 0x23DEB8)]; void *
ED9D0:  BLX             j__ZdlPv; operator delete(void *)
ED9D4:  MOV             R3, R9
ED9D6:  LDRB.W          R0, [SP,#0x1B0+var_D8]
ED9DA:  LDRH.W          R1, [SP,#0x1B0+var_198+4]
ED9DE:  LDR             R2, [SP,#0x1B0+var_198]
ED9E0:  LSLS            R0, R0, #0x1F
ED9E2:  STRB            R6, [R3,#(dword_23DEB8+1 - 0x23DEB8)]
ED9E4:  STRB            R5, [R3]
ED9E6:  STR.W           R2, [R3,#(dword_23DEB8+2 - 0x23DEB8)]
ED9EA:  STRH            R1, [R3,#(word_23DEBE - 0x23DEB8)]
ED9EC:  STR             R4, [R3,#(dword_23DEC0 - 0x23DEB8)]
ED9EE:  ITT NE
ED9F0:  LDRNE           R0, [SP,#0x1B0+var_D0]; void *
ED9F2:  BLXNE           j__ZdlPv; operator delete(void *)
ED9F6:  LDRB.W          R0, [SP,#0x1B0+var_28]
ED9FA:  LSLS            R0, R0, #0x1F
ED9FC:  ITT NE
ED9FE:  LDRNE           R0, [SP,#0x1B0+var_20]; void *
EDA00:  BLXNE           j__ZdlPv; operator delete(void *)
EDA04:  LDR             R1, =(dword_23DEB8 - 0xEDA0E)
EDA06:  ADD             R4, SP, #0x1B0+s
EDA08:  MOVS            R2, #0
EDA0A:  ADD             R1, PC; dword_23DEB8
EDA0C:  MOV             R0, R4; int
EDA0E:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
EDA12:  ADD             R0, SP, #0x1B0+var_D8; this
EDA14:  MOV             R1, R4; std::__fs::filesystem::path *
EDA16:  MOVS            R2, #0; std::error_code *
EDA18:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
EDA1C:  LDRB.W          R0, [SP,#0x1B0+s]
EDA20:  LDRB.W          R1, [SP,#0x1B0+var_D8]
EDA24:  LSLS            R0, R0, #0x1F
EDA26:  SUB.W           R4, R1, #1
EDA2A:  ITT NE
EDA2C:  LDRNE           R0, [SP,#0x1B0+var_184]; void *
EDA2E:  BLXNE           j__ZdlPv; operator delete(void *)
EDA32:  LDR             R1, =(dword_23DEB8 - 0xEDA3A)
EDA34:  CMP             R4, #0xFE
EDA36:  ADD             R1, PC; dword_23DEB8
EDA38:  BCS             loc_EDAE8
EDA3A:  ADD.W           R8, SP, #0x1B0+s
EDA3E:  MOVS            R2, #0
EDA40:  MOV             R0, R8; int
EDA42:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
EDA46:  MOVS            R1, #0; std::__fs::filesystem::path *
EDA48:  BLX             j__ZNSt6__ndk14__fs10filesystem11__file_sizeERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__file_size(std::__fs::filesystem::path const&,std::error_code *)
EDA4C:  MOV             R4, R0
EDA4E:  LDRB.W          R0, [SP,#0x1B0+s]
EDA52:  MOV             R6, R1
EDA54:  LSLS            R0, R0, #0x1F
EDA56:  ITT NE
EDA58:  LDRNE           R0, [SP,#0x1B0+var_184]; void *
EDA5A:  BLXNE           j__ZdlPv; operator delete(void *)
EDA5E:  SUBS.W          R0, R4, #0x100000
EDA62:  SBCS.W          R0, R6, #0
EDA66:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEDA6C)
EDA68:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EDA6A:  STR             R0, [SP,#0x1B0+var_1A8]
EDA6C:  BCC.W           loc_EDD02
EDA70:  LDR             R1, =(dword_23DEB8 - 0xEDA7A)
EDA72:  ADD             R5, SP, #0x1B0+s
EDA74:  LDR             R2, =(aReduce - 0xEDA7E); "_reduce" ...
EDA76:  ADD             R1, PC; dword_23DEB8 ; int
EDA78:  MOV             R0, R5; int
EDA7A:  ADD             R2, PC; "_reduce"
EDA7C:  BL              sub_EE094
EDA80:  ADD             R0, SP, #0x1B0+var_D8
EDA82:  MOV             R1, R5
EDA84:  MOVS            R2, #4
EDA86:  BL              sub_EDFE8
EDA8A:  LDRB.W          R0, [SP,#0x1B0+s]
EDA8E:  LSLS            R0, R0, #0x1F
EDA90:  ITT NE
EDA92:  LDRNE           R0, [SP,#0x1B0+var_184]; void *
EDA94:  BLXNE           j__ZdlPv; operator delete(void *)
EDA98:  LDR             R1, =(dword_23DEB8 - 0xEDA9E)
EDA9A:  ADD             R1, PC; dword_23DEB8
EDA9C:  ADD             R0, SP, #0x1B0+s
EDA9E:  MOVS            R2, #4
EDAA0:  BL              sub_E45B4
EDAA4:  SUBS.W          R0, R4, #0x1000
EDAA8:  SBC.W           R1, R6, #0
EDAAC:  ADD.W           R9, SP, #0x1B0+s
EDAB0:  STRD.W          R0, R1, [SP,#0x1B0+var_1B0]
EDAB4:  MOVS            R2, #0
EDAB6:  MOVS            R3, #0
EDAB8:  MOV             R0, R9
EDABA:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEE5seekgENS_4fposI9mbstate_tEE; std::istream::seekg(std::fpos<mbstate_t>)
EDABE:  ADD             R4, SP, #0x1B0+s
EDAC0:  ADD             R6, SP, #0x1B0+var_28
EDAC2:  ADD             R5, SP, #0x1B0+var_D8
EDAC4:  MOV             R0, R4
EDAC6:  MOV             R1, R6
EDAC8:  BL              sub_EE274
EDACC:  LDR             R1, [R0]
EDACE:  LDR.W           R1, [R1,#-0xC]
EDAD2:  ADD             R0, R1
EDAD4:  LDRB            R0, [R0,#0x10]
EDAD6:  TST.W           R0, #5
EDADA:  BNE             loc_EDBA4
EDADC:  MOV             R0, R5
EDADE:  MOV             R1, R6
EDAE0:  MOVS            R2, #1
EDAE2:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKci; std::ostream::write(char const*,int)
EDAE6:  B               loc_EDAC4
EDAE8:  MOV             R0, R11
EDAEA:  MOVS            R2, #0x10
EDAEC:  BL              sub_EDFE8
EDAF0:  B               loc_EDD90
EDAF2:  LDR             R0, =(byte_23DEC4 - 0xEDAFA)
EDAF4:  MOV             R4, R1
EDAF6:  ADD             R0, PC; byte_23DEC4 ; __guard *
EDAF8:  BLX             j___cxa_guard_acquire
EDAFC:  MOV             R1, R4; obj
EDAFE:  CMP             R0, #0
EDB00:  BEQ.W           loc_ED864
EDB04:  LDR             R2, =(off_22A540 - 0xEDB0E)
EDB06:  MOVS            R3, #0
EDB08:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0xEDB14)
EDB0A:  ADD             R2, PC; off_22A540 ; lpdso_handle
EDB0C:  STRD.W          R3, R3, [R1]
EDB10:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
EDB12:  STR             R3, [R1,#(dword_23DEC0 - 0x23DEB8)]
EDB14:  LDR             R0, [R0]; std::string::~string() ; lpfunc
EDB16:  BLX             __cxa_atexit
EDB1A:  LDR             R0, =(byte_23DEC4 - 0xEDB20)
EDB1C:  ADD             R0, PC; byte_23DEC4 ; __guard *
EDB1E:  BLX             j___cxa_guard_release
EDB22:  MOV             R1, R4
EDB24:  B               loc_ED864
EDB26:  ADD             R0, SP, #0x1B0+var_28
EDB28:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
EDB2C:  LDR             R0, =(aStringViewSubs - 0xEDB32); "string_view::substr" ...
EDB2E:  ADD             R0, PC; "string_view::substr"
EDB30:  BL              sub_EE13C
EDB34:  B               loc_EDB9C
EDB36:  B               loc_EDDFA
EDB38:  B               loc_EDB5A
EDB3A:  LDRB.W          R0, [SP,#0x1B0+var_D8]
EDB3E:  LSLS            R0, R0, #0x1F
EDB40:  ITT NE
EDB42:  LDRNE           R0, [SP,#0x1B0+var_D0]; void *
EDB44:  BLXNE           j__ZdlPv; operator delete(void *)
EDB48:  B               loc_EDB4A
EDB4A:  LDRB.W          R0, [SP,#0x1B0+var_28]
EDB4E:  LSLS            R0, R0, #0x1F
EDB50:  BEQ.W           loc_EDE00
EDB54:  LDR             R0, [SP,#0x1B0+var_20]
EDB56:  B               loc_EDB66
EDB58:  B               loc_EDB5A
EDB5A:  LDRB.W          R0, [SP,#0x1B0+s]
EDB5E:  LSLS            R0, R0, #0x1F
EDB60:  BEQ.W           loc_EDE00
EDB64:  LDR             R0, [SP,#0x1B0+var_184]; void *
EDB66:  BLX             j__ZdlPv; operator delete(void *)
EDB6A:  BLX             j___cxa_end_cleanup
EDB6E:  ALIGN 0x10
EDB70:  DCD byte_23DEC4 - 0xED856
EDB74:  DCD dword_23DEB8 - 0xED860; void *
EDB78:  DCD sub_ED844+1 - 0xED87E
EDB7C:  DCD aComArizonaGame - 0xED8AC
EDB80:  DCD aDataApp - 0xED8C6
EDB84:  DCD aLib - 0xED8E0
EDB88:  DCD asc_89C46 - 0xED90E
EDB8C:  DCD aSdcardAndroidD - 0xED988
EDB90:  DCD aFilesLogcatCli - 0xED99C
EDB94:  DCD dword_23DEB8 - 0xEDA0E
EDB98:  DCD dword_23DEB8 - 0xEDA3A
EDB9C:  BLX             j___cxa_begin_catch
EDBA0:  BLX             j___cxa_end_catch
EDBA4:  ADD.W           R10, R9, #8
EDBA8:  MOV             R0, R10
EDBAA:  BL              sub_E5108
EDBAE:  CBNZ            R0, loc_EDBC2
EDBB0:  LDR             R0, [SP,#0x1B0+s]
EDBB2:  LDR.W           R0, [R0,#-0xC]
EDBB6:  ADD             R0, R9; this
EDBB8:  LDR             R1, [R0,#0x10]
EDBBA:  ORR.W           R1, R1, #4; unsigned int
EDBBE:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
EDBC2:  ADD             R0, SP, #0x1B0+var_D8
EDBC4:  ADDS            R6, R0, #4
EDBC6:  MOV             R0, R6
EDBC8:  BL              sub_E5108
EDBCC:  CBNZ            R0, loc_EDBE2
EDBCE:  LDR             R0, [SP,#0x1B0+var_D8]
EDBD0:  ADD             R1, SP, #0x1B0+var_D8
EDBD2:  LDR.W           R0, [R0,#-0xC]
EDBD6:  ADD             R0, R1; this
EDBD8:  LDR             R1, [R0,#0x10]
EDBDA:  ORR.W           R1, R1, #4; unsigned int
EDBDE:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
EDBE2:  LDR             R1, =(dword_23DEB8 - 0xEDBE8)
EDBE4:  ADD             R1, PC; dword_23DEB8
EDBE6:  ADD             R0, SP, #0x1B0+var_28; int
EDBE8:  MOVS            R2, #0
EDBEA:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
EDBEE:  ADD             R0, SP, #0x1B0+var_28; this
EDBF0:  MOVS            R1, #0; std::__fs::filesystem::path *
EDBF2:  BLX             j__ZNSt6__ndk14__fs10filesystem8__removeERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__remove(std::__fs::filesystem::path const&,std::error_code *)
EDBF6:  LDRB.W          R0, [SP,#0x1B0+var_28]
EDBFA:  LSLS            R0, R0, #0x1F
EDBFC:  ITT NE
EDBFE:  LDRNE           R0, [SP,#0x1B0+var_20]; void *
EDC00:  BLXNE           j__ZdlPv; operator delete(void *)
EDC04:  LDR             R1, =(dword_23DEB8 - 0xEDC0C)
EDC06:  LDR             R2, =(aReduce - 0xEDC0E); "_reduce" ...
EDC08:  ADD             R1, PC; dword_23DEB8 ; int
EDC0A:  ADD             R2, PC; "_reduce"
EDC0C:  ADD             R0, SP, #0x1B0+var_198; int
EDC0E:  BL              sub_EE094
EDC12:  LDR             R1, =(dword_23DEB8 - 0xEDC20)
EDC14:  MOVS            R2, #0
EDC16:  LDR             R0, [SP,#0x1B0+var_190]
EDC18:  VLDR            D16, [SP,#0x1B0+var_198]
EDC1C:  ADD             R1, PC; dword_23DEB8
EDC1E:  STRD.W          R2, R2, [SP,#0x1B0+var_198]
EDC22:  STR             R0, [SP,#0x1B0+var_20]
EDC24:  STR             R2, [SP,#0x1B0+var_190]
EDC26:  VSTR            D16, [SP,#0x1B0+var_28]
EDC2A:  ADD             R0, SP, #0x1B0+var_1A4; int
EDC2C:  MOVS            R2, #0
EDC2E:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
EDC32:  ADD             R0, SP, #0x1B0+var_28
EDC34:  ADD             R1, SP, #0x1B0+var_1A4
EDC36:  MOVS            R2, #0
EDC38:  MOVS            R3, #0
EDC3A:  BLX             j__ZNSt6__ndk14__fs10filesystem6__copyERKNS1_4pathES4_NS1_12copy_optionsEPNS_10error_codeE; std::__fs::filesystem::__copy(std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::__fs::filesystem::copy_options,std::error_code *)
EDC3E:  LDRB.W          R0, [SP,#0x1B0+var_1A4]
EDC42:  LSLS            R0, R0, #0x1F
EDC44:  ITT NE
EDC46:  LDRNE           R0, [SP,#0x1B0+var_19C]; void *
EDC48:  BLXNE           j__ZdlPv; operator delete(void *)
EDC4C:  LDRB.W          R0, [SP,#0x1B0+var_28]
EDC50:  LSLS            R0, R0, #0x1F
EDC52:  ITT NE
EDC54:  LDRNE           R0, [SP,#0x1B0+var_20]; void *
EDC56:  BLXNE           j__ZdlPv; operator delete(void *)
EDC5A:  LDRB.W          R0, [SP,#0x1B0+var_198]
EDC5E:  LSLS            R0, R0, #0x1F
EDC60:  ITT NE
EDC62:  LDRNE           R0, [SP,#0x1B0+var_190]; void *
EDC64:  BLXNE           j__ZdlPv; operator delete(void *)
EDC68:  LDR             R1, =(dword_23DEB8 - 0xEDC70)
EDC6A:  LDR             R2, =(aReduce - 0xEDC72); "_reduce" ...
EDC6C:  ADD             R1, PC; dword_23DEB8 ; int
EDC6E:  ADD             R2, PC; "_reduce"
EDC70:  ADD             R0, SP, #0x1B0+var_198; int
EDC72:  BL              sub_EE094
EDC76:  LDR             R0, [SP,#0x1B0+var_190]
EDC78:  MOVS            R1, #0
EDC7A:  VLDR            D16, [SP,#0x1B0+var_198]
EDC7E:  STRD.W          R1, R1, [SP,#0x1B0+var_198]
EDC82:  STR             R0, [SP,#0x1B0+var_20]
EDC84:  STR             R1, [SP,#0x1B0+var_190]
EDC86:  VSTR            D16, [SP,#0x1B0+var_28]
EDC8A:  ADD             R0, SP, #0x1B0+var_28; this
EDC8C:  MOVS            R1, #0; std::__fs::filesystem::path *
EDC8E:  BLX             j__ZNSt6__ndk14__fs10filesystem8__removeERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__remove(std::__fs::filesystem::path const&,std::error_code *)
EDC92:  LDRB.W          R0, [SP,#0x1B0+var_28]
EDC96:  LSLS            R0, R0, #0x1F
EDC98:  ITT NE
EDC9A:  LDRNE           R0, [SP,#0x1B0+var_20]; void *
EDC9C:  BLXNE           j__ZdlPv; operator delete(void *)
EDCA0:  LDRB.W          R0, [SP,#0x1B0+var_198]
EDCA4:  LSLS            R0, R0, #0x1F
EDCA6:  ITT NE
EDCA8:  LDRNE           R0, [SP,#0x1B0+var_190]; void *
EDCAA:  BLXNE           j__ZdlPv; operator delete(void *)
EDCAE:  LDR             R0, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xEDCB4)
EDCB0:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
EDCB2:  LDR             R0, [R0]; `vtable for'std::ifstream ...
EDCB4:  ADD.W           R1, R0, #0x20 ; ' '
EDCB8:  ADDS            R0, #0xC
EDCBA:  STR             R0, [SP,#0x1B0+s]
EDCBC:  MOV             R0, R10
EDCBE:  STR             R1, [SP,#0x1B0+var_128]
EDCC0:  BL              sub_E50B0
EDCC4:  LDR             R0, =(_ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xEDCCA)
EDCC6:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
EDCC8:  LDR             R0, [R0]; `VTT for'std::ifstream ...
EDCCA:  ADDS            R1, R0, #4
EDCCC:  MOV             R0, R9
EDCCE:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEED2Ev; std::istream::~istream()
EDCD2:  ADD.W           R0, R9, #0x64 ; 'd'
EDCD6:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
EDCDA:  LDR             R0, [SP,#0x1B0+var_1A8]
EDCDC:  LDR             R0, [R0]
EDCDE:  ADD.W           R1, R0, #0x20 ; ' '
EDCE2:  ADDS            R0, #0xC
EDCE4:  STR             R0, [SP,#0x1B0+var_D8]
EDCE6:  MOV             R0, R6
EDCE8:  STR             R1, [SP,#0x1B0+var_78]
EDCEA:  BL              sub_E50B0
EDCEE:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEDCF4)
EDCF0:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EDCF2:  LDR             R0, [R0]; `VTT for'std::ofstream ...
EDCF4:  ADDS            R1, R0, #4
EDCF6:  ADD             R0, SP, #0x1B0+var_D8
EDCF8:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
EDCFC:  ADDS            R0, #0x60 ; '`'
EDCFE:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
EDD02:  LDR             R1, =(dword_23DEB8 - 0xEDD0C)
EDD04:  MOV             R0, R8
EDD06:  MOVS            R2, #1
EDD08:  ADD             R1, PC; dword_23DEB8
EDD0A:  BL              sub_EDFE8
EDD0E:  LDR             R0, =(_ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr - 0xEDD18)
EDD10:  MOV             R9, R11
EDD12:  LDR             R1, [SP,#0x1B0+s]
EDD14:  ADD             R0, PC; _ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr
EDD16:  LDR             R0, [R0]; `construction vtable for'std::ostream-in-std::ofstream ...
EDD18:  ADD.W           R2, R0, #0xC
EDD1C:  ADDS            R0, #0x20 ; ' '
EDD1E:  STR.W           R2, [R11]
EDD22:  STR.W           R0, [R9,#0x60]!
EDD26:  LDR.W           R0, [R1,#-0xC]
EDD2A:  ADD.W           R5, R8, R0
EDD2E:  MOV             R0, R9; this
EDD30:  MOV             R1, R5; std::ios_base *
EDD32:  BLX             j__ZNSt6__ndk18ios_base4moveERS0_; std::ios_base::move(std::ios_base&)
EDD36:  LDR             R2, [SP,#0x1B0+var_1A8]
EDD38:  MOVS            R3, #0
EDD3A:  LDRD.W          R0, R1, [R5,#0x48]
EDD3E:  STR             R3, [R5,#0x48]
EDD40:  ADD.W           R5, R8, #4
EDD44:  LDR             R2, [R2]
EDD46:  STRD.W          R0, R1, [R11,#0xA8]
EDD4A:  ADD.W           R0, R11, #4
EDD4E:  ADD.W           R6, R2, #0x20 ; ' '
EDD52:  ADD.W           R4, R2, #0xC
EDD56:  STR.W           R6, [R11,#0x60]
EDD5A:  STR.W           R4, [R11]
EDD5E:  MOV             R1, R5
EDD60:  BL              sub_EE308
EDD64:  LDR.W           R1, [R11]
EDD68:  LDR.W           R1, [R1,#-0xC]
EDD6C:  STR             R6, [SP,#0x1B0+var_12C]
EDD6E:  ADD             R1, R11
EDD70:  STR             R4, [SP,#0x1B0+s]
EDD72:  STR             R0, [R1,#0x18]
EDD74:  MOV             R0, R5
EDD76:  BL              sub_E50B0
EDD7A:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEDD80)
EDD7C:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EDD7E:  LDR             R0, [R0]; `VTT for'std::ofstream ...
EDD80:  ADDS            R1, R0, #4
EDD82:  MOV             R0, R8
EDD84:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
EDD88:  ADD.W           R0, R8, #0x60 ; '`'
EDD8C:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
EDD90:  ADD             SP, SP, #0x194
EDD92:  POP.W           {R8-R11}
EDD96:  POP             {R4-R7,PC}
