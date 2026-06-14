; =========================================================
; Game Engine Function: _Z27jpeg_calc_output_dimensionsP22jpeg_decompress_struct
; Address            : 0x47F5D0 - 0x47F626
; =========================================================

47F5D0:  PUSH            {R4,R6,R7,LR}
47F5D2:  ADD             R7, SP, #8
47F5D4:  MOV             R4, R0
47F5D6:  LDR             R0, [R4,#0x14]
47F5D8:  CMP             R0, #0xCA
47F5DA:  BEQ             loc_47F5F0
47F5DC:  LDR             R0, [R4]
47F5DE:  MOVS            R1, #0x14
47F5E0:  STR             R1, [R0,#0x14]
47F5E2:  LDR             R0, [R4]
47F5E4:  LDR             R1, [R4,#0x14]
47F5E6:  STR             R1, [R0,#0x18]
47F5E8:  LDR             R0, [R4]
47F5EA:  LDR             R1, [R0]
47F5EC:  MOV             R0, R4
47F5EE:  BLX             R1
47F5F0:  LDRD.W          R0, R1, [R4,#0x1C]
47F5F4:  LDR             R2, [R4,#0x2C]
47F5F6:  LDR.W           R12, =(unk_61D590 - 0x47F608)
47F5FA:  LDRB.W          R3, [R4,#0x4A]
47F5FE:  STRD.W          R0, R1, [R4,#0x5C]
47F602:  SUBS            R0, R2, #1
47F604:  ADD             R12, PC; unk_61D590
47F606:  ADD.W           R1, R4, #0x24 ; '$'
47F60A:  CMP             R0, #5
47F60C:  IT CC
47F60E:  ADDCC.W         R1, R12, R0,LSL#2
47F612:  CMP             R3, #0
47F614:  LDR             R0, [R1]
47F616:  MOV.W           R1, #1
47F61A:  STR             R0, [R4,#0x64]
47F61C:  IT NE
47F61E:  MOVNE           R0, R1
47F620:  STRD.W          R0, R1, [R4,#0x68]
47F624:  POP             {R4,R6,R7,PC}
