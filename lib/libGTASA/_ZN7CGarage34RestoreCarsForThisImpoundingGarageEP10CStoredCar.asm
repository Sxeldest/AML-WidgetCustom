; =========================================================
; Game Engine Function: _ZN7CGarage34RestoreCarsForThisImpoundingGarageEP10CStoredCar
; Address            : 0x312E48 - 0x312F2E
; =========================================================

312E48:  PUSH            {R4,R5,R7,LR}
312E4A:  ADD             R7, SP, #8
312E4C:  MOV             R4, R1
312E4E:  LDRH            R0, [R4,#0x12]
312E50:  CBZ             R0, loc_312E8A
312E52:  MOV             R0, R4; this
312E54:  BLX             j__ZN10CStoredCar10RestoreCarEv; CStoredCar::RestoreCar(void)
312E58:  MOV             R5, R0
312E5A:  CBZ             R5, loc_312E8A
312E5C:  LDR.W           R0, [R5,#0x430]
312E60:  ORR.W           R0, R0, #0x2000
312E64:  STR.W           R0, [R5,#0x430]
312E68:  MOV             R0, R5; this
312E6A:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
312E6E:  LDR.W           R0, [R5,#0x5A4]
312E72:  CMP             R0, #9
312E74:  BEQ             loc_312E80
312E76:  CBNZ            R0, loc_312E86
312E78:  MOV             R0, R5; this
312E7A:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
312E7E:  B               loc_312E86
312E80:  MOV             R0, R5; this
312E82:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
312E86:  MOVS            R0, #0
312E88:  STRH            R0, [R4,#0x12]
312E8A:  LDRH.W          R0, [R4,#0x52]
312E8E:  CBZ             R0, loc_312ECC
312E90:  ADD.W           R0, R4, #0x40 ; '@'; this
312E94:  BLX             j__ZN10CStoredCar10RestoreCarEv; CStoredCar::RestoreCar(void)
312E98:  MOV             R5, R0
312E9A:  CBZ             R5, loc_312ECC
312E9C:  LDR.W           R0, [R5,#0x430]
312EA0:  ORR.W           R0, R0, #0x2000
312EA4:  STR.W           R0, [R5,#0x430]
312EA8:  MOV             R0, R5; this
312EAA:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
312EAE:  LDR.W           R0, [R5,#0x5A4]
312EB2:  CBZ             R0, loc_312EC0
312EB4:  CMP             R0, #9
312EB6:  BNE             loc_312EC6
312EB8:  MOV             R0, R5; this
312EBA:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
312EBE:  B               loc_312EC6
312EC0:  MOV             R0, R5; this
312EC2:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
312EC6:  MOVS            R0, #0
312EC8:  STRH.W          R0, [R4,#0x52]
312ECC:  LDRH.W          R0, [R4,#0x92]
312ED0:  CBZ             R0, loc_312F0E
312ED2:  ADD.W           R0, R4, #0x80; this
312ED6:  BLX             j__ZN10CStoredCar10RestoreCarEv; CStoredCar::RestoreCar(void)
312EDA:  MOV             R5, R0
312EDC:  CBZ             R5, loc_312F0E
312EDE:  LDR.W           R0, [R5,#0x430]
312EE2:  ORR.W           R0, R0, #0x2000
312EE6:  STR.W           R0, [R5,#0x430]
312EEA:  MOV             R0, R5; this
312EEC:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
312EF0:  LDR.W           R0, [R5,#0x5A4]
312EF4:  CBZ             R0, loc_312F02
312EF6:  CMP             R0, #9
312EF8:  BNE             loc_312F08
312EFA:  MOV             R0, R5; this
312EFC:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
312F00:  B               loc_312F08
312F02:  MOV             R0, R5; this
312F04:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
312F08:  MOVS            R0, #0
312F0A:  STRH.W          R0, [R4,#0x92]
312F0E:  LDRH            R0, [R4,#0x12]
312F10:  CMP             R0, #0
312F12:  ITTEE EQ
312F14:  LDRHEQ.W        R0, [R4,#0x52]
312F18:  CMPEQ           R0, #0
312F1A:  MOVNE           R0, #0
312F1C:  POPNE           {R4,R5,R7,PC}
312F1E:  LDRH.W          R1, [R4,#0x92]
312F22:  MOV.W           R0, #0
312F26:  CMP             R1, #0
312F28:  IT EQ
312F2A:  MOVEQ           R0, #1
312F2C:  POP             {R4,R5,R7,PC}
