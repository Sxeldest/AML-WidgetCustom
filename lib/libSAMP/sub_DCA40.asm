; =========================================================
; Game Engine Function: sub_DCA40
; Address            : 0xDCA40 - 0xDCAAE
; =========================================================

DCA40:  PUSH            {R4-R7,LR}
DCA42:  ADD             R7, SP, #0xC
DCA44:  PUSH.W          {R8,R9,R11}
DCA48:  SUB             SP, SP, #0x130; int
DCA4A:  LDR             R5, =(_ZTVN3fmt2v86detail15iterator_bufferINSt6__ndk120back_insert_iteratorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEcNS1_19fixed_buffer_traitsEEE - 0xDCA5C); `vtable for'fmt::v8::detail::iterator_buffer<std::back_insert_iterator<std::string>,char,fmt::v8::detail::fixed_buffer_traits> ...
DCA4C:  ADD.W           LR, R7, #0x10
DCA50:  MOV             R4, R0
DCA52:  MOV.W           R0, #0x100
DCA56:  STR             R0, [SP,#0x148+var_128]
DCA58:  ADD             R5, PC; `vtable for'fmt::v8::detail::iterator_buffer<std::back_insert_iterator<std::string>,char,fmt::v8::detail::fixed_buffer_traits>
DCA5A:  ADD             R0, SP, #0x148+var_134; int
DCA5C:  STR             R2, [SP,#0x148+var_120]
DCA5E:  ADD.W           R2, R0, #0x1C
DCA62:  STR             R1, [SP,#0x148+var_11C]
DCA64:  ADD.W           R1, R5, #8
DCA68:  LDM.W           LR, {R6,R8,LR}
DCA6C:  STR             R2, [SP,#0x148+var_130]
DCA6E:  MOVS            R2, #0
DCA70:  LDR.W           R12, [R7,#arg_0]
DCA74:  LDR.W           R9, [R7,#arg_14]
DCA78:  STR             R2, [SP,#0x148+var_124]
DCA7A:  STR             R2, [SP,#0x148+var_12C]
DCA7C:  STR             R1, [SP,#0x148+var_134]
DCA7E:  STRD.W          R9, R2, [SP,#0x148+var_13C]; int
DCA82:  MOV             R1, R3; s
DCA84:  MOV             R2, R12; int
DCA86:  STMEA.W         SP, {R6,R8,LR}
DCA8A:  BL              sub_DCAC4
DCA8E:  ADD             R0, SP, #0x148+var_134
DCA90:  BL              sub_DCCDE
DCA94:  LDR             R0, [SP,#0x148+var_12C]
DCA96:  LDR             R1, [SP,#0x148+var_124]
DCA98:  LDR             R2, [SP,#0x148+var_11C]
DCA9A:  ADD             R0, R1
DCA9C:  STRD.W          R2, R0, [R4]
DCAA0:  ADD             R0, SP, #0x148+var_134
DCAA2:  BL              sub_DCCDE
DCAA6:  ADD             SP, SP, #0x130
DCAA8:  POP.W           {R8,R9,R11}
DCAAC:  POP             {R4-R7,PC}
