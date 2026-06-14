; =========================================================
; Game Engine Function: sub_115E8C
; Address            : 0x115E8C - 0x115ECC
; =========================================================

115E8C:  PUSH            {R4,R5,R7,LR}
115E8E:  ADD             R7, SP, #8
115E90:  SUB             SP, SP, #0x10
115E92:  LDR             R1, =(aArzhudBg - 0x115E9C); "arzhud_bg" ...
115E94:  ADD             R5, SP, #0x18+var_14
115E96:  MOV             R4, R0
115E98:  ADD             R1, PC; "arzhud_bg"
115E9A:  MOV             R0, R5; int
115E9C:  BL              sub_DC6DC
115EA0:  MOV             R0, R4
115EA2:  MOV             R1, R5
115EA4:  BL              sub_11754C
115EA8:  LDRB.W          R0, [SP,#0x18+var_14]
115EAC:  LSLS            R0, R0, #0x1F
115EAE:  ITT NE
115EB0:  LDRNE           R0, [SP,#0x18+var_C]; void *
115EB2:  BLXNE           j__ZdlPv; operator delete(void *)
115EB6:  LDR             R0, =(_ZTV14CRedAndBlueHud - 0x115EC2); `vtable for'CRedAndBlueHud ...
115EB8:  MOVS            R1, #0
115EBA:  STRD.W          R1, R1, [R4,#0x24]
115EBE:  ADD             R0, PC; `vtable for'CRedAndBlueHud
115EC0:  STR             R1, [R4,#0x2C]
115EC2:  ADDS            R0, #8
115EC4:  STR             R0, [R4]
115EC6:  MOV             R0, R4
115EC8:  ADD             SP, SP, #0x10
115ECA:  POP             {R4,R5,R7,PC}
