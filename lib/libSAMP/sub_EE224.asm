; =========================================================
; Game Engine Function: sub_EE224
; Address            : 0xEE224 - 0xEE26C
; =========================================================

EE224:  PUSH            {R4,R5,R7,LR}
EE226:  ADD             R7, SP, #8
EE228:  LDR             R1, [R0]
EE22A:  LDR             R2, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEE230)
EE22C:  ADD             R2, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EE22E:  LDR.W           R1, [R1,#-0xC]
EE232:  ADDS            R4, R0, R1
EE234:  LDR             R2, [R2]; `vtable for'std::ofstream ...
EE236:  ADD.W           R0, R2, #0x20 ; ' '
EE23A:  MOV             R5, R4
EE23C:  STR.W           R0, [R5,#0x60]!
EE240:  MOV             R0, R4
EE242:  ADD.W           R1, R2, #0xC
EE246:  STR.W           R1, [R0],#4
EE24A:  BL              sub_E50B0
EE24E:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEE254)
EE250:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EE252:  LDR             R0, [R0]; `VTT for'std::ofstream ...
EE254:  ADDS            R1, R0, #4
EE256:  MOV             R0, R4
EE258:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
EE25C:  MOV             R0, R5
EE25E:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
EE262:  MOV             R0, R4; void *
EE264:  POP.W           {R4,R5,R7,LR}
EE268:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
