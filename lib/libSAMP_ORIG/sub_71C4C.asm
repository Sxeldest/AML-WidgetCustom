; =========================================================
; Game Engine Function: sub_71C4C
; Address            : 0x71C4C - 0x71C94
; =========================================================

71C4C:  PUSH            {R4-R7,LR}
71C4E:  ADD             R7, SP, #0xC
71C50:  PUSH.W          {R11}
71C54:  MOV             R4, R0
71C56:  LDR             R0, =(_ZTV12ImGuiWrapper - 0x71C62); `vtable for'ImGuiWrapper ...
71C58:  VMOV.I32        Q8, #0
71C5C:  MOVS            R6, #0
71C5E:  ADD             R0, PC; `vtable for'ImGuiWrapper
71C60:  ADD.W           R5, R4, #0xC
71C64:  ADDS            R0, #8
71C66:  STR             R0, [R4]
71C68:  ADDS            R0, R4, #4
71C6A:  VST1.32         {D16-D17}, [R0]!
71C6E:  STR             R6, [R0]
71C70:  LDRD.W          R0, R1, [R1]
71C74:  STRD.W          R0, R1, [R4,#4]
71C78:  STRD.W          R6, R6, [R4,#0x1C]
71C7C:  MOV             R0, R5
71C7E:  MOV             R1, R2
71C80:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
71C84:  MOVW            R0, #0x2710
71C88:  STRD.W          R6, R0, [R4,#0x24]
71C8C:  MOV             R0, R4
71C8E:  POP.W           {R11}
71C92:  POP             {R4-R7,PC}
