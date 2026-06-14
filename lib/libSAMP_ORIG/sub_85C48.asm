; =========================================================
; Game Engine Function: sub_85C48
; Address            : 0x85C48 - 0x85CBE
; =========================================================

85C48:  PUSH            {R4,R5,R7,LR}
85C4A:  ADD             R7, SP, #8
85C4C:  SUB             SP, SP, #0x18
85C4E:  MOV             R4, R0
85C50:  LDR             R0, =(__stack_chk_guard_ptr - 0x85C5A)
85C52:  MOV             R12, R1
85C54:  MOVS            R1, #0
85C56:  ADD             R0, PC; __stack_chk_guard_ptr
85C58:  LDR             R0, [R0]; __stack_chk_guard
85C5A:  LDR             R0, [R0]
85C5C:  STR             R0, [SP,#0x20+var_C]
85C5E:  VLDR            D16, [R2]
85C62:  LDR             R0, [R2,#8]
85C64:  STRD.W          R1, R1, [R2]
85C68:  STR             R1, [R2,#8]
85C6A:  MOVS            R1, #2; int
85C6C:  STR             R3, [SP,#0x20+var_20]; float
85C6E:  ADD             R3, SP, #0x20+var_18; int
85C70:  STR             R0, [SP,#0x20+var_10]
85C72:  MOV             R0, R4; int
85C74:  MOV             R2, R12; int
85C76:  VSTR            D16, [SP,#0x20+var_18]
85C7A:  BL              sub_7E210
85C7E:  LDRB.W          R0, [SP,#0x20+var_18]
85C82:  LDR             R5, [R7,#arg_0]
85C84:  LSLS            R0, R0, #0x1F
85C86:  ITT NE
85C88:  LDRNE           R0, [SP,#0x20+var_10]; void *
85C8A:  BLXNE           j__ZdlPv; operator delete(void *)
85C8E:  LDR             R0, =(_ZTV13StreamAtPoint - 0x85C94); `vtable for'StreamAtPoint ...
85C90:  ADD             R0, PC; `vtable for'StreamAtPoint
85C92:  ADDS            R0, #8
85C94:  STR             R0, [R4]
85C96:  LDR             R0, [R5,#8]
85C98:  VLD1.8          {D16}, [R5]
85C9C:  STR             R0, [R4,#0x64]
85C9E:  ADD.W           R0, R4, #0x5C ; '\'
85CA2:  VST1.8          {D16}, [R0]
85CA6:  LDR             R0, [SP,#0x20+var_C]
85CA8:  LDR             R1, =(__stack_chk_guard_ptr - 0x85CAE)
85CAA:  ADD             R1, PC; __stack_chk_guard_ptr
85CAC:  LDR             R1, [R1]; __stack_chk_guard
85CAE:  LDR             R1, [R1]
85CB0:  CMP             R1, R0
85CB2:  ITTT EQ
85CB4:  MOVEQ           R0, R4
85CB6:  ADDEQ           SP, SP, #0x18
85CB8:  POPEQ           {R4,R5,R7,PC}
85CBA:  BLX             __stack_chk_fail
