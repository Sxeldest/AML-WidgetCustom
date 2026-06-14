; =========================================================
; Game Engine Function: sub_1361BC
; Address            : 0x1361BC - 0x1361D6
; =========================================================

1361BC:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_7NS7_ISF_EEFvvEEE - 0x1361C4); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)> ...
1361BE:  LDR             R3, [R0,#4]
1361C0:  ADD             R2, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)>
1361C2:  ADDS            R2, #8
1361C4:  STRD.W          R2, R3, [R1]
1361C8:  ADD.W           R2, R1, #8
1361CC:  ADD.W           R1, R0, #8
1361D0:  MOV             R0, R2
1361D2:  B.W             loc_224334
