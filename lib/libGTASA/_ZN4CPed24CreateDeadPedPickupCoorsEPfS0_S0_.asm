; =========================================================
; Game Engine Function: _ZN4CPed24CreateDeadPedPickupCoorsEPfS0_S0_
; Address            : 0x321108 - 0x321132
; =========================================================

321108:  PUSH            {R7,LR}; float *
32110A:  MOV             R7, SP
32110C:  SUB             SP, SP, #8
32110E:  MOV             R12, R1
321110:  LDR             R1, [R0,#0x14]
321112:  ADD.W           LR, R1, #0x30 ; '0'
321116:  CMP             R1, #0
321118:  IT EQ
32111A:  ADDEQ.W         LR, R0, #4
32111E:  LDM.W           LR, {R0,R1,LR}; float
321122:  STRD.W          R2, R3, [SP,#0x10+var_10]; float *
321126:  MOV             R3, R12; float
321128:  MOV             R2, LR; float
32112A:  BLX             j__ZN8CPickups29CreatePickupCoorsCloseToCoorsEfffPfS0_S0_; CPickups::CreatePickupCoorsCloseToCoors(float,float,float,float *,float *,float *)
32112E:  ADD             SP, SP, #8
321130:  POP             {R7,PC}
