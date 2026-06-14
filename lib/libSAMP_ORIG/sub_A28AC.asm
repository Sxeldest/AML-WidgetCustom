; =========================================================
; Game Engine Function: sub_A28AC
; Address            : 0xA28AC - 0xA297E
; =========================================================

A28AC:  PUSH            {R4-R7,LR}
A28AE:  ADD             R7, SP, #0xC
A28B0:  PUSH.W          {R8-R10}
A28B4:  SUB             SP, SP, #0x10
A28B6:  MOV             R10, R0
A28B8:  LDR             R0, =(__stack_chk_guard_ptr - 0xA28C2)
A28BA:  MOV             R8, R1
A28BC:  MOVS            R6, #0
A28BE:  ADD             R0, PC; __stack_chk_guard_ptr
A28C0:  LDR             R0, [R0]; __stack_chk_guard
A28C2:  LDR             R0, [R0]
A28C4:  STR             R0, [SP,#0x28+var_1C]
A28C6:  LDR.W           R5, [R10,#0x40]
A28CA:  STR             R6, [SP,#0x28+var_20]
A28CC:  CMP             R5, #1
A28CE:  STRD.W          R6, R6, [SP,#0x28+var_28]
A28D2:  BLT             loc_A28EC
A28D4:  MOV             R9, R5
A28D6:  CMP             R5, #8
A28D8:  IT LS
A28DA:  MOVLS.W         R9, #8
A28DE:  MOV.W           R0, R9,LSL#4
A28E2:  BL              sub_885E4
A28E6:  MOV             R6, R0
A28E8:  STRD.W          R9, R0, [SP,#0x28+var_24]
A28EC:  LSLS            R1, R5, #4; n
A28EE:  MOV             R0, R6; int
A28F0:  STR             R5, [SP,#0x28+var_28]
A28F2:  BLX             sub_10967C
A28F6:  LDR.W           R0, [R10,#0x40]
A28FA:  CMP             R0, #1
A28FC:  BLT             loc_A2912
A28FE:  LDR.W           R2, [R10,#0x48]
A2902:  ADDS            R1, R6, #4
A2904:  ADDS            R2, #4
A2906:  LDR.W           R3, [R2],#0x1C
A290A:  SUBS            R0, #1
A290C:  STR.W           R3, [R1],#0x10
A2910:  BNE             loc_A2906
A2912:  MOV             R0, R8; int
A2914:  MOV             R1, R6; base
A2916:  MOV             R2, R5; nmemb
A2918:  BL              sub_A2994
A291C:  LDR             R0, [SP,#0x28+var_20]
A291E:  CMP             R5, #1
A2920:  BLT             loc_A295E
A2922:  ADDS            R0, #6
A2924:  MOVS            R1, #0
A2926:  B               loc_A2930
A2928:  ADDS            R1, #0x1C
A292A:  ADDS            R0, #0x10
A292C:  SUBS            R5, #1
A292E:  BEQ             loc_A295C
A2930:  LDR.W           R2, [R0,#6]
A2934:  CMP             R2, #0
A2936:  BEQ             loc_A2928
A2938:  LDRH            R6, [R0,#4]
A293A:  LDRH            R4, [R0]
A293C:  LDR.W           R2, [R10,#0x20]
A2940:  ADD             R4, R6
A2942:  LDR.W           R12, [R10,#0x48]
A2946:  LDRH            R3, [R0,#2]
A2948:  CMP             R2, R4
A294A:  IT LT
A294C:  MOVLT           R2, R4
A294E:  STR.W           R2, [R10,#0x20]
A2952:  ADD.W           R2, R12, R1
A2956:  STRH            R3, [R2,#8]
A2958:  STRH            R6, [R2,#0xA]
A295A:  B               loc_A2928
A295C:  LDR             R0, [SP,#0x28+var_20]
A295E:  CBZ             R0, loc_A2964
A2960:  BL              sub_88614
A2964:  LDR             R0, [SP,#0x28+var_1C]
A2966:  LDR             R1, =(__stack_chk_guard_ptr - 0xA296C)
A2968:  ADD             R1, PC; __stack_chk_guard_ptr
A296A:  LDR             R1, [R1]; __stack_chk_guard
A296C:  LDR             R1, [R1]
A296E:  CMP             R1, R0
A2970:  ITTT EQ
A2972:  ADDEQ           SP, SP, #0x10
A2974:  POPEQ.W         {R8-R10}
A2978:  POPEQ           {R4-R7,PC}
A297A:  BLX             __stack_chk_fail
