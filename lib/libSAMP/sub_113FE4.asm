; =========================================================
; Game Engine Function: sub_113FE4
; Address            : 0x113FE4 - 0x114004
; =========================================================

113FE4:  PUSH            {R4,R6,R7,LR}
113FE6:  ADD             R7, SP, #8
113FE8:  MOV             R4, R0
113FEA:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI15CTransparentSpdNS_9allocatorIS1_EEEE - 0x113FF2); `vtable for'std::__shared_ptr_emplace<CTransparentSpd> ...
113FEC:  MOVS            R1, #0
113FEE:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CTransparentSpd>
113FF0:  STR             R1, [R4,#8]
113FF2:  ADDS            R0, #8
113FF4:  STRD.W          R0, R1, [R4]
113FF8:  ADD.W           R0, R4, #0x10
113FFC:  BL              sub_11866C
114000:  MOV             R0, R4
114002:  POP             {R4,R6,R7,PC}
