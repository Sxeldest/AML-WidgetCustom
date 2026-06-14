; =========================================================
; Game Engine Function: sub_161248
; Address            : 0x161248 - 0x1612B4
; =========================================================

161248:  PUSH            {R4-R7,LR}
16124A:  ADD             R7, SP, #0xC
16124C:  PUSH.W          {R11}
161250:  SUB             SP, SP, #0x10
161252:  MOVS            R5, #0
161254:  MOV             R4, R0
161256:  STRD.W          R5, R5, [R0]
16125A:  MOVS            R0, #0x10; unsigned int
16125C:  BLX             j__Znwj; operator new(uint)
161260:  LDR             R1, =(_ZTVN12anti_crasher3UEF6filterE - 0x161268); `vtable for'anti_crasher::UEF::filter ...
161262:  LDR             R2, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN12anti_crasher3UEF6filterENS_9allocatorIS3_EEEE - 0x16126C); `vtable for'std::__shared_ptr_emplace<anti_crasher::UEF::filter> ...
161264:  ADD             R1, PC; `vtable for'anti_crasher::UEF::filter
161266:  STR             R5, [R0,#8]
161268:  ADD             R2, PC; `vtable for'std::__shared_ptr_emplace<anti_crasher::UEF::filter>
16126A:  ADDS            R1, #8
16126C:  ADDS            R2, #8
16126E:  STRD.W          R2, R5, [R0]
161272:  MOV             R2, R0
161274:  STR.W           R1, [R2,#0xC]!
161278:  STRD.W          R2, R0, [R4]
16127C:  MOVS            R0, #1
16127E:  BL              sub_F0ED8
161282:  LDRD.W          R2, R1, [R4]
161286:  STRD.W          R2, R1, [SP,#0x20+var_18]
16128A:  CBZ             R1, loc_16129C
16128C:  ADDS            R1, #8
16128E:  LDREX.W         R2, [R1]
161292:  ADDS            R2, #1
161294:  STREX.W         R3, R2, [R1]
161298:  CMP             R3, #0
16129A:  BNE             loc_16128E
16129C:  ADD             R1, SP, #0x20+var_18
16129E:  BL              sub_15FF90
1612A2:  LDR             R0, [SP,#0x20+var_14]; this
1612A4:  CBZ             R0, loc_1612AA
1612A6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1612AA:  MOV             R0, R4
1612AC:  ADD             SP, SP, #0x10
1612AE:  POP.W           {R11}
1612B2:  POP             {R4-R7,PC}
