; =========================================================
; Game Engine Function: sub_129C80
; Address            : 0x129C80 - 0x129CBC
; =========================================================

129C80:  PUSH            {R4,R5,R7,LR}
129C82:  ADD             R7, SP, #8
129C84:  SUB             SP, SP, #8
129C86:  LDR             R5, =(a19extendRender - 0x129C8E); "19extend_render_pools" ...
129C88:  MOV             R4, R0
129C8A:  ADD             R5, PC; "19extend_render_pools"
129C8C:  MOV             R1, R5; s
129C8E:  BL              sub_DC6DC
129C92:  MOVS            R0, #0
129C94:  STR             R0, [SP,#0x10+status]
129C96:  ADD             R3, SP, #0x10+status; lpstatus
129C98:  MOV             R0, R5; lpmangled
129C9A:  MOVS            R1, #0; lpout
129C9C:  MOVS            R2, #0; lpoutlen
129C9E:  BLX             j___cxa_demangle
129CA2:  MOV             R5, R0
129CA4:  CBZ             R0, loc_129CB8
129CA6:  LDR             R0, [SP,#0x10+status]
129CA8:  CBNZ            R0, loc_129CB2
129CAA:  MOV             R0, R4; int
129CAC:  MOV             R1, R5; s
129CAE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
129CB2:  MOV             R0, R5; ptr
129CB4:  BLX             free
129CB8:  ADD             SP, SP, #8
129CBA:  POP             {R4,R5,R7,PC}
