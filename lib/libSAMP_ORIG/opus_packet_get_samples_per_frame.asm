; =========================================================
; Game Engine Function: opus_packet_get_samples_per_frame
; Address            : 0xC4BAC - 0xC4C2A
; =========================================================

C4BAC:  LDRB            R0, [R0]
C4BAE:  TST.W           R0, #0x80
C4BB2:  BNE             loc_C4BD4
C4BB4:  AND.W           R2, R0, #0x60 ; '`'
C4BB8:  CMP             R2, #0x60 ; '`'
C4BBA:  BNE             loc_C4BF0
C4BBC:  PUSH            {R7,LR}
C4BBE:  MOV             R7, SP
C4BC0:  LSLS            R0, R0, #0x1C
C4BC2:  MOV.W           R2, #0x64 ; 'd'
C4BC6:  IT MI
C4BC8:  MOVMI           R2, #0x32 ; '2'
C4BCA:  MOV             R0, R1
C4BCC:  MOV             R1, R2
C4BCE:  BLX             sub_108848
C4BD2:  POP             {R7,PC}
C4BD4:  UBFX.W          R0, R0, #3, #2
C4BD8:  LSL.W           R0, R1, R0
C4BDC:  MOV             R1, #0x51EB851F
C4BE4:  SMMUL.W         R0, R0, R1
C4BE8:  ASRS            R1, R0, #7
C4BEA:  ADD.W           R0, R1, R0,LSR#31
C4BEE:  BX              LR
C4BF0:  UBFX.W          R0, R0, #3, #2
C4BF4:  CMP             R0, #3
C4BF6:  BNE             loc_C4C12
C4BF8:  RSB.W           R0, R1, R1,LSL#4
C4BFC:  MOV             R1, #0x10624DD3
C4C04:  LSLS            R0, R0, #2
C4C06:  SMMUL.W         R0, R0, R1
C4C0A:  ASRS            R1, R0, #6
C4C0C:  ADD.W           R0, R1, R0,LSR#31
C4C10:  BX              LR
C4C12:  LSL.W           R0, R1, R0
C4C16:  MOV             R1, #0x51EB851F
C4C1E:  SMMUL.W         R0, R0, R1
C4C22:  ASRS            R1, R0, #5
C4C24:  ADD.W           R0, R1, R0,LSR#31
C4C28:  BX              LR
