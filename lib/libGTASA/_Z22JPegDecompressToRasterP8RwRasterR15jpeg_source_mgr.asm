; =========================================================
; Game Engine Function: _Z22JPegDecompressToRasterP8RwRasterR15jpeg_source_mgr
; Address            : 0x481F74 - 0x4820B6
; =========================================================

481F74:  PUSH            {R4-R7,LR}
481F76:  ADD             R7, SP, #0xC
481F78:  PUSH.W          {R8-R11}
481F7C:  SUB.W           SP, SP, #0x244
481F80:  MOV             R4, R0
481F82:  LDR             R0, =(__stack_chk_guard_ptr - 0x481F8A)
481F84:  MOV             R5, R1
481F86:  ADD             R0, PC; __stack_chk_guard_ptr
481F88:  LDR             R0, [R0]; __stack_chk_guard
481F8A:  LDR             R0, [R0]
481F8C:  STR             R0, [SP,#0x260+var_20]
481F8E:  ADD             R0, SP, #0x260+var_254
481F90:  BLX             j__Z14jpeg_std_errorP14jpeg_error_mgr; jpeg_std_error(jpeg_error_mgr *)
481F94:  ADD             R6, SP, #0x260+var_1D0
481F96:  STR             R0, [SP,#0x260+var_1D0]
481F98:  MOVS            R1, #0x3E ; '>'
481F9A:  MOV.W           R2, #0x1B0
481F9E:  MOV             R0, R6
481FA0:  BLX             j__Z21jpeg_CreateDecompressP22jpeg_decompress_structij; jpeg_CreateDecompress(jpeg_decompress_struct *,int,uint)
481FA4:  MOV             R0, R6
481FA6:  MOVS            R1, #1
481FA8:  STR             R5, [SP,#0x260+var_1B8]
481FAA:  BLX             j__Z16jpeg_read_headerP22jpeg_decompress_structh; jpeg_read_header(jpeg_decompress_struct *,uchar)
481FAE:  CMP             R0, #1
481FB0:  BNE             loc_48206C
481FB2:  MOVS            R0, #2
481FB4:  STR             R0, [SP,#0x260+var_18C]
481FB6:  ADD             R0, SP, #0x260+var_1D0
481FB8:  BLX             j__Z21jpeg_start_decompressP22jpeg_decompress_struct; jpeg_start_decompress(jpeg_decompress_struct *)
481FBC:  CMP             R0, #0
481FBE:  BEQ             loc_48206C
481FC0:  MOV             R0, R4
481FC2:  MOVS            R1, #0
481FC4:  MOVS            R2, #1
481FC6:  MOVS            R5, #0
481FC8:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
481FCC:  LDR             R1, =(pDst_ptr - 0x481FD4)
481FCE:  LDR             R2, [SP,#0x260+var_170]
481FD0:  ADD             R1, PC; pDst_ptr
481FD2:  LDR             R3, [SP,#0x260+var_158]
481FD4:  LDR             R1, [R1]; pDst
481FD6:  CMP             R3, R2
481FD8:  STR             R0, [R1]
481FDA:  BCS             loc_482076
481FDC:  LDR             R0, =(pDst_ptr - 0x481FEC)
481FDE:  ADD.W           R10, SP, #0x260+var_25C
481FE2:  LDR.W           R11, =(unk_9EC2C0 - 0x481FF0)
481FE6:  MOVS            R6, #0xFF
481FE8:  ADD             R0, PC; pDst_ptr
481FEA:  ADD             R5, SP, #0x260+var_258
481FEC:  ADD             R11, PC; unk_9EC2C0
481FEE:  LDR.W           R9, [R0]; pDst
481FF2:  LDR             R0, =(unk_9EC2C0 - 0x481FFC)
481FF4:  MOV             R1, R10
481FF6:  MOVS            R2, #1
481FF8:  ADD             R0, PC; unk_9EC2C0
481FFA:  STR             R0, [SP,#0x260+var_25C]
481FFC:  ADD             R0, SP, #0x260+var_1D0
481FFE:  BLX             j__Z19jpeg_read_scanlinesP22jpeg_decompress_structPPhj; jpeg_read_scanlines(jpeg_decompress_struct *,uchar **,uint)
482002:  CMP             R0, #1
482004:  BNE             loc_482082
482006:  MOV.W           R8, #0
48200A:  ADD.W           R0, R11, R8
48200E:  STR             R6, [SP,#0x260+var_260]; unsigned __int8
482010:  LDRB.W          R1, [R0,#0x100]; unsigned __int8
482014:  LDRB.W          R2, [R0,#0x101]; unsigned __int8
482018:  LDRB.W          R3, [R0,#0x102]; unsigned __int8
48201C:  MOV             R0, R5; this
48201E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
482022:  LDRB.W          R0, [R4,#0x22]
482026:  LSLS            R1, R0, #8
482028:  MOV             R0, R5
48202A:  BLX             j__Z13RwRGBAToPixelP6RwRGBAi; RwRGBAToPixel(RwRGBA *,int)
48202E:  LDR.W           R1, [R9]
482032:  ADD.W           R8, R8, #4
482036:  CMP.W           R8, #0x800
48203A:  STR             R0, [R1]
48203C:  LDR.W           R0, [R9]
482040:  ADD.W           R0, R0, #4
482044:  STR.W           R0, [R9]
482048:  BNE             loc_48200A
48204A:  LDR             R0, [SP,#0x260+var_170]
48204C:  LDR             R1, [SP,#0x260+var_158]
48204E:  CMP             R1, R0
482050:  BCC             loc_481FF2
482052:  MOV             R0, R4
482054:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
482058:  LDR             R0, =(pDst_ptr - 0x482060)
48205A:  MOVS            R1, #0
48205C:  ADD             R0, PC; pDst_ptr
48205E:  LDR             R0, [R0]; pDst
482060:  STR             R1, [R0]
482062:  ADD             R0, SP, #0x260+var_1D0
482064:  BLX             j__Z22jpeg_finish_decompressP22jpeg_decompress_struct; jpeg_finish_decompress(jpeg_decompress_struct *)
482068:  MOVS            R5, #1
48206A:  B               loc_482092
48206C:  ADD             R0, SP, #0x260+var_1D0
48206E:  BLX             j__Z23jpeg_destroy_decompressP22jpeg_decompress_struct; jpeg_destroy_decompress(jpeg_decompress_struct *)
482072:  MOVS            R5, #0
482074:  B               loc_482098
482076:  MOV             R0, R4
482078:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
48207C:  LDR             R0, =(pDst_ptr - 0x482082)
48207E:  ADD             R0, PC; pDst_ptr
482080:  B               loc_48208E
482082:  MOV             R0, R4
482084:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
482088:  LDR             R0, =(pDst_ptr - 0x482090)
48208A:  MOVS            R5, #0
48208C:  ADD             R0, PC; pDst_ptr
48208E:  LDR             R0, [R0]; pDst
482090:  STR             R5, [R0]
482092:  ADD             R0, SP, #0x260+var_1D0
482094:  BLX             j__Z23jpeg_destroy_decompressP22jpeg_decompress_struct; jpeg_destroy_decompress(jpeg_decompress_struct *)
482098:  LDR             R0, =(__stack_chk_guard_ptr - 0x4820A0)
48209A:  LDR             R1, [SP,#0x260+var_20]
48209C:  ADD             R0, PC; __stack_chk_guard_ptr
48209E:  LDR             R0, [R0]; __stack_chk_guard
4820A0:  LDR             R0, [R0]
4820A2:  SUBS            R0, R0, R1
4820A4:  ITTTT EQ
4820A6:  MOVEQ           R0, R5
4820A8:  ADDEQ.W         SP, SP, #0x244
4820AC:  POPEQ.W         {R8-R11}
4820B0:  POPEQ           {R4-R7,PC}
4820B2:  BLX             __stack_chk_fail
