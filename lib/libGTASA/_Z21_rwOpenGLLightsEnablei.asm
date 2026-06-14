; =========================================================
; Game Engine Function: _Z21_rwOpenGLLightsEnablei
; Address            : 0x221EC8 - 0x221F2E
; =========================================================

221EC8:  PUSH            {R7,LR}
221ECA:  MOV             R7, SP
221ECC:  CBZ             R0, loc_221EDE
221ECE:  LDR             R0, =(byte_6BD724 - 0x221ED4)
221ED0:  ADD             R0, PC; byte_6BD724
221ED2:  LDRB            R0, [R0]
221ED4:  CMP             R0, #1
221ED6:  BNE             loc_221F00
221ED8:  LDR             R1, =(unk_6BD710 - 0x221EDE)
221EDA:  ADD             R1, PC; unk_6BD710
221EDC:  B               loc_221F06
221EDE:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x221EE4)
221EE0:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
221EE2:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
221EE4:  LDR             R0, [R0]
221EE6:  CMP             R0, #0
221EE8:  IT EQ
221EEA:  POPEQ           {R7,PC}
221EEC:  MOV.W           R0, #0xB50; unsigned int
221EF0:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
221EF4:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x221EFC)
221EF6:  MOVS            R1, #0
221EF8:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
221EFA:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
221EFC:  STR             R1, [R0]
221EFE:  POP             {R7,PC}
221F00:  LDR             R0, =(_rwOpenGLOpaqueBlack_ptr - 0x221F06)
221F02:  ADD             R0, PC; _rwOpenGLOpaqueBlack_ptr
221F04:  LDR             R1, [R0]; _rwOpenGLOpaqueBlack ; float *
221F06:  MOVW            R0, #0xB53; unsigned int
221F0A:  BLX             j__Z18emu_glLightModelfvjPKf; emu_glLightModelfv(uint,float const*)
221F0E:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x221F14)
221F10:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
221F12:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
221F14:  LDR             R0, [R0]
221F16:  CBZ             R0, loc_221F1A
221F18:  POP             {R7,PC}
221F1A:  MOV.W           R0, #0xB50; unsigned int
221F1E:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
221F22:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x221F2A)
221F24:  MOVS            R1, #1
221F26:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
221F28:  LDR             R0, [R0]; _rwOpenGLLightingEnabled
221F2A:  STR             R1, [R0]
221F2C:  POP             {R7,PC}
