; =========================================================
; Game Engine Function: _Z18NvBuildRotYDegMatfPA4_ff
; Address            : 0x278D40 - 0x278DB0
; =========================================================

278D40:  PUSH            {R4-R7,LR}
278D42:  ADD             R7, SP, #0xC
278D44:  PUSH.W          {R11}
278D48:  VPUSH           {D8-D11}
278D4C:  VLDR            S0, =0.017453
278D50:  VMOV            S2, R1
278D54:  MOV             R4, R0
278D56:  ADR             R0, dword_278DB0
278D58:  VMUL.F32        S0, S2, S0
278D5C:  VLD1.64         {D8-D9}, [R0@128]
278D60:  MOVS            R0, #0
278D62:  VMOV.I32        Q5, #0
278D66:  STR             R0, [R4,#4]
278D68:  STR             R0, [R4,#0x1C]
278D6A:  STR             R0, [R4,#0x24]
278D6C:  MOV.W           R0, #0x3F800000
278D70:  STR             R0, [R4,#0x3C]
278D72:  VMOV            R5, S0
278D76:  MOV             R0, R5; x
278D78:  BLX             sinf
278D7C:  MOV             R6, R0
278D7E:  ADD.W           R0, R4, #0xC
278D82:  VMOV            S0, R6
278D86:  VST1.32         {D8-D9}, [R0]
278D8A:  ADD.W           R0, R4, #0x2C ; ','
278D8E:  VNEG.F32        S16, S0
278D92:  VST1.32         {D10-D11}, [R0]
278D96:  MOV             R0, R5; x
278D98:  BLX             cosf
278D9C:  STR             R0, [R4]
278D9E:  STR             R6, [R4,#0x20]
278DA0:  STR             R0, [R4,#0x28]
278DA2:  VSTR            S16, [R4,#8]
278DA6:  VPOP            {D8-D11}
278DAA:  POP.W           {R11}
278DAE:  POP             {R4-R7,PC}
