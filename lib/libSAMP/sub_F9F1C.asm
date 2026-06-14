; =========================================================
; Game Engine Function: sub_F9F1C
; Address            : 0xF9F1C - 0xF9F78
; =========================================================

F9F1C:  PUSH            {R4-R7,LR}
F9F1E:  ADD             R7, SP, #0xC
F9F20:  PUSH.W          {R8}
F9F24:  SUB             SP, SP, #0x10; float
F9F26:  MOV             R6, R3
F9F28:  MOV             R4, R2
F9F2A:  MOV             R8, R1
F9F2C:  MOVS            R0, #0x50 ; 'P'; unsigned int
F9F2E:  BLX             j__Znwj; operator new(uint)
F9F32:  MOV             R5, R0
F9F34:  LDR             R0, [R7,#arg_8]
F9F36:  VLDR            S0, [R7,#arg_4]
F9F3A:  VLDR            S2, [R7,#arg_0]
F9F3E:  MOVS            R1, #0
F9F40:  MOV             R2, R4; int
F9F42:  STRD.W          R1, R0, [SP,#0x20+var_18]; int
F9F46:  MOV             R0, R5; int
F9F48:  MOV             R1, R8; int
F9F4A:  MOV             R3, R6; int
F9F4C:  VSTR            S2, [SP,#0x20+var_20]
F9F50:  VSTR            S0, [SP,#0x20+var_1C]
F9F54:  BL              sub_109470
F9F58:  LDR             R0, [R5,#0xC]
F9F5A:  CBNZ            R0, loc_F9F6E
F9F5C:  LDR             R1, =(aAxl - 0xF9F68); "AXL" ...
F9F5E:  MOVS            R0, #6; prio
F9F60:  LDR             R2, =(aCreateVehicleD_0 - 0xF9F6A); "Create vehicle %d without game ptr" ...
F9F62:  MOV             R3, R8
F9F64:  ADD             R1, PC; "AXL"
F9F66:  ADD             R2, PC; "Create vehicle %d without game ptr"
F9F68:  BLX             __android_log_print
F9F6C:  MOVS            R5, #0
F9F6E:  MOV             R0, R5
F9F70:  ADD             SP, SP, #0x10
F9F72:  POP.W           {R8}
F9F76:  POP             {R4-R7,PC}
