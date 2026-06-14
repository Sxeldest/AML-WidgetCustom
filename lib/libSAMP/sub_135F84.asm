; =========================================================
; Game Engine Function: sub_135F84
; Address            : 0x135F84 - 0x135FA2
; =========================================================

135F84:  PUSH            {R4,R6,R7,LR}
135F86:  ADD             R7, SP, #8
135F88:  MOV             R4, R0
135F8A:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_6NS7_ISF_EEFvvEEE - 0x135F92); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)> ...
135F8C:  LDRB            R1, [R4,#8]
135F8E:  ADD             R0, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)>
135F90:  ADDS            R0, #8
135F92:  STR             R0, [R4]
135F94:  LSLS            R0, R1, #0x1F
135F96:  ITT NE
135F98:  LDRNE           R0, [R4,#0x10]; void *
135F9A:  BLXNE           j__ZdlPv; operator delete(void *)
135F9E:  MOV             R0, R4
135FA0:  POP             {R4,R6,R7,PC}
