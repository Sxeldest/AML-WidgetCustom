; =========================================================
; Game Engine Function: sub_107158
; Address            : 0x107158 - 0x10717E
; =========================================================

107158:  SUB.W           R1, R0, #0x3EC
10715C:  CMP             R1, #3
10715E:  BCS             loc_10716A
107160:  LDR             R0, =(unk_B3BCC - 0x107166)
107162:  ADD             R0, PC; unk_B3BCC
107164:  ADD.W           R0, R0, R1,LSL#2
107168:  B               loc_10717A
10716A:  LSRS            R1, R0, #3
10716C:  CMP             R1, #0x7C ; '|'
10716E:  IT HI
107170:  BXHI            LR
107172:  LDR             R1, =(unk_25C9E8 - 0x107178)
107174:  ADD             R1, PC; unk_25C9E8
107176:  ADD.W           R0, R1, R0,LSL#2
10717A:  LDR             R0, [R0]
10717C:  BX              LR
