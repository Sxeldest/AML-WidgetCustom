; =========================================================
; Game Engine Function: sub_5F840
; Address            : 0x5F840 - 0x5FB04
; =========================================================

5F840:  PUSH            {R4-R7,LR}
5F842:  ADD             R7, SP, #0xC
5F844:  PUSH.W          {R8-R11}
5F848:  SUB             SP, SP, #0x2C
5F84A:  MOV             R10, R0
5F84C:  LDR             R0, =(byte_117390 - 0x5F856)
5F84E:  MOV             R9, R1
5F850:  LDR             R1, =(__stack_chk_guard_ptr - 0x5F85A)
5F852:  ADD             R0, PC; byte_117390
5F854:  MOV             R11, R2
5F856:  ADD             R1, PC; __stack_chk_guard_ptr
5F858:  LDR             R1, [R1]; __stack_chk_guard
5F85A:  LDR             R1, [R1]
5F85C:  STR             R1, [SP,#0x48+var_20]
5F85E:  LDRB            R0, [R0]
5F860:  DMB.W           ISH
5F864:  LSLS            R0, R0, #0x1F
5F866:  BEQ.W           loc_5FA34
5F86A:  LDR             R0, =(asc_4B4F4 - 0x5F870); " " ...
5F86C:  ADD             R0, PC; " "
5F86E:  BL              sub_5F764
5F872:  LDR             R0, =(aSaMpMobileCras - 0x5F878); "========== SA-MP Mobile Crashed ======="... ...
5F874:  ADD             R0, PC; "========== SA-MP Mobile Crashed ======="...
5F876:  BL              sub_5F764
5F87A:  MOV             R0, #0x4E4B4E55
5F882:  STR.W           R0, [SP,#0x48+var_2B]
5F886:  MOVS            R0, #0xE
5F888:  STRB.W          R0, [SP,#0x48+var_2C]
5F88C:  MOV             R0, #0x4E574F4E
5F894:  STR             R0, [SP,#0x48+var_2B+3]
5F896:  MOVS            R0, #0
5F898:  STRB.W          R0, [SP,#0x48+var_24]
5F89C:  LDR.W           R0, [R9,#8]
5F8A0:  CBNZ            R0, loc_5F8B4
5F8A2:  LDR             R0, =(aCauseKilledByU - 0x5F8A8); "Cause: killed by user" ...
5F8A4:  ADD             R0, PC; "Cause: killed by user"
5F8A6:  BL              sub_5F764
5F8AA:  LDR             R1, =(aSiUser - 0x5F8B0); "SI_USER" ...
5F8AC:  ADD             R1, PC; "SI_USER"
5F8AE:  ADD             R0, SP, #0x48+var_2C; int
5F8B0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
5F8B4:  CMP.W           R10, #0xB
5F8B8:  BNE             loc_5F8EC
5F8BA:  LDR.W           R0, [R9,#8]
5F8BE:  CMP             R0, #2
5F8C0:  BEQ             loc_5F8DA
5F8C2:  CMP             R0, #1
5F8C4:  BNE             loc_5F8EC
5F8C6:  LDR             R0, =(aCauseDeReferen - 0x5F8CC); "Cause: de-referencing a null pointer" ...
5F8C8:  ADD             R0, PC; "Cause: de-referencing a null pointer"
5F8CA:  BL              sub_5F764
5F8CE:  LDR             R1, =(aSegvMaperr - 0x5F8D4); "SEGV_MAPERR" ...
5F8D0:  ADD             R1, PC; "SEGV_MAPERR"
5F8D2:  ADD             R0, SP, #0x48+var_2C; int
5F8D4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
5F8D8:  B               loc_5F8EC
5F8DA:  LDR             R0, =(aCauseReadOnlyP - 0x5F8E0); "Cause: read-only pointer" ...
5F8DC:  ADD             R0, PC; "Cause: read-only pointer"
5F8DE:  BL              sub_5F764
5F8E2:  LDR             R1, =(aSegvAccerr - 0x5F8E8); "SEGV_ACCERR" ...
5F8E4:  ADD             R1, PC; "SEGV_ACCERR"
5F8E6:  ADD             R0, SP, #0x48+var_2C; int
5F8E8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
5F8EC:  LDR             R0, =(asc_4B4F4 - 0x5F8F2); " " ...
5F8EE:  ADD             R0, PC; " "
5F8F0:  BL              sub_5F764
5F8F4:  LDR             R0, =(aSigaction_0 - 0x5F8FA); "Sigaction:" ...
5F8F6:  ADD             R0, PC; "Sigaction:"
5F8F8:  BL              sub_5F764
5F8FC:  LDR             R1, =(unk_117300 - 0x5F90A)
5F8FE:  ADD.W           R2, R10, R10,LSL#1
5F902:  ADD             R0, SP, #0x48+var_2C
5F904:  LDR             R6, [SP,#0x48+var_24]
5F906:  ADD             R1, PC; unk_117300
5F908:  LDRB.W          R5, [SP,#0x48+var_2C]
5F90C:  LDR.W           R3, [R9,#8]
5F910:  LDRB.W          R4, [R1,R2,LSL#2]
5F914:  ADD.W           R1, R1, R2,LSL#2
5F918:  LDR.W           R12, [R11,#0x64]
5F91C:  LDR             R2, [R1,#8]
5F91E:  LSLS            R5, R5, #0x1F
5F920:  IT EQ
5F922:  ADDEQ           R6, R0, #1
5F924:  LDR             R0, =(aSignalDSCodeDS - 0x5F930); "\tsignal %d (%s), code %d (%s), fault a"... ...
5F926:  STRD.W          R6, R12, [SP,#0x48+var_48]
5F92A:  LSLS            R6, R4, #0x1F
5F92C:  ADD             R0, PC; "\tsignal %d (%s), code %d (%s), fault a"...
5F92E:  IT EQ
5F930:  ADDEQ           R2, R1, #1
5F932:  MOV             R1, R10
5F934:  BL              sub_5F764
5F938:  LDR             R0, =(asc_4B4F4 - 0x5F93E); " " ...
5F93A:  ADD             R0, PC; " "
5F93C:  BL              sub_5F764
5F940:  LDR             R0, =(aRegisterStates - 0x5F946); "Register states:" ...
5F942:  ADD             R0, PC; "Register states:"
5F944:  BL              sub_5F764
5F948:  ADD.W           R6, R11, #0x20 ; ' '
5F94C:  LDM             R6, {R1-R3,R6}
5F94E:  LDR             R0, =(aR00xXR10xXR20x - 0x5F954); "\tr0: 0x%X, r1: 0x%x, r2: 0x%X, r3: 0x%"... ...
5F950:  ADD             R0, PC; "\tr0: 0x%X, r1: 0x%x, r2: 0x%X, r3: 0x%"...
5F952:  STR             R6, [SP,#0x48+var_48]
5F954:  BL              sub_5F764
5F958:  ADD.W           R6, R11, #0x30 ; '0'
5F95C:  LDM             R6, {R1-R3,R6}
5F95E:  LDR             R0, =(aR40xXR50xXR60x - 0x5F964); "\tr4: 0x%X, r5: 0x%x, r6: 0x%X, r7: 0x%"... ...
5F960:  ADD             R0, PC; "\tr4: 0x%X, r5: 0x%x, r6: 0x%X, r7: 0x%"...
5F962:  STR             R6, [SP,#0x48+var_48]
5F964:  BL              sub_5F764
5F968:  ADD.W           R6, R11, #0x40 ; '@'
5F96C:  LDM             R6, {R1-R3,R6}
5F96E:  LDR             R0, =(aR90xXR90xXR100 - 0x5F974); "\tr9: 0x%X, r9: 0x%x, r10: 0x%X, fp: 0x"... ...
5F970:  ADD             R0, PC; "\tr9: 0x%X, r9: 0x%x, r10: 0x%X, fp: 0x"...
5F972:  STR             R6, [SP,#0x48+var_48]
5F974:  BL              sub_5F764
5F978:  ADD.W           R6, R11, #0x50 ; 'P'
5F97C:  LDM             R6, {R1-R3,R6}
5F97E:  LDR             R0, =(aIp0xXSp0xXLr0x - 0x5F984); "\tip: 0x%X, sp: 0x%x, lr: 0x%X, pc: 0x%"... ...
5F980:  ADD             R0, PC; "\tip: 0x%X, sp: 0x%x, lr: 0x%X, pc: 0x%"...
5F982:  STR             R6, [SP,#0x48+var_48]
5F984:  BL              sub_5F764
5F988:  LDR             R0, =(asc_4B4F4 - 0x5F98E); " " ...
5F98A:  ADD             R0, PC; " "
5F98C:  BL              sub_5F764
5F990:  LDR             R0, =(aBacktrace - 0x5F996); "BackTrace:" ...
5F992:  ADD             R0, PC; "BackTrace:"
5F994:  BL              sub_5F764
5F998:  LDR.W           R0, [R11,#0x5C]
5F99C:  ADD             R1, SP, #0x48+var_3C
5F99E:  BLX             dladdr
5F9A2:  CMP             R0, #0
5F9A4:  LDR             R0, =(aUnknownFile - 0x5F9AC); "unknown file" ...
5F9A6:  LDR             R6, =(aUnknownSymbol - 0x5F9AE); "unknown symbol" ...
5F9A8:  ADD             R0, PC; "unknown file"
5F9AA:  ADD             R6, PC; "unknown symbol"
5F9AC:  MOV             R8, R0
5F9AE:  BEQ             loc_5F9D4
5F9B0:  ADD             R4, SP, #0x48+var_3C
5F9B2:  LDR.W           R5, [R11,#0x5C]
5F9B6:  LDM             R4, {R1-R4}
5F9B8:  SUBS            R4, R5, R4
5F9BA:  LDR             R0, =(aPcS0xX0xXSD - 0x5F9C0); "\tPC [\"%s\":0x%X] + 0x%X | [\"%s\"+%d]" ...
5F9BC:  ADD             R0, PC; "\tPC [\"%s\":0x%X] + 0x%X | [\"%s\"+%d]"
5F9BE:  CMP             R3, #0
5F9C0:  IT EQ
5F9C2:  MOVEQ           R3, R6
5F9C4:  STRD.W          R3, R4, [SP,#0x48+var_48]
5F9C8:  SUBS            R3, R5, R2
5F9CA:  CMP             R1, #0
5F9CC:  IT EQ
5F9CE:  MOVEQ           R1, R8
5F9D0:  BL              sub_5F764
5F9D4:  LDR.W           R0, [R11,#0x58]
5F9D8:  ADD             R1, SP, #0x48+var_3C
5F9DA:  BLX             dladdr
5F9DE:  CBZ             R0, loc_5FA0C
5F9E0:  MOV             R1, R6
5F9E2:  LDRD.W          R6, R2, [SP,#0x48+var_3C]
5F9E6:  LDRD.W          R3, R5, [SP,#0x48+var_34]
5F9EA:  LDR.W           R4, [R11,#0x58]
5F9EE:  LDR             R0, =(aLrS0xX0xXSD - 0x5F9F6); "\tLR [\"%s\":0x%X] + 0x%X | [\"%s\"+%d]" ...
5F9F0:  SUBS            R5, R4, R5
5F9F2:  ADD             R0, PC; "\tLR [\"%s\":0x%X] + 0x%X | [\"%s\"+%d]"
5F9F4:  CMP             R3, #0
5F9F6:  IT NE
5F9F8:  MOVNE           R1, R3
5F9FA:  SUBS            R3, R4, R2
5F9FC:  STRD.W          R1, R5, [SP,#0x48+var_48]
5FA00:  MOV             R1, R8
5FA02:  CMP             R6, #0
5FA04:  IT NE
5FA06:  MOVNE           R1, R6
5FA08:  BL              sub_5F764
5FA0C:  LDRB.W          R0, [SP,#0x48+var_2C]
5FA10:  LSLS            R0, R0, #0x1F
5FA12:  ITT NE
5FA14:  LDRNE           R0, [SP,#0x48+var_24]; void *
5FA16:  BLXNE           j__ZdlPv; operator delete(void *)
5FA1A:  LDR             R0, [SP,#0x48+var_20]
5FA1C:  LDR             R1, =(__stack_chk_guard_ptr - 0x5FA22)
5FA1E:  ADD             R1, PC; __stack_chk_guard_ptr
5FA20:  LDR             R1, [R1]; __stack_chk_guard
5FA22:  LDR             R1, [R1]
5FA24:  CMP             R1, R0
5FA26:  ITTT EQ
5FA28:  ADDEQ           SP, SP, #0x2C ; ','
5FA2A:  POPEQ.W         {R8-R11}
5FA2E:  POPEQ           {R4-R7,PC}
5FA30:  BLX             __stack_chk_fail
5FA34:  LDR             R0, =(byte_117390 - 0x5FA3A)
5FA36:  ADD             R0, PC; byte_117390 ; __guard *
5FA38:  BLX             j___cxa_guard_acquire
5FA3C:  CMP             R0, #0
5FA3E:  BEQ.W           loc_5F86A
5FA42:  LDR             R5, =(unk_117300 - 0x5FA4A)
5FA44:  LDR             R1, =(aSighup - 0x5FA4C); "SIGHUP" ...
5FA46:  ADD             R5, PC; unk_117300
5FA48:  ADD             R1, PC; "SIGHUP"
5FA4A:  MOV             R0, R5; int
5FA4C:  BL              sub_5FBF8
5FA50:  LDR             R1, =(aSigint - 0x5FA5A); "SIGINT" ...
5FA52:  ADD.W           R8, R5, #0xC
5FA56:  ADD             R1, PC; "SIGINT"
5FA58:  MOV             R0, R8; int
5FA5A:  BL              sub_5FBF8
5FA5E:  LDR             R1, =(aSigquit - 0x5FA68); "SIGQUIT" ...
5FA60:  ADD.W           R8, R5, #0x18
5FA64:  ADD             R1, PC; "SIGQUIT"
5FA66:  MOV             R0, R8; int
5FA68:  BL              sub_5FBF8
5FA6C:  LDR             R1, =(aSigill - 0x5FA76); "SIGILL" ...
5FA6E:  ADD.W           R8, R5, #0x24 ; '$'
5FA72:  ADD             R1, PC; "SIGILL"
5FA74:  MOV             R0, R8; int
5FA76:  BL              sub_5FBF8
5FA7A:  LDR             R1, =(aSigtrap - 0x5FA84); "SIGTRAP" ...
5FA7C:  ADD.W           R8, R5, #0x30 ; '0'
5FA80:  ADD             R1, PC; "SIGTRAP"
5FA82:  MOV             R0, R8; int
5FA84:  BL              sub_5FBF8
5FA88:  LDR             R1, =(aSigabrt - 0x5FA92); "SIGABRT" ...
5FA8A:  ADD.W           R8, R5, #0x3C ; '<'
5FA8E:  ADD             R1, PC; "SIGABRT"
5FA90:  MOV             R0, R8; int
5FA92:  BL              sub_5FBF8
5FA96:  LDR             R1, =(aSigiot - 0x5FAA0); "SIGIOT" ...
5FA98:  ADD.W           R8, R5, #0x48 ; 'H'
5FA9C:  ADD             R1, PC; "SIGIOT"
5FA9E:  MOV             R0, R8; int
5FAA0:  BL              sub_5FBF8
5FAA4:  LDR             R1, =(aSigbus - 0x5FAAE); "SIGBUS" ...
5FAA6:  ADD.W           R8, R5, #0x54 ; 'T'
5FAAA:  ADD             R1, PC; "SIGBUS"
5FAAC:  MOV             R0, R8; int
5FAAE:  BL              sub_5FBF8
5FAB2:  LDR             R1, =(aSigfpe - 0x5FABC); "SIGFPE" ...
5FAB4:  ADD.W           R8, R5, #0x60 ; '`'
5FAB8:  ADD             R1, PC; "SIGFPE"
5FABA:  MOV             R0, R8; int
5FABC:  BL              sub_5FBF8
5FAC0:  LDR             R1, =(aSigkill - 0x5FACA); "SIGKILL" ...
5FAC2:  ADD.W           R8, R5, #0x6C ; 'l'
5FAC6:  ADD             R1, PC; "SIGKILL"
5FAC8:  MOV             R0, R8; int
5FACA:  BL              sub_5FBF8
5FACE:  LDR             R1, =(aSigusr1 - 0x5FAD8); "SIGUSR1" ...
5FAD0:  ADD.W           R8, R5, #0x78 ; 'x'
5FAD4:  ADD             R1, PC; "SIGUSR1"
5FAD6:  MOV             R0, R8; int
5FAD8:  BL              sub_5FBF8
5FADC:  LDR             R1, =(aSigsegv - 0x5FAE6); "SIGSEGV" ...
5FADE:  ADD.W           R8, R5, #0x84
5FAE2:  ADD             R1, PC; "SIGSEGV"
5FAE4:  MOV             R0, R8; int
5FAE6:  BL              sub_5FBF8
5FAEA:  LDR             R0, =(sub_5FC58+1 - 0x5FAF4)
5FAEC:  LDR             R1, =(unk_117300 - 0x5FAF6)
5FAEE:  LDR             R2, =(off_110560 - 0x5FAF8)
5FAF0:  ADD             R0, PC; sub_5FC58 ; lpfunc
5FAF2:  ADD             R1, PC; unk_117300 ; obj
5FAF4:  ADD             R2, PC; off_110560 ; lpdso_handle
5FAF6:  BLX             __cxa_atexit
5FAFA:  LDR             R0, =(byte_117390 - 0x5FB00)
5FAFC:  ADD             R0, PC; byte_117390 ; __guard *
5FAFE:  BLX             j___cxa_guard_release
5FB02:  B               loc_5F86A
