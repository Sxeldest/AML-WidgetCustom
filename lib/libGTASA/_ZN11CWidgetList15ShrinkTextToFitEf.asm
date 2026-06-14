; =========================================================
; Game Engine Function: _ZN11CWidgetList15ShrinkTextToFitEf
; Address            : 0x2BA8AC - 0x2BA95E
; =========================================================

2BA8AC:  PUSH            {R4-R7,LR}
2BA8AE:  ADD             R7, SP, #0xC
2BA8B0:  PUSH.W          {R8-R11}
2BA8B4:  SUB             SP, SP, #4
2BA8B6:  VPUSH           {D8-D9}
2BA8BA:  SUB             SP, SP, #0x100
2BA8BC:  MOV             R2, #0x11CB0
2BA8C4:  LDR             R3, [R0,R2]
2BA8C6:  CMP             R3, #1
2BA8C8:  BLT             loc_2BA950
2BA8CA:  VMOV            S16, R1
2BA8CE:  ADD.W           R1, R0, #0x11800
2BA8D2:  ADD.W           R11, R1, #0x4C8
2BA8D6:  ADD.W           R1, R0, #0x11C00
2BA8DA:  ADD.W           R10, R0, R2
2BA8DE:  ADD.W           R4, R0, #0x90
2BA8E2:  LDR             R0, =(TheText_ptr - 0x2BA8F2)
2BA8E4:  ADD.W           R5, R1, #0xD5
2BA8E8:  VLDR            S18, =0.0
2BA8EC:  MOVS            R6, #0
2BA8EE:  ADD             R0, PC; TheText_ptr
2BA8F0:  MOV             R8, SP
2BA8F2:  LDR.W           R9, [R0]; TheText
2BA8F6:  LDRB            R0, [R5]
2BA8F8:  CBZ             R0, loc_2BA90A
2BA8FA:  MOV             R0, R9; this
2BA8FC:  MOV             R1, R4; CKeyGen *
2BA8FE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BA902:  VMOV.F32        S0, S18
2BA906:  CBNZ            R0, loc_2BA914
2BA908:  B               loc_2BA920
2BA90A:  MOV             R0, R4; char *
2BA90C:  MOV             R1, R8; unsigned __int16 *
2BA90E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BA912:  MOV             R0, R8; this
2BA914:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BA916:  MOVS            R2, #0; unsigned __int8
2BA918:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BA91C:  VMOV            S0, R0
2BA920:  VCMPE.F32       S0, S16
2BA924:  VMRS            APSR_nzcv, FPSCR
2BA928:  BLE             loc_2BA942
2BA92A:  VDIV.F32        S0, S16, S0
2BA92E:  VLDR            S2, [R11]
2BA932:  VMUL.F32        S0, S0, S2
2BA936:  VMOV            R0, S0; this
2BA93A:  VSTR            S0, [R11]
2BA93E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BA942:  LDR.W           R0, [R10]
2BA946:  ADDS            R6, #1
2BA948:  ADD.W           R4, R4, #0x11C
2BA94C:  CMP             R6, R0
2BA94E:  BLT             loc_2BA8F6
2BA950:  ADD             SP, SP, #0x100
2BA952:  VPOP            {D8-D9}
2BA956:  ADD             SP, SP, #4
2BA958:  POP.W           {R8-R11}
2BA95C:  POP             {R4-R7,PC}
