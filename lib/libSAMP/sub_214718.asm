; =========================================================
; Game Engine Function: sub_214718
; Address            : 0x214718 - 0x214740
; =========================================================

214718:  PUSH            {R4,R5,R7,LR}
21471A:  ADD             R7, SP, #8
21471C:  MOV             R5, R2
21471E:  MOV             R4, R0
214720:  CMP.W           R2, #0x1000
214724:  BLT             loc_214732
214726:  BLX             j__ZNSt6__ndk115system_categoryEv; std::system_category(void)
21472A:  LDR             R0, =(unk_383EF0 - 0x214730)
21472C:  ADD             R0, PC; unk_383EF0
21472E:  ADDS            R0, #8; this
214730:  B               loc_21473A
214732:  BLX             j__ZNSt6__ndk116generic_categoryEv; std::generic_category(void)
214736:  LDR             R0, =(unk_383EF0 - 0x21473C)
214738:  ADD             R0, PC; unk_383EF0
21473A:  STRD.W          R5, R0, [R4]
21473E:  POP             {R4,R5,R7,PC}
