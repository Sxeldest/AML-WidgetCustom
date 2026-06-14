; =========================================================
; Game Engine Function: _Z16_rwGLHandleBlendP8RwRaster
; Address            : 0x1AEE74 - 0x1AEF08
; =========================================================

1AEE74:  PUSH            {R4,R5,R7,LR}
1AEE76:  ADD             R7, SP, #8
1AEE78:  CMP             R0, #0
1AEE7A:  ITT NE
1AEE7C:  LDRNE           R1, [R0,#0x2C]
1AEE7E:  CMPNE           R1, #0
1AEE80:  BEQ             loc_1AEEA2
1AEE82:  LDR             R0, =(dword_6B3208 - 0x1AEE8A)
1AEE84:  LDRH            R1, [R1,#8]
1AEE86:  ADD             R0, PC; dword_6B3208
1AEE88:  LDR             R0, [R0,#(dword_6B3234 - 0x6B3208)]
1AEE8A:  UBFX.W          R1, R1, #4, #4
1AEE8E:  CMP             R1, #0
1AEE90:  MOV             R4, R1
1AEE92:  IT NE
1AEE94:  MOVNE           R4, #1
1AEE96:  CMP             R0, #0
1AEE98:  IT NE
1AEE9A:  MOVNE           R0, #1
1AEE9C:  CMP             R1, #2
1AEE9E:  BNE             loc_1AEEBC
1AEEA0:  B               loc_1AEED0
1AEEA2:  LDR             R1, =(dword_6B3208 - 0x1AEEAC)
1AEEA4:  LDRB.W          R2, [R0,#0x22]
1AEEA8:  ADD             R1, PC; dword_6B3208
1AEEAA:  LDR             R0, [R1,#(dword_6B3234 - 0x6B3208)]
1AEEAC:  AND.W           R1, R2, #0xF
1AEEB0:  CMP             R0, #0
1AEEB2:  IT NE
1AEEB4:  MOVNE           R0, #1
1AEEB6:  CMP             R1, #6
1AEEB8:  BNE             loc_1AEECE
1AEEBA:  MOVS            R4, #0
1AEEBC:  MOVS            R5, #0
1AEEBE:  CBNZ            R0, loc_1AEED4
1AEEC0:  MOVW            R0, #0xBE2; unsigned int
1AEEC4:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AEEC8:  LDR             R0, =(dword_6B3208 - 0x1AEECE)
1AEECA:  ADD             R0, PC; dword_6B3208
1AEECC:  B               loc_1AEEF6
1AEECE:  MOVS            R4, #1
1AEED0:  MOVS            R5, #1
1AEED2:  CBZ             R0, loc_1AEEEA
1AEED4:  LDR             R0, =(dword_6B3208 - 0x1AEEDC)
1AEED6:  CMP             R4, #1
1AEED8:  ADD             R0, PC; dword_6B3208
1AEEDA:  STR             R5, [R0,#(dword_6B3220 - 0x6B3208)]
1AEEDC:  BNE             loc_1AEEFC
1AEEDE:  MOV.W           R0, #0xBC0; unsigned int
1AEEE2:  POP.W           {R4,R5,R7,LR}
1AEEE6:  B.W             j_j__Z12emu_glEnablej; j_emu_glEnable(uint)
1AEEEA:  MOVW            R0, #0xBE2; unsigned int
1AEEEE:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
1AEEF2:  LDR             R0, =(dword_6B3208 - 0x1AEEF8)
1AEEF4:  ADD             R0, PC; dword_6B3208
1AEEF6:  CMP             R4, #0
1AEEF8:  STR             R5, [R0,#(dword_6B3220 - 0x6B3208)]
1AEEFA:  BNE             loc_1AEEDE
1AEEFC:  MOV.W           R0, #0xBC0; unsigned int
1AEF00:  POP.W           {R4,R5,R7,LR}
1AEF04:  B.W             j_j__Z13emu_glDisablej; j_emu_glDisable(uint)
