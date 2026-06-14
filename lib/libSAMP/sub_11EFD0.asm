; =========================================================
; Game Engine Function: sub_11EFD0
; Address            : 0x11EFD0 - 0x11F00C
; =========================================================

11EFD0:  PUSH            {R4,R5,R7,LR}
11EFD2:  ADD             R7, SP, #8
11EFD4:  SUB             SP, SP, #8
11EFD6:  LDR             R5, =(a14fixmatrixsta - 0x11EFDE); "14FixMatrixStack" ...
11EFD8:  MOV             R4, R0
11EFDA:  ADD             R5, PC; "14FixMatrixStack"
11EFDC:  MOV             R1, R5; s
11EFDE:  BL              sub_DC6DC
11EFE2:  MOVS            R0, #0
11EFE4:  STR             R0, [SP,#0x10+status]
11EFE6:  ADD             R3, SP, #0x10+status; lpstatus
11EFE8:  MOV             R0, R5; lpmangled
11EFEA:  MOVS            R1, #0; lpout
11EFEC:  MOVS            R2, #0; lpoutlen
11EFEE:  BLX             j___cxa_demangle
11EFF2:  MOV             R5, R0
11EFF4:  CBZ             R0, loc_11F008
11EFF6:  LDR             R0, [SP,#0x10+status]
11EFF8:  CBNZ            R0, loc_11F002
11EFFA:  MOV             R0, R4; int
11EFFC:  MOV             R1, R5; s
11EFFE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11F002:  MOV             R0, R5; ptr
11F004:  BLX             free
11F008:  ADD             SP, SP, #8
11F00A:  POP             {R4,R5,R7,PC}
