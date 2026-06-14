; =========================================================
; Game Engine Function: _ZN11CAudioZones19RegisterAudioSphereEPcibffff
; Address            : 0x3BDC94 - 0x3BDCFC
; =========================================================

3BDC94:  PUSH            {R4-R7,LR}
3BDC96:  ADD             R7, SP, #0xC
3BDC98:  PUSH.W          {R8,R9,R11}
3BDC9C:  MOV             R6, R1
3BDC9E:  MOV             R1, R0; char *
3BDCA0:  LDR             R0, =(_ZN11CAudioZones12m_NumSpheresE_ptr - 0x3BDCAA)
3BDCA2:  MOV             R8, R2
3BDCA4:  MOV             R9, R3
3BDCA6:  ADD             R0, PC; _ZN11CAudioZones12m_NumSpheresE_ptr
3BDCA8:  LDR             R5, [R0]; CAudioZones::m_NumSpheres ...
3BDCAA:  LDR             R0, =(_ZN11CAudioZones10m_aSpheresE_ptr - 0x3BDCB2)
3BDCAC:  LDR             R2, [R5]; CAudioZones::m_NumSpheres
3BDCAE:  ADD             R0, PC; _ZN11CAudioZones10m_aSpheresE_ptr
3BDCB0:  LDR             R4, [R0]; CAudioZones::m_aSpheres ...
3BDCB2:  RSB.W           R0, R2, R2,LSL#3
3BDCB6:  ADD.W           R0, R4, R0,LSL#2; char *
3BDCBA:  BLX             strcpy
3BDCBE:  LDR             R0, [R5]; CAudioZones::m_NumSpheres
3BDCC0:  VLDR            S0, [R7,#arg_8]
3BDCC4:  VLDR            S2, [R7,#arg_0]
3BDCC8:  RSB.W           R1, R0, R0,LSL#3
3BDCCC:  VLDR            S4, [R7,#arg_4]
3BDCD0:  ADDS            R0, #1
3BDCD2:  STR             R0, [R5]; CAudioZones::m_NumSpheres
3BDCD4:  ADD.W           R1, R4, R1,LSL#2
3BDCD8:  STRH            R6, [R1,#8]
3BDCDA:  LDRB            R2, [R1,#0xA]
3BDCDC:  STR.W           R9, [R1,#0xC]
3BDCE0:  AND.W           R2, R2, #0xFE
3BDCE4:  VSTR            S2, [R1,#0x10]
3BDCE8:  VSTR            S4, [R1,#0x14]
3BDCEC:  ORR.W           R2, R2, R8
3BDCF0:  VSTR            S0, [R1,#0x18]
3BDCF4:  STRB            R2, [R1,#0xA]
3BDCF6:  POP.W           {R8,R9,R11}
3BDCFA:  POP             {R4-R7,PC}
