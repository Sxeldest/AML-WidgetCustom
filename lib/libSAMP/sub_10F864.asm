; =========================================================
; Game Engine Function: sub_10F864
; Address            : 0x10F864 - 0x10F87A
; =========================================================

10F864:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP12_ENTITY_TYPEEEC1I10ObjectViewEEMT_FvS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x10F86A); `vtable for'std::__function::__func<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1},std::allocator<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1}>,void ()(_ENTITY_TYPE *)> ...
10F866:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1},std::allocator<function_helper<void ()(_ENTITY_TYPE *)>::function_helper<ObjectView>(void (ObjectView::*)(_ENTITY_TYPE *),ObjectView*)::{lambda(_ENTITY_TYPE *)#1}>,void ()(_ENTITY_TYPE *)>
10F868:  ADDS            R2, #8
10F86A:  STR             R2, [R1]
10F86C:  VLDR            D16, [R0,#4]
10F870:  LDR             R0, [R0,#0xC]
10F872:  STR             R0, [R1,#0xC]
10F874:  VSTR            D16, [R1,#4]
10F878:  BX              LR
