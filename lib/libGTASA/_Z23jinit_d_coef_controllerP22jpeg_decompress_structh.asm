; =========================================================
; Game Engine Function: _Z23jinit_d_coef_controllerP22jpeg_decompress_structh
; Address            : 0x47BEC0 - 0x47BF58
; =========================================================

47BEC0:  PUSH            {R4-R7,LR}
47BEC2:  ADD             R7, SP, #0xC
47BEC4:  PUSH.W          {R11}
47BEC8:  MOV             R5, R0
47BECA:  MOV             R6, R1
47BECC:  LDR             R0, [R5,#4]
47BECE:  MOVS            R1, #1
47BED0:  MOVS            R2, #0x48 ; 'H'
47BED2:  LDR             R3, [R0]
47BED4:  MOV             R0, R5
47BED6:  BLX             R3
47BED8:  MOV             R4, R0
47BEDA:  LDR             R0, =(sub_47BFC6+1 - 0x47BEE4)
47BEDC:  LDR             R1, =(loc_47BF90+1 - 0x47BEEA)
47BEDE:  CMP             R6, #0
47BEE0:  ADD             R0, PC; sub_47BFC6
47BEE2:  STR.W           R4, [R5,#0x188]
47BEE6:  ADD             R1, PC; loc_47BF90
47BEE8:  STR             R0, [R4,#8]
47BEEA:  STR             R1, [R4]
47BEEC:  BEQ             loc_47BF04
47BEEE:  LDR             R0, [R5]
47BEF0:  MOVS            R1, #0x30 ; '0'
47BEF2:  STR             R1, [R0,#0x14]
47BEF4:  LDR             R0, [R5]
47BEF6:  LDR             R1, [R0]
47BEF8:  MOV             R0, R5
47BEFA:  POP.W           {R11}
47BEFE:  POP.W           {R4-R7,LR}
47BF02:  BX              R1
47BF04:  LDR             R0, [R5,#4]
47BF06:  MOVS            R1, #1
47BF08:  MOV.W           R2, #0x500
47BF0C:  LDR             R3, [R0,#4]
47BF0E:  MOV             R0, R5
47BF10:  BLX             R3
47BF12:  ADR             R1, dword_47BF60
47BF14:  ADR             R2, dword_47BF70
47BF16:  VLD1.64         {D16-D17}, [R1@128]
47BF1A:  ADD.W           R3, R0, #0x480
47BF1E:  LDR             R1, =(sub_47BFD2+1 - 0x47BF30)
47BF20:  VDUP.32         Q10, R0
47BF24:  VLD1.64         {D18-D19}, [R2@128]
47BF28:  VADD.I32        Q8, Q10, Q8
47BF2C:  ADD             R1, PC; sub_47BFD2
47BF2E:  VADD.I32        Q9, Q10, Q9
47BF32:  LDR             R2, =(sub_47BFCE+1 - 0x47BF3C)
47BF34:  STR             R0, [R4,#0x20]
47BF36:  MOVS            R0, #0
47BF38:  ADD             R2, PC; sub_47BFCE
47BF3A:  STR             R3, [R4,#0x44]
47BF3C:  STR             R2, [R4,#4]
47BF3E:  STRD.W          R1, R0, [R4,#0xC]
47BF42:  ADD.W           R0, R4, #0x24 ; '$'
47BF46:  VST1.32         {D16-D17}, [R0]
47BF4A:  ADD.W           R0, R4, #0x34 ; '4'
47BF4E:  VST1.32         {D18-D19}, [R0]
47BF52:  POP.W           {R11}
47BF56:  POP             {R4-R7,PC}
