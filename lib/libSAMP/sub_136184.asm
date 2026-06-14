; =========================================================
; Game Engine Function: sub_136184
; Address            : 0x136184 - 0x1361AE
; =========================================================

136184:  PUSH            {R4,R5,R7,LR}
136186:  ADD             R7, SP, #8
136188:  MOV             R5, R0
13618A:  MOVS            R0, #0x14; unsigned int
13618C:  BLX             j__Znwj; operator new(uint)
136190:  MOV             R4, R0
136192:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_7NS7_ISF_EEFvvEEE - 0x13619A); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)> ...
136194:  LDR             R1, [R5,#4]
136196:  ADD             R0, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)>
136198:  ADDS            R0, #8
13619A:  STRD.W          R0, R1, [R4]
13619E:  ADD.W           R1, R5, #8
1361A2:  ADD.W           R0, R4, #8
1361A6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1361AA:  MOV             R0, R4
1361AC:  POP             {R4,R5,R7,PC}
