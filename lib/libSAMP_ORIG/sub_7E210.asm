; =========================================================
; Game Engine Function: sub_7E210
; Address            : 0x7E210 - 0x7E286
; =========================================================

7E210:  PUSH            {R4,R6,R7,LR}
7E212:  ADD             R7, SP, #8
7E214:  VPUSH           {D8}
7E218:  SUB             SP, SP, #0x18
7E21A:  MOV             R4, R0
7E21C:  LDR             R0, =(__stack_chk_guard_ptr - 0x7E226)
7E21E:  MOV             R12, R2
7E220:  MOV             R2, R1
7E222:  ADD             R0, PC; __stack_chk_guard_ptr
7E224:  MOVS            R1, #0
7E226:  LDR             R0, [R0]; __stack_chk_guard
7E228:  LDR             R0, [R0]
7E22A:  STR             R0, [SP,#0x28+var_14]
7E22C:  LDR             R0, [R3,#8]
7E22E:  VLDR            D16, [R3]
7E232:  STR             R0, [SP,#0x28+var_18]
7E234:  ADD             R0, SP, #0x28+var_20
7E236:  STRD.W          R1, R1, [R3]
7E23A:  STR             R1, [R3,#8]
7E23C:  MOVS            R1, #0x28 ; '('
7E23E:  STR             R0, [SP,#0x28+var_28]
7E240:  MOV             R0, R4
7E242:  MOV             R3, R12
7E244:  VSTR            D16, [SP,#0x28+var_20]
7E248:  BL              sub_849F8
7E24C:  LDRB.W          R0, [SP,#0x28+var_20]
7E250:  VLDR            S16, [R7,#arg_0]
7E254:  LSLS            R0, R0, #0x1F
7E256:  ITT NE
7E258:  LDRNE           R0, [SP,#0x28+var_18]; void *
7E25A:  BLXNE           j__ZdlPv; operator delete(void *)
7E25E:  LDR             R0, =(_ZTV11LocalStream - 0x7E268); `vtable for'LocalStream ...
7E260:  VSTR            S16, [R4,#0x58]
7E264:  ADD             R0, PC; `vtable for'LocalStream
7E266:  ADDS            R0, #8
7E268:  STR             R0, [R4]
7E26A:  LDR             R0, [SP,#0x28+var_14]
7E26C:  LDR             R1, =(__stack_chk_guard_ptr - 0x7E272)
7E26E:  ADD             R1, PC; __stack_chk_guard_ptr
7E270:  LDR             R1, [R1]; __stack_chk_guard
7E272:  LDR             R1, [R1]
7E274:  CMP             R1, R0
7E276:  ITTTT EQ
7E278:  MOVEQ           R0, R4
7E27A:  ADDEQ           SP, SP, #0x18
7E27C:  VPOPEQ          {D8}
7E280:  POPEQ           {R4,R6,R7,PC}
7E282:  BLX             __stack_chk_fail
