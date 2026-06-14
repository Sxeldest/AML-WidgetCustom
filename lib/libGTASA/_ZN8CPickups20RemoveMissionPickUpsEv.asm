; =========================================================
; Game Engine Function: _ZN8CPickups20RemoveMissionPickUpsEv
; Address            : 0x321ACC - 0x321B30
; =========================================================

321ACC:  PUSH            {R4-R7,LR}
321ACE:  ADD             R7, SP, #0xC
321AD0:  PUSH.W          {R11}
321AD4:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x321ADE)
321AD6:  MOVS            R5, #0
321AD8:  MOVS            R6, #0
321ADA:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
321ADC:  LDR             R0, [R0]; CPickups::aPickUps ...
321ADE:  ADD.W           R4, R0, #0x1D
321AE2:  LDRB.W          R0, [R4,#-1]
321AE6:  CMP             R0, #0x16
321AE8:  BNE             loc_321B20
321AEA:  LDRH.W          R0, [R4,#-3]
321AEE:  ORR.W           R1, R6, R0,LSL#16
321AF2:  MOVS            R0, #7
321AF4:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
321AF8:  LDR.W           R0, [R4,#-0x19]; this
321AFC:  CBZ             R0, loc_321B14
321AFE:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
321B02:  LDR.W           R0, [R4,#-0x19]
321B06:  CMP             R0, #0
321B08:  ITTT NE
321B0A:  LDRNE           R1, [R0]
321B0C:  LDRNE           R1, [R1,#4]
321B0E:  BLXNE           R1
321B10:  STR.W           R5, [R4,#-0x19]
321B14:  LDRB            R0, [R4]
321B16:  STRB.W          R5, [R4,#-1]
321B1A:  ORR.W           R0, R0, #1
321B1E:  STRB            R0, [R4]
321B20:  ADDS            R6, #1
321B22:  ADDS            R4, #0x20 ; ' '
321B24:  CMP.W           R6, #0x26C
321B28:  BNE             loc_321AE2
321B2A:  POP.W           {R11}
321B2E:  POP             {R4-R7,PC}
