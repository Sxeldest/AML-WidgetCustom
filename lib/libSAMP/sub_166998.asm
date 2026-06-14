; =========================================================
; Game Engine Function: sub_166998
; Address            : 0x166998 - 0x166A26
; =========================================================

166998:  PUSH            {R4,R6,R7,LR}
16699A:  ADD             R7, SP, #8
16699C:  MOVS            R1, #0x48 ; 'H'; n
16699E:  MOV             R4, R0
1669A0:  BLX             sub_22178C
1669A4:  ADR             R0, dword_166A28
1669A6:  ADD.W           R12, R4, #0x58 ; 'X'
1669AA:  VLD1.64         {D18-D19}, [R0]
1669AE:  ADR             R0, dword_166A38
1669B0:  MOV             R3, R12
1669B2:  MOVS            R2, #0x22 ; '"'
1669B4:  VLD1.64         {D20-D21}, [R0]
1669B8:  MOVS            R0, #0x24 ; '$'
1669BA:  VMOV.I32        Q8, #0
1669BE:  ADD.W           R1, R4, #0xB0
1669C2:  VST1.32         {D20-D21}, [R3],R0
1669C6:  MOVS            R0, #0
1669C8:  VLD1.32         {D20-D21}, [R12],R2
1669CC:  ADR             R2, dword_166A48
1669CE:  VLD1.64         {D22-D23}, [R2]
1669D2:  MOVS            R2, #0xBF800000
1669D8:  STRD.W          R0, R2, [R4,#0xA8]
1669DC:  ADD.W           R2, R4, #0x94
1669E0:  VST1.32         {D18-D19}, [R2]!
1669E4:  VST1.32         {D16-D17}, [R1]!
1669E8:  STR             R0, [R2]
1669EA:  ADD.W           R2, R4, #0x48 ; 'H'
1669EE:  STRD.W          R0, R0, [R3]
1669F2:  STRD.W          R0, R0, [R3,#8]
1669F6:  STR             R0, [R3,#0x10]
1669F8:  MOVS            R3, #0x20 ; ' '
1669FA:  VST1.32         {D20-D21}, [R2],R3
1669FE:  ADD.W           R3, R4, #0xEC
166A02:  VST1.32         {D16-D17}, [R1]!
166A06:  VST1.32         {D16-D17}, [R1]!
166A0A:  VST1.32         {D22-D23}, [R2]!
166A0E:  STR.W           R0, [R4,#0x90]
166A12:  STRB.W          R0, [R12]
166A16:  STR             R0, [R1]
166A18:  STRD.W          R0, R0, [R4,#0xE4]
166A1C:  STRH            R0, [R2]
166A1E:  MOV             R0, R4
166A20:  VST1.32         {D16-D17}, [R3]
166A24:  POP             {R4,R6,R7,PC}
