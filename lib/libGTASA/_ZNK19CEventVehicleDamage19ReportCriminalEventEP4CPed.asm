; =========================================================
; Game Engine Function: _ZNK19CEventVehicleDamage19ReportCriminalEventEP4CPed
; Address            : 0x377156 - 0x3771AE
; =========================================================

377156:  PUSH            {R4-R7,LR}
377158:  ADD             R7, SP, #0xC
37715A:  PUSH.W          {R11}
37715E:  SUB             SP, SP, #8
377160:  MOV             R5, R0
377162:  MOV             R4, R1
377164:  LDR             R0, [R5]
377166:  LDR             R1, [R0,#0x20]
377168:  MOV             R0, R5
37716A:  BLX             R1
37716C:  CMP             R0, #1
37716E:  BNE             loc_3771A6
377170:  LDR             R0, [R5,#0x14]
377172:  CBZ             R0, loc_3771A6
377174:  LDR.W           R0, [R4,#0x59C]; this
377178:  BLX             j__ZN8CPedType39PoliceDontCareAboutCrimesAgainstPedTypeEi; CPedType::PoliceDontCareAboutCrimesAgainstPedType(int)
37717C:  MOV             R6, R0
37717E:  LDR.W           R0, [R4,#0x59C]
377182:  CMP             R0, #6
377184:  BNE             loc_3771A6
377186:  MOV.W           R0, #0xFFFFFFFF; int
37718A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
37718E:  LDR             R1, [R5,#0x14]
377190:  LDR             R3, [R1,#0x14]
377192:  STR             R6, [SP,#0x18+var_18]
377194:  ADD.W           R2, R3, #0x30 ; '0'
377198:  CMP             R3, #0
37719A:  IT EQ
37719C:  ADDEQ           R2, R1, #4
37719E:  MOVS            R1, #8
3771A0:  MOV             R3, R4
3771A2:  BLX             j__ZN7CWanted13RegisterCrimeE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime(eCrimeType,CVector const&,uint,bool)
3771A6:  ADD             SP, SP, #8
3771A8:  POP.W           {R11}
3771AC:  POP             {R4-R7,PC}
