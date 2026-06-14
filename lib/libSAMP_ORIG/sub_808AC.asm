; =========================================================
; Game Engine Function: sub_808AC
; Address            : 0x808AC - 0x80A2E
; =========================================================

808AC:  PUSH            {R4,R5,R7,LR}
808AE:  ADD             R7, SP, #8
808B0:  SUB             SP, SP, #0x98
808B2:  LDR             R0, =(__stack_chk_guard_ptr - 0x808B8)
808B4:  ADD             R0, PC; __stack_chk_guard_ptr
808B6:  LDR             R0, [R0]; __stack_chk_guard
808B8:  LDR             R0, [R0]
808BA:  STR             R0, [SP,#0xA0+var_C]
808BC:  BL              sub_866CC
808C0:  CBZ             R0, loc_808E8
808C2:  LDR             R0, =(unk_111244 - 0x808CC)
808C4:  ADD             R4, SP, #0xA0+var_28
808C6:  LDR             R1, =(nullsub_18+1 - 0x808D6)
808C8:  ADD             R0, PC; unk_111244
808CA:  STR             R4, [SP,#0xA0+var_18]
808CC:  ADD.W           R5, R0, #8
808D0:  MOV             R0, R4
808D2:  ADD             R1, PC; nullsub_18
808D4:  STR             R1, [SP,#0xA0+var_24]
808D6:  STR             R5, [SP,#0xA0+var_28]
808D8:  BL              sub_86880
808DC:  LDR             R0, [SP,#0xA0+var_18]
808DE:  CMP             R4, R0
808E0:  BEQ             loc_808F6
808E2:  CBZ             R0, loc_80900
808E4:  MOVS            R1, #5
808E6:  B               loc_808F8
808E8:  LDR             R0, =(aSvErrPluginFai_0 - 0x808EE); "[sv:err:plugin] : failed to init samp" ...
808EA:  ADD             R0, PC; "[sv:err:plugin] : failed to init samp"
808EC:  BL              sub_80664
808F0:  BL              sub_862A4
808F4:  B               loc_80A16
808F6:  MOVS            R1, #4
808F8:  LDR             R2, [R0]
808FA:  LDR.W           R1, [R2,R1,LSL#2]
808FE:  BLX             R1
80900:  LDR             R0, =(sub_80A78+1 - 0x8090A)
80902:  ADD             R4, SP, #0xA0+var_40
80904:  STR             R4, [SP,#0xA0+var_30]
80906:  ADD             R0, PC; sub_80A78
80908:  STRD.W          R5, R0, [SP,#0xA0+var_40]
8090C:  MOV             R0, R4
8090E:  BL              sub_8696C
80912:  LDR             R0, [SP,#0xA0+var_30]
80914:  CMP             R4, R0
80916:  BEQ             loc_8091E
80918:  CBZ             R0, loc_80928
8091A:  MOVS            R1, #5
8091C:  B               loc_80920
8091E:  MOVS            R1, #4
80920:  LDR             R2, [R0]
80922:  LDR.W           R1, [R2,R1,LSL#2]
80926:  BLX             R1
80928:  BL              sub_7E47C
8092C:  CBZ             R0, loc_80952
8092E:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIPFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEtENS5_ISB_EESA_EE - 0x80938); `vtable for'std::__function::__func<void (*)(std::string const&,ushort),std::allocator<void (*)(std::string const&,ushort)>,void ()(std::string const&,ushort)> ...
80930:  ADD             R4, SP, #0xA0+var_58
80932:  LDR             R1, =(nullsub_21+1 - 0x80942)
80934:  ADD             R0, PC; `vtable for'std::__function::__func<void (*)(std::string const&,ushort),std::allocator<void (*)(std::string const&,ushort)>,void ()(std::string const&,ushort)>
80936:  STR             R4, [SP,#0xA0+var_48]
80938:  ADDS            R0, #8
8093A:  STR             R0, [SP,#0xA0+var_58]
8093C:  MOV             R0, R4
8093E:  ADD             R1, PC; nullsub_21
80940:  STR             R1, [SP,#0xA0+var_54]
80942:  BL              sub_7E9BC
80946:  LDR             R0, [SP,#0xA0+var_48]
80948:  CMP             R4, R0
8094A:  BEQ             loc_80964
8094C:  CBZ             R0, loc_8096E
8094E:  MOVS            R1, #5
80950:  B               loc_80966
80952:  LDR             R0, =(aSvErrPluginFai_1 - 0x80958); "[sv:err:plugin] : failed to init networ"... ...
80954:  ADD             R0, PC; "[sv:err:plugin] : failed to init networ"...
80956:  BL              sub_80664
8095A:  BL              sub_862A4
8095E:  BL              sub_8679C
80962:  B               loc_80A16
80964:  MOVS            R1, #4
80966:  LDR             R2, [R0]
80968:  LDR.W           R1, [R2,R1,LSL#2]
8096C:  BLX             R1
8096E:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIPFvRN2SV13ConnectPacketEENS_9allocatorIS6_EES5_EE - 0x80978); `vtable for'std::__function::__func<void (*)(SV::ConnectPacket &),std::allocator<void (*)(SV::ConnectPacket &)>,void ()(SV::ConnectPacket &)> ...
80970:  ADD             R4, SP, #0xA0+var_70
80972:  LDR             R1, =(sub_80AAA+1 - 0x80982)
80974:  ADD             R0, PC; `vtable for'std::__function::__func<void (*)(SV::ConnectPacket &),std::allocator<void (*)(SV::ConnectPacket &)>,void ()(SV::ConnectPacket &)>
80976:  STR             R4, [SP,#0xA0+var_60]
80978:  ADDS            R0, #8
8097A:  STR             R0, [SP,#0xA0+var_70]
8097C:  MOV             R0, R4
8097E:  ADD             R1, PC; sub_80AAA
80980:  STR             R1, [SP,#0xA0+var_6C]
80982:  BL              sub_7EAA8
80986:  LDR             R0, [SP,#0xA0+var_60]
80988:  CMP             R4, R0
8098A:  BEQ             loc_80992
8098C:  CBZ             R0, loc_8099C
8098E:  MOVS            R1, #5
80990:  B               loc_80994
80992:  MOVS            R1, #4
80994:  LDR             R2, [R0]
80996:  LDR.W           R1, [R2,R1,LSL#2]
8099A:  BLX             R1
8099C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIPFbRKN2SV16PluginInitPacketEENS_9allocatorIS7_EES6_EE - 0x809A6); `vtable for'std::__function::__func<bool (*)(SV::PluginInitPacket const&),std::allocator<bool (*)(SV::PluginInitPacket const&)>,bool ()(SV::PluginInitPacket const&)> ...
8099E:  ADD             R4, SP, #0xA0+var_88
809A0:  LDR             R1, =(sub_80AC8+1 - 0x809B0)
809A2:  ADD             R0, PC; `vtable for'std::__function::__func<bool (*)(SV::PluginInitPacket const&),std::allocator<bool (*)(SV::PluginInitPacket const&)>,bool ()(SV::PluginInitPacket const&)>
809A4:  STR             R4, [SP,#0xA0+var_78]
809A6:  ADDS            R0, #8
809A8:  STR             R0, [SP,#0xA0+var_88]
809AA:  MOV             R0, R4
809AC:  ADD             R1, PC; sub_80AC8
809AE:  STR             R1, [SP,#0xA0+var_84]
809B0:  BL              sub_7EB94
809B4:  LDR             R0, [SP,#0xA0+var_78]
809B6:  CMP             R4, R0
809B8:  BEQ             loc_809C0
809BA:  CBZ             R0, loc_809CA
809BC:  MOVS            R1, #5
809BE:  B               loc_809C2
809C0:  MOVS            R1, #4
809C2:  LDR             R2, [R0]
809C4:  LDR.W           R1, [R2,R1,LSL#2]
809C8:  BLX             R1
809CA:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIPFvvENS_9allocatorIS3_EES2_EE - 0x809D4); `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)> ...
809CC:  MOV             R4, SP
809CE:  LDR             R1, =(sub_80AF8+1 - 0x809DE)
809D0:  ADD             R0, PC; `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>
809D2:  STR             R4, [SP,#0xA0+var_90]
809D4:  ADDS            R0, #8
809D6:  STR             R0, [SP,#0xA0+var_A0]
809D8:  MOV             R0, R4
809DA:  ADD             R1, PC; sub_80AF8
809DC:  STR             R1, [SP,#0xA0+var_9C]
809DE:  BL              sub_7EC80
809E2:  LDR             R0, [SP,#0xA0+var_90]
809E4:  CMP             R4, R0
809E6:  BEQ             loc_809EE
809E8:  CBZ             R0, loc_809F8
809EA:  MOVS            R1, #5
809EC:  B               loc_809F0
809EE:  MOVS            R1, #4
809F0:  LDR             R2, [R0]
809F2:  LDR.W           R1, [R2,R1,LSL#2]
809F6:  BLX             R1
809F8:  BL              sub_80060
809FC:  CBZ             R0, loc_80A02
809FE:  MOVS            R0, #1
80A00:  B               loc_80A18
80A02:  LDR             R0, =(aSvErrPluginFai_2 - 0x80A08); "[sv:err:plugin] : failed to init playba"... ...
80A04:  ADD             R0, PC; "[sv:err:plugin] : failed to init playba"...
80A06:  BL              sub_80664
80A0A:  BL              sub_862A4
80A0E:  BL              sub_8679C
80A12:  BL              sub_7E534
80A16:  MOVS            R0, #0
80A18:  LDR             R1, [SP,#0xA0+var_C]
80A1A:  LDR             R2, =(__stack_chk_guard_ptr - 0x80A20)
80A1C:  ADD             R2, PC; __stack_chk_guard_ptr
80A1E:  LDR             R2, [R2]; __stack_chk_guard
80A20:  LDR             R2, [R2]
80A22:  CMP             R2, R1
80A24:  ITT EQ
80A26:  ADDEQ           SP, SP, #0x98
80A28:  POPEQ           {R4,R5,R7,PC}
80A2A:  BLX             __stack_chk_fail
