; =========================================================
; Game Engine Function: sub_15D300
; Address            : 0x15D300 - 0x15D344
; =========================================================

15D300:  PUSH            {R4,R5,R7,LR}
15D302:  ADD             R7, SP, #8
15D304:  MOV             R5, R0
15D306:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN12SoundStorage5SoundENS_9allocatorIS2_EEEE - 0x15D30C); `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound> ...
15D308:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound>
15D30A:  ADDS            R0, #8
15D30C:  STR             R0, [R5]
15D30E:  ADD.W           R0, R5, #0x14
15D312:  BL              sub_1587E8
15D316:  LDR             R0, [R5,#0x10]
15D318:  CBZ             R0, loc_15D33A
15D31A:  ADDS            R1, R0, #4
15D31C:  DMB.W           ISH
15D320:  LDREX.W         R2, [R1]
15D324:  SUBS            R3, R2, #1
15D326:  STREX.W         R4, R3, [R1]
15D32A:  CMP             R4, #0
15D32C:  BNE             loc_15D320
15D32E:  DMB.W           ISH
15D332:  CBNZ            R2, loc_15D33A
15D334:  LDR             R1, [R0]
15D336:  LDR             R1, [R1,#8]
15D338:  BLX             R1
15D33A:  MOV             R0, R5
15D33C:  POP.W           {R4,R5,R7,LR}
15D340:  B.W             sub_2242D4
