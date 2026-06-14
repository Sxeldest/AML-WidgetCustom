; =========================================================
; Game Engine Function: sub_136138
; Address            : 0x136138 - 0x136156
; =========================================================

136138:  PUSH            {R4,R6,R7,LR}
13613A:  ADD             R7, SP, #8
13613C:  MOV             R4, R0
13613E:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_7NS7_ISF_EEFvvEEE - 0x136146); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)> ...
136140:  LDRB            R1, [R4,#8]
136142:  ADD             R0, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)>
136144:  ADDS            R0, #8
136146:  STR             R0, [R4]
136148:  LSLS            R0, R1, #0x1F
13614A:  ITT NE
13614C:  LDRNE           R0, [R4,#0x10]; void *
13614E:  BLXNE           j__ZdlPv; operator delete(void *)
136152:  MOV             R0, R4
136154:  POP             {R4,R6,R7,PC}
