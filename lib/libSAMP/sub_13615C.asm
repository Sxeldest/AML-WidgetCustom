; =========================================================
; Game Engine Function: sub_13615C
; Address            : 0x13615C - 0x136180
; =========================================================

13615C:  PUSH            {R4,R6,R7,LR}
13615E:  ADD             R7, SP, #8
136160:  MOV             R4, R0
136162:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_7NS7_ISF_EEFvvEEE - 0x13616A); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)> ...
136164:  LDRB            R1, [R4,#8]
136166:  ADD             R0, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)>
136168:  ADDS            R0, #8
13616A:  STR             R0, [R4]
13616C:  LSLS            R0, R1, #0x1F
13616E:  ITT NE
136170:  LDRNE           R0, [R4,#0x10]; void *
136172:  BLXNE           j__ZdlPv; operator delete(void *)
136176:  MOV             R0, R4; void *
136178:  POP.W           {R4,R6,R7,LR}
13617C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
