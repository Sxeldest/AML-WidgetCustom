; =========================================================
; Game Engine Function: _Z10jpeg_abortP18jpeg_common_struct
; Address            : 0x47A070 - 0x47A09A
; =========================================================

47A070:  PUSH            {R4,R6,R7,LR}
47A072:  ADD             R7, SP, #8
47A074:  MOV             R4, R0
47A076:  LDR             R0, [R4,#4]
47A078:  CMP             R0, #0
47A07A:  IT EQ
47A07C:  POPEQ           {R4,R6,R7,PC}
47A07E:  LDR             R2, [R0,#0x24]
47A080:  MOV             R0, R4
47A082:  MOVS            R1, #1
47A084:  BLX             R2
47A086:  LDRB            R0, [R4,#0x10]
47A088:  CMP             R0, #0
47A08A:  ITEEE EQ
47A08C:  MOVEQ           R0, #0x64 ; 'd'
47A08E:  MOVNE           R0, #0
47A090:  STRNE.W         R0, [R4,#0x10C]
47A094:  MOVNE           R0, #0xC8
47A096:  STR             R0, [R4,#0x14]
47A098:  POP             {R4,R6,R7,PC}
