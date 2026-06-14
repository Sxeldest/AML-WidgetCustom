; =========================================================
; Game Engine Function: sub_204AB0
; Address            : 0x204AB0 - 0x204B76
; =========================================================

204AB0:  PUSH            {R4-R7,LR}
204AB2:  ADD             R7, SP, #0xC
204AB4:  PUSH.W          {R11}
204AB8:  SUB             SP, SP, #0x18
204ABA:  LDR             R1, =(png_safe_warning_ptr - 0x204AC6)
204ABC:  MOV             R4, R0
204ABE:  LDR             R0, =(png_safe_error_ptr - 0x204ACC)
204AC0:  MOVS            R6, #0
204AC2:  ADD             R1, PC; png_safe_warning_ptr
204AC4:  STRD.W          R6, R6, [SP,#0x28+var_28]
204AC8:  ADD             R0, PC; png_safe_error_ptr
204ACA:  STR             R6, [SP,#0x28+var_20]
204ACC:  LDR             R3, [R1]; png_safe_warning
204ACE:  MOV             R1, R4
204AD0:  LDR             R2, [R0]; png_safe_error
204AD2:  ADR             R0, a1634_0; "1.6.34"
204AD4:  BLX             j_png_create_png_struct
204AD8:  MOV             R5, R0
204ADA:  CBZ             R5, loc_204B4E
204ADC:  ADR             R0, dword_204B80
204ADE:  ADD.W           R2, R5, #0x190
204AE2:  VLD1.64         {D16-D17}, [R0@128]
204AE6:  ADR             R0, dword_204B90
204AE8:  MOVS            R3, #0
204AEA:  VLD1.64         {D18-D19}, [R0@128]
204AEE:  MOVS            R0, #8
204AF0:  LDR.W           R1, [R5,#0x138]
204AF4:  VST1.32         {D16-D17}, [R2]
204AF8:  ADD.W           R2, R5, #0x180
204AFC:  VST1.32         {D18-D19}, [R2]
204B00:  MOVS            R2, #0xF
204B02:  STRD.W          R2, R0, [R5,#0x1A0]
204B06:  ORR.W           R0, R1, #0x200000
204B0A:  STR.W           R6, [R5,#0x1A8]
204B0E:  MOVS            R1, #0
204B10:  STR.W           R0, [R5,#0x138]
204B14:  MOV             R0, R5
204B16:  MOVS            R2, #0
204B18:  BLX             j_png_set_write_fn
204B1C:  MOV             R0, R5
204B1E:  STR             R5, [SP,#0x28+var_14]
204B20:  BLX             j_png_create_info_struct
204B24:  MOV             R6, R0
204B26:  CMP             R6, #0
204B28:  STR             R6, [SP,#0x28+var_18]
204B2A:  BEQ             loc_204B5A
204B2C:  MOV             R0, R5; int
204B2E:  MOVS            R1, #0x18; byte_count
204B30:  BLX             j_png_malloc_warn
204B34:  CBZ             R0, loc_204B52
204B36:  VMOV.I32        Q8, #0
204B3A:  ADD.W           R1, R0, #8
204B3E:  VST1.32         {D16-D17}, [R1]
204B42:  MOVS            R1, #1
204B44:  STRD.W          R5, R6, [R0]
204B48:  STRB            R1, [R0,#0x14]
204B4A:  STR             R0, [R4]
204B4C:  B               loc_204B6C
204B4E:  STR             R6, [SP,#0x28+var_14]
204B50:  B               loc_204B62
204B52:  ADD             R1, SP, #0x28+var_18
204B54:  MOV             R0, R5
204B56:  BLX             j_png_destroy_info_struct
204B5A:  ADD             R0, SP, #0x28+var_14
204B5C:  MOVS            R1, #0
204B5E:  BLX             j_png_destroy_write_struct
204B62:  ADR             R1, aPngImageWriteO; "png_image_write_: out of memory"
204B64:  MOV             R0, R4
204B66:  BLX             j_png_image_error
204B6A:  MOV             R1, R0
204B6C:  MOV             R0, R1
204B6E:  ADD             SP, SP, #0x18
204B70:  POP.W           {R11}
204B74:  POP             {R4-R7,PC}
