; =========================================================
; Game Engine Function: _ZN21CTaskSimpleBikeJacked14SetPedPositionEP4CPed
; Address            : 0x5058F6 - 0x50591E
; =========================================================

5058F6:  LDR.W           R0, [R1,#0x590]
5058FA:  CMP             R0, #0
5058FC:  ITT NE
5058FE:  LDRBNE.W        R0, [R1,#0x485]
505902:  MOVSNE.W        R0, R0,LSL#31
505906:  BNE             loc_50590C
505908:  MOVS            R0, #1
50590A:  BX              LR
50590C:  PUSH            {R7,LR}
50590E:  MOV             R7, SP
505910:  MOV             R0, R1; this
505912:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
505916:  POP.W           {R7,LR}
50591A:  MOVS            R0, #1
50591C:  BX              LR
