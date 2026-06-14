; =========================================================
; Game Engine Function: _ZN8CPickups6ReInitEv
; Address            : 0x31CFFC - 0x31D0C8
; =========================================================

31CFFC:  PUSH            {R4-R7,LR}
31CFFE:  ADD             R7, SP, #0xC
31D000:  PUSH.W          {R11}
31D004:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x31D010)
31D006:  MOVS            R4, #0
31D008:  LDR             R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x31D012)
31D00A:  MOVS            R6, #0
31D00C:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
31D00E:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
31D010:  LDR             R1, [R1]; CPickups::aPickUps ...
31D012:  LDR             R0, [R0]; CPickups::NumMessages ...
31D014:  ADD.W           R5, R1, #0x1D
31D018:  STRH            R4, [R0]; CPickups::NumMessages
31D01A:  LDRB.W          R0, [R5,#-1]
31D01E:  CBZ             R0, loc_31D056
31D020:  LDRH.W          R0, [R5,#-3]
31D024:  ORR.W           R1, R6, R0,LSL#16
31D028:  MOVS            R0, #7
31D02A:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
31D02E:  LDR.W           R0, [R5,#-0x19]; this
31D032:  CBZ             R0, loc_31D04A
31D034:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31D038:  LDR.W           R0, [R5,#-0x19]
31D03C:  CMP             R0, #0
31D03E:  ITTT NE
31D040:  LDRNE           R1, [R0]
31D042:  LDRNE           R1, [R1,#4]
31D044:  BLXNE           R1
31D046:  STR.W           R4, [R5,#-0x19]
31D04A:  LDRB            R0, [R5]
31D04C:  STRB.W          R4, [R5,#-1]
31D050:  ORR.W           R0, R0, #1
31D054:  STRB            R0, [R5]
31D056:  ADDS            R6, #1
31D058:  ADDS            R5, #0x20 ; ' '
31D05A:  CMP.W           R6, #0x26C
31D05E:  BNE             loc_31D01A
31D060:  LDR             R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x31D06A)
31D062:  MOVS            R2, #1
31D064:  MOVS            R3, #0
31D066:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
31D068:  LDR             R1, [R0]; CPickups::NumMessages ...
31D06A:  MOVS            R0, #0
31D06C:  STRH            R0, [R1]; CPickups::NumMessages
31D06E:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x31D074)
31D070:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
31D072:  LDR             R1, [R1]; CPickups::aPickUps ...
31D074:  ADDS            R6, R1, R3
31D076:  ADDS            R3, #0x20 ; ' '
31D078:  CMP.W           R3, #0x4D80
31D07C:  STRH            R2, [R6,#0x1A]
31D07E:  STRB            R0, [R6,#0x1C]
31D080:  STR             R0, [R6,#4]
31D082:  BNE             loc_31D074
31D084:  LDR             R0, =(_ZN8CPickups20CollectedPickUpIndexE_ptr - 0x31D092)
31D086:  MOVS            R3, #0
31D088:  LDR             R1, =(_ZN8CPickups18DisplayHelpMessageE_ptr - 0x31D096)
31D08A:  VMOV.I32        Q8, #0
31D08E:  ADD             R0, PC; _ZN8CPickups20CollectedPickUpIndexE_ptr
31D090:  LDR             R2, =(_ZN8CPickups17aPickUpsCollectedE_ptr - 0x31D098)
31D092:  ADD             R1, PC; _ZN8CPickups18DisplayHelpMessageE_ptr
31D094:  ADD             R2, PC; _ZN8CPickups17aPickUpsCollectedE_ptr
31D096:  LDR             R0, [R0]; CPickups::CollectedPickUpIndex ...
31D098:  LDR             R1, [R1]; CPickups::DisplayHelpMessage ...
31D09A:  LDR             R2, [R2]; CPickups::aPickUpsCollected ...
31D09C:  STRH            R3, [R0]; CPickups::CollectedPickUpIndex
31D09E:  MOVS            R0, #0xA
31D0A0:  STRB            R0, [R1]; CPickups::DisplayHelpMessage
31D0A2:  ADD.W           R0, R2, #0x40 ; '@'
31D0A6:  VST1.32         {D16-D17}, [R0]
31D0AA:  ADD.W           R0, R2, #0x30 ; '0'
31D0AE:  VST1.32         {D16-D17}, [R0]
31D0B2:  ADD.W           R0, R2, #0x20 ; ' '
31D0B6:  VST1.32         {D16-D17}, [R0]
31D0BA:  VST1.32         {D16-D17}, [R2]!
31D0BE:  VST1.32         {D16-D17}, [R2]
31D0C2:  POP.W           {R11}
31D0C6:  POP             {R4-R7,PC}
