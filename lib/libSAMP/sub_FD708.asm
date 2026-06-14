; =========================================================
; Game Engine Function: sub_FD708
; Address            : 0xFD708 - 0xFD810
; =========================================================

FD708:  PUSH            {R4-R7,LR}
FD70A:  ADD             R7, SP, #0xC
FD70C:  PUSH.W          {R8-R10}
FD710:  SUB             SP, SP, #0x20
FD712:  MOV             R4, R0
FD714:  LDR             R0, =(off_23494C - 0xFD71C)
FD716:  LDR             R6, =(dword_2473E4 - 0xFD71E)
FD718:  ADD             R0, PC; off_23494C
FD71A:  ADD             R6, PC; dword_2473E4
FD71C:  LDR.W           R10, [R0]; dword_23DF24
FD720:  STR             R4, [R6]
FD722:  LDR             R0, [R4]
FD724:  LDR.W           R1, [R10]
FD728:  SUBS            R0, R0, R1
FD72A:  BL              sub_FD5FA
FD72E:  LDR             R1, =(off_234A74 - 0xFD736)
FD730:  STR             R0, [SP,#0x38+var_1C]
FD732:  ADD             R1, PC; off_234A74
FD734:  LDR.W           R5, [R4,#0x464]
FD738:  LDR.W           R9, [R1]; dword_2402E4
FD73C:  CMP             R5, #0
FD73E:  LDR.W           R1, [R9]
FD742:  LDR.W           R8, [R1]
FD746:  BEQ             loc_FD7DE
FD748:  LDRB.W          R0, [R4,#0x42C]
FD74C:  LDRB.W          R1, [R4,#0x3A]
FD750:  AND.W           R0, R0, #0x10
FD754:  AND.W           R1, R1, #0xDF
FD758:  ORR.W           R0, R1, R0,LSL#1
FD75C:  EOR.W           R0, R0, #0x20 ; ' '
FD760:  STRB.W          R0, [R4,#0x3A]
FD764:  BL              sub_1082E4
FD768:  CMP             R5, R0
FD76A:  BEQ             loc_FD7C0
FD76C:  LDR             R0, [R6]
FD76E:  LDR.W           R0, [R0,#0x464]
FD772:  BL              sub_108D44
FD776:  LDR.W           R1, [R9]
FD77A:  LDR             R4, [R6]
FD77C:  STRB.W          R0, [R7,#var_1D]
FD780:  STR             R0, [R1]
FD782:  LDR.W           R2, [R4,#0x464]
FD786:  LDR.W           R2, [R2,#0x59C]
FD78A:  CBZ             R2, loc_FD7DE
FD78C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZ32AllVehicles__ProcessControl_hookjE3$_4NS_9allocatorIS2_EEFvvEEE - 0xFD79C); `vtable for'std::__function::__func<AllVehicles__ProcessControl_hook(uint)::$_4,std::allocator<AllVehicles__ProcessControl_hook(uint)::$_4>,void ()(void)> ...
FD78E:  ADD             R3, SP, #0x38+var_1C
FD790:  STR             R3, [SP,#0x38+var_30]
FD792:  SUB.W           R3, R7, #-var_1D
FD796:  STR             R3, [SP,#0x38+var_34]
FD798:  ADD             R2, PC; `vtable for'std::__function::__func<AllVehicles__ProcessControl_hook(uint)::$_4,std::allocator<AllVehicles__ProcessControl_hook(uint)::$_4>,void ()(void)>
FD79A:  LDR             R5, [R1]
FD79C:  MOV             R4, SP
FD79E:  STR             R0, [R1]
FD7A0:  ADD.W           R0, R2, #8
FD7A4:  STR             R4, [SP,#0x38+var_28]
FD7A6:  STR             R0, [SP,#0x38+var_38]
FD7A8:  MOV             R0, R4
FD7AA:  BL              sub_1010F8
FD7AE:  LDR             R0, [SP,#0x38+var_28]
FD7B0:  LDR.W           R1, [R9]
FD7B4:  CMP             R4, R0
FD7B6:  STR             R5, [R1]
FD7B8:  BEQ             loc_FD7F6
FD7BA:  CBZ             R0, loc_FD804
FD7BC:  MOVS            R1, #5
FD7BE:  B               loc_FD7F8
FD7C0:  LDR.W           R0, [R9]
FD7C4:  MOVS            R1, #0
FD7C6:  STR             R1, [R0]
FD7C8:  MOVW            R1, #0xCDB5
FD7CC:  LDR.W           R0, [R10]
FD7D0:  MOVT            R1, #0x3A ; ':'
FD7D4:  ADD             R1, R0
FD7D6:  ADD.W           R0, R4, #0x13C
FD7DA:  BLX             R1
FD7DC:  LDR             R4, [R6]
FD7DE:  LDR             R0, [SP,#0x38+var_1C]
FD7E0:  LDR.W           R1, [R10]
FD7E4:  ADD             R0, R1
FD7E6:  ADDS            R1, R0, #1
FD7E8:  MOV             R0, R4
FD7EA:  BLX             R1
FD7EC:  LDR.W           R0, [R9]
FD7F0:  STR.W           R8, [R0]
FD7F4:  B               loc_FD808
FD7F6:  MOVS            R1, #4
FD7F8:  LDR             R2, [R0]
FD7FA:  LDR.W           R1, [R2,R1,LSL#2]
FD7FE:  BLX             R1
FD800:  LDR.W           R1, [R9]
FD804:  STR.W           R8, [R1]
FD808:  ADD             SP, SP, #0x20 ; ' '
FD80A:  POP.W           {R8-R10}
FD80E:  POP             {R4-R7,PC}
