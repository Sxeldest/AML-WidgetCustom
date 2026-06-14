; =========================================================
; Game Engine Function: png_write_chunk_end
; Address            : 0x20614A - 0x206186
; =========================================================

20614A:  CMP             R0, #0
20614C:  IT EQ
20614E:  BXEQ            LR
206150:  PUSH            {R7,LR}
206152:  MOV             R7, SP
206154:  SUB             SP, SP, #8
206156:  LDR.W           R1, [R0,#0x1F8]
20615A:  MOVS            R2, #0x82
20615C:  STR.W           R2, [R0,#0x368]
206160:  STRB.W          R1, [SP,#0x10+var_9]
206164:  LSRS            R2, R1, #0x10
206166:  STRB.W          R2, [SP,#0x10+var_B]
20616A:  LSRS            R2, R1, #0x18
20616C:  LSRS            R1, R1, #8
20616E:  STRB.W          R2, [SP,#0x10+var_C]
206172:  STRB.W          R1, [SP,#0x10+var_A]
206176:  ADD             R1, SP, #0x10+var_C
206178:  MOVS            R2, #4
20617A:  BLX             j_png_write_data
20617E:  ADD             SP, SP, #8
206180:  POP.W           {R7,LR}
206184:  BX              LR
