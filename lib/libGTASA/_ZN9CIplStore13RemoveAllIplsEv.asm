; =========================================================
; Game Engine Function: _ZN9CIplStore13RemoveAllIplsEv
; Address            : 0x2805F4 - 0x280644
; =========================================================

2805F4:  PUSH            {R4-R7,LR}
2805F6:  ADD             R7, SP, #0xC
2805F8:  PUSH.W          {R8}
2805FC:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x28060C)
2805FE:  MOV             R1, #0x7B526; int
280606:  MOVS            R5, #0
280608:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
28060A:  MOVW            R8, #0x62A8
28060E:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
280610:  ADDS            R4, R0, R1
280612:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280618)
280614:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
280616:  LDR             R6, [R0]; CIplStore::ms_pPool ...
280618:  LDR             R0, [R6]; CIplStore::ms_pPool
28061A:  LDR             R0, [R0,#4]
28061C:  ADD             R0, R5
28061E:  LDRSB.W         R0, [R0,#1]
280622:  CMP             R0, #0
280624:  BLT             loc_280636
280626:  LDRB            R0, [R4]
280628:  TST.W           R0, #6
28062C:  ITT EQ
28062E:  ADDEQ.W         R0, R5, R8; this
280632:  BLXEQ           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
280636:  ADDS            R5, #1
280638:  BL              sub_4C6D32
28063C:  BNE             loc_280618
28063E:  POP.W           {R8}
280642:  POP             {R4-R7,PC}
