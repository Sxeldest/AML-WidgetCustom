; =========================================================
; Game Engine Function: sub_FF928
; Address            : 0xFF928 - 0xFF97A
; =========================================================

FF928:  PUSH            {R4-R7,LR}
FF92A:  ADD             R7, SP, #0xC
FF92C:  PUSH.W          {R8}
FF930:  ADD.W           R0, R0, #0x198
FF934:  MOV             R6, R1
FF936:  MOVS            R1, #0x24 ; '$'
FF938:  MOV             R4, R3
FF93A:  MOV             R5, R2
FF93C:  BL              sub_FFA98
FF940:  LDR             R1, [R7,#arg_4]
FF942:  LDR             R2, [R7,#arg_8]
FF944:  LDR.W           R8, [R6]
FF948:  LDR.W           R12, [R1]
FF94C:  LDR             R1, [R7,#arg_0]
FF94E:  LDRB            R2, [R2]
FF950:  LDRD.W          R6, R4, [R4]
FF954:  STRB.W          R2, [R0,#0x20]
FF958:  LDR             R5, [R5]
FF95A:  LDR             R1, [R1]
FF95C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FunctionEncodingE - 0xFF964); `vtable for'`anonymous namespace'::itanium_demangle::FunctionEncoding ...
FF95E:  LDR             R3, =0x10012
FF960:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::FunctionEncoding
FF962:  STRD.W          R5, R6, [R0,#0xC]
FF966:  ADDS            R2, #8
FF968:  STRD.W          R4, R1, [R0,#0x14]
FF96C:  STM.W           R0, {R2,R3,R8}
FF970:  STR.W           R12, [R0,#0x1C]
FF974:  POP.W           {R8}
FF978:  POP             {R4-R7,PC}
