; =========================================================
; Game Engine Function: _ZN16FxInfoRotSpeed_c8GetValueEffffhPv
; Address            : 0x36B2F2 - 0x36B330
; =========================================================

36B2F2:  PUSH            {R4,R6,R7,LR}
36B2F4:  ADD             R7, SP, #8
36B2F6:  SUB             SP, SP, #0x40
36B2F8:  VMOV            S2, R1
36B2FC:  VLDR            S0, [R7,#arg_0]
36B300:  LDRB            R1, [R0,#6]
36B302:  ADDS            R0, #8; this
36B304:  VDIV.F32        S0, S2, S0
36B308:  MOV             R4, SP
36B30A:  CMP             R1, #0
36B30C:  MOV             R1, R4; float *
36B30E:  VMOV            S2, R2
36B312:  IT EQ
36B314:  VMOVEQ.F32      S2, S0
36B318:  VMOV            R2, S2; float
36B31C:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36B320:  LDR             R0, [R7,#arg_8]
36B322:  VLD1.32         {D16-D17}, [R4,#0x48+var_48]
36B326:  ADDS            R0, #0x18
36B328:  VST1.32         {D16-D17}, [R0]
36B32C:  ADD             SP, SP, #0x40 ; '@'
36B32E:  POP             {R4,R6,R7,PC}
