; =========================================================
; Game Engine Function: sub_82110
; Address            : 0x82110 - 0x8212A
; =========================================================

82110:  PUSH            {R4,R6,R7,LR}
82112:  ADD             R7, SP, #8
82114:  MOV             R4, R0
82116:  MOVS            R0, #8; unsigned int
82118:  BLX             j__Znwj; operator new(uint)
8211C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIPFvRN2SV13ConnectPacketEENS_9allocatorIS6_EES5_EE - 0x82124); `vtable for'std::__function::__func<void (*)(SV::ConnectPacket &),std::allocator<void (*)(SV::ConnectPacket &)>,void ()(SV::ConnectPacket &)> ...
8211E:  LDR             R2, [R4,#4]
82120:  ADD             R1, PC; `vtable for'std::__function::__func<void (*)(SV::ConnectPacket &),std::allocator<void (*)(SV::ConnectPacket &)>,void ()(SV::ConnectPacket &)>
82122:  ADDS            R1, #8
82124:  STRD.W          R1, R2, [R0]
82128:  POP             {R4,R6,R7,PC}
