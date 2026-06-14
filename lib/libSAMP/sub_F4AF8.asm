; =========================================================
; Game Engine Function: sub_F4AF8
; Address            : 0xF4AF8 - 0xF4B72
; =========================================================

F4AF8:  PUSH            {R4-R7,LR}
F4AFA:  ADD             R7, SP, #0xC
F4AFC:  PUSH.W          {R8}
F4B00:  SUB             SP, SP, #8
F4B02:  MOV             R8, R1
F4B04:  LDR             R1, =(aAxl - 0xF4B12); "AXL" ...
F4B06:  MOV             R6, R2
F4B08:  LDR.W           R3, [R0,#0x5F4]
F4B0C:  LDR             R2, =(aCustommapiconA - 0xF4B18); "CustomMapIcon: AddIconModel(%i, %s, \"%"... ...
F4B0E:  ADD             R1, PC; "AXL"
F4B10:  MOV             R4, R0
F4B12:  MOVS            R0, #4; prio
F4B14:  ADD             R2, PC; "CustomMapIcon: AddIconModel(%i, %s, \"%"...
F4B16:  STRD.W          R8, R6, [SP,#0x18+var_18]
F4B1A:  BLX             __android_log_print
F4B1E:  MOV             R0, R6; s
F4B20:  BLX             strlen
F4B24:  ADDS            R0, #1; unsigned int
F4B26:  BLX             j__Znaj; operator new[](uint)
F4B2A:  MOV             R5, R0
F4B2C:  LDR.W           R0, [R4,#0x5F4]
F4B30:  STR.W           R5, [R4,R0,LSL#3]
F4B34:  MOV             R0, R6; s
F4B36:  BLX             strlen
F4B3A:  ADDS            R1, R0, #1; n
F4B3C:  MOV             R0, R5; int
F4B3E:  BLX             sub_22178C
F4B42:  MOV             R0, R5; dest
F4B44:  MOV             R1, R6; src
F4B46:  BLX             strcpy
F4B4A:  LDR.W           R0, [R4,#0x5F4]
F4B4E:  MOV             R1, R8; s
F4B50:  ADD.W           R0, R0, R0,LSL#1
F4B54:  ADD.W           R0, R4, R0,LSL#2
F4B58:  ADD.W           R0, R0, #0x5F8; int
F4B5C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F4B60:  LDR.W           R0, [R4,#0x5F4]
F4B64:  ADDS            R0, #1
F4B66:  STR.W           R0, [R4,#0x5F4]
F4B6A:  ADD             SP, SP, #8
F4B6C:  POP.W           {R8}
F4B70:  POP             {R4-R7,PC}
