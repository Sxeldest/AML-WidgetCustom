; =========================================================
; Game Engine Function: _ZN13CCarEnterExit12AddInCarAnimERK8CVehicleP4CPedb
; Address            : 0x509110 - 0x5091B6
; =========================================================

509110:  PUSH            {R4-R7,LR}
509112:  ADD             R7, SP, #0xC
509114:  PUSH.W          {R11}
509118:  MOV             R5, R0
50911A:  MOV             R4, R1
50911C:  LDR             R0, [R5]
50911E:  MOV             R6, R2
509120:  LDR.W           R1, [R0,#0xC0]
509124:  MOV             R0, R5
509126:  BLX             R1
509128:  CMP             R6, #1
50912A:  BNE             loc_509150
50912C:  CBNZ            R0, loc_509152
50912E:  LDR.W           R0, [R5,#0x5A0]
509132:  CMP             R0, #5
509134:  BNE             loc_509184
509136:  LDR.W           R0, [R5,#0x388]
50913A:  LDRB.W          R1, [R0,#0xCD]
50913E:  LDR             R0, [R4,#0x18]
509140:  LSLS            R1, R1, #0x1D
509142:  BMI             loc_50918E
509144:  MOVS            R3, #0
509146:  MOVS            R1, #0
509148:  MOVT            R3, #0x447A
50914C:  MOVS            R2, #0x51 ; 'Q'
50914E:  B               loc_5091A4
509150:  CBZ             R0, loc_50916C
509152:  LDR             R0, [R5]
509154:  LDR             R6, [R4,#0x18]
509156:  LDR.W           R1, [R0,#0xC0]
50915A:  MOV             R0, R5
50915C:  BLX             R1
50915E:  MOVS            R3, #0
509160:  LDR             R1, [R0]
509162:  MOVT            R3, #0x447A
509166:  MOV             R0, R6
509168:  MOVS            R2, #0xC2
50916A:  B               loc_5091A4
50916C:  LDRB.W          R1, [R5,#0x42D]
509170:  MOVS            R3, #0
509172:  LDR             R0, [R4,#0x18]
509174:  MOVT            R3, #0x447A
509178:  LSLS            R1, R1, #0x1C
50917A:  ITE PL
50917C:  MOVPL           R2, #0x40 ; '@'
50917E:  MOVMI           R2, #0x41 ; 'A'
509180:  MOVS            R1, #0
509182:  B               loc_5091A4
509184:  LDRB.W          R1, [R5,#0x42D]
509188:  LDR             R0, [R4,#0x18]; int
50918A:  LSLS            R1, R1, #0x1C
50918C:  BMI             loc_50919A
50918E:  MOVS            R3, #0
509190:  MOVS            R1, #0
509192:  MOVT            R3, #0x447A
509196:  MOVS            R2, #0x3C ; '<'
509198:  B               loc_5091A4
50919A:  MOVS            R3, #0
50919C:  MOVS            R1, #0; int
50919E:  MOVT            R3, #0x447A
5091A2:  MOVS            R2, #0x3D ; '='; unsigned int
5091A4:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5091A8:  MOV             R0, R4; this
5091AA:  POP.W           {R11}
5091AE:  POP.W           {R4-R7,LR}
5091B2:  B.W             sub_190344
