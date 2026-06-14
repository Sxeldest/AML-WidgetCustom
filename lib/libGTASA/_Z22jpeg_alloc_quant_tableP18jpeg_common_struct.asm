; =========================================================
; Game Engine Function: _Z22jpeg_alloc_quant_tableP18jpeg_common_struct
; Address            : 0x47A0B4 - 0x47A0CA
; =========================================================

47A0B4:  PUSH            {R4,R6,R7,LR}
47A0B6:  ADD             R7, SP, #8
47A0B8:  LDR             R1, [R0,#4]
47A0BA:  MOVS            R2, #0x82
47A0BC:  MOVS            R4, #0
47A0BE:  LDR             R3, [R1]
47A0C0:  MOVS            R1, #0
47A0C2:  BLX             R3
47A0C4:  STRB.W          R4, [R0,#0x80]
47A0C8:  POP             {R4,R6,R7,PC}
