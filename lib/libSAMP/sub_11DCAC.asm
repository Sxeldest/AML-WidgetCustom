; =========================================================
; Game Engine Function: sub_11DCAC
; Address            : 0x11DCAC - 0x11DCE8
; =========================================================

11DCAC:  PUSH            {R4,R5,R7,LR}
11DCAE:  ADD             R7, SP, #8
11DCB0:  SUB             SP, SP, #8
11DCB2:  LDR             R5, =(a31ctaskutility - 0x11DCBA); "31CTaskUtilityLineUpPedWithCarFix" ...
11DCB4:  MOV             R4, R0
11DCB6:  ADD             R5, PC; "31CTaskUtilityLineUpPedWithCarFix"
11DCB8:  MOV             R1, R5; s
11DCBA:  BL              sub_DC6DC
11DCBE:  MOVS            R0, #0
11DCC0:  STR             R0, [SP,#0x10+status]
11DCC2:  ADD             R3, SP, #0x10+status; lpstatus
11DCC4:  MOV             R0, R5; lpmangled
11DCC6:  MOVS            R1, #0; lpout
11DCC8:  MOVS            R2, #0; lpoutlen
11DCCA:  BLX             j___cxa_demangle
11DCCE:  MOV             R5, R0
11DCD0:  CBZ             R0, loc_11DCE4
11DCD2:  LDR             R0, [SP,#0x10+status]
11DCD4:  CBNZ            R0, loc_11DCDE
11DCD6:  MOV             R0, R4; int
11DCD8:  MOV             R1, R5; s
11DCDA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11DCDE:  MOV             R0, R5; ptr
11DCE0:  BLX             free
11DCE4:  ADD             SP, SP, #8
11DCE6:  POP             {R4,R5,R7,PC}
