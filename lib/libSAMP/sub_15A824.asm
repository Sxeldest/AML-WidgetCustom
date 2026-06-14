; =========================================================
; Game Engine Function: sub_15A824
; Address            : 0x15A824 - 0x15ACEA
; =========================================================

15A824:  PUSH            {R4-R7,LR}
15A826:  ADD             R7, SP, #0xC
15A828:  PUSH.W          {R8-R11}
15A82C:  SUB             SP, SP, #4
15A82E:  VPUSH           {D8}
15A832:  SUB             SP, SP, #0x90
15A834:  MOV             R5, R1
15A836:  SUB.W           R1, R7, #-var_42; int
15A83A:  STR             R0, [SP,#0xB8+var_A4]
15A83C:  MOVS            R4, #0
15A83E:  MOV             R0, R5; int
15A840:  MOVS            R2, #0x10
15A842:  MOVS            R3, #1
15A844:  STRH.W          R4, [R7,#var_42]
15A848:  BL              sub_17D786
15A84C:  LDRH.W          R0, [R7,#var_42]
15A850:  CMP             R0, #0
15A852:  BEQ.W           loc_15ACD6
15A856:  ADD.W           R8, SP, #0xB8+var_50
15A85A:  MOV             R1, R5; int
15A85C:  MOV             R0, R8; int
15A85E:  BL              sub_15B24E
15A862:  STR             R4, [SP,#0xB8+var_54]
15A864:  ADD             R1, SP, #0xB8+var_54; int
15A866:  MOV             R0, R5; int
15A868:  MOVS            R2, #0x20 ; ' '
15A86A:  MOVS            R3, #1
15A86C:  BL              sub_17D786
15A870:  SUB.W           R1, R7, #-var_43; int
15A874:  MOV             R0, R5; int
15A876:  MOVS            R2, #8
15A878:  MOVS            R3, #1
15A87A:  BL              sub_17D786
15A87E:  LDRB.W          R0, [R7,#var_43]
15A882:  SUBS            R0, #1; switch 4 cases
15A884:  CMP             R0, #3
15A886:  BHI.W           def_15A88A; jumptable 0015A88A default case
15A88A:  TBB.W           [PC,R0]; switch jump
15A88E:  DCB 2; jump table for switch statement
15A88F:  DCB 0x43
15A890:  DCB 0xA
15A891:  DCB 0x1A
15A892:  LDR             R0, [SP,#0xB8+var_A4]; jumptable 0015A88A case 1
15A894:  LDRH.W          R1, [R7,#var_42]
15A898:  LDR             R0, [R0,#0x58]
15A89A:  BL              sub_1526B2
15A89E:  STR             R0, [SP,#0xB8+var_A8]
15A8A0:  B               loc_15A932
15A8A2:  ADD             R1, SP, #0xB8+var_40; jumptable 0015A88A case 3
15A8A4:  MOV             R0, R5; int
15A8A6:  MOVS            R2, #0x10
15A8A8:  MOVS            R3, #1
15A8AA:  BL              sub_17D786
15A8AE:  LDR             R0, [SP,#0xB8+var_A4]
15A8B0:  LDRH.W          R1, [R7,#var_42]
15A8B4:  LDRH.W          R2, [SP,#0xB8+var_40]
15A8B8:  LDR             R0, [R0,#0x58]
15A8BA:  BL              sub_152874
15A8BE:  STR             R0, [SP,#0xB8+var_A8]
15A8C0:  B               loc_15A932
15A8C2:  ADD             R1, SP, #0xB8+var_98; jumptable 0015A88A case 4
15A8C4:  MOV             R0, R5; int
15A8C6:  MOVS            R2, #0x20 ; ' '
15A8C8:  MOVS            R3, #1
15A8CA:  BL              sub_17D786
15A8CE:  ADD             R1, SP, #0xB8+var_40
15A8D0:  MOV             R0, R5
15A8D2:  ADDS            R2, R1, #4
15A8D4:  ADD.W           R3, R1, #8
15A8D8:  BL              sub_1438F0
15A8DC:  ADD             R4, SP, #0xB8+var_60
15A8DE:  MOV             R0, R5
15A8E0:  ADDS            R2, R4, #4
15A8E2:  ADD.W           R3, R4, #8
15A8E6:  MOV             R1, R4
15A8E8:  BL              sub_1438F0
15A8EC:  ADD             R6, SP, #0xB8+var_6C
15A8EE:  MOV             R0, R5
15A8F0:  ADDS            R2, R6, #4
15A8F2:  ADD.W           R3, R6, #8
15A8F6:  MOV             R1, R6
15A8F8:  BL              sub_1438F0
15A8FC:  LDR             R0, [SP,#0xB8+var_A4]
15A8FE:  LDRH.W          R1, [R7,#var_42]
15A902:  LDR             R2, [SP,#0xB8+var_98]
15A904:  LDR             R0, [R0,#0x58]
15A906:  ADD             R3, SP, #0xB8+var_40
15A908:  STRD.W          R4, R6, [SP,#0xB8+var_B8]
15A90C:  BL              sub_15297C
15A910:  STR             R0, [SP,#0xB8+var_A8]
15A912:  B               loc_15A932
15A914:  ADD             R1, SP, #0xB8+var_40; jumptable 0015A88A case 2
15A916:  MOV             R0, R5; int
15A918:  MOVS            R2, #0x10
15A91A:  MOVS            R3, #1
15A91C:  BL              sub_17D786
15A920:  LDR             R0, [SP,#0xB8+var_A4]
15A922:  LDRH.W          R1, [R7,#var_42]
15A926:  LDRH.W          R2, [SP,#0xB8+var_40]
15A92A:  LDR             R0, [R0,#0x58]
15A92C:  BL              sub_152768
15A930:  STR             R0, [SP,#0xB8+var_A8]
15A932:  LDR             R0, [SP,#0xB8+var_A8]
15A934:  CMP             R0, #0
15A936:  BEQ.W           def_15A88A; jumptable 0015A88A default case
15A93A:  LDRB.W          R0, [SP,#0xB8+var_50]
15A93E:  LDRD.W          R2, R1, [SP,#0xB8+var_4C]
15A942:  ANDS.W          R3, R0, #1
15A946:  ITT EQ
15A948:  ADDEQ.W         R1, R8, #1
15A94C:  LSREQ           R2, R0, #1
15A94E:  ADD             R0, SP, #0xB8+var_60
15A950:  BL              sub_164D04
15A954:  LDRB.W          R0, [SP,#0xB8+var_60]
15A958:  LDR             R1, [SP,#0xB8+var_5C]
15A95A:  LSLS            R2, R0, #0x1F
15A95C:  IT EQ
15A95E:  LSREQ           R1, R0, #1
15A960:  CBNZ            R1, loc_15A978
15A962:  LDR             R3, =(byte_8F794 - 0x15A968)
15A964:  ADD             R3, PC; byte_8F794
15A966:  MOVS            R0, #0
15A968:  MOVS            R1, #0
15A96A:  STR             R0, [SP,#0xB8+var_B8]
15A96C:  ADD             R0, SP, #0xB8+var_60
15A96E:  MOV.W           R2, #0xFFFFFFFF
15A972:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
15A976:  CBZ             R0, loc_15A9A6
15A978:  LDR             R0, [SP,#0xB8+var_A8]
15A97A:  ADD             R1, SP, #0xB8+var_60
15A97C:  ADDS            R0, #0x38 ; '8'
15A97E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
15A982:  ADD             R0, SP, #0xB8+var_78
15A984:  ADD             R1, SP, #0xB8+var_60
15A986:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
15A98A:  LDR             R0, [SP,#0xB8+var_A4]
15A98C:  ADD             R1, SP, #0xB8+var_78
15A98E:  BL              sub_15B308
15A992:  LDRB.W          R0, [SP,#0xB8+var_78]
15A996:  LSLS            R0, R0, #0x1F
15A998:  ITT NE
15A99A:  LDRNE           R0, [SP,#0xB8+var_70]; void *
15A99C:  BLXNE           j__ZdlPv; operator delete(void *)
15A9A0:  LDR             R1, [SP,#0xB8+var_A8]
15A9A2:  LDR             R0, [SP,#0xB8+var_54]
15A9A4:  STR             R0, [R1,#0x44]
15A9A6:  MOVS            R4, #0
15A9A8:  STRH.W          R4, [R7,#var_7A]
15A9AC:  SUB.W           R1, R7, #-var_7A; int
15A9B0:  MOV             R0, R5; int
15A9B2:  MOVS            R2, #0x10
15A9B4:  MOVS            R3, #1
15A9B6:  BL              sub_17D786
15A9BA:  LDRH.W          R0, [R7,#var_7A]
15A9BE:  STR             R4, [SP,#0xB8+var_64]
15A9C0:  CMP             R0, #0
15A9C2:  STRD.W          R4, R4, [SP,#0xB8+var_6C]
15A9C6:  BEQ.W           loc_15ABCE
15A9CA:  ADD             R4, SP, #0xB8+var_40
15A9CC:  ADD             R0, SP, #0xB8+var_6C
15A9CE:  MOV.W           R9, #0
15A9D2:  MOV.W           R8, #0
15A9D6:  ADDS            R0, #8
15A9D8:  STR             R0, [SP,#0xB8+var_AC]
15A9DA:  LDR             R1, [R5]
15A9DC:  LDR             R0, [R5,#8]
15A9DE:  STR.W           R9, [SP,#0xB8+var_80]
15A9E2:  CMP             R0, R1
15A9E4:  STRD.W          R9, R9, [SP,#0xB8+var_88]
15A9E8:  STRH.W          R9, [R7,#var_8A]
15A9EC:  STRD.W          R9, R9, [SP,#0xB8+var_98]
15A9F0:  STR.W           R9, [SP,#0xB8+var_90]
15A9F4:  BGE             loc_15AA32
15A9F6:  LDR             R1, [R5,#0xC]
15A9F8:  ASRS            R2, R0, #3
15A9FA:  LDRB            R1, [R1,R2]
15A9FC:  ADDS            R2, R0, #1
15A9FE:  AND.W           R0, R0, #7
15AA02:  STR             R2, [R5,#8]
15AA04:  LSL.W           R0, R1, R0
15AA08:  LSLS            R0, R0, #0x18
15AA0A:  BPL             loc_15AA32
15AA0C:  MOV             R0, R4; int
15AA0E:  MOV             R1, R5; int
15AA10:  BL              sub_15B24E
15AA14:  LDRB.W          R0, [SP,#0xB8+var_98]
15AA18:  LSLS            R0, R0, #0x1F
15AA1A:  ITT NE
15AA1C:  LDRNE           R0, [SP,#0xB8+var_90]; void *
15AA1E:  BLXNE           j__ZdlPv; operator delete(void *)
15AA22:  VLDR            D16, [SP,#0xB8+var_40]
15AA26:  MOVS            R6, #0
15AA28:  LDR             R0, [SP,#0xB8+var_38]
15AA2A:  STR             R0, [SP,#0xB8+var_90]
15AA2C:  VSTR            D16, [SP,#0xB8+var_98]
15AA30:  B               loc_15AA42
15AA32:  MOVS            R6, #1
15AA34:  SUB.W           R1, R7, #-var_8A; int
15AA38:  MOV             R0, R5; int
15AA3A:  MOVS            R2, #0x10
15AA3C:  MOVS            R3, #1
15AA3E:  BL              sub_17D786
15AA42:  ADD             R1, SP, #0xB8+var_84; int
15AA44:  MOV             R0, R5; int
15AA46:  MOVS            R2, #0x20 ; ' '
15AA48:  MOVS            R3, #1
15AA4A:  BL              sub_17D786
15AA4E:  ADD             R1, SP, #0xB8+var_80; int
15AA50:  MOV             R0, R5; int
15AA52:  MOVS            R2, #0x20 ; ' '
15AA54:  MOVS            R3, #1
15AA56:  BL              sub_17D786
15AA5A:  LDR             R1, [R5]
15AA5C:  LDR             R0, [R5,#8]
15AA5E:  CMP             R0, R1
15AA60:  BGE             loc_15AA7E
15AA62:  LDR             R2, [R5,#0xC]
15AA64:  ASRS            R3, R0, #3
15AA66:  LDRB            R2, [R2,R3]
15AA68:  ADDS            R3, R0, #1
15AA6A:  AND.W           R0, R0, #7
15AA6E:  STR             R3, [R5,#8]
15AA70:  LSL.W           R0, R2, R0
15AA74:  UXTB            R0, R0
15AA76:  MOV.W           R10, R0,LSR#7
15AA7A:  MOV             R0, R3
15AA7C:  B               loc_15AA82
15AA7E:  MOV.W           R10, #0
15AA82:  CMP             R0, R1
15AA84:  BGE             loc_15AAA0
15AA86:  LDR             R1, [R5,#0xC]
15AA88:  ASRS            R2, R0, #3
15AA8A:  LDRB            R1, [R1,R2]
15AA8C:  ADDS            R2, R0, #1
15AA8E:  AND.W           R0, R0, #7
15AA92:  STR             R2, [R5,#8]
15AA94:  LSL.W           R0, R1, R0
15AA98:  UXTB            R0, R0
15AA9A:  MOV.W           R11, R0,LSR#7
15AA9E:  B               loc_15AAA4
15AAA0:  MOV.W           R11, #0
15AAA4:  ADD             R1, SP, #0xB8+var_88; int
15AAA6:  MOV             R0, R5; int
15AAA8:  MOVS            R2, #0x20 ; ' '
15AAAA:  MOVS            R3, #1
15AAAC:  BL              sub_17D786
15AAB0:  LDR             R0, [SP,#0xB8+var_A4]
15AAB2:  BL              sub_155B70
15AAB6:  LDRD.W          R2, R1, [SP,#0xB8+var_88]
15AABA:  SUBS            R0, R0, R1
15AABC:  ADD             R0, R2
15AABE:  BIC.W           R0, R0, R0,ASR#31
15AAC2:  STR             R0, [SP,#0xB8+var_88]
15AAC4:  CBZ             R6, loc_15AAEE
15AAC6:  LDRH.W          R2, [R7,#var_8A]
15AACA:  CMP             R2, #0
15AACC:  BEQ             loc_15ABB2
15AACE:  LDRD.W          R1, R3, [SP,#0xB8+var_68]
15AAD2:  CMP             R1, R3
15AAD4:  BCS             loc_15AB10
15AAD6:  STRH            R2, [R1]
15AAD8:  STR             R0, [R1,#0xC]
15AADA:  LDR             R0, [SP,#0xB8+var_80]
15AADC:  STR             R0, [R1,#4]
15AADE:  ADD.W           R0, R1, #0x10
15AAE2:  STRB.W          R11, [R1,#9]
15AAE6:  STRB.W          R10, [R1,#8]
15AAEA:  STR             R0, [SP,#0xB8+var_68]
15AAEC:  B               loc_15ABB2
15AAEE:  LDRB.W          R1, [SP,#0xB8+var_98]
15AAF2:  LDR             R2, [SP,#0xB8+var_98+4]
15AAF4:  LSLS            R3, R1, #0x1F
15AAF6:  IT EQ
15AAF8:  LSREQ           R2, R1, #1
15AAFA:  CMP             R2, #0
15AAFC:  BEQ             loc_15ABB2
15AAFE:  LDR             R2, [SP,#0xB8+var_80]
15AB00:  STRD.W          R11, R0, [SP,#0xB8+var_B8]
15AB04:  ADD             R1, SP, #0xB8+var_98
15AB06:  LDR             R0, [SP,#0xB8+var_A8]
15AB08:  MOV             R3, R10
15AB0A:  BL              sub_150670
15AB0E:  B               loc_15ABB2
15AB10:  LDR             R0, [SP,#0xB8+var_6C]
15AB12:  SUBS            R2, R1, R0
15AB14:  MOVS            R1, #1
15AB16:  ADD.W           R1, R1, R2,ASR#4
15AB1A:  CMP.W           R1, #0x10000000
15AB1E:  BCS.W           loc_15ACE4
15AB22:  SUBS            R0, R3, R0
15AB24:  MOVW            R3, #0xFFF0
15AB28:  ASRS            R2, R2, #4
15AB2A:  MOVT            R3, #0x7FFF
15AB2E:  CMP.W           R1, R0,ASR#3
15AB32:  IT LS
15AB34:  ASRLS           R1, R0, #3
15AB36:  CMP             R0, R3
15AB38:  IT CS
15AB3A:  MOVCS           R1, #0xFFFFFFF
15AB3E:  LDR             R3, [SP,#0xB8+var_AC]
15AB40:  MOV             R0, R4
15AB42:  BL              sub_15B6D8
15AB46:  LDRD.W          R12, R2, [SP,#0xB8+var_40+4]
15AB4A:  LDRH.W          R6, [R7,#var_8A]
15AB4E:  LDR             R0, [SP,#0xB8+var_88]
15AB50:  LDRD.W          R1, R3, [SP,#0xB8+var_6C]; src
15AB54:  STRH            R6, [R2]
15AB56:  ADD.W           R6, R2, #0x10
15AB5A:  STR             R0, [R2,#0xC]
15AB5C:  LDR             R0, [SP,#0xB8+var_80]
15AB5E:  STRB.W          R11, [R2,#9]
15AB62:  STRB.W          R10, [R2,#8]
15AB66:  STR             R0, [R2,#4]
15AB68:  SUBS            R2, R3, R1; n
15AB6A:  SUB.W           R0, R12, R2; dest
15AB6E:  CMP             R2, #1
15AB70:  STR             R6, [SP,#0xB8+var_38]
15AB72:  STR             R0, [SP,#0xB8+var_40+4]
15AB74:  BLT             loc_15AB82
15AB76:  BLX             j_memcpy
15AB7A:  LDRD.W          R0, R6, [SP,#0xB8+var_40+4]
15AB7E:  LDRD.W          R1, R3, [SP,#0xB8+var_6C]
15AB82:  LDR             R2, [SP,#0xB8+var_64]
15AB84:  CMP             R3, R1
15AB86:  LDR             R4, [SP,#0xB8+var_34]
15AB88:  STR             R4, [SP,#0xB8+var_64]
15AB8A:  ADD             R4, SP, #0xB8+var_40
15AB8C:  STRD.W          R0, R6, [SP,#0xB8+var_6C]
15AB90:  STRD.W          R3, R2, [SP,#0xB8+var_38]
15AB94:  STRD.W          R1, R1, [SP,#0xB8+var_40]
15AB98:  ITTTT NE
15AB9A:  SUBNE           R0, R3, R1
15AB9C:  SUBNE           R0, #0x10
15AB9E:  MVNNE.W         R0, R0,LSR#4
15ABA2:  ADDNE.W         R0, R3, R0,LSL#4
15ABA6:  IT NE
15ABA8:  STRNE           R0, [SP,#0xB8+var_38]
15ABAA:  CBZ             R1, loc_15ABB2
15ABAC:  MOV             R0, R1; void *
15ABAE:  BLX             j__ZdlPv; operator delete(void *)
15ABB2:  LDRB.W          R0, [SP,#0xB8+var_98]
15ABB6:  LSLS            R0, R0, #0x1F
15ABB8:  ITT NE
15ABBA:  LDRNE           R0, [SP,#0xB8+var_90]; void *
15ABBC:  BLXNE           j__ZdlPv; operator delete(void *)
15ABC0:  LDRH.W          R0, [R7,#var_7A]
15ABC4:  ADD.W           R8, R8, #1
15ABC8:  CMP             R8, R0
15ABCA:  BCC.W           loc_15A9DA
15ABCE:  MOVS            R0, #0
15ABD0:  STRH.W          R0, [SP,#0xB8+var_98]
15ABD4:  ADD             R1, SP, #0xB8+var_98; int
15ABD6:  MOV             R0, R5; int
15ABD8:  MOVS            R2, #0x10
15ABDA:  MOVS            R3, #1
15ABDC:  BL              sub_17D786
15ABE0:  LDRH.W          R0, [SP,#0xB8+var_98]
15ABE4:  CBZ             R0, loc_15ABFA
15ABE6:  MOVS            R4, #0
15ABE8:  LDR             R1, [SP,#0xB8+var_A8]
15ABEA:  MOV             R0, R5
15ABEC:  BL              sub_15B3F8
15ABF0:  LDRH.W          R0, [SP,#0xB8+var_98]
15ABF4:  ADDS            R4, #1
15ABF6:  CMP             R4, R0
15ABF8:  BCC             loc_15ABE8
15ABFA:  LDRD.W          R5, R11, [SP,#0xB8+var_6C]
15ABFE:  CMP             R5, R11
15AC00:  BEQ             loc_15ACB0
15AC02:  ADD.W           R10, SP, #0xB8+var_40
15AC06:  MOV.W           R8, #0
15AC0A:  LDR             R4, [R5,#0xC]
15AC0C:  LDRB.W          R9, [R5,#9]
15AC10:  LDRB            R6, [R5,#8]
15AC12:  VLDR            S16, [R5,#4]
15AC16:  LDRH            R2, [R5]
15AC18:  LDR             R1, [SP,#0xB8+var_A4]
15AC1A:  MOV             R0, R10
15AC1C:  BL              sub_1552A0
15AC20:  LDR             R0, [SP,#0xB8+var_40]
15AC22:  CBZ             R0, loc_15AC7C
15AC24:  LDR             R1, [SP,#0xB8+var_40+4]
15AC26:  VMOV            R2, S16
15AC2A:  STRD.W          R8, R8, [SP,#0xB8+var_40]
15AC2E:  STRD.W          R0, R1, [SP,#0xB8+var_A0]
15AC32:  CMP.W           R9, #0
15AC36:  IT NE
15AC38:  MOVNE.W         R9, #1
15AC3C:  STRD.W          R9, R4, [SP,#0xB8+var_B8]
15AC40:  CMP             R6, #0
15AC42:  IT NE
15AC44:  MOVNE           R6, #1
15AC46:  LDR             R0, [SP,#0xB8+var_A8]
15AC48:  ADD             R1, SP, #0xB8+var_A0
15AC4A:  MOV             R3, R6
15AC4C:  BL              sub_150800
15AC50:  LDR             R6, [SP,#0xB8+var_9C]
15AC52:  CBZ             R6, loc_15AC7C
15AC54:  ADDS            R0, R6, #4
15AC56:  DMB.W           ISH
15AC5A:  LDREX.W         R1, [R0]
15AC5E:  SUBS            R2, R1, #1
15AC60:  STREX.W         R3, R2, [R0]
15AC64:  CMP             R3, #0
15AC66:  BNE             loc_15AC5A
15AC68:  DMB.W           ISH
15AC6C:  CBNZ            R1, loc_15AC7C
15AC6E:  LDR             R0, [R6]
15AC70:  LDR             R1, [R0,#8]
15AC72:  MOV             R0, R6
15AC74:  BLX             R1
15AC76:  MOV             R0, R6; this
15AC78:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15AC7C:  LDR             R6, [SP,#0xB8+var_40+4]
15AC7E:  CBZ             R6, loc_15ACA8
15AC80:  ADDS            R0, R6, #4
15AC82:  DMB.W           ISH
15AC86:  LDREX.W         R1, [R0]
15AC8A:  SUBS            R2, R1, #1
15AC8C:  STREX.W         R3, R2, [R0]
15AC90:  CMP             R3, #0
15AC92:  BNE             loc_15AC86
15AC94:  DMB.W           ISH
15AC98:  CBNZ            R1, loc_15ACA8
15AC9A:  LDR             R0, [R6]
15AC9C:  LDR             R1, [R0,#8]
15AC9E:  MOV             R0, R6
15ACA0:  BLX             R1
15ACA2:  MOV             R0, R6; this
15ACA4:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15ACA8:  ADDS            R5, #0x10
15ACAA:  CMP             R5, R11
15ACAC:  BNE             loc_15AC0A
15ACAE:  LDR             R5, [SP,#0xB8+var_6C]
15ACB0:  CBZ             R5, loc_15ACBA
15ACB2:  MOV             R0, R5; void *
15ACB4:  STR             R5, [SP,#0xB8+var_68]
15ACB6:  BLX             j__ZdlPv; operator delete(void *)
15ACBA:  LDRB.W          R0, [SP,#0xB8+var_60]
15ACBE:  LSLS            R0, R0, #0x1F
15ACC0:  ITT NE
15ACC2:  LDRNE           R0, [SP,#0xB8+var_58]; void *
15ACC4:  BLXNE           j__ZdlPv; operator delete(void *)
15ACC8:  LDRB.W          R0, [SP,#0xB8+var_50]; jumptable 0015A88A default case
15ACCC:  LSLS            R0, R0, #0x1F
15ACCE:  ITT NE
15ACD0:  LDRNE           R0, [SP,#0xB8+var_48]; void *
15ACD2:  BLXNE           j__ZdlPv; operator delete(void *)
15ACD6:  ADD             SP, SP, #0x90
15ACD8:  VPOP            {D8}
15ACDC:  ADD             SP, SP, #4
15ACDE:  POP.W           {R8-R11}
15ACE2:  POP             {R4-R7,PC}
15ACE4:  ADD             R0, SP, #0xB8+var_6C
15ACE6:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
