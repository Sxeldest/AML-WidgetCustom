; =========================================================
; Game Engine Function: _Z20_rwOpenGLLightsClosev
; Address            : 0x221E3C - 0x221EAE
; =========================================================

221E3C:  LDR             R0, =(dword_6BD720 - 0x221E42)
221E3E:  ADD             R0, PC; dword_6BD720
221E40:  LDR             R0, [R0]
221E42:  CBZ             R0, loc_221EAA
221E44:  PUSH            {R4-R7,LR}
221E46:  ADD             R7, SP, #0xC
221E48:  PUSH.W          {R8}
221E4C:  LDR             R1, =(byte_6BD700 - 0x221E52)
221E4E:  ADD             R1, PC; byte_6BD700
221E50:  LDRB            R1, [R1]
221E52:  CMP             R1, #1
221E54:  BNE             loc_221E8C
221E56:  LDR             R5, =(dword_6BD720 - 0x221E64)
221E58:  MOV.W           R8, #0
221E5C:  LDR             R6, =(byte_6BD700 - 0x221E68)
221E5E:  MOVS            R1, #1
221E60:  ADD             R5, PC; dword_6BD720
221E62:  MOVS            R4, #0
221E64:  ADD             R6, PC; byte_6BD700
221E66:  LDR.W           R2, [R0,R4,LSL#2]
221E6A:  CBZ             R2, loc_221E7C
221E6C:  ADD.W           R0, R4, #0x4000; unsigned int
221E70:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
221E74:  LDR             R0, [R5]
221E76:  STR.W           R8, [R0,R4,LSL#2]
221E7A:  LDRB            R1, [R6]
221E7C:  ANDS.W          R2, R1, #1
221E80:  ADD.W           R4, R4, #1
221E84:  IT NE
221E86:  MOVNE           R2, #8
221E88:  CMP             R4, R2
221E8A:  BCC             loc_221E66
221E8C:  LDR             R1, =(RwEngineInstance_ptr - 0x221E92)
221E8E:  ADD             R1, PC; RwEngineInstance_ptr
221E90:  LDR             R1, [R1]; RwEngineInstance
221E92:  LDR             R1, [R1]
221E94:  LDR.W           R1, [R1,#0x130]
221E98:  BLX             R1
221E9A:  LDR             R0, =(dword_6BD720 - 0x221EA2)
221E9C:  MOVS            R1, #0
221E9E:  ADD             R0, PC; dword_6BD720
221EA0:  STR             R1, [R0]
221EA2:  POP.W           {R8}
221EA6:  POP.W           {R4-R7,LR}
221EAA:  MOVS            R0, #1
221EAC:  BX              LR
