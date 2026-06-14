; =========================================================
; Game Engine Function: opus_packet_get_nb_channels
; Address            : 0xB1CC8 - 0xB1CD6
; =========================================================

B1CC8:  LDRB            R0, [R0]
B1CCA:  MOVS            R1, #1
B1CCC:  AND.W           R0, R0, #4
B1CD0:  ADD.W           R0, R1, R0,LSR#2
B1CD4:  BX              LR
