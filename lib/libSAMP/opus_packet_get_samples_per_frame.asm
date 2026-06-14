; =========================================================
; Game Engine Function: opus_packet_get_samples_per_frame
; Address            : 0x1A296C - 0x1A29EA
; =========================================================

1A296C:  LDRB            R0, [R0]
1A296E:  TST.W           R0, #0x80
1A2972:  BNE             loc_1A2994
1A2974:  AND.W           R2, R0, #0x60 ; '`'
1A2978:  CMP             R2, #0x60 ; '`'
1A297A:  BNE             loc_1A29B0
1A297C:  PUSH            {R7,LR}
1A297E:  MOV             R7, SP
1A2980:  LSLS            R0, R0, #0x1C
1A2982:  MOV.W           R2, #0x64 ; 'd'
1A2986:  IT MI
1A2988:  MOVMI           R2, #0x32 ; '2'
1A298A:  MOV             R0, R1
1A298C:  MOV             R1, R2
1A298E:  BLX             sub_220A40
1A2992:  POP             {R7,PC}
1A2994:  UBFX.W          R0, R0, #3, #2
1A2998:  LSL.W           R0, R1, R0
1A299C:  MOV             R1, #0x51EB851F
1A29A4:  SMMUL.W         R0, R0, R1
1A29A8:  ASRS            R1, R0, #7
1A29AA:  ADD.W           R0, R1, R0,LSR#31
1A29AE:  BX              LR
1A29B0:  UBFX.W          R0, R0, #3, #2
1A29B4:  CMP             R0, #3
1A29B6:  BNE             loc_1A29D2
1A29B8:  RSB.W           R0, R1, R1,LSL#4
1A29BC:  MOV             R1, #0x10624DD3
1A29C4:  LSLS            R0, R0, #2
1A29C6:  SMMUL.W         R0, R0, R1
1A29CA:  ASRS            R1, R0, #6
1A29CC:  ADD.W           R0, R1, R0,LSR#31
1A29D0:  BX              LR
1A29D2:  LSL.W           R0, R1, R0
1A29D6:  MOV             R1, #0x51EB851F
1A29DE:  SMMUL.W         R0, R0, R1
1A29E2:  ASRS            R1, R0, #5
1A29E4:  ADD.W           R0, R1, R0,LSR#31
1A29E8:  BX              LR
