; =========================================================
; Game Engine Function: sub_14F844
; Address            : 0x14F844 - 0x14F892
; =========================================================

14F844:  PUSH            {R4,R5,R7,LR}
14F846:  ADD             R7, SP, #8
14F848:  MOVS            R2, #0
14F84A:  CMP.W           R2, R1,LSR#11
14F84E:  IT NE
14F850:  POPNE           {R4,R5,R7,PC}
14F852:  ADDS            R2, R0, R1
14F854:  MOV.W           R3, #0x14000
14F858:  LDRB            R3, [R2,R3]
14F85A:  CBZ             R3, locret_14F890
14F85C:  ADD.W           R5, R2, #0x14000
14F860:  LDR             R2, =(byte_8F794 - 0x14F86A)
14F862:  ADD.W           R1, R1, R1,LSL#2
14F866:  ADD             R2, PC; byte_8F794
14F868:  ADD.W           R4, R0, R1,LSL#3
14F86C:  MOV             R1, R2; s
14F86E:  MOV             R0, R4; int
14F870:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
14F874:  VMOV.I32        Q8, #0
14F878:  ADD.W           R1, R4, #0xC
14F87C:  MOVS            R2, #0xD
14F87E:  MOVS            R0, #0
14F880:  VST1.32         {D16-D17}, [R1],R2
14F884:  STR.W           R0, [R4,#0x1D]
14F888:  STR.W           R0, [R4,#0x22]
14F88C:  STR             R0, [R1]
14F88E:  STRB            R0, [R5]
14F890:  POP             {R4,R5,R7,PC}
