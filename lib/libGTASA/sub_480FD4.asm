; =========================================================
; Game Engine Function: sub_480FD4
; Address            : 0x480FD4 - 0x481074
; =========================================================

480FD4:  PUSH            {R4-R7,LR}
480FD6:  ADD             R7, SP, #0xC
480FD8:  PUSH.W          {R8-R10}
480FDC:  MOV             R6, R0
480FDE:  MOVW            R0, #0xC9F1
480FE2:  LDR.W           R10, [R6,#4]
480FE6:  MOV             R4, R2
480FE8:  MOVT            R0, #0x3B9A
480FEC:  MOV             R8, R1
480FEE:  CMP             R4, R0
480FF0:  BCC             loc_481006
480FF2:  LDR             R0, [R6]
480FF4:  MOVS            R1, #0x36 ; '6'
480FF6:  STR             R1, [R0,#0x14]
480FF8:  MOVS            R1, #3
480FFA:  LDR             R0, [R6]
480FFC:  STR             R1, [R0,#0x18]
480FFE:  LDR             R0, [R6]
481000:  LDR             R1, [R0]
481002:  MOV             R0, R6
481004:  BLX             R1
481006:  ANDS.W          R0, R4, #7
48100A:  RSB.W           R0, R0, #8
48100E:  IT NE
481010:  ADDNE           R4, R0
481012:  CMP.W           R8, #2
481016:  BCC             loc_48102C
481018:  LDR             R0, [R6]
48101A:  MOVS            R1, #0xE
48101C:  STR             R1, [R0,#0x14]
48101E:  LDR             R0, [R6]
481020:  STR.W           R8, [R0,#0x18]
481024:  LDR             R0, [R6]
481026:  LDR             R1, [R0]
481028:  MOV             R0, R6
48102A:  BLX             R1
48102C:  ADD.W           R9, R4, #0x10
481030:  MOV             R0, R6; int
481032:  MOV             R1, R9; byte_count
481034:  BLX             j__Z14jpeg_get_largeP18jpeg_common_structj; jpeg_get_large(jpeg_common_struct *,uint)
481038:  MOV             R5, R0
48103A:  CBNZ            R5, loc_481050
48103C:  LDR             R0, [R6]
48103E:  MOVS            R1, #0x36 ; '6'
481040:  STR             R1, [R0,#0x14]
481042:  MOVS            R1, #4
481044:  LDR             R0, [R6]
481046:  STR             R1, [R0,#0x18]
481048:  LDR             R0, [R6]
48104A:  LDR             R1, [R0]
48104C:  MOV             R0, R6
48104E:  BLX             R1
481050:  LDR.W           R0, [R10,#0x4C]
481054:  MOVS            R1, #0
481056:  ADD             R0, R9
481058:  STR.W           R0, [R10,#0x4C]
48105C:  ADD.W           R0, R10, R8,LSL#2
481060:  LDR             R2, [R0,#0x3C]
481062:  STRD.W          R2, R4, [R5]
481066:  STR             R1, [R5,#8]
481068:  STR             R5, [R0,#0x3C]
48106A:  ADD.W           R0, R5, #0x10
48106E:  POP.W           {R8-R10}
481072:  POP             {R4-R7,PC}
