; =========================================================
; Game Engine Function: sub_7EEFC
; Address            : 0x7EEFC - 0x7EFA6
; =========================================================

7EEFC:  PUSH            {R4-R7,LR}
7EEFE:  ADD             R7, SP, #0xC
7EF00:  PUSH.W          {R8-R10}
7EF04:  SUB             SP, SP, #8
7EF06:  MOV             R5, R0
7EF08:  LDR             R0, =(byte_1A45F3 - 0x7EF10)
7EF0A:  MOV             R9, R1
7EF0C:  ADD             R0, PC; byte_1A45F3
7EF0E:  LDRB            R0, [R0]
7EF10:  LDR             R1, =(__stack_chk_guard_ptr - 0x7EF16)
7EF12:  ADD             R1, PC; __stack_chk_guard_ptr
7EF14:  LDR             R1, [R1]; __stack_chk_guard
7EF16:  LDR             R1, [R1]
7EF18:  STR             R1, [SP,#0x20+var_1C]
7EF1A:  CBZ             R0, loc_7EF5A
7EF1C:  LDR             R0, =(aDbgRaknetClien - 0x7EF22); "[dbg:raknet:client:connect] : connectin"... ...
7EF1E:  ADD             R0, PC; "[dbg:raknet:client:connect] : connectin"...
7EF20:  MOV             R1, R5
7EF22:  MOV             R2, R9
7EF24:  BL              sub_80664
7EF28:  LDR             R0, =(dword_1A4600 - 0x7EF2E)
7EF2A:  ADD             R0, PC; dword_1A4600 ; int
7EF2C:  MOV             R1, R5; s
7EF2E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
7EF32:  LDR             R0, =(dword_1A45F4 - 0x7EF38)
7EF34:  ADD             R0, PC; dword_1A45F4
7EF36:  MOV             R10, R0
7EF38:  LDR             R0, [R0]
7EF3A:  CBZ             R0, loc_7EF74
7EF3C:  LDR             R0, =(aErrRaknetClien - 0x7EF48); "[err:raknet:client:connect] : No plugin"... ...
7EF3E:  MOVS            R1, #1
7EF40:  STR.W           R1, [R10]
7EF44:  ADD             R0, PC; "[err:raknet:client:connect] : No plugin"...
7EF46:  BL              sub_80664
7EF4A:  LDR             R1, =(byte_1A49B0 - 0x7EF54)
7EF4C:  MOVS            R2, #0
7EF4E:  LDR             R0, =(aDbgRaknetClien_0 - 0x7EF56); "[dbg:raknet:client:connect] : connected" ...
7EF50:  ADD             R1, PC; byte_1A49B0
7EF52:  ADD             R0, PC; "[dbg:raknet:client:connect] : connected"
7EF54:  STRB            R2, [R1]
7EF56:  BL              sub_80664
7EF5A:  LDR             R0, [SP,#0x20+var_1C]
7EF5C:  LDR             R1, =(__stack_chk_guard_ptr - 0x7EF62)
7EF5E:  ADD             R1, PC; __stack_chk_guard_ptr
7EF60:  LDR             R1, [R1]; __stack_chk_guard
7EF62:  LDR             R1, [R1]
7EF64:  CMP             R1, R0
7EF66:  ITTT EQ
7EF68:  ADDEQ           SP, SP, #8
7EF6A:  POPEQ.W         {R8-R10}
7EF6E:  POPEQ           {R4-R7,PC}
7EF70:  BLX             __stack_chk_fail
7EF74:  LDR             R0, =(dword_1A4980 - 0x7EF7A)
7EF76:  ADD             R0, PC; dword_1A4980
7EF78:  LDRD.W          R6, R4, [R0]
7EF7C:  CMP             R6, R4
7EF7E:  BEQ             loc_7EF3C
7EF80:  LDR             R5, =(dword_1A4600 - 0x7EF8A)
7EF82:  SUB.W           R8, R7, #-var_1E
7EF86:  ADD             R5, PC; dword_1A4600
7EF88:  B               loc_7EF90
7EF8A:  ADDS            R6, #0x18
7EF8C:  CMP             R6, R4
7EF8E:  BEQ             loc_7EF3C
7EF90:  LDR             R0, [R6,#0x10]
7EF92:  CMP             R0, #0
7EF94:  BEQ             loc_7EF8A
7EF96:  LDR             R1, [R0]
7EF98:  STRH.W          R9, [R7,#var_1E]
7EF9C:  LDR             R3, [R1,#0x18]
7EF9E:  MOV             R1, R5
7EFA0:  MOV             R2, R8
7EFA2:  BLX             R3
7EFA4:  B               loc_7EF8A
