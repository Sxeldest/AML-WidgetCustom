; =========================================================
; Game Engine Function: _ZN10FxSystem_c16CopyParentMatrixEv
; Address            : 0x36EF04 - 0x36EF52
; =========================================================

36EF04:  PUSH            {R4,R5,R7,LR}
36EF06:  ADD             R7, SP, #8
36EF08:  MOV             R4, R0
36EF0A:  LDR             R5, [R4,#0xC]
36EF0C:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36EF10:  STR             R0, [R4,#0xC]
36EF12:  MOV             R1, R5
36EF14:  VLD1.32         {D16-D17}, [R1]!
36EF18:  ADD.W           R2, R5, #0x30 ; '0'
36EF1C:  VLD1.32         {D18-D19}, [R2]
36EF20:  ADD.W           R2, R5, #0x20 ; ' '
36EF24:  VLD1.32         {D22-D23}, [R1]
36EF28:  ADD.W           R1, R0, #0x30 ; '0'
36EF2C:  VLD1.32         {D20-D21}, [R2]
36EF30:  VST1.32         {D18-D19}, [R1]
36EF34:  ADD.W           R1, R0, #0x20 ; ' '
36EF38:  VST1.32         {D20-D21}, [R1]
36EF3C:  VST1.32         {D16-D17}, [R0]!
36EF40:  VST1.32         {D22-D23}, [R0]
36EF44:  LDRB.W          R0, [R4,#0x66]
36EF48:  ORR.W           R0, R0, #1
36EF4C:  STRB.W          R0, [R4,#0x66]
36EF50:  POP             {R4,R5,R7,PC}
