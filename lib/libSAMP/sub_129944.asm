; =========================================================
; Game Engine Function: sub_129944
; Address            : 0x129944 - 0x129980
; =========================================================

129944:  PUSH            {R4,R5,R7,LR}
129946:  ADD             R7, SP, #8
129948:  SUB             SP, SP, #8
12994A:  LDR             R5, =(a13vehiclestruc - 0x129952); "13VehicleStruct" ...
12994C:  MOV             R4, R0
12994E:  ADD             R5, PC; "13VehicleStruct"
129950:  MOV             R1, R5; s
129952:  BL              sub_DC6DC
129956:  MOVS            R0, #0
129958:  STR             R0, [SP,#0x10+status]
12995A:  ADD             R3, SP, #0x10+status; lpstatus
12995C:  MOV             R0, R5; lpmangled
12995E:  MOVS            R1, #0; lpout
129960:  MOVS            R2, #0; lpoutlen
129962:  BLX             j___cxa_demangle
129966:  MOV             R5, R0
129968:  CBZ             R0, loc_12997C
12996A:  LDR             R0, [SP,#0x10+status]
12996C:  CBNZ            R0, loc_129976
12996E:  MOV             R0, R4; int
129970:  MOV             R1, R5; s
129972:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
129976:  MOV             R0, R5; ptr
129978:  BLX             free
12997C:  ADD             SP, SP, #8
12997E:  POP             {R4,R5,R7,PC}
