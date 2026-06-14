; =========================================================
; Game Engine Function: sub_136008
; Address            : 0x136008 - 0x136022
; =========================================================

136008:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_6NS7_ISF_EEFvvEEE - 0x136010); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)> ...
13600A:  LDR             R3, [R0,#4]
13600C:  ADD             R2, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)>
13600E:  ADDS            R2, #8
136010:  STRD.W          R2, R3, [R1]
136014:  ADD.W           R2, R1, #8
136018:  ADD.W           R1, R0, #8
13601C:  MOV             R0, R2
13601E:  B.W             loc_224334
