; =========================================================
; Game Engine Function: sub_1119F0
; Address            : 0x1119F0 - 0x111A8C
; =========================================================

1119F0:  PUSH            {R4-R7,LR}
1119F2:  ADD             R7, SP, #0xC
1119F4:  PUSH.W          {R8}
1119F8:  SUB             SP, SP, #0x18
1119FA:  MOV             R4, R0
1119FC:  LDR             R0, =(off_23494C - 0x111A04)
1119FE:  MOV             R6, SP
111A00:  ADD             R0, PC; off_23494C
111A02:  LDR.W           R8, [R0]; dword_23DF24
111A06:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN12custom_radarD1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x111A0E); `vtable for'std::__function::__func<custom_radar::~custom_radar()::$_1,std::allocator<custom_radar::~custom_radar()::$_1>,void ()(void)> ...
111A08:  STR             R6, [SP,#0x28+var_18]
111A0A:  ADD             R0, PC; `vtable for'std::__function::__func<custom_radar::~custom_radar()::$_1,std::allocator<custom_radar::~custom_radar()::$_1>,void ()(void)>
111A0C:  LDR.W           R1, [R8]
111A10:  ADDS            R0, #8
111A12:  STR             R0, [SP,#0x28+var_28]
111A14:  ADD.W           R0, R1, #0x200000
111A18:  ADD.W           R0, R0, #0x1F6000
111A1C:  MOV             R1, R6
111A1E:  BL              sub_1642EC
111A22:  MOV             R5, R0
111A24:  LDR             R0, [SP,#0x28+var_18]
111A26:  CMP             R6, R0
111A28:  BEQ             loc_111A30
111A2A:  CBZ             R0, loc_111A3A
111A2C:  MOVS            R1, #5
111A2E:  B               loc_111A32
111A30:  MOVS            R1, #4
111A32:  LDR             R2, [R0]
111A34:  LDR.W           R1, [R2,R1,LSL#2]
111A38:  BLX             R1
111A3A:  CBZ             R5, loc_111A4A
111A3C:  LDR             R1, =(aAxl - 0x111A44); "AXL" ...
111A3E:  LDR             R2, =(aCanTRemapPage0 - 0x111A46); "Can't remap page 0x3F6000 to restore co"... ...
111A40:  ADD             R1, PC; "AXL"
111A42:  ADD             R2, PC; "Can't remap page 0x3F6000 to restore co"...
111A44:  MOVS            R0, #6; prio
111A46:  BLX             __android_log_print
111A4A:  LDR             R1, [R4,#0xC]
111A4C:  CBZ             R1, loc_111A62
111A4E:  LDR.W           R0, [R8]
111A52:  MOV             R2, #0x66F618
111A5A:  ADD             R0, R2
111A5C:  MOVS            R2, #0
111A5E:  BL              sub_164196
111A62:  MOV             R0, R4
111A64:  BL              sub_FAB24
111A68:  ADD.W           R0, R4, #0x14
111A6C:  BL              sub_1630A8
111A70:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0x111A78); `vtable for'sigslot::connection ...
111A72:  LDR             R0, [R4,#8]; this
111A74:  ADD             R1, PC; `vtable for'sigslot::connection
111A76:  ADD.W           R1, R1, #8
111A7A:  STR             R1, [R4]
111A7C:  CBZ             R0, loc_111A82
111A7E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
111A82:  MOV             R0, R4
111A84:  ADD             SP, SP, #0x18
111A86:  POP.W           {R8}
111A8A:  POP             {R4-R7,PC}
