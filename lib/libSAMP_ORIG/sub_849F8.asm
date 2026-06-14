; =========================================================
; Game Engine Function: sub_849F8
; Address            : 0x849F8 - 0x84A86
; =========================================================

849F8:  PUSH            {R4,R5,R7,LR}
849FA:  ADD             R7, SP, #8
849FC:  SUB             SP, SP, #0x10
849FE:  MOV             R4, R0
84A00:  LDR             R0, =(_ZTV6Stream - 0x84A0A); `vtable for'Stream ...
84A02:  MOV             R12, R3
84A04:  LDR             R3, =(__stack_chk_guard_ptr - 0x84A0E)
84A06:  ADD             R0, PC; `vtable for'Stream
84A08:  MOVS            R5, #0
84A0A:  ADD             R3, PC; __stack_chk_guard_ptr
84A0C:  ADDS            R0, #8
84A0E:  LDR             R3, [R3]; __stack_chk_guard
84A10:  LDR             R3, [R3]
84A12:  STR             R3, [SP,#0x18+var_C]
84A14:  LDR             R3, [R7,#arg_0]
84A16:  STRD.W          R0, R1, [R4]
84A1A:  MOV             R1, R2
84A1C:  MOV             R2, R12
84A1E:  LDR             R0, [R3,#8]
84A20:  VLDR            D16, [R3]
84A24:  STR             R0, [SP,#0x18+var_10]
84A26:  ADD.W           R0, R4, #8
84A2A:  STRD.W          R5, R5, [R3]
84A2E:  STR             R5, [R3,#8]
84A30:  MOV             R3, SP
84A32:  VSTR            D16, [SP,#0x18+var_18]
84A36:  BL              sub_86094
84A3A:  LDRB.W          R0, [SP,#0x18+var_18]
84A3E:  LSLS            R0, R0, #0x1F
84A40:  ITT NE
84A42:  LDRNE           R0, [SP,#0x18+var_10]; void *
84A44:  BLXNE           j__ZdlPv; operator delete(void *)
84A48:  MOV             R0, R4
84A4A:  VMOV.I32        Q8, #0
84A4E:  STR.W           R5, [R0,#0x44]!
84A52:  STR             R0, [R4,#0x40]
84A54:  MOV             R0, R4
84A56:  STR.W           R5, [R0,#0x50]!
84A5A:  STR             R5, [R4,#0x54]
84A5C:  STRD.W          R5, R0, [R4,#0x48]
84A60:  ADD.W           R0, R4, #0x1C
84A64:  VST1.32         {D16-D17}, [R0]!
84A68:  VST1.32         {D16-D17}, [R0]!
84A6C:  STR             R5, [R0]
84A6E:  LDR             R0, [SP,#0x18+var_C]
84A70:  LDR             R1, =(__stack_chk_guard_ptr - 0x84A76)
84A72:  ADD             R1, PC; __stack_chk_guard_ptr
84A74:  LDR             R1, [R1]; __stack_chk_guard
84A76:  LDR             R1, [R1]
84A78:  CMP             R1, R0
84A7A:  ITTT EQ
84A7C:  MOVEQ           R0, R4
84A7E:  ADDEQ           SP, SP, #0x10
84A80:  POPEQ           {R4,R5,R7,PC}
84A82:  BLX             __stack_chk_fail
