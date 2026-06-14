; =========================================================
; Game Engine Function: sub_8219C
; Address            : 0x8219C - 0x821AA
; =========================================================

8219C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIPFbRKN2SV16PluginInitPacketEENS_9allocatorIS7_EES6_EE - 0x821A4); `vtable for'std::__function::__func<bool (*)(SV::PluginInitPacket const&),std::allocator<bool (*)(SV::PluginInitPacket const&)>,bool ()(SV::PluginInitPacket const&)> ...
8219E:  LDR             R0, [R0,#4]
821A0:  ADD             R2, PC; `vtable for'std::__function::__func<bool (*)(SV::PluginInitPacket const&),std::allocator<bool (*)(SV::PluginInitPacket const&)>,bool ()(SV::PluginInitPacket const&)>
821A2:  ADDS            R2, #8
821A4:  STRD.W          R2, R0, [R1]
821A8:  BX              LR
