; =========================================================
; Game Engine Function: png_zstream_error
; Address            : 0x1EE478 - 0x1EE4A0
; =========================================================

1EE478:  LDR.W           R2, [R0,#0x15C]
1EE47C:  CMP             R2, #0
1EE47E:  IT NE
1EE480:  BXNE            LR
1EE482:  ADDS            R1, #7
1EE484:  CMP             R1, #9
1EE486:  BHI             loc_1EE496
1EE488:  LDR             R2, =(off_660950 - 0x1EE48E); "unexpected zlib return" ...
1EE48A:  ADD             R2, PC; off_660950
1EE48C:  LDR.W           R1, [R2,R1,LSL#2]
1EE490:  STR.W           R1, [R0,#0x15C]
1EE494:  BX              LR
1EE496:  LDR             R1, =(aUnexpectedZlib - 0x1EE49C); "unexpected zlib return code"
1EE498:  ADD             R1, PC; "unexpected zlib return code"
1EE49A:  STR.W           R1, [R0,#0x15C]
1EE49E:  BX              LR
