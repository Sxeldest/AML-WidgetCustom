; =========================================================
; Game Engine Function: sub_FFA98
; Address            : 0xFFA98 - 0xFFB06
; =========================================================

FFA98:  PUSH            {R4-R7,LR}
FFA9A:  ADD             R7, SP, #0xC
FFA9C:  PUSH.W          {R11}
FFAA0:  MOV             R4, R0
FFAA2:  MOV.W           R0, #0x1000
FFAA6:  LDR             R5, [R4,R0]
FFAA8:  ADD.W           R0, R1, #0xF
FFAAC:  BIC.W           R6, R0, #0xF
FFAB0:  MOVW            R1, #0xFF8
FFAB4:  LDR             R2, [R5,#4]
FFAB6:  ADDS            R0, R2, R6
FFAB8:  CMP             R0, R1
FFABA:  BCC             loc_FFADA
FFABC:  MOVW            R0, #0xFF9
FFAC0:  CMP             R6, R0
FFAC2:  BCC             loc_FFADE
FFAC4:  ORR.W           R0, R6, #8; size
FFAC8:  BLX             malloc
FFACC:  CBZ             R0, loc_FFB02
FFACE:  LDR             R1, [R5]
FFAD0:  MOVS            R2, #0
FFAD2:  STRD.W          R1, R2, [R0]
FFAD6:  STR             R0, [R5]
FFAD8:  B               loc_FFAFA
FFADA:  MOV             R0, R5
FFADC:  B               loc_FFAF4
FFADE:  MOV.W           R0, #0x1000; size
FFAE2:  BLX             malloc
FFAE6:  CBZ             R0, loc_FFB02
FFAE8:  ADD.W           R1, R4, #0x1000
FFAEC:  MOVS            R2, #0
FFAEE:  STRD.W          R5, R2, [R0]
FFAF2:  STR             R0, [R1]
FFAF4:  ADDS            R1, R2, R6
FFAF6:  STR             R1, [R0,#4]
FFAF8:  ADD             R0, R2
FFAFA:  ADDS            R0, #8
FFAFC:  POP.W           {R11}
FFB00:  POP             {R4-R7,PC}
FFB02:  BLX             j__ZSt9terminatev; std::terminate(void)
