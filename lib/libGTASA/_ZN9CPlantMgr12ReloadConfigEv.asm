; =========================================================
; Game Engine Function: _ZN9CPlantMgr12ReloadConfigEv
; Address            : 0x2CF0B8 - 0x2CF1B8
; =========================================================

2CF0B8:  PUSH            {R4-R7,LR}
2CF0BA:  ADD             R7, SP, #0xC
2CF0BC:  PUSH.W          {R8-R11}
2CF0C0:  SUB             SP, SP, #4
2CF0C2:  BLX             j__ZN17CPlantSurfPropMgr10InitialiseEv; CPlantSurfPropMgr::Initialise(void)
2CF0C6:  LDR             R0, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CF0D6)
2CF0C8:  VMOV.I32        Q8, #0
2CF0CC:  LDR             R1, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CF0DA)
2CF0CE:  MOVW            R5, #0xAC00
2CF0D2:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CF0D4:  LDR             R2, =(_ZN9CPlantMgr12m_LocTrisTabE_ptr - 0x2CF0E2)
2CF0D6:  ADD             R1, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CF0D8:  MOVT            R5, #0xFFFF
2CF0DC:  LDR             R0, [R0]; CPlantMgr::m_CloseLocTriListHead ...
2CF0DE:  ADD             R2, PC; _ZN9CPlantMgr12m_LocTrisTabE_ptr
2CF0E0:  LDR             R1, [R1]; CPlantMgr::m_UnusedLocTriListHead ...
2CF0E2:  MOVS            R3, #0
2CF0E4:  LDR             R2, [R2]; CPlantMgr::m_LocTrisTab ...
2CF0E6:  MOVW            R10, #0x53AC
2CF0EA:  VST1.32         {D16-D17}, [R0]
2CF0EE:  MOVW            R11, #0x5450
2CF0F2:  MOVW            R8, #0x5454
2CF0F6:  MOVW            R4, #0x5410
2CF0FA:  LDR             R0, =(_ZN9CPlantMgr12m_LocTrisTabE_ptr - 0x2CF108)
2CF0FC:  MOV             R9, R5
2CF0FE:  STR             R2, [R1]; CPlantMgr::m_UnusedLocTriListHead
2CF100:  MOVW            R2, #0x5420
2CF104:  ADD             R0, PC; _ZN9CPlantMgr12m_LocTrisTabE_ptr
2CF106:  LDR             R1, [R0]; CPlantMgr::m_LocTrisTab ...
2CF108:  MOVW            R0, #0x544C
2CF10C:  ADD.W           R12, R1, R5
2CF110:  MOVW            R6, #0x5446
2CF114:  ADD.W           LR, R12, R10
2CF118:  CMP             R5, R9
2CF11A:  STRB.W          R3, [R12,R6]
2CF11E:  MOVW            R6, #0x5444
2CF122:  STRH.W          R3, [R12,R6]
2CF126:  MOVW            R6, #0x5440
2CF12A:  STR.W           R3, [R12,R6]
2CF12E:  IT EQ
2CF130:  MOVEQ.W         LR, #0
2CF134:  ADD.W           R6, R12, R8
2CF138:  ADDS            R5, #0x54 ; 'T'
2CF13A:  STR.W           LR, [R12,R11]
2CF13E:  IT EQ
2CF140:  MOVEQ           R6, #0
2CF142:  CMP             R5, #0
2CF144:  STR.W           R6, [R12,R0]
2CF148:  ADD.W           R6, R12, R2
2CF14C:  VST1.32         {D16-D17}, [R6]
2CF150:  ADD.W           R6, R12, R4
2CF154:  VST1.32         {D16-D17}, [R6]
2CF158:  ADD.W           R6, R12, #0x5400
2CF15C:  VST1.32         {D16-D17}, [R6]
2CF160:  BNE             loc_2CF10C
2CF162:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr - 0x2CF16A)
2CF164:  LDR             R1, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CF16E)
2CF166:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr
2CF168:  LDR             R2, =(_ZN9CPlantMgr16m_ColEntCacheTabE_ptr - 0x2CF170)
2CF16A:  ADD             R1, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CF16C:  ADD             R2, PC; _ZN9CPlantMgr16m_ColEntCacheTabE_ptr
2CF16E:  LDR             R0, [R0]; CPlantMgr::m_UnusedColEntListHead ...
2CF170:  LDR             R1, [R1]; CPlantMgr::m_CloseColEntListHead ...
2CF172:  LDR             R2, [R2]; CPlantMgr::m_ColEntCacheTab ...
2CF174:  STR             R2, [R0]; CPlantMgr::m_UnusedColEntListHead
2CF176:  MOVS            R0, #0
2CF178:  STR             R0, [R1]; CPlantMgr::m_CloseColEntListHead
2CF17A:  MOVS            R2, #0
2CF17C:  LDR             R1, =(_ZN9CPlantMgr16m_ColEntCacheTabE_ptr - 0x2CF182)
2CF17E:  ADD             R1, PC; _ZN9CPlantMgr16m_ColEntCacheTabE_ptr
2CF180:  LDR             R1, [R1]; CPlantMgr::m_ColEntCacheTab ...
2CF182:  ADDS            R3, R1, R2
2CF184:  CMP             R2, #0
2CF186:  MOV             R6, R2
2CF188:  STR             R0, [R1,R2]
2CF18A:  ADD.W           R5, R3, #0x14
2CF18E:  STR             R0, [R3,#4]
2CF190:  STRH            R0, [R3,#8]
2CF192:  IT NE
2CF194:  SUBNE.W         R6, R3, #0x14
2CF198:  CMP.W           R2, #0x30C
2CF19C:  ADD.W           R2, R2, #0x14
2CF1A0:  IT EQ
2CF1A2:  MOVEQ           R5, #0
2CF1A4:  CMP.W           R2, #0x320
2CF1A8:  STRD.W          R5, R6, [R3,#0xC]
2CF1AC:  BNE             loc_2CF182
2CF1AE:  MOVS            R0, #1
2CF1B0:  ADD             SP, SP, #4
2CF1B2:  POP.W           {R8-R11}
2CF1B6:  POP             {R4-R7,PC}
