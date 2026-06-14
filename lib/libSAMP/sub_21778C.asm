; =========================================================
; Game Engine Function: sub_21778C
; Address            : 0x21778C - 0x217882
; =========================================================

21778C:  PUSH            {R4-R7,LR}
21778E:  ADD             R7, SP, #0xC
217790:  PUSH.W          {R8}
217794:  SUB             SP, SP, #0x10
217796:  MOV             R4, R0
217798:  LDR             R0, =(__stack_chk_guard_ptr - 0x2177A0)
21779A:  MOV             R5, R1
21779C:  ADD             R0, PC; __stack_chk_guard_ptr
21779E:  LDR             R0, [R0]; __stack_chk_guard
2177A0:  LDR             R0, [R0]
2177A2:  STR             R0, [SP,#0x20+var_14]
2177A4:  LDRD.W          R0, R1, [R4]
2177A8:  CMP             R1, R0
2177AA:  BEQ             loc_2177CA
2177AC:  LDRB            R0, [R0]
2177AE:  CMP             R0, #0x55 ; 'U'
2177B0:  BNE             loc_2177BC
2177B2:  MOV             R0, R4
2177B4:  MOV             R1, R5
2177B6:  BL              sub_21A0A0
2177BA:  B               loc_217840
2177BC:  SUBS            R0, #0x31 ; '1'
2177BE:  CMP             R0, #8
2177C0:  BHI             loc_2177CA
2177C2:  MOV             R0, R4
2177C4:  BL              sub_21B5BC
2177C8:  B               loc_217840
2177CA:  LDR             R1, =(aDc - 0x2177D2); "DC" ...
2177CC:  MOV             R0, R4
2177CE:  ADD             R1, PC; "DC"
2177D0:  ADDS            R2, R1, #2
2177D2:  BL              sub_2155E4
2177D6:  CBZ             R0, loc_217838
2177D8:  MOV             R6, R4
2177DA:  LDR.W           R0, [R6,#8]!
2177DE:  LDR             R1, [R6,#4]
2177E0:  ADD             R5, SP, #0x20+var_1C
2177E2:  SUBS            R0, R1, R0
2177E4:  MOV.W           R8, R0,ASR#2
2177E8:  MOV             R0, R4
2177EA:  BL              sub_21B5BC
2177EE:  STR             R0, [SP,#0x20+var_1C]
2177F0:  CBZ             R0, loc_217866
2177F2:  MOV             R0, R6
2177F4:  MOV             R1, R5
2177F6:  BL              sub_216CEC
2177FA:  LDRD.W          R0, R1, [R4]
2177FE:  CMP             R0, R1
217800:  BEQ             loc_2177E8
217802:  LDRB            R1, [R0]
217804:  CMP             R1, #0x45 ; 'E'
217806:  BNE             loc_2177E8
217808:  ADDS            R0, #1
21780A:  STR             R0, [R4]
21780C:  ADD             R0, SP, #0x20+var_1C
21780E:  MOV             R1, R4
217810:  MOV             R2, R8
217812:  BL              sub_216D60
217816:  ADD.W           R0, R4, #0x198
21781A:  MOVS            R1, #0x10
21781C:  BL              sub_216EF0
217820:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle21StructuredBindingNameE - 0x21782A); `vtable for'`anonymous namespace'::itanium_demangle::StructuredBindingName ...
217822:  MOV             R1, R0
217824:  LDR             R0, =0x101012E
217826:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::StructuredBindingName
217828:  LDRD.W          R3, R5, [SP,#0x20+var_1C]
21782C:  ADDS            R2, #8
21782E:  STRD.W          R3, R5, [R1,#8]
217832:  STRD.W          R2, R0, [R1]
217836:  B               loc_217844
217838:  MOV             R0, R4
21783A:  MOV             R1, R5
21783C:  BL              sub_21B6D4
217840:  MOV             R1, R0
217842:  CBZ             R0, loc_217866
217844:  LDR             R0, [SP,#0x20+var_14]
217846:  LDR             R2, =(__stack_chk_guard_ptr - 0x21784C)
217848:  ADD             R2, PC; __stack_chk_guard_ptr
21784A:  LDR             R2, [R2]; __stack_chk_guard
21784C:  LDR             R2, [R2]
21784E:  CMP             R2, R0
217850:  ITTTT EQ
217852:  MOVEQ           R0, R4
217854:  ADDEQ           SP, SP, #0x10
217856:  POPEQ.W         {R8}
21785A:  POPEQ.W         {R4-R7,LR}
21785E:  IT EQ
217860:  BEQ.W           sub_2176FC
217864:  B               loc_21787E
217866:  LDR             R0, [SP,#0x20+var_14]
217868:  LDR             R1, =(__stack_chk_guard_ptr - 0x21786E)
21786A:  ADD             R1, PC; __stack_chk_guard_ptr
21786C:  LDR             R1, [R1]; __stack_chk_guard
21786E:  LDR             R1, [R1]
217870:  CMP             R1, R0
217872:  ITTTT EQ
217874:  MOVEQ           R0, #0
217876:  ADDEQ           SP, SP, #0x10
217878:  POPEQ.W         {R8}
21787C:  POPEQ           {R4-R7,PC}
21787E:  BLX             __stack_chk_fail
