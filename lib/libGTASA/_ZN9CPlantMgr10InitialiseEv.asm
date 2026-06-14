; =========================================================
; Game Engine Function: _ZN9CPlantMgr10InitialiseEv
; Address            : 0x2CEF98 - 0x2CF098
; =========================================================

2CEF98:  PUSH            {R4-R7,LR}
2CEF9A:  ADD             R7, SP, #0xC
2CEF9C:  PUSH.W          {R8-R11}
2CEFA0:  SUB             SP, SP, #4
2CEFA2:  BLX             j__ZN17CPlantSurfPropMgr10InitialiseEv; CPlantSurfPropMgr::Initialise(void)
2CEFA6:  LDR             R0, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CEFB6)
2CEFA8:  VMOV.I32        Q8, #0
2CEFAC:  LDR             R1, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CEFBA)
2CEFAE:  MOVW            R5, #0xAC00
2CEFB2:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CEFB4:  LDR             R2, =(_ZN9CPlantMgr12m_LocTrisTabE_ptr - 0x2CEFC2)
2CEFB6:  ADD             R1, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CEFB8:  MOVT            R5, #0xFFFF
2CEFBC:  LDR             R0, [R0]; CPlantMgr::m_CloseLocTriListHead ...
2CEFBE:  ADD             R2, PC; _ZN9CPlantMgr12m_LocTrisTabE_ptr
2CEFC0:  LDR             R1, [R1]; CPlantMgr::m_UnusedLocTriListHead ...
2CEFC2:  MOVS            R3, #0
2CEFC4:  LDR             R2, [R2]; CPlantMgr::m_LocTrisTab ...
2CEFC6:  MOVW            R10, #0x53AC
2CEFCA:  VST1.32         {D16-D17}, [R0]
2CEFCE:  MOVW            R11, #0x5450
2CEFD2:  MOVW            R8, #0x5454
2CEFD6:  MOVW            R4, #0x5410
2CEFDA:  LDR             R0, =(_ZN9CPlantMgr12m_LocTrisTabE_ptr - 0x2CEFE8)
2CEFDC:  MOV             R9, R5
2CEFDE:  STR             R2, [R1]; CPlantMgr::m_UnusedLocTriListHead
2CEFE0:  MOVW            R2, #0x5420
2CEFE4:  ADD             R0, PC; _ZN9CPlantMgr12m_LocTrisTabE_ptr
2CEFE6:  LDR             R1, [R0]; CPlantMgr::m_LocTrisTab ...
2CEFE8:  MOVW            R0, #0x544C
2CEFEC:  ADD.W           R12, R1, R5
2CEFF0:  MOVW            R6, #0x5446
2CEFF4:  ADD.W           LR, R12, R10
2CEFF8:  CMP             R5, R9
2CEFFA:  STRB.W          R3, [R12,R6]
2CEFFE:  MOVW            R6, #0x5444
2CF002:  STRH.W          R3, [R12,R6]
2CF006:  MOVW            R6, #0x5440
2CF00A:  STR.W           R3, [R12,R6]
2CF00E:  IT EQ
2CF010:  MOVEQ.W         LR, #0
2CF014:  ADD.W           R6, R12, R8
2CF018:  ADDS            R5, #0x54 ; 'T'
2CF01A:  STR.W           LR, [R12,R11]
2CF01E:  IT EQ
2CF020:  MOVEQ           R6, #0
2CF022:  CMP             R5, #0
2CF024:  STR.W           R6, [R12,R0]
2CF028:  ADD.W           R6, R12, R2
2CF02C:  VST1.32         {D16-D17}, [R6]
2CF030:  ADD.W           R6, R12, R4
2CF034:  VST1.32         {D16-D17}, [R6]
2CF038:  ADD.W           R6, R12, #0x5400
2CF03C:  VST1.32         {D16-D17}, [R6]
2CF040:  BNE             loc_2CEFEC
2CF042:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr - 0x2CF04A)
2CF044:  LDR             R1, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CF04E)
2CF046:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr
2CF048:  LDR             R2, =(_ZN9CPlantMgr16m_ColEntCacheTabE_ptr - 0x2CF050)
2CF04A:  ADD             R1, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CF04C:  ADD             R2, PC; _ZN9CPlantMgr16m_ColEntCacheTabE_ptr
2CF04E:  LDR             R0, [R0]; CPlantMgr::m_UnusedColEntListHead ...
2CF050:  LDR             R1, [R1]; CPlantMgr::m_CloseColEntListHead ...
2CF052:  LDR             R2, [R2]; CPlantMgr::m_ColEntCacheTab ...
2CF054:  STR             R2, [R0]; CPlantMgr::m_UnusedColEntListHead
2CF056:  MOVS            R0, #0
2CF058:  STR             R0, [R1]; CPlantMgr::m_CloseColEntListHead
2CF05A:  MOVS            R2, #0
2CF05C:  LDR             R1, =(_ZN9CPlantMgr16m_ColEntCacheTabE_ptr - 0x2CF062)
2CF05E:  ADD             R1, PC; _ZN9CPlantMgr16m_ColEntCacheTabE_ptr
2CF060:  LDR             R1, [R1]; CPlantMgr::m_ColEntCacheTab ...
2CF062:  ADDS            R3, R1, R2
2CF064:  CMP             R2, #0
2CF066:  MOV             R6, R2
2CF068:  STR             R0, [R1,R2]
2CF06A:  ADD.W           R5, R3, #0x14
2CF06E:  STR             R0, [R3,#4]
2CF070:  STRH            R0, [R3,#8]
2CF072:  IT NE
2CF074:  SUBNE.W         R6, R3, #0x14
2CF078:  CMP.W           R2, #0x30C
2CF07C:  ADD.W           R2, R2, #0x14
2CF080:  IT EQ
2CF082:  MOVEQ           R5, #0
2CF084:  CMP.W           R2, #0x320
2CF088:  STRD.W          R5, R6, [R3,#0xC]
2CF08C:  BNE             loc_2CF062
2CF08E:  MOVS            R0, #1
2CF090:  ADD             SP, SP, #4
2CF092:  POP.W           {R8-R11}
2CF096:  POP             {R4-R7,PC}
