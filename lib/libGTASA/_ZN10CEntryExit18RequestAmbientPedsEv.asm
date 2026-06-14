; =========================================================
; Game Engine Function: _ZN10CEntryExit18RequestAmbientPedsEv
; Address            : 0x306DA0 - 0x306E8A
; =========================================================

306DA0:  PUSH            {R4,R6,R7,LR}
306DA2:  ADD             R7, SP, #8
306DA4:  SUB             SP, SP, #0x20
306DA6:  MOV             R4, R0
306DA8:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x306DAE)
306DAA:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
306DAC:  LDR             R0, [R0]; CGame::currArea ...
306DAE:  LDR             R0, [R0]; this
306DB0:  CMP             R0, #0
306DB2:  BEQ             loc_306E60
306DB4:  ADR             R0, aBar1; "bar1"
306DB6:  MOV             R1, R4; char *
306DB8:  BLX             strcasecmp
306DBC:  CBNZ            R0, loc_306DDA
306DBE:  LDR             R0, =(unk_60FDA8 - 0x306DC4)
306DC0:  ADD             R0, PC; unk_60FDA8
306DC2:  VLD1.64         {D16-D17}, [R0]!
306DC6:  VLD1.64         {D18-D19}, [R0]
306DCA:  MOV             R0, SP; this
306DCC:  MOV             R1, R0
306DCE:  VST1.64         {D16-D17}, [R1]!; int *
306DD2:  VST1.64         {D18-D19}, [R1]
306DD6:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
306DDA:  ADR             R0, aStrip2; "strip2"
306DDC:  MOV             R1, R4; char *
306DDE:  BLX             strcasecmp
306DE2:  CBNZ            R0, loc_306E00
306DE4:  LDR             R0, =(unk_60FDC8 - 0x306DEA)
306DE6:  ADD             R0, PC; unk_60FDC8
306DE8:  VLD1.64         {D16-D17}, [R0]!
306DEC:  VLD1.64         {D18-D19}, [R0]
306DF0:  MOV             R0, SP; this
306DF2:  MOV             R1, R0
306DF4:  VST1.64         {D16-D17}, [R1]!; int *
306DF8:  VST1.64         {D18-D19}, [R1]
306DFC:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
306E00:  LDR             R0, =(aLastrip - 0x306E08); "LAstrip"
306E02:  MOV             R1, R4; char *
306E04:  ADD             R0, PC; "LAstrip"
306E06:  BLX             strcasecmp
306E0A:  CBNZ            R0, loc_306E28
306E0C:  LDR             R0, =(unk_60FDE8 - 0x306E12)
306E0E:  ADD             R0, PC; unk_60FDE8
306E10:  VLD1.64         {D16-D17}, [R0]!
306E14:  VLD1.64         {D18-D19}, [R0]
306E18:  MOV             R0, SP; this
306E1A:  MOV             R1, R0
306E1C:  VST1.64         {D16-D17}, [R1]!; int *
306E20:  VST1.64         {D18-D19}, [R1]
306E24:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
306E28:  LDR             R0, =(aMafcas - 0x306E30); "MAFCAS"
306E2A:  MOV             R1, R4; char *
306E2C:  ADD             R0, PC; "MAFCAS"
306E2E:  BLX             strcasecmp
306E32:  CBNZ            R0, loc_306E50
306E34:  LDR             R0, =(unk_60FE08 - 0x306E3A)
306E36:  ADD             R0, PC; unk_60FE08
306E38:  VLD1.64         {D16-D17}, [R0]!
306E3C:  VLD1.64         {D18-D19}, [R0]
306E40:  MOV             R0, SP; this
306E42:  MOV             R1, R0
306E44:  VST1.64         {D16-D17}, [R1]!; int *
306E48:  VST1.64         {D18-D19}, [R1]
306E4C:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
306E50:  LDR             R0, =(aTricas - 0x306E58); "TRICAS"
306E52:  MOV             R1, R4; char *
306E54:  ADD             R0, PC; "TRICAS"
306E56:  BLX             strcasecmp
306E5A:  CBZ             R0, loc_306E6A
306E5C:  ADD             SP, SP, #0x20 ; ' '
306E5E:  POP             {R4,R6,R7,PC}
306E60:  ADD             SP, SP, #0x20 ; ' '
306E62:  POP.W           {R4,R6,R7,LR}
306E66:  B.W             j_j__ZN10CStreaming30RemoveDodgyPedsFromRandomSlotsEv; j_CStreaming::RemoveDodgyPedsFromRandomSlots(void)
306E6A:  LDR             R0, =(unk_60FE28 - 0x306E70)
306E6C:  ADD             R0, PC; unk_60FE28
306E6E:  VLD1.64         {D16-D17}, [R0]!
306E72:  VLD1.64         {D18-D19}, [R0]
306E76:  MOV             R0, SP; this
306E78:  MOV             R1, R0
306E7A:  VST1.64         {D16-D17}, [R1]!; int *
306E7E:  VST1.64         {D18-D19}, [R1]
306E82:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
306E86:  ADD             SP, SP, #0x20 ; ' '
306E88:  POP             {R4,R6,R7,PC}
