; =========================================================
; Game Engine Function: sub_FCA30
; Address            : 0xFCA30 - 0xFCA58
; =========================================================

FCA30:  PUSH            {R4,R5,R7,LR}
FCA32:  ADD             R7, SP, #8
FCA34:  MOV             R5, R2
FCA36:  MOV             R4, R0
FCA38:  CMP.W           R2, #0x1000
FCA3C:  BLT             loc_FCA4A
FCA3E:  BLX             j__ZNSt6__ndk115system_categoryEv; std::system_category(void)
FCA42:  LDR             R0, =(unk_1AF668 - 0xFCA48)
FCA44:  ADD             R0, PC; unk_1AF668
FCA46:  ADDS            R0, #8; this
FCA48:  B               loc_FCA52
FCA4A:  BLX             j__ZNSt6__ndk116generic_categoryEv; std::generic_category(void)
FCA4E:  LDR             R0, =(unk_1AF668 - 0xFCA54)
FCA50:  ADD             R0, PC; unk_1AF668
FCA52:  STRD.W          R5, R0, [R4]
FCA56:  POP             {R4,R5,R7,PC}
