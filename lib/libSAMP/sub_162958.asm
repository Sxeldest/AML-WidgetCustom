; =========================================================
; Game Engine Function: sub_162958
; Address            : 0x162958 - 0x1629C4
; =========================================================

162958:  PUSH            {R4-R7,LR}
16295A:  ADD             R7, SP, #0xC
16295C:  PUSH.W          {R11}
162960:  SUB             SP, SP, #0x10
162962:  MOVS            R5, #0
162964:  MOV             R4, R0
162966:  STRD.W          R5, R5, [R0]
16296A:  MOVS            R0, #0x10; unsigned int
16296C:  BLX             j__Znwj; operator new(uint)
162970:  LDR             R1, =(_ZTVN3UEF11stack_trace6filterE - 0x162978); `vtable for'UEF::stack_trace::filter ...
162972:  LDR             R2, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN3UEF11stack_trace6filterENS_9allocatorIS3_EEEE - 0x16297C); `vtable for'std::__shared_ptr_emplace<UEF::stack_trace::filter> ...
162974:  ADD             R1, PC; `vtable for'UEF::stack_trace::filter
162976:  STR             R5, [R0,#8]
162978:  ADD             R2, PC; `vtable for'std::__shared_ptr_emplace<UEF::stack_trace::filter>
16297A:  ADDS            R1, #8
16297C:  ADDS            R2, #8
16297E:  STRD.W          R2, R5, [R0]
162982:  MOV             R2, R0
162984:  STR.W           R1, [R2,#0xC]!
162988:  STRD.W          R2, R0, [R4]
16298C:  MOVS            R0, #1
16298E:  BL              sub_F0ED8
162992:  LDRD.W          R2, R1, [R4]
162996:  STRD.W          R2, R1, [SP,#0x20+var_18]
16299A:  CBZ             R1, loc_1629AC
16299C:  ADDS            R1, #8
16299E:  LDREX.W         R2, [R1]
1629A2:  ADDS            R2, #1
1629A4:  STREX.W         R3, R2, [R1]
1629A8:  CMP             R3, #0
1629AA:  BNE             loc_16299E
1629AC:  ADD             R1, SP, #0x20+var_18
1629AE:  BL              sub_15FF90
1629B2:  LDR             R0, [SP,#0x20+var_14]; this
1629B4:  CBZ             R0, loc_1629BA
1629B6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1629BA:  MOV             R0, R4
1629BC:  ADD             SP, SP, #0x10
1629BE:  POP.W           {R11}
1629C2:  POP             {R4-R7,PC}
