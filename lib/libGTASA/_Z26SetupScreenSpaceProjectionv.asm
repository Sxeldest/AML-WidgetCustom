; =========================================================
; Game Engine Function: _Z26SetupScreenSpaceProjectionv
; Address            : 0x1ADA2C - 0x1ADB00
; =========================================================

1ADA2C:  PUSH            {R4,R5,R7,LR}
1ADA2E:  ADD             R7, SP, #8
1ADA30:  SUB             SP, SP, #8
1ADA32:  MOVW            R0, #0x1701; unsigned int
1ADA36:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1ADA3A:  BLX             j__Z16emu_glPushMatrixv; emu_glPushMatrix(void)
1ADA3E:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1ADA42:  LDR             R0, =(dgGGlobals_ptr - 0x1ADA48)
1ADA44:  ADD             R0, PC; dgGGlobals_ptr
1ADA46:  LDR             R0, [R0]; dgGGlobals
1ADA48:  LDR             R0, [R0]
1ADA4A:  CMP             R0, #0
1ADA4C:  BEQ             loc_1ADADA
1ADA4E:  LDR             R4, [R0,#0x60]
1ADA50:  MOV             R0, R4
1ADA52:  LDR             R1, [R0]
1ADA54:  CMP             R0, R1
1ADA56:  MOV             R0, R1
1ADA58:  BNE             loc_1ADA52
1ADA5A:  LDRB.W          R0, [R4,#0x20]
1ADA5E:  CMP             R0, #5
1ADA60:  BNE             loc_1ADA74
1ADA62:  MOVS            R1, #0
1ADA64:  MOV.W           R0, #0x3F800000; float
1ADA68:  MOVT            R1, #0xBF80; float
1ADA6C:  MOV.W           R2, #0x3F800000; float
1ADA70:  BLX             j__Z12emu_glScaleffff; emu_glScalef(float,float,float)
1ADA74:  VLDR            S0, [R4,#0xC]
1ADA78:  MOVW            R12, #0
1ADA7C:  VLDR            S2, [R4,#0x10]
1ADA80:  MOVT            R12, #0x3FF0
1ADA84:  VCVT.F64.S32    D16, S0
1ADA88:  MOVS            R5, #0
1ADA8A:  VCVT.F64.S32    D18, S2
1ADA8E:  STRD.W          R5, R12, [SP,#0x10+var_10]; double
1ADA92:  VMOV.F64        D17, #2.0
1ADA96:  VMOV.F64        D19, #-2.0
1ADA9A:  VDIV.F64        D16, D17, D16
1ADA9E:  VDIV.F64        D17, D19, D18
1ADAA2:  VMOV            R0, R1, D16; double
1ADAA6:  VMOV            R2, R3, D17; double
1ADAAA:  BLX             j__Z12emu_glScaledddd; emu_glScaled(double,double,double)
1ADAAE:  VLDR            S0, [R4,#0xC]
1ADAB2:  VLDR            S2, [R4,#0x10]
1ADAB6:  VCVT.F64.S32    D16, S0
1ADABA:  VCVT.F64.S32    D18, S2
1ADABE:  STRD.W          R5, R5, [SP,#0x10+var_10]; double
1ADAC2:  VMOV.F64        D17, #-0.5
1ADAC6:  VMUL.F64        D16, D16, D17
1ADACA:  VMUL.F64        D17, D18, D17
1ADACE:  VMOV            R0, R1, D16; double
1ADAD2:  VMOV            R2, R3, D17; double
1ADAD6:  BLX             j__Z16emu_glTranslatedddd; emu_glTranslated(double,double,double)
1ADADA:  MOVW            R0, #0x1703; unsigned int
1ADADE:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1ADAE2:  BLX             j__Z16emu_glPushMatrixv; emu_glPushMatrix(void)
1ADAE6:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1ADAEA:  MOV.W           R0, #0x1700; unsigned int
1ADAEE:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1ADAF2:  BLX             j__Z16emu_glPushMatrixv; emu_glPushMatrix(void)
1ADAF6:  ADD             SP, SP, #8
1ADAF8:  POP.W           {R4,R5,R7,LR}
1ADAFC:  B.W             j_j__Z18emu_glLoadIdentityv; j_emu_glLoadIdentity(void)
