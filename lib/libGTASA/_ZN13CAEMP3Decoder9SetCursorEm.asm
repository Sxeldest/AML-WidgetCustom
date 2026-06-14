; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder9SetCursorEm
; Address            : 0x27F06A - 0x27F0A8
; =========================================================

27F06A:  PUSH            {R4,R6,R7,LR}
27F06C:  ADD             R7, SP, #8
27F06E:  SUB             SP, SP, #8
27F070:  MOV             R4, R0
27F072:  LDRB            R0, [R4,#8]
27F074:  CBZ             R0, loc_27F0A4
27F076:  LDR             R0, [R4,#0x34]
27F078:  ADD             R3, SP, #0x10+var_C
27F07A:  MOVS            R2, #0
27F07C:  MULS            R0, R1
27F07E:  MOV             R1, #0x10624DD3
27F086:  UMULL.W         R0, R1, R0, R1
27F08A:  MOVS            R0, #0
27F08C:  STR             R0, [SP,#0x10+var_C]
27F08E:  LDR             R0, [R4,#0x28]
27F090:  LSRS            R1, R1, #6
27F092:  BLX             j_mpg123_feedseek
27F096:  CMP             R0, #0
27F098:  BLT             loc_27F0A4
27F09A:  LDR             R1, [SP,#0x10+var_C]; int
27F09C:  MOVS            R2, #0; int
27F09E:  LDR             R0, [R4,#0xC]; this
27F0A0:  BLX             j__ZN13CAEDataStream4SeekEli; CAEDataStream::Seek(long,int)
27F0A4:  ADD             SP, SP, #8
27F0A6:  POP             {R4,R6,R7,PC}
