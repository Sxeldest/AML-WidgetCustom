; =========================================================
; Game Engine Function: sub_82130
; Address            : 0x82130 - 0x8213E
; =========================================================

82130:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIPFvRN2SV13ConnectPacketEENS_9allocatorIS6_EES5_EE - 0x82138); `vtable for'std::__function::__func<void (*)(SV::ConnectPacket &),std::allocator<void (*)(SV::ConnectPacket &)>,void ()(SV::ConnectPacket &)> ...
82132:  LDR             R0, [R0,#4]
82134:  ADD             R2, PC; `vtable for'std::__function::__func<void (*)(SV::ConnectPacket &),std::allocator<void (*)(SV::ConnectPacket &)>,void ()(SV::ConnectPacket &)>
82136:  ADDS            R2, #8
82138:  STRD.W          R2, R0, [R1]
8213C:  BX              LR
