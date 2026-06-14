; =========================================================
; Game Engine Function: _Z15SetTargetCoordsb
; Address            : 0x1BBB4C - 0x1BBBB8
; =========================================================

1BBB4C:  PUSH            {R4,R5,R7,LR}
1BBB4E:  ADD             R7, SP, #8
1BBB50:  LDR             R0, =(gradeBlur_ptr - 0x1BBB60)
1BBB52:  MOVS            R4, #0xBF800000
1BBB58:  MOV.W           R1, #0x3F800000; float
1BBB5C:  ADD             R0, PC; gradeBlur_ptr
1BBB5E:  LDR             R5, [R0]; gradeBlur
1BBB60:  MOV             R0, R4; float
1BBB62:  LDR             R2, [R5]; float
1BBB64:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBB68:  MOVS            R0, #0; float
1BBB6A:  MOV.W           R1, #0x3F800000; float
1BBB6E:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BBB72:  LDR             R2, [R5]; float
1BBB74:  MOV.W           R0, #0x3F800000; float
1BBB78:  MOV.W           R1, #0x3F800000; float
1BBB7C:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBB80:  MOV.W           R0, #0x3F800000; float
1BBB84:  MOV.W           R1, #0x3F800000; float
1BBB88:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BBB8C:  LDR             R2, [R5]; float
1BBB8E:  MOV             R0, R4; float
1BBB90:  MOV             R1, R4; float
1BBB92:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBB96:  MOVS            R0, #0; float
1BBB98:  MOVS            R1, #0; float
1BBB9A:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BBB9E:  LDR             R2, [R5]; float
1BBBA0:  MOV.W           R0, #0x3F800000; float
1BBBA4:  MOV             R1, R4; float
1BBBA6:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBBAA:  MOV.W           R0, #0x3F800000; float
1BBBAE:  MOVS            R1, #0; float
1BBBB0:  POP.W           {R4,R5,R7,LR}
1BBBB4:  B.W             j_j__Z16emu_glTexCoord2fff; j_emu_glTexCoord2f(float,float)
