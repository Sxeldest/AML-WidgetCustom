; =========================================================
; Game Engine Function: sub_15E99C
; Address            : 0x15E99C - 0x15E9FA
; =========================================================

15E99C:  PUSH            {R4-R7,LR}
15E99E:  ADD             R7, SP, #0xC
15E9A0:  PUSH.W          {R8}
15E9A4:  SUB             SP, SP, #0x20
15E9A6:  MOV             R4, R3
15E9A8:  STR             R2, [SP,#0x30+var_24]
15E9AA:  BL              sub_15E798
15E9AE:  LDR             R3, =(unk_BA757 - 0x15E9C2)
15E9B0:  ADD             R1, SP, #0x30+var_20
15E9B2:  ADD             R2, SP, #0x30+var_24
15E9B4:  ADD             R6, SP, #0x30+var_1C
15E9B6:  STRD.W          R6, R1, [SP,#0x30+var_30]
15E9BA:  ADD.W           R1, R0, #0x14
15E9BE:  ADD             R3, PC; unk_BA757
15E9C0:  ADD             R0, SP, #0x30+var_18
15E9C2:  STR             R2, [SP,#0x30+var_1C]
15E9C4:  BL              sub_15F6EC
15E9C8:  LDR             R5, [SP,#0x30+var_18]
15E9CA:  LDRD.W          R6, R8, [R7,#arg_0]
15E9CE:  LDRB            R0, [R5,#0xC]
15E9D0:  CBNZ            R0, loc_15E9E4
15E9D2:  LDR             R1, [SP,#0x30+var_24]
15E9D4:  ADD.W           R0, R5, #0x10; dest
15E9D8:  MOVS            R2, #0x40 ; '@'; n
15E9DA:  ADDS            R1, #0x10; src
15E9DC:  BLX             j_memcpy
15E9E0:  MOVS            R0, #1
15E9E2:  STRB            R0, [R5,#0xC]
15E9E4:  MOVS            R0, #1
15E9E6:  STRB.W          R0, [R5,#0x50]
15E9EA:  ADD.W           R0, R5, #0x54 ; 'T'
15E9EE:  STM.W           R0, {R4,R6,R8}
15E9F2:  ADD             SP, SP, #0x20 ; ' '
15E9F4:  POP.W           {R8}
15E9F8:  POP             {R4-R7,PC}
