; =========================================================
; Game Engine Function: sub_8217C
; Address            : 0x8217C - 0x82196
; =========================================================

8217C:  PUSH            {R4,R6,R7,LR}
8217E:  ADD             R7, SP, #8
82180:  MOV             R4, R0
82182:  MOVS            R0, #8; unsigned int
82184:  BLX             j__Znwj; operator new(uint)
82188:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIPFbRKN2SV16PluginInitPacketEENS_9allocatorIS7_EES6_EE - 0x82190); `vtable for'std::__function::__func<bool (*)(SV::PluginInitPacket const&),std::allocator<bool (*)(SV::PluginInitPacket const&)>,bool ()(SV::PluginInitPacket const&)> ...
8218A:  LDR             R2, [R4,#4]
8218C:  ADD             R1, PC; `vtable for'std::__function::__func<bool (*)(SV::PluginInitPacket const&),std::allocator<bool (*)(SV::PluginInitPacket const&)>,bool ()(SV::PluginInitPacket const&)>
8218E:  ADDS            R1, #8
82190:  STRD.W          R1, R2, [R0]
82194:  POP             {R4,R6,R7,PC}
