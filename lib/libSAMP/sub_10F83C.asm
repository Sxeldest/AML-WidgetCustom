; =========================================================
; Game Engine Function: sub_10F83C
; Address            : 0x10F83C - 0x10F85E
; =========================================================

10F83C:  PUSH            {R4,R6,R7,LR}
10F83E:  ADD             R7, SP, #8
10F840:  MOV             R4, R0
10F842:  MOVS            R0, #0x10; unsigned int
10F844:  BLX             j__Znwj; operator new(uint)
10F848:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP12_ENTITY_TYPEEEC1I10ObjectViewEEMT_FvS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x10F852); `vtable for'std::__function::__func<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1},std::allocator<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1}>,void ()(_ENTITY_TYPE *)> ...
10F84A:  VLDR            D16, [R4,#4]
10F84E:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1},std::allocator<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1}>,void ()(_ENTITY_TYPE *)>
10F850:  LDR             R2, [R4,#0xC]
10F852:  ADDS            R1, #8
10F854:  STR             R1, [R0]
10F856:  STR             R2, [R0,#0xC]
10F858:  VSTR            D16, [R0,#4]
10F85C:  POP             {R4,R6,R7,PC}
