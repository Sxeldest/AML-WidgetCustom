; =========================================================
; Game Engine Function: sub_1619A4
; Address            : 0x1619A4 - 0x161A10
; =========================================================

1619A4:  PUSH            {R4-R7,LR}
1619A6:  ADD             R7, SP, #0xC
1619A8:  PUSH.W          {R11}
1619AC:  SUB             SP, SP, #0x10
1619AE:  MOVS            R5, #0
1619B0:  MOV             R4, R0
1619B2:  STRD.W          R5, R5, [R0]
1619B6:  MOVS            R0, #0x10; unsigned int
1619B8:  BLX             j__Znwj; operator new(uint)
1619BC:  LDR             R1, =(_ZTVN11crash_stuff6filterE - 0x1619C4); `vtable for'crash_stuff::filter ...
1619BE:  LDR             R2, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN11crash_stuff6filterENS_9allocatorIS2_EEEE - 0x1619C8); `vtable for'std::__shared_ptr_emplace<crash_stuff::filter> ...
1619C0:  ADD             R1, PC; `vtable for'crash_stuff::filter
1619C2:  STR             R5, [R0,#8]
1619C4:  ADD             R2, PC; `vtable for'std::__shared_ptr_emplace<crash_stuff::filter>
1619C6:  ADDS            R1, #8
1619C8:  ADDS            R2, #8
1619CA:  STRD.W          R2, R5, [R0]
1619CE:  MOV             R2, R0
1619D0:  STR.W           R1, [R2,#0xC]!
1619D4:  STRD.W          R2, R0, [R4]
1619D8:  MOVS            R0, #1
1619DA:  BL              sub_F0ED8
1619DE:  LDRD.W          R2, R1, [R4]
1619E2:  STRD.W          R2, R1, [SP,#0x20+var_18]
1619E6:  CBZ             R1, loc_1619F8
1619E8:  ADDS            R1, #8
1619EA:  LDREX.W         R2, [R1]
1619EE:  ADDS            R2, #1
1619F0:  STREX.W         R3, R2, [R1]
1619F4:  CMP             R3, #0
1619F6:  BNE             loc_1619EA
1619F8:  ADD             R1, SP, #0x20+var_18
1619FA:  BL              sub_15FF90
1619FE:  LDR             R0, [SP,#0x20+var_14]; this
161A00:  CBZ             R0, loc_161A06
161A02:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
161A06:  MOV             R0, R4
161A08:  ADD             SP, SP, #0x10
161A0A:  POP.W           {R11}
161A0E:  POP             {R4-R7,PC}
