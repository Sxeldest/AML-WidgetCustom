; =========================================================
; Game Engine Function: _Z23jpeg_write_coefficientsP20jpeg_compress_structPP20jvirt_barray_control
; Address            : 0x47B100 - 0x47B204
; =========================================================

47B100:  PUSH            {R4-R7,LR}
47B102:  ADD             R7, SP, #0xC
47B104:  PUSH.W          {R11}
47B108:  MOV             R4, R0
47B10A:  MOV             R5, R1
47B10C:  LDR             R0, [R4,#0x14]
47B10E:  CMP             R0, #0x64 ; 'd'
47B110:  BEQ             loc_47B126
47B112:  LDR             R0, [R4]
47B114:  MOVS            R1, #0x14
47B116:  STR             R1, [R0,#0x14]
47B118:  LDR             R0, [R4]
47B11A:  LDR             R1, [R4,#0x14]
47B11C:  STR             R1, [R0,#0x18]
47B11E:  LDR             R0, [R4]
47B120:  LDR             R1, [R0]
47B122:  MOV             R0, R4
47B124:  BLX             R1
47B126:  MOV             R0, R4
47B128:  MOVS            R1, #0
47B12A:  BLX             j__Z20jpeg_suppress_tablesP20jpeg_compress_structh; jpeg_suppress_tables(jpeg_compress_struct *,uchar)
47B12E:  LDR             R0, [R4]
47B130:  LDR             R1, [R0,#0x10]
47B132:  MOV             R0, R4
47B134:  BLX             R1
47B136:  LDR             R0, [R4,#0x18]
47B138:  LDR             R1, [R0,#8]
47B13A:  MOV             R0, R4
47B13C:  BLX             R1
47B13E:  MOVS            R6, #1
47B140:  MOV             R0, R4
47B142:  MOVS            R1, #1
47B144:  STR             R6, [R4,#0x24]
47B146:  BLX             j__Z22jinit_c_master_controlP20jpeg_compress_structh; jinit_c_master_control(jpeg_compress_struct *,uchar)
47B14A:  LDRB.W          R0, [R4,#0xB1]
47B14E:  CBZ             R0, loc_47B156
47B150:  LDR             R0, [R4]
47B152:  STR             R6, [R0,#0x14]
47B154:  B               loc_47B164
47B156:  LDRB.W          R0, [R4,#0xD4]
47B15A:  CMP             R0, #0
47B15C:  BEQ             loc_47B1FC
47B15E:  LDR             R0, [R4]
47B160:  MOVS            R1, #0x30 ; '0'
47B162:  STR             R1, [R0,#0x14]
47B164:  LDR             R0, [R4]
47B166:  LDR             R1, [R0]
47B168:  MOV             R0, R4
47B16A:  BLX             R1
47B16C:  LDR             R0, [R4,#4]
47B16E:  MOVS            R1, #1
47B170:  MOVS            R2, #0x44 ; 'D'
47B172:  LDR             R3, [R0]
47B174:  MOV             R0, R4
47B176:  BLX             R3
47B178:  MOV             R6, R0
47B17A:  LDR             R0, =(sub_47B47C+1 - 0x47B186)
47B17C:  LDR             R1, =(sub_47B42A+1 - 0x47B18C)
47B17E:  MOV.W           R2, #0x500
47B182:  ADD             R0, PC; sub_47B47C
47B184:  STR.W           R6, [R4,#0x148]
47B188:  ADD             R1, PC; sub_47B42A
47B18A:  STRD.W          R1, R0, [R6]
47B18E:  MOVS            R1, #1
47B190:  STR             R5, [R6,#0x18]
47B192:  LDR             R0, [R4,#4]
47B194:  LDR             R3, [R0,#4]
47B196:  MOV             R0, R4
47B198:  BLX             R3
47B19A:  MOV.W           R1, #0x500; unsigned int
47B19E:  MOV             R5, R0
47B1A0:  BLX             j__Z9jzero_farPvj; jzero_far(void *,uint)
47B1A4:  ADR             R0, dword_47B210
47B1A6:  VDUP.32         Q9, R5
47B1AA:  VLD1.64         {D16-D17}, [R0@128]
47B1AE:  ADR             R0, dword_47B220
47B1B0:  VADD.I32        Q8, Q9, Q8
47B1B4:  VLD1.64         {D20-D21}, [R0@128]
47B1B8:  ADD.W           R0, R5, #0x480
47B1BC:  VADD.I32        Q9, Q9, Q10
47B1C0:  STR             R5, [R6,#0x1C]
47B1C2:  STR             R0, [R6,#0x40]
47B1C4:  ADD.W           R0, R6, #0x20 ; ' '
47B1C8:  VST1.32         {D18-D19}, [R0]
47B1CC:  ADD.W           R0, R6, #0x30 ; '0'
47B1D0:  VST1.32         {D16-D17}, [R0]
47B1D4:  MOV             R0, R4
47B1D6:  BLX             j__Z19jinit_marker_writerP20jpeg_compress_struct; jinit_marker_writer(jpeg_compress_struct *)
47B1DA:  LDR             R0, [R4,#4]
47B1DC:  LDR             R1, [R0,#0x18]
47B1DE:  MOV             R0, R4
47B1E0:  BLX             R1
47B1E2:  LDR.W           R0, [R4,#0x14C]
47B1E6:  LDR             R1, [R0]
47B1E8:  MOV             R0, R4
47B1EA:  BLX             R1
47B1EC:  MOVS            R0, #0x67 ; 'g'
47B1EE:  STR             R0, [R4,#0x14]
47B1F0:  MOVS            R0, #0
47B1F2:  STR.W           R0, [R4,#0xD0]
47B1F6:  POP.W           {R11}
47B1FA:  POP             {R4-R7,PC}
47B1FC:  MOV             R0, R4
47B1FE:  BLX             j__Z18jinit_huff_encoderP20jpeg_compress_struct; jinit_huff_encoder(jpeg_compress_struct *)
47B202:  B               loc_47B16C
