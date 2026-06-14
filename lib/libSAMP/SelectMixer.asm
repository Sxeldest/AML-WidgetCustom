; =========================================================
; Game Engine Function: SelectMixer
; Address            : 0x1C6894 - 0x1C68AC
; =========================================================

1C6894:  CMP             R0, #2
1C6898:  LDRLS           R1, =(off_23084C - 0x1C68A8)
1C689C:  MOVHI           R0, #0
1C68A0:  ADDLS           R1, PC, R1; off_23084C
1C68A4:  LDRLS           R0, [R1,R0,LSL#2]
1C68A8:  BX              LR
