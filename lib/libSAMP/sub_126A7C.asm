; =========================================================
; Game Engine Function: sub_126A7C
; Address            : 0x126A7C - 0x126AB8
; =========================================================

126A7C:  PUSH            {R4,R5,R7,LR}
126A7E:  ADD             R7, SP, #8
126A80:  SUB             SP, SP, #8
126A82:  LDR             R5, =(a7colhook - 0x126A8A); "7ColHook" ...
126A84:  MOV             R4, R0
126A86:  ADD             R5, PC; "7ColHook"
126A88:  MOV             R1, R5; s
126A8A:  BL              sub_DC6DC
126A8E:  MOVS            R0, #0
126A90:  STR             R0, [SP,#0x10+status]
126A92:  ADD             R3, SP, #0x10+status; lpstatus
126A94:  MOV             R0, R5; lpmangled
126A96:  MOVS            R1, #0; lpout
126A98:  MOVS            R2, #0; lpoutlen
126A9A:  BLX             j___cxa_demangle
126A9E:  MOV             R5, R0
126AA0:  CBZ             R0, loc_126AB4
126AA2:  LDR             R0, [SP,#0x10+status]
126AA4:  CBNZ            R0, loc_126AAE
126AA6:  MOV             R0, R4; int
126AA8:  MOV             R1, R5; s
126AAA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
126AAE:  MOV             R0, R5; ptr
126AB0:  BLX             free
126AB4:  ADD             SP, SP, #8
126AB6:  POP             {R4,R5,R7,PC}
