; =========================================================
; Game Engine Function: _ZN5CBoat28CheckForSkippingCalculationsEv
; Address            : 0x56D1DC - 0x56D2B8
; =========================================================

56D1DC:  LDR             R0, =(word_A02630 - 0x56D1E4)
56D1DE:  LDR             R2, =(word_A02638 - 0x56D1E6)
56D1E0:  ADD             R0, PC; word_A02630
56D1E2:  ADD             R2, PC; word_A02638
56D1E4:  LDRH            R1, [R0]
56D1E6:  LDRSH.W         R0, [R2]
56D1EA:  SUBS            R3, R0, #1
56D1EC:  SXTH            R2, R1
56D1EE:  UXTH            R3, R3
56D1F0:  CMP             R3, #6
56D1F2:  BHI             loc_56D1FC
56D1F4:  CMP             R2, R0
56D1F6:  IT GT
56D1F8:  SUBGT           R0, R2, #1
56D1FA:  B               loc_56D206
56D1FC:  CMP             R2, #1
56D1FE:  BLT             loc_56D20C
56D200:  MOVW            R0, #0xFFFF
56D204:  ADD             R0, R1
56D206:  LDR             R1, =(word_A02630 - 0x56D20C)
56D208:  ADD             R1, PC; word_A02630
56D20A:  STRH            R0, [R1]
56D20C:  LDR             R0, =(word_A02630 - 0x56D216)
56D20E:  MOVS            R3, #8
56D210:  LDR             R2, =(word_A02638 - 0x56D218)
56D212:  ADD             R0, PC; word_A02630
56D214:  ADD             R2, PC; word_A02638
56D216:  LDRSH.W         R1, [R0,#(word_A02632 - 0xA02630)]
56D21A:  LDRSH.W         R0, [R2,#(word_A0263A - 0xA02638)]
56D21E:  STRH            R3, [R2]
56D220:  SUBS            R2, R0, #1
56D222:  UXTH            R2, R2
56D224:  CMP             R2, #7
56D226:  BCS             loc_56D230
56D228:  CMP             R1, R0
56D22A:  IT GT
56D22C:  SUBGT           R0, R1, #1
56D22E:  B               loc_56D23C
56D230:  CMP             R1, #1
56D232:  BLT             loc_56D242
56D234:  UXTH            R0, R1
56D236:  MOVW            R1, #0xFFFF
56D23A:  ADD             R0, R1
56D23C:  LDR             R1, =(word_A02630 - 0x56D242)
56D23E:  ADD             R1, PC; word_A02630
56D240:  STRH            R0, [R1,#(word_A02632 - 0xA02630)]
56D242:  LDR             R0, =(word_A02630 - 0x56D24C)
56D244:  MOVS            R3, #8
56D246:  LDR             R2, =(word_A02638 - 0x56D24E)
56D248:  ADD             R0, PC; word_A02630
56D24A:  ADD             R2, PC; word_A02638
56D24C:  LDRSH.W         R1, [R0,#(word_A02634 - 0xA02630)]
56D250:  LDRSH.W         R0, [R2,#(word_A0263C - 0xA02638)]
56D254:  STRH            R3, [R2,#(word_A0263A - 0xA02638)]
56D256:  SUBS            R2, R0, #1
56D258:  UXTH            R2, R2
56D25A:  CMP             R2, #7
56D25C:  BCS             loc_56D266
56D25E:  CMP             R1, R0
56D260:  IT GT
56D262:  SUBGT           R0, R1, #1
56D264:  B               loc_56D272
56D266:  CMP             R1, #1
56D268:  BLT             loc_56D278
56D26A:  UXTH            R0, R1
56D26C:  MOVW            R1, #0xFFFF
56D270:  ADD             R0, R1
56D272:  LDR             R1, =(word_A02630 - 0x56D278)
56D274:  ADD             R1, PC; word_A02630
56D276:  STRH            R0, [R1,#(word_A02634 - 0xA02630)]
56D278:  LDR             R0, =(word_A02630 - 0x56D282)
56D27A:  MOVS            R3, #8
56D27C:  LDR             R2, =(word_A02638 - 0x56D284)
56D27E:  ADD             R0, PC; word_A02630
56D280:  ADD             R2, PC; word_A02638
56D282:  LDRSH.W         R1, [R0,#(word_A02636 - 0xA02630)]
56D286:  LDRSH.W         R0, [R2,#(word_A0263E - 0xA02638)]
56D28A:  STRH            R3, [R2,#(word_A0263C - 0xA02638)]
56D28C:  SUBS            R2, R0, #1
56D28E:  UXTH            R2, R2
56D290:  CMP             R2, #7
56D292:  BCS             loc_56D29C
56D294:  CMP             R1, R0
56D296:  IT GT
56D298:  SUBGT           R0, R1, #1
56D29A:  B               loc_56D2A8
56D29C:  CMP             R1, #1
56D29E:  BLT             loc_56D2AE
56D2A0:  UXTH            R0, R1
56D2A2:  MOVW            R1, #0xFFFF
56D2A6:  ADD             R0, R1
56D2A8:  LDR             R1, =(word_A02630 - 0x56D2AE)
56D2AA:  ADD             R1, PC; word_A02630
56D2AC:  STRH            R0, [R1,#(word_A02636 - 0xA02630)]
56D2AE:  LDR             R0, =(word_A02638 - 0x56D2B6)
56D2B0:  MOVS            R1, #8
56D2B2:  ADD             R0, PC; word_A02638
56D2B4:  STRH            R1, [R0,#(word_A0263E - 0xA02638)]
56D2B6:  BX              LR
