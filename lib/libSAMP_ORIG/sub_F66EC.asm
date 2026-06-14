; =========================================================
; Game Engine Function: sub_F66EC
; Address            : 0xF66EC - 0xF6724
; =========================================================

F66EC:  PUSH            {R2-R5,R7,LR}
F66EE:  ADD             R7, SP, #0x10
F66F0:  MOV             R5, R0
F66F2:  MOV             R0, R1; s
F66F4:  MOV             R4, R1
F66F6:  BLX             strlen
F66FA:  LDRB            R2, [R5]
F66FC:  LDR             R1, [R5,#4]
F66FE:  LSLS            R3, R2, #0x1F
F6700:  IT EQ
F6702:  LSREQ           R1, R2, #1
F6704:  CMP             R0, R1
F6706:  BNE             loc_F6720
F6708:  STR             R0, [SP,#0x10+var_10]
F670A:  MOV             R0, R5
F670C:  MOVS            R1, #0
F670E:  MOV.W           R2, #0xFFFFFFFF
F6712:  MOV             R3, R4
F6714:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
F6718:  CLZ.W           R0, R0
F671C:  LSRS            R0, R0, #5
F671E:  POP             {R2-R5,R7,PC}
F6720:  MOVS            R0, #0
F6722:  POP             {R2-R5,R7,PC}
