; =========================================================
; Game Engine Function: _ZN8CVehicle19SetVehicleCreatedByEib
; Address            : 0x591C6C - 0x591CA0
; =========================================================

591C6C:  PUSH            {R4,R5,R7,LR}
591C6E:  ADD             R7, SP, #8
591C70:  MOV             R5, R1
591C72:  MOV             R4, R0
591C74:  CMP             R2, #1
591C76:  BNE             loc_591C7E
591C78:  STRB.W          R5, [R4,#0x4A8]
591C7C:  POP             {R4,R5,R7,PC}
591C7E:  LDRB.W          R0, [R4,#0x4A8]
591C82:  CMP             R0, R5
591C84:  IT EQ
591C86:  POPEQ           {R4,R5,R7,PC}
591C88:  MOV             R0, R4; this
591C8A:  MOVS            R1, #(stderr+1); CVehicle *
591C8C:  BLX.W           j__ZN8CCarCtrl14UpdateCarCountEP8CVehicleh; CCarCtrl::UpdateCarCount(CVehicle *,uchar)
591C90:  STRB.W          R5, [R4,#0x4A8]
591C94:  MOV             R0, R4; this
591C96:  MOVS            R1, #0; CVehicle *
591C98:  POP.W           {R4,R5,R7,LR}
591C9C:  B.W             sub_18ECC8
