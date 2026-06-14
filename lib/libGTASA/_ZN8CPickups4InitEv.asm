; =========================================================
; Game Engine Function: _ZN8CPickups4InitEv
; Address            : 0x31CF80 - 0x31CFE8
; =========================================================

31CF80:  LDR             R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x31CF8C)
31CF82:  MOV.W           R12, #1
31CF86:  MOVS            R3, #0
31CF88:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
31CF8A:  LDR             R1, [R0]; CPickups::NumMessages ...
31CF8C:  MOVS            R0, #0
31CF8E:  STRH            R0, [R1]; CPickups::NumMessages
31CF90:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x31CF96)
31CF92:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
31CF94:  LDR             R1, [R1]; CPickups::aPickUps ...
31CF96:  ADDS            R2, R1, R3
31CF98:  ADDS            R3, #0x20 ; ' '
31CF9A:  CMP.W           R3, #0x4D80
31CF9E:  STRH.W          R12, [R2,#0x1A]
31CFA2:  STRB            R0, [R2,#0x1C]
31CFA4:  STR             R0, [R2,#4]
31CFA6:  BNE             loc_31CF96
31CFA8:  LDR             R0, =(_ZN8CPickups20CollectedPickUpIndexE_ptr - 0x31CFB6)
31CFAA:  MOVS            R3, #0
31CFAC:  LDR             R1, =(_ZN8CPickups18DisplayHelpMessageE_ptr - 0x31CFBA)
31CFAE:  VMOV.I32        Q8, #0
31CFB2:  ADD             R0, PC; _ZN8CPickups20CollectedPickUpIndexE_ptr
31CFB4:  LDR             R2, =(_ZN8CPickups17aPickUpsCollectedE_ptr - 0x31CFBC)
31CFB6:  ADD             R1, PC; _ZN8CPickups18DisplayHelpMessageE_ptr
31CFB8:  ADD             R2, PC; _ZN8CPickups17aPickUpsCollectedE_ptr
31CFBA:  LDR             R0, [R0]; CPickups::CollectedPickUpIndex ...
31CFBC:  LDR             R1, [R1]; CPickups::DisplayHelpMessage ...
31CFBE:  LDR             R2, [R2]; CPickups::aPickUpsCollected ...
31CFC0:  STRH            R3, [R0]; CPickups::CollectedPickUpIndex
31CFC2:  MOVS            R0, #0xA
31CFC4:  STRB            R0, [R1]; CPickups::DisplayHelpMessage
31CFC6:  ADD.W           R0, R2, #0x40 ; '@'
31CFCA:  VST1.32         {D16-D17}, [R0]
31CFCE:  ADD.W           R0, R2, #0x30 ; '0'
31CFD2:  VST1.32         {D16-D17}, [R0]
31CFD6:  ADD.W           R0, R2, #0x20 ; ' '
31CFDA:  VST1.32         {D16-D17}, [R0]
31CFDE:  VST1.32         {D16-D17}, [R2]!
31CFE2:  VST1.32         {D16-D17}, [R2]
31CFE6:  BX              LR
