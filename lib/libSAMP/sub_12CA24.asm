; =========================================================
; Game Engine Function: sub_12CA24
; Address            : 0x12CA24 - 0x12CCAC
; =========================================================

12CA24:  PUSH            {R4-R7,LR}
12CA26:  ADD             R7, SP, #0xC
12CA28:  PUSH.W          {R8-R11}
12CA2C:  SUB             SP, SP, #0x16C
12CA2E:  MOV             R4, R0
12CA30:  BL              sub_12BC78
12CA34:  LDR             R0, =(_ZTV4Chat - 0x12CA42); `vtable for'Chat ...
12CA36:  MOVS            R1, #0
12CA38:  ADD.W           R8, R4, #0x60 ; '`'
12CA3C:  MOV             R9, R4
12CA3E:  ADD             R0, PC; `vtable for'Chat
12CA40:  STR             R1, [R4,#0x5C]
12CA42:  ADDS            R0, #8
12CA44:  STR             R0, [R4]
12CA46:  MOV             R0, R4
12CA48:  STR.W           R1, [R0,#0x58]!
12CA4C:  MOV.W           R1, #0x880; n
12CA50:  STR.W           R0, [R9,#0x54]!
12CA54:  MOV             R0, R8; int
12CA56:  BLX             sub_22178C
12CA5A:  MOV.W           R0, #0x3F800000
12CA5E:  STR.W           R0, [R4,#0x8E0]
12CA62:  BL              sub_F0B30
12CA66:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIPFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEENS_9allocatorIS7_EES6_EE - 0x12CA72); `vtable for'std::__function::__func<void (*)(std::string_view),std::allocator<void (*)(std::string_view)>,void ()(std::string_view)> ...
12CA68:  ADD             R5, SP, #0x188+var_40
12CA6A:  LDR             R2, =(aQ - 0x12CA78); "q" ...
12CA6C:  LDR             R6, =(sub_12CE74+1 - 0x12CA7A)
12CA6E:  ADD             R1, PC; `vtable for'std::__function::__func<void (*)(std::string_view),std::allocator<void (*)(std::string_view)>,void ()(std::string_view)>
12CA70:  ADD.W           R10, R1, #8
12CA74:  ADD             R2, PC; "q"
12CA76:  ADD             R6, PC; sub_12CE74
12CA78:  STR.W           R0, [R4,#0x8E4]
12CA7C:  STR             R5, [SP,#0x188+var_30]
12CA7E:  STR             R6, [SP,#0x188+var_3C]
12CA80:  STR.W           R10, [SP,#0x188+var_40]
12CA84:  ADD             R0, SP, #0x188+var_28
12CA86:  MOV             R1, R4
12CA88:  MOVS            R3, #1
12CA8A:  STR             R5, [SP,#0x188+var_188]
12CA8C:  BL              sub_12CD48
12CA90:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0x12CA98); `vtable for'sigslot::connection ...
12CA92:  LDR             R0, [SP,#0x188+var_20]; this
12CA94:  ADD             R1, PC; `vtable for'sigslot::connection
12CA96:  ADD.W           R11, R1, #8
12CA9A:  STR.W           R11, [SP,#0x188+var_28]
12CA9E:  CBZ             R0, loc_12CAA4
12CAA0:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CAA4:  LDR             R0, [SP,#0x188+var_30]
12CAA6:  CMP             R5, R0
12CAA8:  BEQ             loc_12CAB0
12CAAA:  CBZ             R0, loc_12CABA
12CAAC:  MOVS            R1, #5
12CAAE:  B               loc_12CAB2
12CAB0:  MOVS            R1, #4
12CAB2:  LDR             R2, [R0]
12CAB4:  LDR.W           R1, [R2,R1,LSL#2]
12CAB8:  BLX             R1
12CABA:  LDR             R2, =(aQuit - 0x12CAC4); "quit" ...
12CABC:  ADD             R5, SP, #0x188+var_68
12CABE:  STR             R5, [SP,#0x188+var_58]
12CAC0:  ADD             R2, PC; "quit"
12CAC2:  STRD.W          R10, R6, [SP,#0x188+var_68]
12CAC6:  ADD             R0, SP, #0x188+var_4C
12CAC8:  MOV             R1, R4
12CACA:  MOVS            R3, #4
12CACC:  STR             R5, [SP,#0x188+var_188]
12CACE:  BL              sub_12CD48
12CAD2:  LDR             R0, [SP,#0x188+var_44]; this
12CAD4:  STR.W           R11, [SP,#0x188+var_4C]
12CAD8:  CBZ             R0, loc_12CADE
12CADA:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CADE:  LDR             R0, [SP,#0x188+var_58]
12CAE0:  CMP             R5, R0
12CAE2:  BEQ             loc_12CAEA
12CAE4:  CBZ             R0, loc_12CAF4
12CAE6:  MOVS            R1, #5
12CAE8:  B               loc_12CAEC
12CAEA:  MOVS            R1, #4
12CAEC:  LDR             R2, [R0]
12CAEE:  LDR.W           R1, [R2,R1,LSL#2]
12CAF2:  BLX             R1
12CAF4:  LDR             R6, =(sub_12CE78+1 - 0x12CAFE)
12CAF6:  ADD             R5, SP, #0x188+var_90
12CAF8:  LDR             R2, =(aVoice - 0x12CB02); "voice" ...
12CAFA:  ADD             R6, PC; sub_12CE78
12CAFC:  STR             R5, [SP,#0x188+var_80]
12CAFE:  ADD             R2, PC; "voice"
12CB00:  STRD.W          R10, R6, [SP,#0x188+var_90]
12CB04:  ADD             R0, SP, #0x188+var_74
12CB06:  MOV             R1, R4
12CB08:  MOVS            R3, #5
12CB0A:  STR             R5, [SP,#0x188+var_188]
12CB0C:  BL              sub_12CD48
12CB10:  LDR             R0, [SP,#0x188+var_6C]; this
12CB12:  STR.W           R11, [SP,#0x188+var_74]
12CB16:  CBZ             R0, loc_12CB1C
12CB18:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CB1C:  LDR             R0, [SP,#0x188+var_80]
12CB1E:  CMP             R5, R0
12CB20:  BEQ             loc_12CB28
12CB22:  CBZ             R0, loc_12CB32
12CB24:  MOVS            R1, #5
12CB26:  B               loc_12CB2A
12CB28:  MOVS            R1, #4
12CB2A:  LDR             R2, [R0]
12CB2C:  LDR.W           R1, [R2,R1,LSL#2]
12CB30:  BLX             R1
12CB32:  LDR             R2, =(aAzvoice - 0x12CB3C); "azvoice" ...
12CB34:  ADD             R5, SP, #0x188+var_B8
12CB36:  STR             R5, [SP,#0x188+var_A8]
12CB38:  ADD             R2, PC; "azvoice"
12CB3A:  STRD.W          R10, R6, [SP,#0x188+var_B8]
12CB3E:  ADD             R0, SP, #0x188+var_9C
12CB40:  MOV             R1, R4
12CB42:  MOVS            R3, #7
12CB44:  STR             R5, [SP,#0x188+var_188]
12CB46:  BL              sub_12CD48
12CB4A:  LDR             R0, [SP,#0x188+var_94]; this
12CB4C:  STR.W           R11, [SP,#0x188+var_9C]
12CB50:  CBZ             R0, loc_12CB56
12CB52:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CB56:  LDR             R0, [SP,#0x188+var_A8]
12CB58:  CMP             R5, R0
12CB5A:  BEQ             loc_12CB62
12CB5C:  CBZ             R0, loc_12CB6C
12CB5E:  MOVS            R1, #5
12CB60:  B               loc_12CB64
12CB62:  MOVS            R1, #4
12CB64:  LDR             R2, [R0]
12CB66:  LDR.W           R1, [R2,R1,LSL#2]
12CB6A:  BLX             R1
12CB6C:  LDR             R0, =(loc_12CE90+1 - 0x12CB76)
12CB6E:  ADD             R5, SP, #0x188+var_E0
12CB70:  LDR             R2, =(aDl - 0x12CB7A); "dl" ...
12CB72:  ADD             R0, PC; loc_12CE90
12CB74:  STR             R5, [SP,#0x188+var_D0]
12CB76:  ADD             R2, PC; "dl"
12CB78:  STRD.W          R10, R0, [SP,#0x188+var_E0]
12CB7C:  ADD             R0, SP, #0x188+var_C4
12CB7E:  MOV             R1, R4
12CB80:  MOVS            R3, #2
12CB82:  STR             R5, [SP,#0x188+var_188]
12CB84:  BL              sub_12CD48
12CB88:  LDR             R0, [SP,#0x188+var_BC]; this
12CB8A:  STR.W           R11, [SP,#0x188+var_C4]
12CB8E:  CBZ             R0, loc_12CB94
12CB90:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CB94:  LDR             R0, [SP,#0x188+var_D0]
12CB96:  CMP             R5, R0
12CB98:  BEQ             loc_12CBA0
12CB9A:  CBZ             R0, loc_12CBAA
12CB9C:  MOVS            R1, #5
12CB9E:  B               loc_12CBA2
12CBA0:  MOVS            R1, #4
12CBA2:  LDR             R2, [R0]
12CBA4:  LDR.W           R1, [R2,R1,LSL#2]
12CBA8:  BLX             R1
12CBAA:  LDR             R0, =(sub_12CEA8+1 - 0x12CBB4)
12CBAC:  ADD             R5, SP, #0x188+var_108
12CBAE:  LDR             R2, =(aTimestamp - 0x12CBB8); "timestamp" ...
12CBB0:  ADD             R0, PC; sub_12CEA8
12CBB2:  STR             R5, [SP,#0x188+var_F8]
12CBB4:  ADD             R2, PC; "timestamp"
12CBB6:  STRD.W          R10, R0, [SP,#0x188+var_108]
12CBBA:  ADD             R0, SP, #0x188+var_EC
12CBBC:  MOV             R1, R4
12CBBE:  MOVS            R3, #9
12CBC0:  STR             R5, [SP,#0x188+var_188]
12CBC2:  BL              sub_12CD48
12CBC6:  LDR             R0, [SP,#0x188+var_E4]; this
12CBC8:  STR.W           R11, [SP,#0x188+var_EC]
12CBCC:  CBZ             R0, loc_12CBD2
12CBCE:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CBD2:  LDR             R0, [SP,#0x188+var_F8]
12CBD4:  CMP             R5, R0
12CBD6:  BEQ             loc_12CBDE
12CBD8:  CBZ             R0, loc_12CBE8
12CBDA:  MOVS            R1, #5
12CBDC:  B               loc_12CBE0
12CBDE:  MOVS            R1, #4
12CBE0:  LDR             R2, [R0]
12CBE2:  LDR.W           R1, [R2,R1,LSL#2]
12CBE6:  BLX             R1
12CBE8:  LDR             R0, =(sub_12CEBC+1 - 0x12CBF2)
12CBEA:  ADD             R5, SP, #0x188+var_130
12CBEC:  LDR             R2, =(aPagesize - 0x12CBF6); "pagesize" ...
12CBEE:  ADD             R0, PC; sub_12CEBC
12CBF0:  STR             R5, [SP,#0x188+var_120]
12CBF2:  ADD             R2, PC; "pagesize"
12CBF4:  STRD.W          R10, R0, [SP,#0x188+var_130]
12CBF8:  ADD             R0, SP, #0x188+var_114
12CBFA:  MOV             R1, R4
12CBFC:  MOVS            R3, #8
12CBFE:  STR             R5, [SP,#0x188+var_188]
12CC00:  BL              sub_12CD48
12CC04:  LDR             R0, [SP,#0x188+var_10C]; this
12CC06:  STR.W           R11, [SP,#0x188+var_114]
12CC0A:  CBZ             R0, loc_12CC10
12CC0C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CC10:  LDR             R0, [SP,#0x188+var_120]
12CC12:  CMP             R5, R0
12CC14:  BEQ             loc_12CC1C
12CC16:  CBZ             R0, loc_12CC26
12CC18:  MOVS            R1, #5
12CC1A:  B               loc_12CC1E
12CC1C:  MOVS            R1, #4
12CC1E:  LDR             R2, [R0]
12CC20:  LDR.W           R1, [R2,R1,LSL#2]
12CC24:  BLX             R1
12CC26:  LDR             R0, =(sub_12D004+1 - 0x12CC30)
12CC28:  ADD             R5, SP, #0x188+var_158
12CC2A:  LDR             R2, =(aFontsize - 0x12CC34); "fontsize" ...
12CC2C:  ADD             R0, PC; sub_12D004
12CC2E:  STR             R5, [SP,#0x188+var_148]
12CC30:  ADD             R2, PC; "fontsize"
12CC32:  STRD.W          R10, R0, [SP,#0x188+var_158]
12CC36:  ADD             R0, SP, #0x188+var_13C
12CC38:  MOV             R1, R4
12CC3A:  MOVS            R3, #8
12CC3C:  STR             R5, [SP,#0x188+var_188]
12CC3E:  BL              sub_12CD48
12CC42:  LDR             R0, [SP,#0x188+var_134]; this
12CC44:  STR.W           R11, [SP,#0x188+var_13C]
12CC48:  CBZ             R0, loc_12CC4E
12CC4A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CC4E:  LDR             R0, [SP,#0x188+var_148]
12CC50:  CMP             R5, R0
12CC52:  BEQ             loc_12CC5A
12CC54:  CBZ             R0, loc_12CC64
12CC56:  MOVS            R1, #5
12CC58:  B               loc_12CC5C
12CC5A:  MOVS            R1, #4
12CC5C:  LDR             R2, [R0]
12CC5E:  LDR.W           R1, [R2,R1,LSL#2]
12CC62:  BLX             R1
12CC64:  LDR             R0, =(sub_12D134+1 - 0x12CC6E)
12CC66:  ADD             R5, SP, #0x188+var_180
12CC68:  LDR             R2, =(aOdl - 0x12CC72); "odl" ...
12CC6A:  ADD             R0, PC; sub_12D134
12CC6C:  STR             R5, [SP,#0x188+var_170]
12CC6E:  ADD             R2, PC; "odl"
12CC70:  STRD.W          R10, R0, [SP,#0x188+var_180]
12CC74:  ADD             R0, SP, #0x188+var_164
12CC76:  MOV             R1, R4
12CC78:  MOVS            R3, #3
12CC7A:  STR             R5, [SP,#0x188+var_188]
12CC7C:  BL              sub_12CD48
12CC80:  LDR             R0, [SP,#0x188+var_15C]; this
12CC82:  STR.W           R11, [SP,#0x188+var_164]
12CC86:  CBZ             R0, loc_12CC8C
12CC88:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
12CC8C:  LDR             R0, [SP,#0x188+var_170]
12CC8E:  CMP             R5, R0
12CC90:  BEQ             loc_12CC98
12CC92:  CBZ             R0, loc_12CCA2
12CC94:  MOVS            R1, #5
12CC96:  B               loc_12CC9A
12CC98:  MOVS            R1, #4
12CC9A:  LDR             R2, [R0]
12CC9C:  LDR.W           R1, [R2,R1,LSL#2]
12CCA0:  BLX             R1
12CCA2:  MOV             R0, R4
12CCA4:  ADD             SP, SP, #0x16C
12CCA6:  POP.W           {R8-R11}
12CCAA:  POP             {R4-R7,PC}
