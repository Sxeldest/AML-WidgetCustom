; =========================================================
; Game Engine Function: _ZN15CPedClothesDesc18SetTextureAndModelEjji
; Address            : 0x457368 - 0x45739C
; =========================================================

457368:  CMP             R3, #0x12
45736A:  BCS             loc_45737E
45736C:  MOV             R12, #0x3E00F
457374:  LSR.W           R12, R12, R3
457378:  MOVS.W          R12, R12,LSL#31
45737C:  BNE             loc_457386
45737E:  ADD.W           R0, R0, R3,LSL#2
457382:  STR             R1, [R0,#0x28]
457384:  BX              LR
457386:  LDR.W           R12, =(dword_619090 - 0x45738E)
45738A:  ADD             R12, PC; dword_619090
45738C:  LDR.W           R12, [R12,R3,LSL#2]
457390:  ADD.W           R3, R0, R3,LSL#2
457394:  STR             R1, [R3,#0x28]
457396:  STR.W           R2, [R0,R12,LSL#2]
45739A:  BX              LR
