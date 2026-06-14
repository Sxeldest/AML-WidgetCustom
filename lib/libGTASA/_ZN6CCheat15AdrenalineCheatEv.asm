; =========================================================
; Game Engine Function: _ZN6CCheat15AdrenalineCheatEv
; Address            : 0x2FE414 - 0x2FE456
; =========================================================

2FE414:  PUSH            {R7,LR}
2FE416:  MOV             R7, SP
2FE418:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE420)
2FE41A:  MOVS            R2, #0
2FE41C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE41E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FE420:  LDRB.W          R1, [R0,#(byte_796843 - 0x7967F4)]
2FE424:  CMP             R1, #0
2FE426:  IT EQ
2FE428:  MOVEQ           R2, #1; int
2FE42A:  STRB.W          R2, [R0,#(byte_796843 - 0x7967F4)]
2FE42E:  BEQ             loc_2FE446
2FE430:  MOV.W           R0, #0xFFFFFFFF; int
2FE434:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE438:  LDR.W           R0, [R0,#0x444]
2FE43C:  LDRH            R1, [R0,#0x34]
2FE43E:  BIC.W           R1, R1, #2
2FE442:  STRH            R1, [R0,#0x34]
2FE444:  POP             {R7,PC}
2FE446:  LDR             R0, =(MI_PICKUP_ADRENALINE_ptr - 0x2FE44E)
2FE448:  MOVS            R1, #0; unsigned __int16
2FE44A:  ADD             R0, PC; MI_PICKUP_ADRENALINE_ptr
2FE44C:  LDR             R0, [R0]; MI_PICKUP_ADRENALINE
2FE44E:  LDRH            R0, [R0]; this
2FE450:  BLX             j__ZN8CPickups29GivePlayerGoodiesWithPickUpMIEti; CPickups::GivePlayerGoodiesWithPickUpMI(ushort,int)
2FE454:  POP             {R7,PC}
