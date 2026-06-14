; =========================================================
; Game Engine Function: sub_20E8E2
; Address            : 0x20E8E2 - 0x20E90E
; =========================================================

20E8E2:  LDRB            R1, [R0]
20E8E4:  LSLS            R2, R1, #0x1F
20E8E6:  BNE             loc_20E8FC
20E8E8:  MOV.W           R2, #0xFFFFFFFF
20E8EC:  ADD.W           R1, R2, R1,LSR#1
20E8F0:  LSLS            R2, R1, #1
20E8F2:  STRB            R2, [R0]
20E8F4:  ADD.W           R0, R0, R1,LSL#2
20E8F8:  ADDS            R0, #4
20E8FA:  B               loc_20E908
20E8FC:  LDRD.W          R1, R2, [R0,#4]
20E900:  SUBS            R1, #1
20E902:  STR             R1, [R0,#4]
20E904:  ADD.W           R0, R2, R1,LSL#2
20E908:  MOVS            R1, #0
20E90A:  STR             R1, [R0]
20E90C:  BX              LR
