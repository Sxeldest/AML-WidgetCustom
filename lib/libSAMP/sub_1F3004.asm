; =========================================================
; Game Engine Function: sub_1F3004
; Address            : 0x1F3004 - 0x1F3024
; =========================================================

1F3004:  LDRB            R1, [R0,#0x10]
1F3006:  SUBS            R2, R1, #2
1F3008:  CMP             R2, #3
1F300A:  BCS             loc_1F3012
1F300C:  LDRD.W          R1, R0, [R0,#8]
1F3010:  B               loc_1F3020
1F3012:  SUBS            R1, #5
1F3014:  CMP             R1, #2
1F3016:  ITT CS
1F3018:  LDRCS           R0, [R0]
1F301A:  BXCS            LR
1F301C:  LDRD.W          R1, R0, [R0]
1F3020:  ADD             R0, R1
1F3022:  BX              LR
