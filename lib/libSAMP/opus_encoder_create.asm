; =========================================================
; Game Engine Function: opus_encoder_create
; Address            : 0x1A2FC8 - 0x1A309E
; =========================================================

1A2FC8:  PUSH            {R4-R7,LR}
1A2FCA:  ADD             R7, SP, #0xC
1A2FCC:  PUSH.W          {R8,R9,R11}
1A2FD0:  SUB             SP, SP, #8
1A2FD2:  MOV             R5, R0
1A2FD4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A2FDE)
1A2FD6:  MOV             R4, R3
1A2FD8:  MOV             R8, R2
1A2FDA:  ADD             R0, PC; __stack_chk_guard_ptr
1A2FDC:  MOV             R9, R1
1A2FDE:  CMP.W           R5, #0x3E80
1A2FE2:  LDR             R0, [R0]; __stack_chk_guard
1A2FE4:  LDR             R0, [R0]
1A2FE6:  STR             R0, [SP,#0x20+var_1C]
1A2FE8:  BLT             loc_1A2FFE
1A2FEA:  ITT NE
1A2FEC:  MOVWNE          R0, #0xBB80
1A2FF0:  CMPNE           R5, R0
1A2FF2:  BEQ             loc_1A300C
1A2FF4:  MOVW            R0, #0x5DC0
1A2FF8:  CMP             R5, R0
1A2FFA:  BEQ             loc_1A300C
1A2FFC:  B               loc_1A301C
1A2FFE:  CMP.W           R5, #0x1F40
1A3002:  BEQ             loc_1A300C
1A3004:  MOVW            R0, #0x2EE0
1A3008:  CMP             R5, R0
1A300A:  BNE             loc_1A301C
1A300C:  SUB.W           R0, R9, #1
1A3010:  CMP             R0, #1
1A3012:  ITT LS
1A3014:  SUBLS.W         R0, R8, #0x800
1A3018:  CMPLS           R0, #3
1A301A:  BLS             loc_1A3044
1A301C:  CMP             R4, #0
1A301E:  ITT NE
1A3020:  MOVNE.W         R0, #0xFFFFFFFF
1A3024:  STRNE           R0, [R4]
1A3026:  MOVS            R6, #0
1A3028:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A3030)
1A302A:  LDR             R1, [SP,#0x20+var_1C]
1A302C:  ADD             R0, PC; __stack_chk_guard_ptr
1A302E:  LDR             R0, [R0]; __stack_chk_guard
1A3030:  LDR             R0, [R0]
1A3032:  SUBS            R0, R0, R1
1A3034:  ITTTT EQ
1A3036:  MOVEQ           R0, R6
1A3038:  ADDEQ           SP, SP, #8
1A303A:  POPEQ.W         {R8,R9,R11}
1A303E:  POPEQ           {R4-R7,PC}
1A3040:  BLX             __stack_chk_fail
1A3044:  CMP             R0, #2
1A3046:  BEQ             loc_1A301C
1A3048:  MOV             R0, SP
1A304A:  BLX             j_silk_Get_Encoder_Size
1A304E:  CBZ             R0, loc_1A3054
1A3050:  MOVS            R0, #0
1A3052:  B               loc_1A306C
1A3054:  LDR             R0, [SP,#0x20+var_20]
1A3056:  ADDS            R0, #3
1A3058:  BIC.W           R0, R0, #3
1A305C:  STR             R0, [SP,#0x20+var_20]
1A305E:  MOV             R0, R9
1A3060:  BLX             j_celt_encoder_get_size
1A3064:  LDR             R1, [SP,#0x20+var_20]
1A3066:  ADD             R0, R1
1A3068:  ADDW            R0, R0, #0x898; size
1A306C:  BLX             malloc
1A3070:  MOV             R6, R0
1A3072:  CBZ             R6, loc_1A3092
1A3074:  MOV             R0, R6
1A3076:  MOV             R1, R5
1A3078:  MOV             R2, R9
1A307A:  MOV             R3, R8
1A307C:  BLX             j_opus_encoder_init
1A3080:  CMP             R4, #0
1A3082:  IT NE
1A3084:  STRNE           R0, [R4]
1A3086:  CMP             R0, #0
1A3088:  BEQ             loc_1A3028
1A308A:  MOV             R0, R6; ptr
1A308C:  BLX             free
1A3090:  B               loc_1A3026
1A3092:  CMP             R4, #0
1A3094:  ITT NE
1A3096:  MOVNE           R0, #0xFFFFFFF9
1A309A:  STRNE           R0, [R4]
1A309C:  B               loc_1A3026
