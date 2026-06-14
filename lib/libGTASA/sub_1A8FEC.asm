; =========================================================
; Game Engine Function: sub_1A8FEC
; Address            : 0x1A8FEC - 0x1A9030
; =========================================================

1A8FEC:  PUSH            {R4-R7,LR}
1A8FEE:  ADD             R7, SP, #0xC
1A8FF0:  PUSH.W          {R11}
1A8FF4:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x1A8FFE)
1A8FF6:  MOVS            R4, #0
1A8FF8:  MOVS            R6, #0
1A8FFA:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
1A8FFC:  LDR             R5, [R0]; CEscalators::aArray ...
1A8FFE:  ADDS            R0, R5, R6
1A9000:  MOVS            R1, #0xA8
1A9002:  STRD.W          R4, R4, [R0,#0x70]
1A9006:  STRB.W          R4, [R0,#0x79]
1A900A:  ADDS            R0, #0xA8
1A900C:  BLX             j___aeabi_memclr8_0
1A9010:  ADD.W           R6, R6, #0x150
1A9014:  CMP.W           R6, #0x2A00
1A9018:  BNE             loc_1A8FFE
1A901A:  LDR             R0, =(sub_1A8EC4+1 - 0x1A9024)
1A901C:  MOVS            R1, #0; obj
1A901E:  LDR             R2, =(unk_67A000 - 0x1A9026)
1A9020:  ADD             R0, PC; sub_1A8EC4 ; lpfunc
1A9022:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A9024:  POP.W           {R11}
1A9028:  POP.W           {R4-R7,LR}
1A902C:  B.W             j___cxa_atexit
