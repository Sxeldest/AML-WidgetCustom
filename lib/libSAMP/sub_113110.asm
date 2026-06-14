; =========================================================
; Game Engine Function: sub_113110
; Address            : 0x113110 - 0x113186
; =========================================================

113110:  PUSH            {R4,R5,R7,LR}
113112:  ADD             R7, SP, #8
113114:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0x11311E); `vtable for'sigslot::connection ...
113116:  MOV             R4, R0
113118:  LDR             R0, [R0,#0x74]; this
11311A:  ADD             R1, PC; `vtable for'sigslot::connection
11311C:  ADD.W           R5, R1, #8
113120:  STR             R5, [R4,#0x6C]
113122:  CBZ             R0, loc_113128
113124:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
113128:  LDR             R0, [R4,#0x68]; this
11312A:  STR             R5, [R4,#0x60]
11312C:  CBZ             R0, loc_113132
11312E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
113132:  LDR             R0, [R4,#0x5C]; this
113134:  STR             R5, [R4,#0x54]
113136:  CBZ             R0, loc_11313C
113138:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11313C:  LDR             R0, [R4,#0x50]; this
11313E:  STR             R5, [R4,#0x48]
113140:  CBZ             R0, loc_113146
113142:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
113146:  LDR             R0, [R4,#0x44]; this
113148:  STR             R5, [R4,#0x3C]
11314A:  CBZ             R0, loc_113150
11314C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
113150:  LDR             R0, [R4,#0x38]; this
113152:  STR             R5, [R4,#0x30]
113154:  CBZ             R0, loc_11315A
113156:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11315A:  LDR             R0, [R4,#0x2C]; this
11315C:  STR             R5, [R4,#0x24]
11315E:  CBZ             R0, loc_113164
113160:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
113164:  LDR             R0, [R4,#0x20]; this
113166:  STR             R5, [R4,#0x18]
113168:  CBZ             R0, loc_11316E
11316A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11316E:  LDR             R0, [R4,#0x14]; this
113170:  STR             R5, [R4,#0xC]
113172:  CBZ             R0, loc_113178
113174:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
113178:  LDR             R0, [R4,#8]; this
11317A:  STR             R5, [R4]
11317C:  CBZ             R0, loc_113182
11317E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
113182:  MOV             R0, R4
113184:  POP             {R4,R5,R7,PC}
