; =========================================================
; Game Engine Function: sub_216D80
; Address            : 0x216D80 - 0x216DD2
; =========================================================

216D80:  PUSH            {R4-R7,LR}
216D82:  ADD             R7, SP, #0xC
216D84:  PUSH.W          {R8}
216D88:  ADD.W           R0, R0, #0x198
216D8C:  MOV             R6, R1
216D8E:  MOVS            R1, #0x24 ; '$'
216D90:  MOV             R4, R3
216D92:  MOV             R5, R2
216D94:  BL              sub_216EF0
216D98:  LDR             R1, [R7,#arg_4]
216D9A:  LDR             R2, [R7,#arg_8]
216D9C:  LDR.W           R8, [R6]
216DA0:  LDR.W           R12, [R1]
216DA4:  LDR             R1, [R7,#arg_0]
216DA6:  LDRB            R2, [R2]
216DA8:  LDRD.W          R6, R4, [R4]
216DAC:  STRB.W          R2, [R0,#0x20]
216DB0:  LDR             R5, [R5]
216DB2:  LDR             R1, [R1]
216DB4:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FunctionEncodingE - 0x216DBC); `vtable for'`anonymous namespace'::itanium_demangle::FunctionEncoding ...
216DB6:  LDR             R3, =0x10012
216DB8:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::FunctionEncoding
216DBA:  STRD.W          R5, R6, [R0,#0xC]
216DBE:  ADDS            R2, #8
216DC0:  STRD.W          R4, R1, [R0,#0x14]
216DC4:  STM.W           R0, {R2,R3,R8}
216DC8:  STR.W           R12, [R0,#0x1C]
216DCC:  POP.W           {R8}
216DD0:  POP             {R4-R7,PC}
