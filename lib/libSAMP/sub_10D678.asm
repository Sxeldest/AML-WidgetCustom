; =========================================================
; Game Engine Function: sub_10D678
; Address            : 0x10D678 - 0x10D6B4
; =========================================================

10D678:  PUSH            {R4,R5,R7,LR}
10D67A:  ADD             R7, SP, #8
10D67C:  SUB             SP, SP, #8
10D67E:  LDR             R5, =(a20interiorclim - 0x10D686); "20InteriorClimbControl" ...
10D680:  MOV             R4, R0
10D682:  ADD             R5, PC; "20InteriorClimbControl"
10D684:  MOV             R1, R5; s
10D686:  BL              sub_DC6DC
10D68A:  MOVS            R0, #0
10D68C:  STR             R0, [SP,#0x10+status]
10D68E:  ADD             R3, SP, #0x10+status; lpstatus
10D690:  MOV             R0, R5; lpmangled
10D692:  MOVS            R1, #0; lpout
10D694:  MOVS            R2, #0; lpoutlen
10D696:  BLX             j___cxa_demangle
10D69A:  MOV             R5, R0
10D69C:  CBZ             R0, loc_10D6B0
10D69E:  LDR             R0, [SP,#0x10+status]
10D6A0:  CBNZ            R0, loc_10D6AA
10D6A2:  MOV             R0, R4; int
10D6A4:  MOV             R1, R5; s
10D6A6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10D6AA:  MOV             R0, R5; ptr
10D6AC:  BLX             free
10D6B0:  ADD             SP, SP, #8
10D6B2:  POP             {R4,R5,R7,PC}
