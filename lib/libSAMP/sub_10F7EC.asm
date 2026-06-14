; =========================================================
; Game Engine Function: sub_10F7EC
; Address            : 0x10F7EC - 0x10F830
; =========================================================

10F7EC:  PUSH            {R4,R5,R7,LR}
10F7EE:  ADD             R7, SP, #8
10F7F0:  SUB             SP, SP, #0x18
10F7F2:  MOV             R4, R0
10F7F4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP12_ENTITY_TYPEEEC1I10ObjectViewEEMT_FvS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x10F800); `vtable for'std::__function::__func<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1},std::allocator<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1}>,void ()(_ENTITY_TYPE *)> ...
10F7F6:  LDRD.W          R2, R3, [R1]
10F7FA:  MOV             R5, SP
10F7FC:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1},std::allocator<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1}>,void ()(_ENTITY_TYPE *)>
10F7FE:  LDR             R1, [R1,#8]
10F800:  ADDS            R0, #8
10F802:  STRD.W          R1, R5, [SP,#0x20+var_14]
10F806:  STR             R0, [SP,#0x20+var_20]
10F808:  MOV             R0, R5
10F80A:  MOV             R1, R4
10F80C:  STRD.W          R2, R3, [SP,#0x20+var_1C]
10F810:  BL              sub_10F8C4
10F814:  LDR             R0, [SP,#0x20+var_10]
10F816:  CMP             R5, R0
10F818:  BEQ             loc_10F820
10F81A:  CBZ             R0, loc_10F82A
10F81C:  MOVS            R1, #5
10F81E:  B               loc_10F822
10F820:  MOVS            R1, #4
10F822:  LDR             R2, [R0]
10F824:  LDR.W           R1, [R2,R1,LSL#2]
10F828:  BLX             R1
10F82A:  MOV             R0, R4
10F82C:  ADD             SP, SP, #0x18
10F82E:  POP             {R4,R5,R7,PC}
