; =========================================================
; Game Engine Function: _Z18NvBuildRotXDegMatfPA4_ff
; Address            : 0x278CCC - 0x278D32
; =========================================================

278CCC:  PUSH            {R4-R7,LR}
278CCE:  ADD             R7, SP, #0xC
278CD0:  PUSH.W          {R11}
278CD4:  VPUSH           {D8-D10}
278CD8:  VLDR            S0, =0.017453
278CDC:  VMOV            S2, R1
278CE0:  MOV             R4, R0
278CE2:  MOV.W           R6, #0x3F800000
278CE6:  VMUL.F32        S0, S2, S0
278CEA:  MOVS            R0, #0
278CEC:  VMOV.I32        Q4, #0
278CF0:  STR             R6, [R4]
278CF2:  STRD.W          R0, R0, [R4,#0x1C]
278CF6:  ADDS            R0, R4, #4
278CF8:  VST1.32         {D8-D9}, [R0]
278CFC:  VMOV            R5, S0
278D00:  MOV             R0, R5; x
278D02:  BLX             sinf
278D06:  ADD.W           R1, R4, #0x2C ; ','
278D0A:  VMOV            S0, R0
278D0E:  VST1.32         {D8-D9}, [R1]
278D12:  VNEG.F32        S20, S0
278D16:  STR             R6, [R4,#0x3C]
278D18:  STR             R0, [R4,#0x18]
278D1A:  MOV             R0, R5; x
278D1C:  BLX             cosf
278D20:  STR             R0, [R4,#0x14]
278D22:  STR             R0, [R4,#0x28]
278D24:  VSTR            S20, [R4,#0x24]
278D28:  VPOP            {D8-D10}
278D2C:  POP.W           {R11}
278D30:  POP             {R4-R7,PC}
