; =========================================================
; Game Engine Function: _Z17jinit_forward_dctP20jpeg_compress_struct
; Address            : 0x476F68 - 0x476FCA
; =========================================================

476F68:  PUSH            {R4-R7,LR}
476F6A:  ADD             R7, SP, #0xC
476F6C:  PUSH.W          {R11}
476F70:  MOV             R5, R0
476F72:  MOVS            R1, #1
476F74:  LDR             R0, [R5,#4]
476F76:  MOVS            R2, #0x30 ; '0'
476F78:  MOVS            R6, #0x30 ; '0'
476F7A:  LDR             R3, [R0]
476F7C:  MOV             R0, R5
476F7E:  BLX             R3
476F80:  MOV             R4, R0
476F82:  LDR             R0, =(sub_476FD8+1 - 0x476F8C)
476F84:  STR.W           R4, [R5,#0x158]
476F88:  ADD             R0, PC; sub_476FD8
476F8A:  STR             R0, [R4]
476F8C:  LDR.W           R0, [R5,#0xB8]
476F90:  CMP             R0, #2
476F92:  BNE             loc_476FA4
476F94:  LDR             R0, =(_Z15jpeg_fdct_floatPf_ptr - 0x476F9C)
476F96:  LDR             R1, =(sub_47720C+1 - 0x476F9E)
476F98:  ADD             R0, PC; _Z15jpeg_fdct_floatPf_ptr
476F9A:  ADD             R1, PC; sub_47720C
476F9C:  STR             R1, [R4,#4]
476F9E:  LDR             R0, [R0]; jpeg_fdct_float(float *)
476FA0:  STR             R0, [R4,#0x1C]
476FA2:  B               loc_476FB0
476FA4:  LDR             R0, [R5]
476FA6:  STR             R6, [R0,#0x14]
476FA8:  LDR             R0, [R5]
476FAA:  LDR             R1, [R0]
476FAC:  MOV             R0, R5
476FAE:  BLX             R1
476FB0:  VMOV.I32        Q8, #0
476FB4:  ADD.W           R0, R4, #0x20 ; ' '
476FB8:  VST1.32         {D16-D17}, [R0]
476FBC:  ADD.W           R0, R4, #0xC
476FC0:  VST1.32         {D16-D17}, [R0]
476FC4:  POP.W           {R11}
476FC8:  POP             {R4-R7,PC}
