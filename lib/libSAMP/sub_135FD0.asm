; =========================================================
; Game Engine Function: sub_135FD0
; Address            : 0x135FD0 - 0x135FFA
; =========================================================

135FD0:  PUSH            {R4,R5,R7,LR}
135FD2:  ADD             R7, SP, #8
135FD4:  MOV             R5, R0
135FD6:  MOVS            R0, #0x14; unsigned int
135FD8:  BLX             j__Znwj; operator new(uint)
135FDC:  MOV             R4, R0
135FDE:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_6NS7_ISF_EEFvvEEE - 0x135FE6); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)> ...
135FE0:  LDR             R1, [R5,#4]
135FE2:  ADD             R0, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)>
135FE4:  ADDS            R0, #8
135FE6:  STRD.W          R0, R1, [R4]
135FEA:  ADD.W           R1, R5, #8
135FEE:  ADD.W           R0, R4, #8
135FF2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
135FF6:  MOV             R0, R4
135FF8:  POP             {R4,R5,R7,PC}
