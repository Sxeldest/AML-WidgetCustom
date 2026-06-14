; =========================================================
; Game Engine Function: sub_206328
; Address            : 0x206328 - 0x2063D8
; =========================================================

206328:  PUSH            {R4-R7,LR}
20632A:  ADD             R7, SP, #0xC
20632C:  PUSH.W          {R5-R11}
206330:  MOV             R11, R0
206332:  LDR             R0, =(__stack_chk_guard_ptr - 0x20633E)
206334:  MOV             R6, R1
206336:  MOV.W           R1, #0xFFFFFFFF
20633A:  ADD             R0, PC; __stack_chk_guard_ptr
20633C:  MOV             R4, R6
20633E:  ADD.W           R5, R11, #8
206342:  MOV             R8, R3
206344:  LDR             R0, [R0]; __stack_chk_guard
206346:  MOV             R9, R2
206348:  LDR             R0, [R0]
20634A:  STR             R0, [SP,#0x28+var_20]
20634C:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0x206352); `vtable for'std::locale::__imp ...
20634E:  ADD             R0, PC; `vtable for'std::locale::__imp
206350:  ADDS            R0, #8
206352:  STRD.W          R0, R1, [R11]
206356:  LDR.W           R0, [R4,#8]!
20635A:  LDR             R1, [R4,#4]
20635C:  SUBS            R0, R1, R0
20635E:  MOVS            R1, #1
206360:  ADD.W           R1, R1, R0,ASR#2
206364:  CMP             R1, #0x1C
206366:  IT LS
206368:  MOVLS           R1, #0x1C
20636A:  MOV             R0, R5
20636C:  BL              sub_204AF4
206370:  ADD.W           R10, R11, #0x90
206374:  LDR             R1, =(asc_879DB - 0x20637C); "*" ...
206376:  MOV             R0, R10; int
206378:  ADD             R1, PC; "*"
20637A:  BL              sub_DC6DC
20637E:  MOV             R0, R9; this
206380:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
206384:  STR.W           R9, [SP,#0x28+var_24]
206388:  MOV             R0, R5; int
20638A:  MOV             R1, R4
20638C:  BL              sub_20524C
206390:  MOVS            R4, #0
206392:  LDRD.W          R0, R1, [R6,#8]
206396:  SUBS            R0, R1, R0
206398:  CMP.W           R4, R0,ASR#2
20639C:  BCS             loc_2063AE
20639E:  LDR             R0, [R5]
2063A0:  LDR.W           R0, [R0,R4,LSL#2]; this
2063A4:  CBZ             R0, loc_2063AA
2063A6:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
2063AA:  ADDS            R4, #1
2063AC:  B               loc_206392
2063AE:  MOV             R0, R11; int
2063B0:  MOV             R1, R9; this
2063B2:  MOV             R2, R8
2063B4:  BL              sub_206408
2063B8:  ADD             R0, SP, #0x28+var_24
2063BA:  BL              sub_206488
2063BE:  LDR             R0, [SP,#0x28+var_20]
2063C0:  LDR             R1, =(__stack_chk_guard_ptr - 0x2063C6)
2063C2:  ADD             R1, PC; __stack_chk_guard_ptr
2063C4:  LDR             R1, [R1]; __stack_chk_guard
2063C6:  LDR             R1, [R1]
2063C8:  CMP             R1, R0
2063CA:  ITTT EQ
2063CC:  MOVEQ           R0, R11
2063CE:  POPEQ.W         {R1-R3,R8-R11}
2063D2:  POPEQ           {R4-R7,PC}
2063D4:  BLX             __stack_chk_fail
