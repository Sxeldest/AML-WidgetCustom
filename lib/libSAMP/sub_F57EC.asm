; =========================================================
; Game Engine Function: sub_F57EC
; Address            : 0xF57EC - 0xF5824
; =========================================================

F57EC:  PUSH            {R4,R5,R7,LR}
F57EE:  ADD             R7, SP, #8
F57F0:  SUB             SP, SP, #8
F57F2:  MOV             R4, R2
F57F4:  MOV             R2, R0
F57F6:  MOVW            R0, #0xCA00
F57FA:  MOV             R3, R1
F57FC:  MOVT            R0, #0x3B9A
F5800:  MOVS            R1, #0
F5802:  BLX             sub_221404
F5806:  LDR             R3, [R4,#0x14]
F5808:  CMP             R3, R0
F580A:  BEQ             loc_F5820
F580C:  LDR             R1, =(aAxl - 0xF5816); "AXL" ...
F580E:  MOV             R5, R0
F5810:  LDR             R2, =(aChangeFrameRat_0 - 0xF581A); "Change frame rate %d -> %d" ...
F5812:  ADD             R1, PC; "AXL"
F5814:  STR             R0, [SP,#0x10+var_10]
F5816:  ADD             R2, PC; "Change frame rate %d -> %d"
F5818:  MOVS            R0, #3; prio
F581A:  BLX             __android_log_print
F581E:  STR             R5, [R4,#0x14]
F5820:  ADD             SP, SP, #8
F5822:  POP             {R4,R5,R7,PC}
