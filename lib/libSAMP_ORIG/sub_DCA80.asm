; =========================================================
; Game Engine Function: sub_DCA80
; Address            : 0xDCA80 - 0xDCAD2
; =========================================================

DCA80:  PUSH            {R4-R7,LR}
DCA82:  ADD             R7, SP, #0xC
DCA84:  PUSH.W          {R11}
DCA88:  SUB             SP, SP, #8
DCA8A:  MOV             R5, R0
DCA8C:  LDR             R0, =(__stack_chk_guard_ptr - 0xDCA96)
DCA8E:  MOV             R6, SP
DCA90:  MOV             R4, R1
DCA92:  ADD             R0, PC; __stack_chk_guard_ptr
DCA94:  MOV             R1, R5; std::locale *
DCA96:  LDR             R0, [R0]; __stack_chk_guard
DCA98:  LDR             R0, [R0]
DCA9A:  STR             R0, [SP,#0x18+var_14]
DCA9C:  MOV             R0, R6; this
DCA9E:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
DCAA2:  MOV             R0, R5
DCAA4:  MOV             R1, R4
DCAA6:  BLX             j__ZNSt6__ndk16localeaSERKS0_; std::locale::operator=(std::locale const&)
DCAAA:  MOV             R0, R4
DCAAC:  MOV             R1, R6
DCAAE:  BLX             j__ZNSt6__ndk16localeaSERKS0_; std::locale::operator=(std::locale const&)
DCAB2:  MOV             R0, R6; this
DCAB4:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
DCAB8:  LDR             R0, [SP,#0x18+var_14]
DCABA:  LDR             R1, =(__stack_chk_guard_ptr - 0xDCAC0)
DCABC:  ADD             R1, PC; __stack_chk_guard_ptr
DCABE:  LDR             R1, [R1]; __stack_chk_guard
DCAC0:  LDR             R1, [R1]
DCAC2:  CMP             R1, R0
DCAC4:  ITTT EQ
DCAC6:  ADDEQ           SP, SP, #8
DCAC8:  POPEQ.W         {R11}
DCACC:  POPEQ           {R4-R7,PC}
DCACE:  BLX             __stack_chk_fail
