; =========================================================
; Game Engine Function: _ZN7CGarage25RestoreCarsForThisHideOutEP10CStoredCar
; Address            : 0x312A6C - 0x312B2A
; =========================================================

312A6C:  PUSH            {R4,R6,R7,LR}
312A6E:  ADD             R7, SP, #8
312A70:  MOV             R4, R1
312A72:  LDRH            R0, [R4,#0x12]
312A74:  CBZ             R0, loc_312A92
312A76:  MOV             R0, R4; this
312A78:  BLX             j__ZN10CStoredCar10RestoreCarEv; CStoredCar::RestoreCar(void)
312A7C:  CBZ             R0, loc_312A92
312A7E:  LDR.W           R1, [R0,#0x430]
312A82:  BIC.W           R1, R1, #0x2000; CEntity *
312A86:  STR.W           R1, [R0,#0x430]
312A8A:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
312A8E:  MOVS            R0, #0
312A90:  STRH            R0, [R4,#0x12]
312A92:  LDRH.W          R0, [R4,#0x52]
312A96:  CBZ             R0, loc_312AB8
312A98:  ADD.W           R0, R4, #0x40 ; '@'; this
312A9C:  BLX             j__ZN10CStoredCar10RestoreCarEv; CStoredCar::RestoreCar(void)
312AA0:  CBZ             R0, loc_312AB8
312AA2:  LDR.W           R1, [R0,#0x430]
312AA6:  BIC.W           R1, R1, #0x2000; CEntity *
312AAA:  STR.W           R1, [R0,#0x430]
312AAE:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
312AB2:  MOVS            R0, #0
312AB4:  STRH.W          R0, [R4,#0x52]
312AB8:  LDRH.W          R0, [R4,#0x92]
312ABC:  CBZ             R0, loc_312ADE
312ABE:  ADD.W           R0, R4, #0x80; this
312AC2:  BLX             j__ZN10CStoredCar10RestoreCarEv; CStoredCar::RestoreCar(void)
312AC6:  CBZ             R0, loc_312ADE
312AC8:  LDR.W           R1, [R0,#0x430]
312ACC:  BIC.W           R1, R1, #0x2000; CEntity *
312AD0:  STR.W           R1, [R0,#0x430]
312AD4:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
312AD8:  MOVS            R0, #0
312ADA:  STRH.W          R0, [R4,#0x92]
312ADE:  LDRH.W          R0, [R4,#0xD2]
312AE2:  CBZ             R0, loc_312B04
312AE4:  ADD.W           R0, R4, #0xC0; this
312AE8:  BLX             j__ZN10CStoredCar10RestoreCarEv; CStoredCar::RestoreCar(void)
312AEC:  CBZ             R0, loc_312B04
312AEE:  LDR.W           R1, [R0,#0x430]
312AF2:  BIC.W           R1, R1, #0x2000; CEntity *
312AF6:  STR.W           R1, [R0,#0x430]
312AFA:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
312AFE:  MOVS            R0, #0
312B00:  STRH.W          R0, [R4,#0xD2]
312B04:  LDRH            R0, [R4,#0x12]
312B06:  CBNZ            R0, loc_312B18
312B08:  LDRH.W          R0, [R4,#0x52]
312B0C:  CMP             R0, #0
312B0E:  ITT EQ
312B10:  LDRHEQ.W        R0, [R4,#0x92]
312B14:  CMPEQ           R0, #0
312B16:  BEQ             loc_312B1C
312B18:  MOVS            R0, #0
312B1A:  POP             {R4,R6,R7,PC}
312B1C:  LDRH.W          R1, [R4,#0xD2]
312B20:  MOVS            R0, #0
312B22:  CMP             R1, #0
312B24:  IT EQ
312B26:  MOVEQ           R0, #1
312B28:  POP             {R4,R6,R7,PC}
