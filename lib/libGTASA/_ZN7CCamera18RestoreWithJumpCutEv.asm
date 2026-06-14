; =========================================================
; Game Engine Function: _ZN7CCamera18RestoreWithJumpCutEv
; Address            : 0x3DB104 - 0x3DB2C4
; =========================================================

3DB104:  PUSH            {R4,R5,R7,LR}
3DB106:  ADD             R7, SP, #8
3DB108:  MOV             R4, R0
3DB10A:  MOVS            R0, #1
3DB10C:  MOVS            R1, #0
3DB10E:  MOVS            R2, #2
3DB110:  STRB.W          R0, [R4,#0x29]
3DB114:  STRB.W          R0, [R4,#0x2E]
3DB118:  STRB.W          R1, [R4,#0x2A]
3DB11C:  STRH.W          R2, [R4,#0xBC4]
3DB120:  MOVS            R2, #0x1E
3DB122:  STR.W           R1, [R4,#0xAC]
3DB126:  STR.W           R1, [R4,#0x13C]
3DB12A:  STRB.W          R1, [R4,#0x31]
3DB12E:  STRB.W          R1, [R4,#0x2F]
3DB132:  STR.W           R2, [R4,#0xBBC]
3DB136:  STRB.W          R1, [R4,#0x4E]
3DB13A:  STRB            R0, [R4,#0x1C]
3DB13C:  MOV.W           R0, #0xFFFFFFFF; int
3DB140:  STRB.W          R1, [R4,#0x3F]
3DB144:  STRB.W          R1, [R4,#0x40]
3DB148:  MOVS            R1, #0; bool
3DB14A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DB14E:  CBZ             R0, loc_3DB174
3DB150:  MOVS            R0, #0x12
3DB152:  ADDW            R5, R4, #0x8DC
3DB156:  STRH.W          R0, [R4,#0xBC0]
3DB15A:  LDR.W           R0, [R4,#0x8DC]; this
3DB15E:  CMP             R0, #0
3DB160:  ITT NE
3DB162:  MOVNE           R1, R5; CEntity **
3DB164:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DB168:  MOV.W           R0, #0xFFFFFFFF; int
3DB16C:  MOVS            R1, #0; bool
3DB16E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DB172:  B               loc_3DB1A4
3DB174:  MOVS            R0, #4
3DB176:  ADDW            R5, R4, #0x8DC
3DB17A:  STRH.W          R0, [R4,#0xBC0]
3DB17E:  LDR.W           R0, [R4,#0x8DC]; this
3DB182:  CMP             R0, #0
3DB184:  ITT NE
3DB186:  MOVNE           R1, R5; CEntity **
3DB188:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DB18C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DB198)
3DB18E:  MOV.W           R2, #0x194
3DB192:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DB19A)
3DB194:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DB196:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DB198:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DB19A:  LDR             R1, [R1]; CWorld::Players ...
3DB19C:  LDR             R0, [R0]; CWorld::PlayerInFocus
3DB19E:  SMULBB.W        R0, R0, R2
3DB1A2:  LDR             R0, [R1,R0]; this
3DB1A4:  MOV             R1, R5; CEntity **
3DB1A6:  STR             R0, [R5]
3DB1A8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DB1AC:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DB1B6)
3DB1AE:  MOV.W           R2, #0x194
3DB1B2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DB1B4:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DB1B6:  LDR             R1, [R0]; CWorld::PlayerInFocus
3DB1B8:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DB1BE)
3DB1BA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DB1BC:  SMULBB.W        R3, R1, R2
3DB1C0:  LDR             R0, [R0]; CWorld::Players ...
3DB1C2:  LDR             R3, [R0,R3]
3DB1C4:  SMLABB.W        R0, R1, R2, R0
3DB1C8:  LDR.W           R2, [R3,#0x44C]
3DB1CC:  CMP             R2, #0x3B ; ';'
3DB1CE:  ITTTT EQ
3DB1D0:  MOVEQ           R2, #0x12
3DB1D2:  STRHEQ.W        R2, [R4,#0xBC0]
3DB1D6:  LDREQ           R2, [R0]
3DB1D8:  LDREQ.W         R2, [R2,#0x44C]
3DB1DC:  CMP             R2, #0x39 ; '9'
3DB1DE:  IT NE
3DB1E0:  CMPNE           R2, #0x35 ; '5'
3DB1E2:  BNE             loc_3DB1F0
3DB1E4:  MOVS            R2, #0x12
3DB1E6:  STRH.W          R2, [R4,#0xBC0]
3DB1EA:  LDR             R0, [R0]
3DB1EC:  LDR.W           R2, [R0,#0x44C]
3DB1F0:  CMP             R2, #0x3D ; '='
3DB1F2:  BNE             loc_3DB22A
3DB1F4:  MOVS            R0, #4
3DB1F6:  ADDW            R5, R4, #0x8DC
3DB1FA:  STRH.W          R0, [R4,#0xBC0]
3DB1FE:  LDR.W           R0, [R4,#0x8DC]; this
3DB202:  CBZ             R0, loc_3DB212
3DB204:  MOV             R1, R5; CEntity **
3DB206:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DB20A:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DB210)
3DB20C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DB20E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DB210:  LDR             R1, [R0]; CWorld::PlayerInFocus
3DB212:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DB220)
3DB214:  MOV.W           R2, #0x194
3DB218:  SMULBB.W        R1, R1, R2
3DB21C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DB21E:  LDR             R0, [R0]; CWorld::Players ...
3DB220:  LDR             R0, [R0,R1]; this
3DB222:  MOV             R1, R5; CEntity **
3DB224:  STR             R0, [R5]
3DB226:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DB22A:  LDRB.W          R0, [R4,#0x41]
3DB22E:  CBZ             R0, loc_3DB2A2
3DB230:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DB236)
3DB232:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DB234:  LDR             R1, [R0]; CWorld::Players ...
3DB236:  LDR             R0, [R1]; CWorld::Players
3DB238:  CMP             R0, #0
3DB23A:  ITT NE
3DB23C:  LDRNE.W         R1, [R1,#(dword_96B830 - 0x96B69C)]
3DB240:  CMPNE           R1, #0
3DB242:  BEQ             loc_3DB2A2
3DB244:  LDR.W           R1, [R4,#0x8DC]
3DB248:  ADDW            R5, R4, #0x8DC
3DB24C:  CBZ             R1, loc_3DB25E
3DB24E:  MOV             R0, R1; this
3DB250:  MOV             R1, R5; CEntity **
3DB252:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DB256:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3DB25C)
3DB258:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3DB25A:  LDR             R0, [R0]; CWorld::Players ...
3DB25C:  LDR             R0, [R0]; this
3DB25E:  LDRB.W          R1, [R0,#0x485]
3DB262:  LSLS            R1, R1, #0x1F
3DB264:  BEQ             loc_3DB292
3DB266:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DB26C)
3DB268:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DB26A:  LDR             R1, [R1]; CWorld::Players ...
3DB26C:  LDR.W           R1, [R1,#(dword_96B830 - 0x96B69C)]
3DB270:  LDRB.W          R2, [R1,#0x485]
3DB274:  LSLS            R2, R2, #0x1F
3DB276:  BEQ             loc_3DB292
3DB278:  LDR.W           R2, [R0,#0x590]
3DB27C:  CMP             R2, #0
3DB27E:  ITT NE
3DB280:  LDRNE.W         R1, [R1,#0x590]
3DB284:  CMPNE           R1, #0
3DB286:  BEQ             loc_3DB292
3DB288:  CMP             R2, R1
3DB28A:  BEQ             loc_3DB2A8
3DB28C:  ADD.W           R1, R4, #0x44 ; 'D'
3DB290:  B               loc_3DB2B8
3DB292:  LDRH.W          R1, [R4,#0x4A]
3DB296:  STRH.W          R1, [R4,#0xBC0]
3DB29A:  MOV             R1, R5; CEntity **
3DB29C:  STR             R0, [R5]
3DB29E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DB2A2:  MOVS            R0, #0
3DB2A4:  STRH            R0, [R4,#0x36]
3DB2A6:  POP             {R4,R5,R7,PC}
3DB2A8:  LDRB.W          R1, [R4,#0x42]
3DB2AC:  CMP             R1, #0
3DB2AE:  ITE EQ
3DB2B0:  ADDEQ.W         R1, R4, #0x48 ; 'H'
3DB2B4:  ADDNE.W         R1, R4, #0x46 ; 'F'
3DB2B8:  LDRH            R1, [R1]
3DB2BA:  STRH.W          R1, [R4,#0xBC0]
3DB2BE:  LDR.W           R0, [R0,#0x590]
3DB2C2:  B               loc_3DB29A
