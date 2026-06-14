; =========================================================
; Game Engine Function: opus_packet_get_nb_channels
; Address            : 0x18FEEC - 0x18FEFA
; =========================================================

18FEEC:  LDRB            R0, [R0]
18FEEE:  MOVS            R1, #1
18FEF0:  AND.W           R0, R0, #4
18FEF4:  ADD.W           R0, R1, R0,LSR#2
18FEF8:  BX              LR
