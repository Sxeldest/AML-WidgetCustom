; =========================================================
; Game Engine Function: sub_1A6118
; Address            : 0x1A6118 - 0x1A6134
; =========================================================

1A6118:  PUSH            {R4,R6,R7,LR}
1A611A:  ADD             R7, SP, #8
1A611C:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x1A6122)
1A611E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
1A6120:  LDR             R4, [R0]; CWorld::Players ...
1A6122:  ADD.W           R0, R4, #0x198; this
1A6126:  BLX             j__ZN14CPlayerPedDataD2Ev; CPlayerPedData::~CPlayerPedData()
1A612A:  ADDS            R0, R4, #4; this
1A612C:  POP.W           {R4,R6,R7,LR}
1A6130:  B.W             sub_1A0EC0
