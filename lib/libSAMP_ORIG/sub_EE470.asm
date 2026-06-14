; =========================================================
; Game Engine Function: sub_EE470
; Address            : 0xEE470 - 0xEE520
; =========================================================

EE470:  PUSH            {R4-R7,LR}
EE472:  ADD             R7, SP, #0xC
EE474:  PUSH.W          {R5-R11}
EE478:  MOV             R11, R0
EE47A:  LDR             R0, =(__stack_chk_guard_ptr - 0xEE486)
EE47C:  MOV             R6, R1
EE47E:  MOV.W           R1, #0xFFFFFFFF
EE482:  ADD             R0, PC; __stack_chk_guard_ptr
EE484:  MOV             R4, R6
EE486:  ADD.W           R5, R11, #8
EE48A:  MOV             R8, R3
EE48C:  LDR             R0, [R0]; __stack_chk_guard
EE48E:  MOV             R9, R2
EE490:  LDR             R0, [R0]
EE492:  STR             R0, [SP,#0x28+var_20]
EE494:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0xEE49A); `vtable for'std::locale::__imp ...
EE496:  ADD             R0, PC; `vtable for'std::locale::__imp
EE498:  ADDS            R0, #8
EE49A:  STRD.W          R0, R1, [R11]
EE49E:  LDR.W           R0, [R4,#8]!
EE4A2:  LDR             R1, [R4,#4]
EE4A4:  SUBS            R0, R1, R0
EE4A6:  MOVS            R1, #1
EE4A8:  ADD.W           R1, R1, R0,ASR#2
EE4AC:  CMP             R1, #0x1C
EE4AE:  IT LS
EE4B0:  MOVLS           R1, #0x1C
EE4B2:  MOV             R0, R5
EE4B4:  BL              sub_ECC3C
EE4B8:  ADD.W           R10, R11, #0x90
EE4BC:  LDR             R1, =(byte_4CC4A - 0xEE4C4)
EE4BE:  MOV             R0, R10; int
EE4C0:  ADD             R1, PC; byte_4CC4A ; s
EE4C2:  BL              sub_5FBF8
EE4C6:  MOV             R0, R9; this
EE4C8:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
EE4CC:  STR.W           R9, [SP,#0x28+var_24]
EE4D0:  MOV             R0, R5; int
EE4D2:  MOV             R1, R4
EE4D4:  BL              sub_ED394
EE4D8:  MOVS            R4, #0
EE4DA:  LDRD.W          R0, R1, [R6,#8]
EE4DE:  SUBS            R0, R1, R0
EE4E0:  CMP.W           R4, R0,ASR#2
EE4E4:  BCS             loc_EE4F6
EE4E6:  LDR             R0, [R5]
EE4E8:  LDR.W           R0, [R0,R4,LSL#2]; this
EE4EC:  CBZ             R0, loc_EE4F2
EE4EE:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
EE4F2:  ADDS            R4, #1
EE4F4:  B               loc_EE4DA
EE4F6:  MOV             R0, R11; int
EE4F8:  MOV             R1, R9; this
EE4FA:  MOV             R2, R8
EE4FC:  BL              sub_EE550
EE500:  ADD             R0, SP, #0x28+var_24
EE502:  BL              sub_EE5D0
EE506:  LDR             R0, [SP,#0x28+var_20]
EE508:  LDR             R1, =(__stack_chk_guard_ptr - 0xEE50E)
EE50A:  ADD             R1, PC; __stack_chk_guard_ptr
EE50C:  LDR             R1, [R1]; __stack_chk_guard
EE50E:  LDR             R1, [R1]
EE510:  CMP             R1, R0
EE512:  ITTT EQ
EE514:  MOVEQ           R0, R11
EE516:  POPEQ.W         {R1-R3,R8-R11}
EE51A:  POPEQ           {R4-R7,PC}
EE51C:  BLX             __stack_chk_fail
