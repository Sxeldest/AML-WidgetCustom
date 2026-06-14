; =========================================================
; Game Engine Function: _Z19emu_SkinSetMatricesPfi
; Address            : 0x1C1FDC - 0x1C2008
; =========================================================

1C1FDC:  PUSH            {R4,R6,R7,LR}
1C1FDE:  ADD             R7, SP, #8
1C1FE0:  MOV             R4, R1
1C1FE2:  MOV             R1, R0; void *
1C1FE4:  LDR             R0, =(skin_map_ptr - 0x1C1FEE)
1C1FE6:  ADD.W           R2, R4, R4,LSL#1
1C1FEA:  ADD             R0, PC; skin_map_ptr
1C1FEC:  LSLS            R2, R2, #4; size_t
1C1FEE:  LDR             R0, [R0]; skin_map ; void *
1C1FF0:  BLX             memcpy_0
1C1FF4:  LDR             R0, =(skin_dirty_ptr - 0x1C1FFE)
1C1FF6:  MOVS            R2, #1
1C1FF8:  LDR             R1, =(skin_num_ptr - 0x1C2000)
1C1FFA:  ADD             R0, PC; skin_dirty_ptr
1C1FFC:  ADD             R1, PC; skin_num_ptr
1C1FFE:  LDR             R0, [R0]; skin_dirty
1C2000:  LDR             R1, [R1]; skin_num
1C2002:  STRB            R2, [R0]
1C2004:  STR             R4, [R1]
1C2006:  POP             {R4,R6,R7,PC}
