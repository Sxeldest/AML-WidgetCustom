; =========================================================
; Game Engine Function: sub_EA1F4
; Address            : 0xEA1F4 - 0xEA236
; =========================================================

EA1F4:  PUSH            {R4-R7,LR}
EA1F6:  ADD             R7, SP, #0xC
EA1F8:  PUSH.W          {R8,R9,R11}
EA1FC:  MOV             R4, R0
EA1FE:  MOVS            R0, #0x30 ; '0'; unsigned int
EA200:  MOV             R8, R3
EA202:  MOV             R6, R1
EA204:  BLX             j__Znwj; operator new(uint)
EA208:  LDR.W           R1, [R8]
EA20C:  MOV             R5, R0
EA20E:  ADDS            R0, R6, #4
EA210:  MOV.W           R9, #0
EA214:  STRB.W          R9, [R4,#8]
EA218:  STRD.W          R5, R0, [R4]
EA21C:  ADD.W           R0, R5, #0x10
EA220:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
EA224:  MOVS            R0, #1
EA226:  STR.W           R9, [R5,#0x28]
EA22A:  STRB.W          R9, [R5,#0x20]
EA22E:  STRB            R0, [R4,#8]
EA230:  POP.W           {R8,R9,R11}
EA234:  POP             {R4-R7,PC}
