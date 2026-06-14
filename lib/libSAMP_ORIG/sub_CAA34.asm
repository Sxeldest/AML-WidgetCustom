; =========================================================
; Game Engine Function: sub_CAA34
; Address            : 0xCAA34 - 0xCAB6E
; =========================================================

CAA34:  PUSH            {R4-R7,LR}
CAA36:  ADD             R7, SP, #0xC
CAA38:  PUSH.W          {R8-R11}
CAA3C:  SUB             SP, SP, #0xC
CAA3E:  MOV             R4, R0
CAA40:  LDR             R0, =(__stack_chk_guard_ptr - 0xCAA48)
CAA42:  MOV             R9, R1
CAA44:  ADD             R0, PC; __stack_chk_guard_ptr
CAA46:  LDR             R0, [R0]; __stack_chk_guard
CAA48:  LDR             R0, [R0]
CAA4A:  STR.W           R0, [R7,#var_24]
CAA4E:  MOV.W           R0, #0x11E0
CAA52:  LDR             R6, [R4,R0]
CAA54:  CMP             R6, R9
CAA56:  BNE             loc_CAA6E
CAA58:  MOVW            R2, #0x11D0
CAA5C:  MOVW            R0, #0x11CC
CAA60:  LDR             R1, [R4,R0]
CAA62:  LDR             R2, [R4,R2]
CAA64:  CMP             R2, R1
CAA66:  BNE             loc_CAA6E
CAA68:  ADDS            R1, R4, R0
CAA6A:  MOVS            R0, #0
CAA6C:  B               loc_CAB46
CAA6E:  CMP             R6, #0
CAA70:  BEQ             loc_CAB2A
CAA72:  MOVW            R0, #0x11E4
CAA76:  MOV.W           R1, #0x3E8
CAA7A:  LDR             R5, [R4,R0]
CAA7C:  SXTH            R0, R6
CAA7E:  SMULBB.W        R1, R0, R1
CAA82:  SUB.W           R10, SP, #0x130
CAA86:  MOV             SP, R10
CAA88:  MOVW            R0, #0x11CC
CAA8C:  MOVS            R3, #0
CAA8E:  LDR             R2, [R4,R0]
CAA90:  MOV             R0, R10
CAA92:  MOVW            R8, #0x11CC
CAA96:  BLX             j_silk_resampler_init
CAA9A:  STR.W           R0, [R7,#var_28]
CAA9E:  MOVW            R1, #0x4DD3
CAAA2:  LDR.W           R0, [R4,R8]
CAAA6:  MOVT            R1, #0x1062
CAAAA:  MOVS            R2, #5
CAAAC:  SMMUL.W         R0, R0, R1
CAAB0:  ASRS            R1, R0, #6
CAAB2:  ADD.W           R0, R1, R0,LSR#31
CAAB6:  ADD.W           R1, R5, R5,LSL#2
CAABA:  ADD.W           R1, R2, R1,LSL#1
CAABE:  MUL.W           R8, R0, R1
CAAC2:  MOVS            R0, #7
CAAC4:  MUL.W           R3, R1, R6
CAAC8:  ADD.W           R0, R0, R8,LSL#1
CAACC:  BIC.W           R0, R0, #7
CAAD0:  SUB.W           R5, SP, R0
CAAD4:  MOVW            R0, #0x1C10
CAAD8:  ADD.W           R11, R4, R0
CAADC:  MOV             SP, R5
CAADE:  MOV             R0, R10; int
CAAE0:  MOV             R1, R5; int
CAAE2:  MOV             R2, R11; src
CAAE4:  BLX             j_silk_resampler
CAAE8:  LDR.W           R1, [R7,#var_28]
CAAEC:  MOVS            R3, #1
CAAEE:  ADD.W           R10, R0, R1
CAAF2:  MOVW            R0, #0x1690
CAAF6:  ADDS            R6, R4, R0
CAAF8:  SXTH.W          R0, R9
CAAFC:  MOV.W           R1, #0x3E8
CAB00:  SMULBB.W        R2, R0, R1
CAB04:  MOVW            R0, #0x11CC
CAB08:  LDR             R1, [R4,R0]
CAB0A:  MOV             R0, R6
CAB0C:  BLX             j_silk_resampler_init
CAB10:  ADD.W           R9, R10, R0
CAB14:  MOV             R0, R6; int
CAB16:  MOV             R1, R11; int
CAB18:  MOV             R2, R5; src
CAB1A:  MOV             R3, R8
CAB1C:  BLX             j_silk_resampler
CAB20:  MOVW            R1, #0x11CC
CAB24:  ADD             R0, R9
CAB26:  ADD             R1, R4
CAB28:  B               loc_CAB46
CAB2A:  MOV.W           R0, #0x3E8
CAB2E:  MOVW            R5, #0x11CC
CAB32:  MUL.W           R2, R9, R0
CAB36:  LDR             R1, [R4,R5]
CAB38:  MOVW            R0, #0x1690
CAB3C:  MOVS            R3, #1
CAB3E:  ADD             R0, R4
CAB40:  BLX             j_silk_resampler_init
CAB44:  ADDS            R1, R4, R5
CAB46:  MOVW            R2, #0x11D0
CAB4A:  LDR             R1, [R1]
CAB4C:  STR             R1, [R4,R2]
CAB4E:  LDR             R1, =(__stack_chk_guard_ptr - 0xCAB58)
CAB50:  LDR.W           R2, [R7,#var_24]
CAB54:  ADD             R1, PC; __stack_chk_guard_ptr
CAB56:  LDR             R1, [R1]; __stack_chk_guard
CAB58:  LDR             R1, [R1]
CAB5A:  SUBS            R1, R1, R2
CAB5C:  ITTTT EQ
CAB5E:  SUBEQ.W         R4, R7, #-var_1C
CAB62:  MOVEQ           SP, R4
CAB64:  POPEQ.W         {R8-R11}
CAB68:  POPEQ           {R4-R7,PC}
CAB6A:  BLX             __stack_chk_fail
